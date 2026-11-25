.class public Lbvs;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 7

    .line 1
    const-string v0, "Inoperable file:"

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, " canonical[%s] freeSpace[%d]"

    .line 3
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 3
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v5, [Ljava/lang/Object;

    iget p0, p0, Landroid/system/StructStat;->st_mode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const-string p0, " mode[%d]"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 5
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p0

    goto :goto_2

    .line 6
    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 3
    :catch_2
    move-exception p0

    .line 6
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_2
    new-instance p0, Ljava/io/IOException;

    .line 7
    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    .line 15
    :cond_5
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    .line 16
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    .line 18
    :cond_7
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    .line 19
    :cond_8
    invoke-static {p0, p1}, Lbvs;->a(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/os/health/HealthStats;I)J
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasMeasurement(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getMeasurement(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static e(Landroid/os/health/HealthStats;I)Ljava/util/List;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasTimers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbwb;->a:Lbwb;

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getTimers(I)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lbvz;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 3
    :goto_0
    return-object p0
.end method

.method public static f(Landroid/os/health/HealthStats;I)Ljava/util/Map;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasStats(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getStats(I)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ldom;
    .locals 3

    .line 1
    sget-object v0, Ldom;->d:Ldom;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_0
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 3
    check-cast v1, Ldom;

    iget v2, v1, Ldom;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Ldom;->a:I

    iput-object p0, v1, Ldom;->c:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Ldom;

    return-object p0
.end method

.method public static h(Landroid/os/health/HealthStats;I)Ldor;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasTimer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getTimer(I)Landroid/os/health/TimerStat;

    move-result-object p0

    invoke-static {v0, p0}, Lbvs;->j(Ljava/lang/String;Landroid/os/health/TimerStat;)Ldor;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method static i(Ldor;Ldor;)Ldor;
    .locals 5

    .line 1
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Ldor;->b:I

    iget v1, p1, Ldor;->b:I

    sub-int/2addr v0, v1

    iget-wide v1, p0, Ldor;->c:J

    iget-wide v3, p1, Ldor;->c:J

    sub-long/2addr v1, v3

    const/4 p1, 0x0

    if-nez v0, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    nop

    .line 1
    :goto_0
    sget-object v3, Ldor;->e:Ldor;

    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    iget-object p0, p0, Ldor;->d:Ldom;

    if-nez p0, :cond_3

    .line 2
    sget-object p0, Ldom;->d:Ldom;

    :cond_3
    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_4

    .line 3
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean p1, v3, Lddf;->c:Z

    :cond_4
    iget-object p1, v3, Lddf;->b:Lddk;

    .line 4
    check-cast p1, Ldor;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Ldor;->d:Ldom;

    iget p0, p1, Ldor;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Ldor;->a:I

    or-int/lit8 p0, p0, 0x1

    iput p0, p1, Ldor;->a:I

    iput v0, p1, Ldor;->b:I

    or-int/lit8 p0, p0, 0x2

    iput p0, p1, Ldor;->a:I

    iput-wide v1, p1, Ldor;->c:J

    .line 6
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Ldor;

    return-object p0

    .line 1
    :cond_5
    :goto_1
    return-object p0
.end method

.method public static j(Ljava/lang/String;Landroid/os/health/TimerStat;)Ldor;
    .locals 5

    .line 1
    sget-object v0, Ldor;->e:Ldor;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    .line 1
    invoke-virtual {p1}, Landroid/os/health/TimerStat;->getCount()I

    move-result v1

    iget-boolean v2, v0, Lddf;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_0
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 3
    check-cast v2, Ldor;

    iget v4, v2, Ldor;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Ldor;->a:I

    iput v1, v2, Ldor;->b:I

    .line 1
    invoke-virtual {p1}, Landroid/os/health/TimerStat;->getTime()J

    move-result-wide v1

    iget-boolean p1, v0, Lddf;->c:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_1
    iget-object p1, v0, Lddf;->b:Lddk;

    .line 5
    check-cast p1, Ldor;

    iget v4, p1, Ldor;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Ldor;->a:I

    iput-wide v1, p1, Ldor;->c:J

    iget v1, p1, Ldor;->b:I

    if-gez v1, :cond_2

    or-int/lit8 v1, v4, 0x1

    iput v1, p1, Ldor;->a:I

    iput v3, p1, Ldor;->b:I

    :cond_2
    if-eqz p0, :cond_4

    .line 6
    invoke-static {p0}, Lbvs;->g(Ljava/lang/String;)Ldom;

    move-result-object p0

    iget-boolean p1, v0, Lddf;->c:Z

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_3
    iget-object p1, v0, Lddf;->b:Lddk;

    .line 8
    check-cast p1, Ldor;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Ldor;->d:Ldom;

    iget p0, p1, Ldor;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Ldor;->a:I

    :cond_4
    iget-object p0, v0, Lddf;->b:Lddk;

    .line 10
    check-cast p0, Ldor;

    iget p1, p0, Ldor;->b:I

    if-nez p1, :cond_5

    iget-wide p0, p0, Ldor;->c:J

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_5
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Ldor;

    return-object p0
.end method

.method static k(Ldos;Ldos;)Ldos;
    .locals 12

    .line 1
    if-eqz p0, :cond_a5

    if-nez p1, :cond_0

    goto/16 :goto_20

    :cond_0
    sget-object v0, Ldos;->ar:Ldos;

    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget v1, p0, Ldos;->a:I

    and-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-wide v5, p0, Ldos;->c:J

    iget-wide v7, p1, Ldos;->c:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_1
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 3
    check-cast v1, Ldos;

    iget v7, v1, Ldos;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v1, Ldos;->a:I

    iput-wide v5, v1, Ldos;->c:J

    :cond_2
    iget v1, p0, Ldos;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    iget-wide v5, p0, Ldos;->d:J

    iget-wide v7, p1, Ldos;->d:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_3
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 5
    check-cast v1, Ldos;

    iget v7, v1, Ldos;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v1, Ldos;->a:I

    iput-wide v5, v1, Ldos;->d:J

    :cond_4
    iget v1, p0, Ldos;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    iget-wide v5, p0, Ldos;->e:J

    iget-wide v7, p1, Ldos;->e:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_5
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 7
    check-cast v1, Ldos;

    iget v7, v1, Ldos;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v1, Ldos;->a:I

    iput-wide v5, v1, Ldos;->e:J

    :cond_6
    iget v1, p0, Ldos;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    iget-wide v5, p0, Ldos;->f:J

    iget-wide v7, p1, Ldos;->f:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_7

    .line 8
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_7
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 9
    check-cast v1, Ldos;

    iget v7, v1, Ldos;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v1, Ldos;->a:I

    iput-wide v5, v1, Ldos;->f:J

    :cond_8
    sget-object v1, Lbwb;->a:Lbwb;

    iget-object v5, p0, Ldos;->g:Lddr;

    iget-object v6, p1, Ldos;->g:Lddr;

    .line 10
    invoke-virtual {v1, v5, v6}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->Q(Ljava/lang/Iterable;)V

    sget-object v1, Lbwb;->a:Lbwb;

    iget-object v5, p0, Ldos;->h:Lddr;

    iget-object v6, p1, Ldos;->h:Lddr;

    .line 11
    invoke-virtual {v1, v5, v6}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->R(Ljava/lang/Iterable;)V

    sget-object v1, Lbwb;->a:Lbwb;

    iget-object v5, p0, Ldos;->i:Lddr;

    iget-object v6, p1, Ldos;->i:Lddr;

    .line 12
    invoke-virtual {v1, v5, v6}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->S(Ljava/lang/Iterable;)V

    sget-object v1, Lbwb;->a:Lbwb;

    iget-object v5, p0, Ldos;->j:Lddr;

    iget-object v6, p1, Ldos;->j:Lddr;

    .line 13
    invoke-virtual {v1, v5, v6}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->P(Ljava/lang/Iterable;)V

    sget-object v1, Lbwb;->a:Lbwb;

    iget-object v5, p0, Ldos;->k:Lddr;

    iget-object v6, p1, Ldos;->k:Lddr;

    .line 14
    invoke-virtual {v1, v5, v6}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->O(Ljava/lang/Iterable;)V

    sget-object v1, Lbwb;->a:Lbwb;

    iget-object v5, p0, Ldos;->l:Lddr;

    iget-object v6, p1, Ldos;->l:Lddr;

    .line 15
    invoke-virtual {v1, v5, v6}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->K(Ljava/lang/Iterable;)V

    iget v1, p0, Ldos;->a:I

    and-int/lit8 v1, v1, 0x10

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Ldos;->m:Ldor;

    if-nez v1, :cond_a

    .line 16
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_0

    .line 194
    :cond_9
    move-object v1, v5

    .line 16
    :cond_a
    :goto_0
    iget v6, p1, Ldos;->a:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_b

    iget-object v6, p1, Ldos;->m:Ldor;

    if-nez v6, :cond_c

    .line 17
    sget-object v6, Ldor;->e:Ldor;

    goto :goto_1

    .line 194
    :cond_b
    move-object v6, v5

    .line 18
    :cond_c
    :goto_1
    invoke-static {v1, v6}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v6, v0, Lddf;->c:Z

    if-eqz v6, :cond_d

    .line 19
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_d
    iget-object v6, v0, Lddf;->b:Lddk;

    .line 20
    check-cast v6, Ldos;

    iput-object v1, v6, Ldos;->m:Ldor;

    iget v1, v6, Ldos;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v6, Ldos;->a:I

    :cond_e
    sget-object v1, Lbwb;->a:Lbwb;

    iget-object v6, p0, Ldos;->n:Lddr;

    iget-object v7, p1, Ldos;->n:Lddr;

    .line 21
    invoke-virtual {v1, v6, v7}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->L(Ljava/lang/Iterable;)V

    sget-object v1, Lbvy;->a:Lbvy;

    iget-object v6, p0, Ldos;->p:Lddr;

    iget-object v7, p1, Ldos;->p:Lddr;

    .line 22
    invoke-virtual {v1, v6, v7}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->N(Ljava/lang/Iterable;)V

    sget-object v1, Lbvx;->a:Lbvx;

    iget-object v6, p0, Ldos;->u:Lddr;

    iget-object v7, p1, Ldos;->u:Lddr;

    .line 23
    invoke-virtual {v1, v6, v7}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->M(Ljava/lang/Iterable;)V

    iget v1, p0, Ldos;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_10

    iget-wide v6, p0, Ldos;->v:J

    iget-wide v8, p1, Ldos;->v:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_f

    .line 24
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_f
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 25
    check-cast v1, Ldos;

    iget v8, v1, Ldos;->a:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v1, Ldos;->a:I

    iput-wide v6, v1, Ldos;->v:J

    :cond_10
    iget v1, p0, Ldos;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_12

    iget-wide v6, p0, Ldos;->w:J

    iget-wide v8, p1, Ldos;->w:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_11

    .line 26
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_11
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 27
    check-cast v1, Ldos;

    iget v8, v1, Ldos;->a:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v1, Ldos;->a:I

    iput-wide v6, v1, Ldos;->w:J

    :cond_12
    iget v1, p0, Ldos;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_14

    iget-wide v6, p0, Ldos;->x:J

    iget-wide v8, p1, Ldos;->x:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_13

    .line 28
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_13
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 29
    check-cast v1, Ldos;

    iget v8, v1, Ldos;->a:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v1, Ldos;->a:I

    iput-wide v6, v1, Ldos;->x:J

    :cond_14
    iget v1, p0, Ldos;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_16

    iget-wide v6, p0, Ldos;->y:J

    iget-wide v8, p1, Ldos;->y:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_15

    .line 30
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_15
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 31
    check-cast v1, Ldos;

    iget v8, v1, Ldos;->a:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v1, Ldos;->a:I

    iput-wide v6, v1, Ldos;->y:J

    :cond_16
    iget v1, p0, Ldos;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_18

    iget-wide v6, p0, Ldos;->z:J

    iget-wide v8, p1, Ldos;->z:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_17

    .line 32
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_17
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 33
    check-cast v1, Ldos;

    iget v8, v1, Ldos;->a:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v1, Ldos;->a:I

    iput-wide v6, v1, Ldos;->z:J

    :cond_18
    iget v1, p0, Ldos;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1a

    iget-wide v6, p0, Ldos;->A:J

    iget-wide v8, p1, Ldos;->A:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_19

    .line 34
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_19
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 35
    check-cast v1, Ldos;

    iget v8, v1, Ldos;->a:I

    or-int/lit16 v8, v8, 0x400

    iput v8, v1, Ldos;->a:I

    iput-wide v6, v1, Ldos;->A:J

    :cond_1a
    iget v1, p0, Ldos;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1c

    iget-wide v6, p0, Ldos;->B:J

    iget-wide v8, p1, Ldos;->B:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_1b

    .line 36
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_1b
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 37
    check-cast v1, Ldos;

    .line 38
    invoke-virtual {v1, v6, v7}, Ldos;->L(J)V

    :cond_1c
    iget v1, p0, Ldos;->a:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1e

    iget-wide v6, p0, Ldos;->C:J

    iget-wide v8, p1, Ldos;->C:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_1e

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_1d

    .line 39
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_1d
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 40
    check-cast v1, Ldos;

    .line 41
    invoke-virtual {v1, v6, v7}, Ldos;->M(J)V

    :cond_1e
    iget v1, p0, Ldos;->a:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_20

    iget-wide v6, p0, Ldos;->D:J

    iget-wide v8, p1, Ldos;->D:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_20

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_1f

    .line 42
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_1f
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 43
    check-cast v1, Ldos;

    .line 44
    invoke-virtual {v1, v6, v7}, Ldos;->N(J)V

    :cond_20
    iget v1, p0, Ldos;->a:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_22

    iget-wide v6, p0, Ldos;->E:J

    iget-wide v8, p1, Ldos;->E:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_22

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_21

    .line 45
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_21
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 46
    check-cast v1, Ldos;

    .line 47
    invoke-virtual {v1, v6, v7}, Ldos;->O(J)V

    :cond_22
    iget v1, p0, Ldos;->a:I

    const v6, 0x8000

    and-int/2addr v1, v6

    if-eqz v1, :cond_24

    iget-wide v7, p0, Ldos;->F:J

    iget-wide v9, p1, Ldos;->F:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_23

    .line 48
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_23
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 49
    check-cast v1, Ldos;

    .line 50
    invoke-virtual {v1, v7, v8}, Ldos;->P(J)V

    :cond_24
    iget v1, p0, Ldos;->a:I

    const/high16 v7, 0x10000

    and-int/2addr v1, v7

    if-eqz v1, :cond_26

    iget-wide v8, p0, Ldos;->G:J

    iget-wide v10, p1, Ldos;->G:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_26

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_25

    .line 51
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_25
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 52
    check-cast v1, Ldos;

    .line 53
    invoke-virtual {v1, v8, v9}, Ldos;->Q(J)V

    :cond_26
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x20000

    and-int/2addr v1, v8

    if-eqz v1, :cond_28

    iget-wide v8, p0, Ldos;->H:J

    iget-wide v10, p1, Ldos;->H:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_28

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_27

    .line 54
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_27
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 55
    check-cast v1, Ldos;

    .line 56
    invoke-virtual {v1, v8, v9}, Ldos;->R(J)V

    :cond_28
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_2a

    iget-wide v8, p0, Ldos;->I:J

    iget-wide v10, p1, Ldos;->I:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_29

    .line 57
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_29
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 58
    check-cast v1, Ldos;

    .line 59
    invoke-virtual {v1, v8, v9}, Ldos;->S(J)V

    :cond_2a
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x80000

    and-int/2addr v1, v8

    if-eqz v1, :cond_2b

    iget-object v1, p0, Ldos;->J:Ldor;

    if-nez v1, :cond_2c

    .line 60
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_2

    .line 194
    :cond_2b
    move-object v1, v5

    .line 60
    :cond_2c
    :goto_2
    iget v9, p1, Ldos;->a:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_2d

    iget-object v8, p1, Ldos;->J:Ldor;

    if-nez v8, :cond_2e

    .line 61
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_3

    .line 194
    :cond_2d
    move-object v8, v5

    .line 62
    :cond_2e
    :goto_3
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_2f

    .line 63
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_2f
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 64
    check-cast v8, Ldos;

    .line 65
    invoke-virtual {v8, v1}, Ldos;->T(Ldor;)V

    :cond_30
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x100000

    and-int/2addr v1, v8

    if-eqz v1, :cond_32

    iget-wide v8, p0, Ldos;->K:J

    iget-wide v10, p1, Ldos;->K:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_32

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_31

    .line 66
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_31
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 67
    check-cast v1, Ldos;

    .line 68
    invoke-virtual {v1, v8, v9}, Ldos;->U(J)V

    :cond_32
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x200000

    and-int/2addr v1, v8

    if-eqz v1, :cond_33

    iget-object v1, p0, Ldos;->L:Ldor;

    if-nez v1, :cond_34

    .line 69
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_4

    .line 194
    :cond_33
    move-object v1, v5

    .line 69
    :cond_34
    :goto_4
    iget v9, p1, Ldos;->a:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_35

    iget-object v8, p1, Ldos;->L:Ldor;

    if-nez v8, :cond_36

    .line 70
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_5

    .line 194
    :cond_35
    move-object v8, v5

    .line 71
    :cond_36
    :goto_5
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_37

    .line 72
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_37
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 73
    check-cast v8, Ldos;

    .line 74
    invoke-virtual {v8, v1}, Ldos;->V(Ldor;)V

    :cond_38
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x400000

    and-int/2addr v1, v8

    if-eqz v1, :cond_39

    iget-object v1, p0, Ldos;->M:Ldor;

    if-nez v1, :cond_3a

    .line 75
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_6

    .line 194
    :cond_39
    move-object v1, v5

    .line 75
    :cond_3a
    :goto_6
    iget v8, p1, Ldos;->a:I

    const/high16 v9, 0x400000

    and-int/2addr v8, v9

    if-eqz v8, :cond_3b

    iget-object v8, p1, Ldos;->M:Ldor;

    if-nez v8, :cond_3c

    .line 76
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_7

    .line 194
    :cond_3b
    move-object v8, v5

    .line 77
    :cond_3c
    :goto_7
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_3d

    .line 78
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_3d
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 79
    check-cast v8, Ldos;

    .line 80
    invoke-virtual {v8, v1}, Ldos;->W(Ldor;)V

    :cond_3e
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x800000

    and-int/2addr v1, v8

    if-eqz v1, :cond_3f

    iget-object v1, p0, Ldos;->N:Ldor;

    if-nez v1, :cond_40

    .line 81
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_8

    .line 194
    :cond_3f
    move-object v1, v5

    .line 81
    :cond_40
    :goto_8
    iget v8, p1, Ldos;->a:I

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    if-eqz v8, :cond_41

    iget-object v8, p1, Ldos;->N:Ldor;

    if-nez v8, :cond_42

    .line 82
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_9

    .line 194
    :cond_41
    move-object v8, v5

    .line 83
    :cond_42
    :goto_9
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_43

    .line 84
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_43
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 85
    check-cast v8, Ldos;

    .line 86
    invoke-virtual {v8, v1}, Ldos;->X(Ldor;)V

    :cond_44
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x1000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_45

    iget-object v1, p0, Ldos;->O:Ldor;

    if-nez v1, :cond_46

    .line 87
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_a

    .line 194
    :cond_45
    move-object v1, v5

    .line 87
    :cond_46
    :goto_a
    iget v8, p1, Ldos;->a:I

    const/high16 v9, 0x1000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_47

    iget-object v8, p1, Ldos;->O:Ldor;

    if-nez v8, :cond_48

    .line 88
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_b

    .line 194
    :cond_47
    move-object v8, v5

    .line 89
    :cond_48
    :goto_b
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_49

    .line 90
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_49
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 91
    check-cast v8, Ldos;

    .line 92
    invoke-virtual {v8, v1}, Ldos;->Y(Ldor;)V

    :cond_4a
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x2000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_4b

    iget-object v1, p0, Ldos;->P:Ldor;

    if-nez v1, :cond_4c

    .line 93
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_c

    .line 194
    :cond_4b
    move-object v1, v5

    .line 93
    :cond_4c
    :goto_c
    iget v8, p1, Ldos;->a:I

    const/high16 v9, 0x2000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_4d

    iget-object v8, p1, Ldos;->P:Ldor;

    if-nez v8, :cond_4e

    .line 94
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_d

    .line 194
    :cond_4d
    move-object v8, v5

    .line 95
    :cond_4e
    :goto_d
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_4f

    .line 96
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_4f
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 97
    check-cast v8, Ldos;

    .line 98
    invoke-virtual {v8, v1}, Ldos;->Z(Ldor;)V

    :cond_50
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x4000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_51

    iget-object v1, p0, Ldos;->Q:Ldor;

    if-nez v1, :cond_52

    .line 99
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_e

    .line 194
    :cond_51
    move-object v1, v5

    .line 99
    :cond_52
    :goto_e
    iget v8, p1, Ldos;->a:I

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_53

    iget-object v8, p1, Ldos;->Q:Ldor;

    if-nez v8, :cond_54

    .line 100
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_f

    .line 194
    :cond_53
    move-object v8, v5

    .line 101
    :cond_54
    :goto_f
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_55

    .line 102
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_55
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 103
    check-cast v8, Ldos;

    .line 104
    invoke-virtual {v8, v1}, Ldos;->aa(Ldor;)V

    :cond_56
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x8000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_57

    iget-object v1, p0, Ldos;->R:Ldor;

    if-nez v1, :cond_58

    .line 105
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_10

    .line 194
    :cond_57
    move-object v1, v5

    .line 105
    :cond_58
    :goto_10
    iget v8, p1, Ldos;->a:I

    const/high16 v9, 0x8000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_59

    iget-object v8, p1, Ldos;->R:Ldor;

    if-nez v8, :cond_5a

    .line 106
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_11

    .line 194
    :cond_59
    move-object v8, v5

    .line 107
    :cond_5a
    :goto_11
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_5b

    .line 108
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_5b
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 109
    check-cast v8, Ldos;

    .line 110
    invoke-virtual {v8, v1}, Ldos;->ab(Ldor;)V

    :cond_5c
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x10000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_5d

    iget-object v1, p0, Ldos;->S:Ldor;

    if-nez v1, :cond_5e

    .line 111
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_12

    .line 194
    :cond_5d
    move-object v1, v5

    .line 111
    :cond_5e
    :goto_12
    iget v8, p1, Ldos;->a:I

    const/high16 v9, 0x10000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_5f

    iget-object v8, p1, Ldos;->S:Ldor;

    if-nez v8, :cond_60

    .line 112
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_13

    .line 194
    :cond_5f
    move-object v8, v5

    .line 113
    :cond_60
    :goto_13
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_62

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_61

    .line 114
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_61
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 115
    check-cast v8, Ldos;

    .line 116
    invoke-virtual {v8, v1}, Ldos;->ac(Ldor;)V

    :cond_62
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x20000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_63

    iget-object v1, p0, Ldos;->T:Ldor;

    if-nez v1, :cond_64

    .line 117
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_14

    .line 194
    :cond_63
    move-object v1, v5

    .line 117
    :cond_64
    :goto_14
    iget v8, p1, Ldos;->a:I

    const/high16 v9, 0x20000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_65

    iget-object v8, p1, Ldos;->T:Ldor;

    if-nez v8, :cond_66

    .line 118
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_15

    .line 194
    :cond_65
    move-object v8, v5

    .line 119
    :cond_66
    :goto_15
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_68

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_67

    .line 120
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_67
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 121
    check-cast v8, Ldos;

    .line 122
    invoke-virtual {v8, v1}, Ldos;->ad(Ldor;)V

    :cond_68
    iget v1, p0, Ldos;->a:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v1, v8

    if-eqz v1, :cond_69

    iget-object v1, p0, Ldos;->U:Ldor;

    if-nez v1, :cond_6a

    .line 123
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_16

    .line 194
    :cond_69
    move-object v1, v5

    .line 123
    :cond_6a
    :goto_16
    iget v8, p1, Ldos;->a:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-eqz v8, :cond_6b

    iget-object v8, p1, Ldos;->U:Ldor;

    if-nez v8, :cond_6c

    .line 124
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_17

    .line 194
    :cond_6b
    move-object v8, v5

    .line 125
    :cond_6c
    :goto_17
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_6d

    .line 126
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_6d
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 127
    check-cast v8, Ldos;

    .line 128
    invoke-virtual {v8, v1}, Ldos;->ae(Ldor;)V

    :cond_6e
    iget v1, p0, Ldos;->a:I

    const/high16 v8, -0x80000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_6f

    iget-object v1, p0, Ldos;->V:Ldor;

    if-nez v1, :cond_70

    .line 129
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_18

    .line 194
    :cond_6f
    move-object v1, v5

    .line 129
    :cond_70
    :goto_18
    iget v8, p1, Ldos;->a:I

    const/high16 v9, -0x80000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_71

    iget-object v8, p1, Ldos;->V:Ldor;

    if-nez v8, :cond_72

    .line 130
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_19

    .line 194
    :cond_71
    move-object v8, v5

    .line 131
    :cond_72
    :goto_19
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_74

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_73

    .line 132
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_73
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 133
    check-cast v8, Ldos;

    .line 134
    invoke-virtual {v8, v1}, Ldos;->af(Ldor;)V

    :cond_74
    iget v1, p0, Ldos;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_75

    iget-object v1, p0, Ldos;->W:Ldor;

    if-nez v1, :cond_76

    .line 135
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_1a

    .line 194
    :cond_75
    move-object v1, v5

    .line 135
    :cond_76
    :goto_1a
    iget v8, p1, Ldos;->b:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_77

    iget-object v8, p1, Ldos;->W:Ldor;

    if-nez v8, :cond_78

    .line 136
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_1b

    .line 194
    :cond_77
    move-object v8, v5

    .line 137
    :cond_78
    :goto_1b
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_7a

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_79

    .line 138
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_79
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 139
    check-cast v8, Ldos;

    .line 140
    invoke-virtual {v8, v1}, Ldos;->ag(Ldor;)V

    :cond_7a
    iget v1, p0, Ldos;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7b

    iget-object v1, p0, Ldos;->X:Ldor;

    if-nez v1, :cond_7c

    .line 141
    sget-object v1, Ldor;->e:Ldor;

    goto :goto_1c

    .line 194
    :cond_7b
    move-object v1, v5

    .line 141
    :cond_7c
    :goto_1c
    iget v8, p1, Ldos;->b:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7d

    iget-object v8, p1, Ldos;->X:Ldor;

    if-nez v8, :cond_7e

    .line 142
    sget-object v8, Ldor;->e:Ldor;

    goto :goto_1d

    .line 194
    :cond_7d
    move-object v8, v5

    .line 143
    :cond_7e
    :goto_1d
    invoke-static {v1, v8}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_80

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_7f

    .line 144
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_7f
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 145
    check-cast v8, Ldos;

    .line 146
    invoke-virtual {v8, v1}, Ldos;->ah(Ldor;)V

    :cond_80
    iget v1, p0, Ldos;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_82

    iget-wide v8, p0, Ldos;->Y:J

    iget-wide v10, p1, Ldos;->Y:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_82

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_81

    .line 147
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_81
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 148
    check-cast v1, Ldos;

    .line 149
    invoke-virtual {v1, v8, v9}, Ldos;->ai(J)V

    :cond_82
    iget v1, p0, Ldos;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_84

    iget-wide v8, p0, Ldos;->Z:J

    iget-wide v10, p1, Ldos;->Z:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_84

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_83

    .line 150
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_83
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 151
    check-cast v1, Ldos;

    .line 152
    invoke-virtual {v1, v8, v9}, Ldos;->aj(J)V

    :cond_84
    iget v1, p0, Ldos;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_86

    iget-wide v8, p0, Ldos;->aa:J

    iget-wide v10, p1, Ldos;->aa:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_86

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_85

    .line 153
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_85
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 154
    check-cast v1, Ldos;

    .line 155
    invoke-virtual {v1, v8, v9}, Ldos;->ak(J)V

    :cond_86
    iget v1, p0, Ldos;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_88

    iget-wide v8, p0, Ldos;->ab:J

    iget-wide v10, p1, Ldos;->ab:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_88

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_87

    .line 156
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_87
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 157
    check-cast v1, Ldos;

    .line 158
    invoke-virtual {v1, v8, v9}, Ldos;->al(J)V

    :cond_88
    iget v1, p0, Ldos;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8a

    iget-wide v8, p0, Ldos;->ac:J

    iget-wide v10, p1, Ldos;->ac:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_8a

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_89

    .line 159
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_89
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 160
    check-cast v1, Ldos;

    .line 161
    invoke-virtual {v1, v8, v9}, Ldos;->am(J)V

    :cond_8a
    iget v1, p0, Ldos;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8c

    iget-wide v8, p0, Ldos;->ad:J

    iget-wide v10, p1, Ldos;->ad:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_8c

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_8b

    .line 162
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_8b
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 163
    check-cast v1, Ldos;

    .line 164
    invoke-virtual {v1, v8, v9}, Ldos;->an(J)V

    :cond_8c
    iget v1, p0, Ldos;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8e

    iget-wide v8, p0, Ldos;->ae:J

    iget-wide v10, p1, Ldos;->ae:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_8e

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_8d

    .line 165
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_8d
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 166
    check-cast v1, Ldos;

    .line 167
    invoke-virtual {v1, v8, v9}, Ldos;->ao(J)V

    :cond_8e
    iget v1, p0, Ldos;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_90

    iget-wide v8, p0, Ldos;->af:J

    iget-wide v10, p1, Ldos;->af:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_90

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_8f

    .line 168
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_8f
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 169
    check-cast v1, Ldos;

    .line 170
    invoke-virtual {v1, v8, v9}, Ldos;->ap(J)V

    :cond_90
    iget v1, p0, Ldos;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_92

    iget-wide v8, p0, Ldos;->ag:J

    iget-wide v10, p1, Ldos;->ag:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_92

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_91

    .line 171
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_91
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 172
    check-cast v1, Ldos;

    .line 173
    invoke-virtual {v1, v8, v9}, Ldos;->aq(J)V

    :cond_92
    iget v1, p0, Ldos;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_94

    iget-wide v8, p0, Ldos;->ah:J

    iget-wide v10, p1, Ldos;->ah:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_94

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_93

    .line 174
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_93
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 175
    check-cast v1, Ldos;

    .line 176
    invoke-virtual {v1, v8, v9}, Ldos;->ar(J)V

    :cond_94
    iget v1, p0, Ldos;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_96

    iget-wide v8, p0, Ldos;->ai:J

    iget-wide v10, p1, Ldos;->ai:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_96

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_95

    .line 177
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_95
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 178
    check-cast v1, Ldos;

    iget v10, v1, Ldos;->b:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, v1, Ldos;->b:I

    iput-wide v8, v1, Ldos;->ai:J

    :cond_96
    iget v1, p0, Ldos;->b:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_98

    iget-wide v8, p0, Ldos;->aj:J

    iget-wide v10, p1, Ldos;->aj:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_98

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_97

    .line 179
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_97
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 180
    check-cast v1, Ldos;

    iget v10, v1, Ldos;->b:I

    or-int/lit16 v10, v10, 0x2000

    iput v10, v1, Ldos;->b:I

    iput-wide v8, v1, Ldos;->aj:J

    :cond_98
    iget v1, p0, Ldos;->b:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_9a

    iget-wide v8, p0, Ldos;->ak:J

    iget-wide v10, p1, Ldos;->ak:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_9a

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_99

    .line 181
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_99
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 182
    check-cast v1, Ldos;

    iget v10, v1, Ldos;->b:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, v1, Ldos;->b:I

    iput-wide v8, v1, Ldos;->ak:J

    :cond_9a
    iget v1, p0, Ldos;->b:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_9c

    iget-wide v8, p0, Ldos;->al:J

    iget-wide v10, p1, Ldos;->al:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_9c

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_9b

    .line 183
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_9b
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 184
    check-cast v1, Ldos;

    iget v4, v1, Ldos;->b:I

    or-int/2addr v4, v6

    iput v4, v1, Ldos;->b:I

    iput-wide v8, v1, Ldos;->al:J

    :cond_9c
    iget v1, p0, Ldos;->b:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_9d

    iget-wide v6, p0, Ldos;->am:J

    iget-wide v8, p1, Ldos;->am:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_9d

    .line 185
    invoke-virtual {v0, v6, v7}, Lddf;->T(J)V

    :cond_9d
    invoke-virtual {p0}, Ldos;->as()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 186
    invoke-virtual {p0}, Ldos;->at()Ldor;

    move-result-object v1

    goto :goto_1e

    .line 194
    :cond_9e
    move-object v1, v5

    .line 186
    :goto_1e
    invoke-virtual {p1}, Ldos;->as()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 187
    invoke-virtual {p1}, Ldos;->at()Ldor;

    move-result-object v4

    goto :goto_1f

    .line 194
    :cond_9f
    move-object v4, v5

    .line 188
    :goto_1f
    invoke-static {v1, v4}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 189
    invoke-virtual {v0, v1}, Lddf;->W(Ldor;)V

    :cond_a0
    invoke-virtual {p0}, Ldos;->au()Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-wide v6, p0, Ldos;->ao:J

    iget-wide v8, p1, Ldos;->ao:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_a1

    .line 190
    invoke-virtual {v0, v6, v7}, Lddf;->aa(J)V

    :cond_a1
    invoke-virtual {p0}, Ldos;->av()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-wide v6, p0, Ldos;->ap:J

    iget-wide v8, p1, Ldos;->ap:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_a2

    .line 191
    invoke-virtual {v0, v6, v7}, Lddf;->Z(J)V

    :cond_a2
    invoke-virtual {p0}, Ldos;->aw()Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-wide v6, p0, Ldos;->aq:J

    iget-wide p0, p1, Ldos;->aq:J

    sub-long/2addr v6, p0

    cmp-long p0, v6, v2

    if-eqz p0, :cond_a3

    .line 192
    invoke-virtual {v0, v6, v7}, Lddf;->U(J)V

    .line 193
    :cond_a3
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Ldos;

    .line 194
    invoke-static {p0}, Lbvs;->o(Ldos;)Z

    move-result p1

    if-eqz p1, :cond_a4

    return-object v5

    :cond_a4
    return-object p0

    .line 1
    :cond_a5
    :goto_20
    return-object p0
.end method

.method static l(Ldon;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    iget-object v2, p0, Ldon;->b:Lddr;

    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Ldon;->c:Lddr;

    .line 2
    invoke-interface {p0}, Lddr;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static m(Ldop;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget-wide v2, p0, Ldop;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldop;->c:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldop;->d:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldop;->e:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldop;->f:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldop;->g:J

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method static n(Ldoq;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    iget v2, p0, Ldoq;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    iget p0, p0, Ldoq;->c:I

    int-to-long v2, p0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static o(Ldos;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget-wide v2, p0, Ldos;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->d:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->e:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->f:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-object v2, p0, Ldos;->g:Lddr;

    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldos;->h:Lddr;

    .line 2
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldos;->i:Lddr;

    .line 3
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldos;->j:Lddr;

    .line 4
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldos;->k:Lddr;

    .line 5
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldos;->l:Lddr;

    .line 6
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldos;->n:Lddr;

    .line 7
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldos;->o:Lddr;

    .line 8
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldos;->p:Lddr;

    .line 9
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldos;->u:Lddr;

    .line 10
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Ldos;->v:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->w:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->x:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->y:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->z:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->A:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->B:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->C:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->D:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->E:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->F:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->G:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->H:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->I:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->K:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->Y:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->Z:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->aa:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ab:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ac:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ad:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ae:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->af:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ag:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ah:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ai:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->aj:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ak:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->al:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->am:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ao:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->ap:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Ldos;->aq:J

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method public static p(Lchm;Landroid/net/Uri;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcid;

    invoke-direct {v0}, Lcid;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcid;->a:Z

    invoke-virtual {p0, p1, v0}, Lchm;->b(Landroid/net/Uri;Lchl;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {p0, p2}, Lbvs;->b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, p2}, Lbvs;->b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p0, p2}, Lbvs;->b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p0, p2}, Lbvs;->b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-static {p0, p2}, Lbvs;->b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {p0, p2}, Lbvs;->b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-static {p0, p2}, Lbvs;->b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    goto :goto_0

    .line 18
    :cond_6
    invoke-static {p0, p2}, Lbvs;->b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    goto :goto_0

    .line 19
    :cond_7
    invoke-static {p0, p2}, Lbvs;->b(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    .line 7
    :goto_0
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    new-instance p0, Ljava/io/IOException;

    .line 2
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static varargs q(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
