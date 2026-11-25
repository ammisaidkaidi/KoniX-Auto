.class public final synthetic Lcal;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcam;


# direct methods
.method public synthetic constructor <init>(Lcam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcal;->a:Lcam;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 12

    .line 1
    iget-object v0, p0, Lcal;->a:Lcam;

    iget-object v1, v0, Lcam;->d:Ldgz;

    invoke-interface {v1}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcak;

    iget-boolean v1, v1, Lcak;->a:Z

    if-eqz v1, :cond_0

    .line 2
    sget-object v0, Ldad;->a:Ldag;

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lcam;->c:Landroid/app/Application;

    .line 3
    invoke-static {v1}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    sget-object v0, Ldad;->a:Ldag;

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-static {}, Lbjq;->e()V

    iget-object v1, v0, Lcam;->e:Lcbs;

    sget-wide v2, Lcam;->a:J

    .line 5
    invoke-static {}, Lbjq;->e()V

    iget-object v4, v1, Lcbs;->a:Landroid/content/Context;

    .line 6
    invoke-static {v4}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "primes.packageMetric.lastSendTime"

    if-nez v4, :cond_2

    goto :goto_2

    .line 52
    :cond_2
    iget-object v4, v1, Lcbs;->a:Landroid/content/Context;

    .line 7
    invoke-static {v4}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v4

    const-wide/16 v6, -0x1

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcbs;->b:Ldny;

    invoke-interface {v4}, Ldny;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    goto :goto_0

    .line 53
    :cond_3
    move-wide v8, v6

    .line 8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    cmp-long v4, v10, v8

    if-gez v4, :cond_4

    iget-object v1, v1, Lcbs;->b:Ldny;

    .line 9
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-wide v8, v6

    goto :goto_1

    .line 53
    :cond_4
    nop

    .line 9
    :goto_1
    cmp-long v1, v8, v6

    if-eqz v1, :cond_5

    add-long/2addr v8, v2

    cmp-long v1, v10, v8

    if-gtz v1, :cond_5

    .line 53
    sget-object v0, Ldad;->a:Ldag;

    goto/16 :goto_3

    .line 6
    :cond_5
    :goto_2
    iget-object v1, v0, Lcam;->b:Lbwn;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lbwn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 11
    sget-object v0, Ldad;->a:Ldag;

    goto/16 :goto_3

    :cond_6
    iget-object v1, v0, Lcam;->c:Landroid/app/Application;

    .line 12
    invoke-static {}, Lbjq;->e()V

    .line 13
    invoke-static {v1}, Lcai;->a(Landroid/content/Context;)Landroid/content/pm/PackageStats;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    const-string v1, "PackageStats capture failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object v0

    goto/16 :goto_3

    .line 15
    :cond_7
    sget-object v2, Ldpz;->y:Ldpz;

    .line 16
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    .line 17
    sget-object v3, Ldps;->k:Ldps;

    .line 18
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 17
    iget-wide v6, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-boolean v4, v3, Lddf;->c:Z

    const/4 v8, 0x0

    if-eqz v4, :cond_8

    .line 19
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v8, v3, Lddf;->c:Z

    :cond_8
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 20
    check-cast v4, Ldps;

    iget v9, v4, Ldps;->a:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v4, Ldps;->a:I

    iput-wide v6, v4, Ldps;->b:J

    .line 19
    iget-wide v6, v1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_9

    .line 21
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v8, v3, Lddf;->c:Z

    :cond_9
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 22
    check-cast v4, Ldps;

    iget v9, v4, Ldps;->a:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v4, Ldps;->a:I

    iput-wide v6, v4, Ldps;->c:J

    .line 23
    iget-wide v6, v1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_a

    .line 24
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v8, v3, Lddf;->c:Z

    :cond_a
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 25
    check-cast v4, Ldps;

    iget v9, v4, Ldps;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v4, Ldps;->a:I

    iput-wide v6, v4, Ldps;->d:J

    .line 26
    iget-wide v6, v1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_b

    .line 27
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v8, v3, Lddf;->c:Z

    :cond_b
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 28
    check-cast v4, Ldps;

    iget v9, v4, Ldps;->a:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v4, Ldps;->a:I

    iput-wide v6, v4, Ldps;->e:J

    .line 29
    iget-wide v6, v1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_c

    .line 30
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v8, v3, Lddf;->c:Z

    :cond_c
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 31
    check-cast v4, Ldps;

    iget v9, v4, Ldps;->a:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v4, Ldps;->a:I

    iput-wide v6, v4, Ldps;->f:J

    .line 32
    iget-wide v6, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_d

    .line 33
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v8, v3, Lddf;->c:Z

    :cond_d
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 34
    check-cast v4, Ldps;

    iget v9, v4, Ldps;->a:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v4, Ldps;->a:I

    iput-wide v6, v4, Ldps;->g:J

    .line 35
    iget-wide v6, v1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_e

    .line 36
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v8, v3, Lddf;->c:Z

    :cond_e
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 37
    check-cast v4, Ldps;

    iget v9, v4, Ldps;->a:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v4, Ldps;->a:I

    iput-wide v6, v4, Ldps;->h:J

    .line 38
    iget-wide v6, v1, Landroid/content/pm/PackageStats;->externalObbSize:J

    iget-boolean v1, v3, Lddf;->c:Z

    if-eqz v1, :cond_f

    .line 39
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v8, v3, Lddf;->c:Z

    :cond_f
    iget-object v1, v3, Lddf;->b:Lddk;

    .line 40
    check-cast v1, Ldps;

    iget v4, v1, Ldps;->a:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v1, Ldps;->a:I

    iput-wide v6, v1, Ldps;->i:J

    .line 41
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldps;

    const/4 v3, 0x5

    .line 42
    invoke-virtual {v1, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v3

    .line 43
    check-cast v3, Lddf;

    .line 44
    invoke-virtual {v3, v1}, Lddf;->n(Lddk;)V

    iget-object v1, v0, Lcam;->d:Ldgz;

    .line 45
    invoke-interface {v1}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcak;

    iget-object v1, v1, Lcak;->b:Lcoc;

    iget-boolean v1, v2, Lddf;->c:Z

    if-eqz v1, :cond_10

    .line 46
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v8, v2, Lddf;->c:Z

    :cond_10
    iget-object v1, v2, Lddf;->b:Lddk;

    .line 47
    check-cast v1, Ldpz;

    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldps;

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v1, Ldpz;->j:Ldps;

    iget v3, v1, Ldpz;->a:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Ldpz;->a:I

    iget-object v1, v0, Lcam;->e:Lcbs;

    iget-object v3, v1, Lcbs;->a:Landroid/content/Context;

    .line 49
    invoke-static {v3}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v1, v1, Lcbs;->b:Ldny;

    .line 50
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 50
    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_11
    iget-object v0, v0, Lcam;->b:Lbwn;

    .line 52
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v1

    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Ldpz;

    invoke-virtual {v1, v2}, Lbwi;->d(Ldpz;)V

    invoke-virtual {v1}, Lbwi;->a()Lbwj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object v0

    .line 2
    :goto_3
    return-object v0
.end method
