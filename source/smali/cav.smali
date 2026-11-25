.class public final Lcav;
.super Lcar;
.source "PG"

# interfaces
.implements Lbwq;


# static fields
.field private static final a:Ljava/util/concurrent/Callable;


# instance fields
.field private final b:Lcau;

.field private final c:Lcbc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcge;->b:Lcge;

    sput-object v0, Lcav;->a:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(Lcau;Lcoc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcar;-><init>()V

    iput-object p1, p0, Lcav;->b:Lcau;

    check-cast p2, Lcof;

    iget-object p1, p2, Lcof;->a:Ljava/lang/Object;

    check-cast p1, Ldny;

    invoke-interface {p1}, Ldny;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcbc;

    iput-object p1, p0, Lcav;->c:Lcbc;

    return-void
.end method


# virtual methods
.method public final a(Lbtx;)Lcaq;
    .locals 2

    .line 1
    iget-object v0, p0, Lcav;->b:Lcau;

    invoke-virtual {v0, p1}, Lcau;->a(Lbtx;)Lcaq;

    move-result-object v0

    iget-object p1, p1, Lbtx;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcaq;->b(Lcaq;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcav;->c:Lcbc;

    .line 3
    invoke-interface {v1, p1}, Lcbc;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcaq;->d:Z

    .line 2
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final b(Lbtx;I)Ldag;
    .locals 9

    .line 1
    iget-object v0, p0, Lcav;->b:Lcau;

    iget-object v0, v0, Lcau;->c:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lbtx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcaq;

    const/4 v1, 0x2

    new-array v1, v1, [Ldag;

    iget-object v2, p0, Lcav;->b:Lcau;

    .line 2
    invoke-virtual {v2, p1, p2}, Lcau;->b(Lbtx;I)Ldag;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    iget-object v4, p1, Lbtx;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcaq;->b(Lcaq;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean p1, v0, Lcaq;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcav;->c:Lcbc;

    .line 4
    invoke-interface {p1, v4}, Lcbc;->c(Ljava/lang/String;)Ldag;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcav;->c:Lcbc;

    iget-wide v5, v0, Lcaq;->b:J

    invoke-virtual {v0}, Lcaq;->a()J

    move-result-wide v7

    .line 5
    invoke-interface/range {v3 .. v8}, Lcbc;->a(Ljava/lang/String;JJ)V

    .line 6
    sget-object p1, Ldad;->a:Ldag;

    goto :goto_1

    .line 3
    :cond_2
    :goto_0
    sget-object p1, Ldad;->a:Ldag;

    :goto_1
    const/4 p2, 0x1

    aput-object p1, v1, p2

    new-instance p1, Lczz;

    .line 7
    invoke-static {v1}, Lcqh;->o([Ljava/lang/Object;)Lcqh;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lczz;-><init>(ZLcqh;)V

    sget-object p2, Lcav;->a:Ljava/util/concurrent/Callable;

    .line 8
    sget-object v0, Lczj;->a:Lczj;

    .line 9
    invoke-virtual {p1, p2, v0}, Lczz;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic u()V
    .locals 0

    return-void
.end method
