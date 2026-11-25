.class final Lbub;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbua;


# static fields
.field private static final a:Lcsz;


# instance fields
.field private final b:Lbul;

.field private final c:Ldny;

.field private final d:Ldny;

.field private final e:Ldny;

.field private final f:Ldny;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbub;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Lbul;Ldny;Ldny;Ldny;Ldny;Lcoc;Lcvv;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbub;->b:Lbul;

    iput-object p2, p0, Lbub;->c:Ldny;

    iput-object p3, p0, Lbub;->d:Ldny;

    iput-object p4, p0, Lbub;->e:Ldny;

    iput-object p5, p0, Lbub;->f:Ldny;

    invoke-static {}, Lbjq;->h()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p7}, Lcvv;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p7, Lcvv;->a:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    add-int/lit16 p3, p3, 0x96

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Primes init triggered from background in package: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". If this is an existing error, please file a bug on the Primes team to whitelist your package name."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p6, p1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    :try_start_0
    sget-object p1, Lcnr;->a:Ljava/util/WeakHashMap;

    check-cast p2, Ldhz;

    .line 5
    invoke-virtual {p2}, Ldhz;->b()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbwq;

    .line 6
    invoke-interface {p2}, Lbwq;->u()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    move-exception p1

    sget-object p2, Lbub;->a:Lcsz;

    invoke-virtual {p2}, Lcsv;->c()Lctq;

    move-result-object p2

    .line 7
    invoke-interface {p2, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const/16 p2, 0x7b

    const-string p3, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    const-string p4, "initialize"

    const-string p5, "PrimesApiImpl.java"

    invoke-interface {p1, p3, p4, p2, p5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Primes failed to initialize"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lbub;->b:Lbul;

    .line 8
    invoke-virtual {p1}, Lbul;->a()V

    return-void

    .line 6
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbub;->d:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxg;

    invoke-virtual {v0}, Lbxg;->d()V

    return-void
.end method

.method public final b(Lbtx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbub;->f:Ldny;

    check-cast v0, Lcan;

    invoke-virtual {v0}, Lcan;->b()Lcar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcar;->a(Lbtx;)Lcaq;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbub;->e:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyz;

    invoke-virtual {v0}, Lbyz;->a()V

    return-void
.end method

.method public final d(Lbtx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbub;->e:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyz;

    invoke-virtual {v0, p1}, Lbyz;->b(Lbtx;)V

    return-void
.end method

.method public final e(Lbtx;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbub;->f:Ldny;

    check-cast v0, Lcan;

    invoke-virtual {v0}, Lcan;->b()Lcar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcar;->b(Lbtx;I)Ldag;

    return-void
.end method
