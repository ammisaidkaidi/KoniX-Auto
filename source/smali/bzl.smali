.class public final synthetic Lbzl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lbzm;

.field public final synthetic b:[Lbzi;


# direct methods
.method public synthetic constructor <init>(Lbzm;[Lbzi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzl;->a:Lbzm;

    iput-object p2, p0, Lbzl;->b:[Lbzi;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 8

    .line 1
    iget-object v0, p0, Lbzl;->a:Lbzm;

    iget-object v1, p0, Lbzl;->b:[Lbzi;

    iget-object v2, v0, Lbzm;->a:Lbwn;

    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v3

    iget-object v0, v0, Lbzm;->b:Ldgz;

    .line 2
    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzj;

    .line 3
    sget-object v4, Ldoz;->b:Ldoz;

    .line 4
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    array-length v5, v1

    const/4 v6, 0x0

    if-lez v5, :cond_5

    .line 5
    sget-object v2, Ldoy;->g:Ldoy;

    .line 6
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    .line 7
    aget-object v3, v1, v6

    iget v4, v3, Lbzi;->d:I

    .line 8
    iget v4, v3, Lbzi;->c:I

    .line 9
    iget-wide v4, v3, Lbzi;->b:J

    .line 10
    iget-wide v4, v3, Lbzi;->a:J

    .line 11
    iget v3, v3, Lbzi;->g:I

    iget-boolean v3, v2, Lddf;->c:Z

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_0
    iget-object v3, v2, Lddf;->b:Lddk;

    .line 13
    check-cast v3, Ldoy;

    iget v4, v3, Ldoy;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ldoy;->a:I

    iput v6, v3, Ldoy;->b:I

    .line 14
    aget-object v3, v1, v6

    iget v3, v3, Lbzi;->j:I

    .line 15
    sget-object v3, Ldpa;->c:Ldpa;

    .line 16
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 15
    aget-object v4, v1, v6

    iget v4, v4, Lbzi;->j:I

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v6, v3, Lddf;->c:Z

    :cond_1
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 17
    check-cast v4, Ldpa;

    iget v5, v4, Ldpa;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Ldpa;->a:I

    iput v6, v4, Ldpa;->b:I

    .line 15
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldpa;

    iget-boolean v4, v2, Lddf;->c:Z

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_2
    iget-object v4, v2, Lddf;->b:Lddk;

    .line 19
    check-cast v4, Ldoy;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Ldoy;->f:Ldpa;

    iget v3, v4, Ldoy;->a:I

    const/high16 v5, 0x400000

    or-int/2addr v3, v5

    iput v3, v4, Ldoy;->a:I

    .line 21
    aget-object v3, v1, v6

    iget-object v4, v3, Lbzi;->h:Ljava/lang/String;

    .line 22
    iget-object v3, v3, Lbzi;->f:Ljava/lang/String;

    .line 23
    const/4 v3, 0x0

    invoke-static {v3}, Lcoe;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, v2, Lddf;->c:Z

    if-eqz v4, :cond_3

    .line 22
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_3
    iget-object v2, v2, Lddf;->b:Lddk;

    .line 24
    check-cast v2, Ldoy;

    iput v6, v2, Ldoy;->c:I

    iget v4, v2, Ldoy;->a:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v2, Ldoy;->a:I

    iget-object v0, v0, Lbzj;->b:Ldny;

    check-cast v0, Lbtq;

    .line 25
    invoke-virtual {v0}, Lbtq;->b()Lbzh;

    .line 26
    aget-object v0, v1, v6

    iget-object v1, v0, Lbzi;->e:Ljava/lang/String;

    .line 27
    iget-object v0, v0, Lbzi;->i:Ldpg;

    .line 28
    throw v3

    .line 38
    :cond_4
    nop

    .line 29
    throw v3

    .line 30
    :cond_5
    sget-object v1, Ldpz;->y:Ldpz;

    .line 31
    invoke-virtual {v1}, Lddk;->n()Lddf;

    move-result-object v1

    iget-boolean v5, v1, Lddf;->c:Z

    if-eqz v5, :cond_6

    .line 30
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v6, v1, Lddf;->c:Z

    :cond_6
    iget-object v5, v1, Lddf;->b:Lddk;

    .line 32
    check-cast v5, Ldpz;

    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Ldoz;

    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Ldpz;->g:Ldoz;

    iget v4, v5, Ldpz;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v5, Ldpz;->a:I

    :try_start_0
    iget-object v0, v0, Lbzj;->b:Ldny;

    check-cast v0, Lbtq;

    .line 34
    invoke-virtual {v0}, Lbtq;->b()Lbzh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    sget-object v4, Lbzj;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    .line 35
    invoke-interface {v4, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v4, 0xf0

    const-string v5, "com/google/android/libraries/performance/primes/metrics/network/NetworkMetricCollector"

    const-string v6, "getMetric"

    const-string v7, "NetworkMetricCollector.java"

    invoke-interface {v0, v5, v6, v4, v7}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v4, "Exception while getting network metric extension!"

    invoke-interface {v0, v4}, Lcsx;->n(Ljava/lang/String;)V

    .line 36
    :goto_0
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldpz;

    .line 2
    invoke-virtual {v3, v0}, Lbwi;->d(Ldpz;)V

    .line 37
    invoke-virtual {v3}, Lbwi;->a()Lbwj;

    move-result-object v0

    .line 38
    invoke-virtual {v2, v0}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object v0

    return-object v0
.end method
