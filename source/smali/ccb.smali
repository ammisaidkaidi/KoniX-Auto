.class public final synthetic Lccb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lccd;

.field public final synthetic b:Lcch;

.field public final synthetic c:Ldgz;

.field public final synthetic d:Ldny;


# direct methods
.method public synthetic constructor <init>(Lccd;Lcch;Ldgz;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccb;->a:Lccd;

    iput-object p2, p0, Lccb;->b:Lcch;

    iput-object p3, p0, Lccb;->c:Ldgz;

    iput-object p4, p0, Lccb;->d:Ldny;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const-string v0, "Sampler.java"

    const-string v1, "fetchSamplingConfig"

    const-string v2, "com/google/android/libraries/performance/primes/sampling/Sampler"

    iget-object v3, p0, Lccb;->a:Lccd;

    iget-object v4, p0, Lccb;->b:Lcch;

    iget-object v5, p0, Lccb;->c:Ldgz;

    iget-object v6, p0, Lccb;->d:Ldny;

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v5}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbvl;

    .line 2
    invoke-interface {v5}, Lbvl;->b()Z

    move-result v8

    iput-boolean v8, v3, Lccd;->c:Z

    .line 3
    invoke-interface {v5}, Lbvl;->a()I

    move-result v5

    invoke-static {v5}, Lcbz;->b(I)Lcbz;

    move-result-object v5

    iput-object v5, v3, Lccd;->d:Lcbz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    move-exception v5

    sget-object v8, Lccd;->a:Lcsz;

    invoke-virtual {v8}, Lcsv;->c()Lctq;

    move-result-object v8

    .line 4
    invoke-interface {v8, v5}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v5

    check-cast v5, Lcsx;

    const/16 v8, 0x4e

    invoke-interface {v5, v2, v1, v8, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v5

    check-cast v5, Lcsx;

    const-string v8, "Couldn\'t get config"

    invoke-interface {v5, v8}, Lcsx;->n(Ljava/lang/String;)V

    iput-boolean v7, v3, Lccd;->c:Z

    .line 3
    :goto_0
    iget-boolean v5, v3, Lccd;->c:Z

    const/4 v8, 0x2

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 11
    :try_start_1
    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldpy;

    invoke-virtual {v4, v5}, Lcch;->a(Ldpy;)Lcci;

    move-result-object v5

    iput-object v5, v3, Lccd;->b:Lcci;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 4
    :catchall_1
    move-exception v5

    sget-object v6, Lccd;->a:Lcsz;

    invoke-virtual {v6}, Lcsv;->c()Lctq;

    move-result-object v6

    .line 12
    invoke-interface {v6, v5}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v5

    check-cast v5, Lcsx;

    const/16 v6, 0x56

    invoke-interface {v5, v2, v1, v6, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Couldn\'t get sampling strategy"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 13
    sget-object v0, Ldpy;->d:Ldpy;

    .line 14
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v7, v0, Lddf;->c:Z

    :cond_0
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 16
    check-cast v1, Ldpy;

    iget v2, v1, Ldpy;->a:I

    or-int/2addr v2, v8

    iput v2, v1, Ldpy;->a:I

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Ldpy;->b:J

    const/4 v5, 0x1

    iput v5, v1, Ldpy;->c:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Ldpy;->a:I

    .line 17
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldpy;

    .line 18
    invoke-virtual {v4, v0}, Lcch;->a(Ldpy;)Lcci;

    move-result-object v0

    iput-object v0, v3, Lccd;->b:Lcci;

    return-void

    .line 11
    :cond_1
    if-nez v6, :cond_3

    .line 5
    sget-object v0, Ldpy;->d:Ldpy;

    .line 6
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v7, v0, Lddf;->c:Z

    :cond_2
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 8
    check-cast v1, Ldpy;

    iput v8, v1, Ldpy;->c:I

    iget v2, v1, Ldpy;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Ldpy;->a:I

    .line 9
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldpy;

    .line 10
    invoke-virtual {v4, v0}, Lcch;->a(Ldpy;)Lcci;

    move-result-object v0

    iput-object v0, v3, Lccd;->b:Lcci;

    :cond_3
    return-void
.end method
