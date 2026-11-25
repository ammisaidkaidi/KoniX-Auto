.class final Lcai;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCaptureO"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcai;->a:Lcsz;

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/pm/PackageStats;
    .locals 15

    .line 1
    invoke-static {}, Lbjq;->e()V

    const-class v0, Landroid/os/storage/StorageManager;

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    const-string v2, "getPackageStats"

    const-string v3, "PackageStatsCaptureO.java"

    const-string v4, "com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCaptureO"

    if-nez v0, :cond_0

    sget-object p0, Lcai;->a:Lcsz;

    invoke-virtual {p0}, Lcsv;->b()Lctq;

    move-result-object p0

    const/16 v0, 0x1e

    .line 3
    invoke-interface {p0, v4, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string v0, "StorageManager is not available"

    invoke-interface {p0, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    const-class v5, Landroid/app/usage/StorageStatsManager;

    .line 4
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/StorageStatsManager;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v6, Landroid/content/pm/PackageStats;

    invoke-direct {v6, p0}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    .line 8
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v7, :cond_2

    :try_start_1
    sget-object v7, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 22
    :catch_0
    move-exception v8

    :try_start_2
    sget-object v9, Lcai;->a:Lcsz;

    invoke-virtual {v9}, Lcsv;->c()Lctq;

    move-result-object v9

    .line 11
    invoke-interface {v9, v8}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v8

    check-cast v8, Lcsx;

    const-string v9, "getUuid"

    const/16 v10, 0x46

    invoke-interface {v8, v4, v9, v10, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v8

    check-cast v8, Lcsx;

    const-string v9, "Invalid UUID format: \'%s\'"

    invoke-interface {v8, v9, v7}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    move-object v7, v1

    .line 9
    :goto_1
    if-eqz v7, :cond_1

    .line 12
    :try_start_3
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    .line 13
    invoke-virtual {v5, v7, p0, v8}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v8

    sget-object v9, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 14
    invoke-virtual {v9, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 15
    iget-wide v9, v6, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {v8}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, v6, Landroid/content/pm/PackageStats;->codeSize:J

    .line 16
    iget-wide v9, v6, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v8}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v11

    invoke-virtual {v8}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v13

    sub-long/2addr v11, v13

    add-long/2addr v9, v11

    iput-wide v9, v6, Landroid/content/pm/PackageStats;->dataSize:J

    .line 17
    iget-wide v9, v6, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {v8}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v7

    add-long/2addr v9, v7

    iput-wide v9, v6, Landroid/content/pm/PackageStats;->cacheSize:J

    goto :goto_0

    .line 18
    :cond_3
    iget-wide v9, v6, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-virtual {v8}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, v6, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 19
    iget-wide v9, v6, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-virtual {v8}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v11

    invoke-virtual {v8}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v13

    sub-long/2addr v11, v13

    add-long/2addr v9, v11

    iput-wide v9, v6, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 20
    iget-wide v9, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-virtual {v8}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v7

    add-long/2addr v9, v7

    iput-wide v9, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 11
    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_2

    :catch_3
    move-exception v7

    :goto_2
    :try_start_4
    sget-object v8, Lcai;->a:Lcsz;

    invoke-virtual {v8}, Lcsv;->c()Lctq;

    move-result-object v8

    .line 21
    invoke-interface {v8, v7}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v7

    check-cast v7, Lcsx;

    const/16 v8, 0x30

    invoke-interface {v7, v4, v2, v8, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v7

    check-cast v7, Lcsx;

    const-string v8, "queryStatsForPackage() call failed"

    invoke-interface {v7, v8}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 10
    :cond_4
    return-object v6

    :catch_4
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    :goto_3
    sget-object v0, Lcai;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    .line 22
    invoke-interface {v0, p0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const/16 v0, 0x37

    invoke-interface {p0, v4, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string v0, "StorageStatsManager is not available"

    invoke-interface {p0, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-object v1
.end method
