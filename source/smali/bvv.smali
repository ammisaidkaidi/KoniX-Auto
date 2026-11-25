.class public final Lbvv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Lcoi;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field final a:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x2f

    invoke-static {v0}, Lcoi;->b(C)Lcoi;

    move-result-object v0

    sput-object v0, Lbvv;->b:Lcoi;

    const-string v0, "^(\\*[a-z]+\\*).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbvv;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbvv;->a:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lbvv;->b:Lcoi;

    invoke-virtual {v0, p0}, Lcoi;->e(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "MALFORMED"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method final b(Ldor;)Ldor;
    .locals 6

    .line 1
    iget-object v0, p1, Ldor;->d:Ldom;

    if-nez v0, :cond_0

    sget-object v0, Ldom;->d:Ldom;

    :cond_0
    iget v0, v0, Ldom;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p1, Ldor;->d:Ldom;

    if-nez v0, :cond_1

    sget-object v0, Ldom;->d:Ldom;

    .line 2
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lddf;

    .line 4
    invoke-virtual {v2, v0}, Lddf;->n(Lddk;)V

    iget-object v0, p0, Lbvv;->a:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v3, v2, Lddf;->b:Lddk;

    .line 5
    check-cast v3, Ldom;

    iget-wide v3, v3, Ldom;->b:J

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p1, v1}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lddf;

    .line 9
    invoke-virtual {v1, p1}, Lddf;->n(Lddk;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean p1, v2, Lddf;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v0, v2, Lddf;->c:Z

    :cond_2
    iget-object p1, v2, Lddf;->b:Lddk;

    .line 10
    check-cast p1, Ldom;

    iget v5, p1, Ldom;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p1, Ldom;->a:I

    iput-wide v3, p1, Ldom;->b:J

    iget-boolean p1, v1, Lddf;->c:Z

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v0, v1, Lddf;->c:Z

    :cond_3
    iget-object p1, v1, Lddf;->b:Lddk;

    .line 11
    check-cast p1, Ldor;

    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldom;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Ldor;->d:Ldom;

    iget v0, p1, Ldor;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Ldor;->a:I

    .line 7
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldor;

    :cond_4
    return-object p1
.end method

.method public final c(ILdor;)Ldor;
    .locals 8

    .line 1
    iget-object v0, p2, Ldor;->d:Ldom;

    if-nez v0, :cond_0

    sget-object v0, Ldom;->d:Ldom;

    :cond_0
    iget v0, v0, Ldom;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    iget-object v0, p2, Ldor;->d:Ldom;

    if-nez v0, :cond_1

    sget-object v0, Ldom;->d:Ldom;

    .line 2
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lddf;

    .line 4
    invoke-virtual {v2, v0}, Lddf;->n(Lddk;)V

    .line 5
    invoke-virtual {p2, v1}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lddf;

    .line 7
    invoke-virtual {v0, p2}, Lddf;->n(Lddk;)V

    iget-object p2, v2, Lddf;->b:Lddk;

    .line 8
    check-cast p2, Ldom;

    iget-object p2, p2, Ldom;->c:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Ldba;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lbvv;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    if-nez v1, :cond_5

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 16
    :pswitch_0
    const-string p2, "--"

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lbvv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 23
    :pswitch_2
    sget-object p1, Lbvv;->c:Ljava/util/regex/Pattern;

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    const-string v1, "*sync*/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 p1, 0x7

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbvv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    nop

    .line 15
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    nop

    .line 17
    :goto_0
    invoke-static {p2}, Ldba;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lbvv;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {p2, v5, p1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean p1, v2, Lddf;->c:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 19
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean p2, v2, Lddf;->c:Z

    :cond_6
    iget-object p1, v2, Lddf;->b:Lddk;

    .line 20
    check-cast p1, Ldom;

    iget v1, p1, Ldom;->a:I

    or-int/2addr v1, v6

    iput v1, p1, Ldom;->a:I

    iput-wide v3, p1, Ldom;->b:J

    and-int/lit8 v1, v1, -0x3

    iput v1, p1, Ldom;->a:I

    sget-object v1, Ldom;->d:Ldom;

    iget-object v1, v1, Ldom;->c:Ljava/lang/String;

    iput-object v1, p1, Ldom;->c:Ljava/lang/String;

    iget-boolean p1, v0, Lddf;->c:Z

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean p2, v0, Lddf;->c:Z

    :cond_7
    iget-object p1, v0, Lddf;->b:Lddk;

    .line 21
    check-cast p1, Ldor;

    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object p2

    check-cast p2, Ldom;

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Ldor;->d:Ldom;

    iget p2, p1, Ldor;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Ldor;->a:I

    .line 23
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldor;

    return-object p1

    .line 16
    :cond_8
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
