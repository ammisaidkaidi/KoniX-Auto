.class public final Lbze;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;

.field private static b:Lcol;


# instance fields
.field private final c:Ldny;

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbze;->a:Lcsz;

    sget-object v0, Lbpe;->o:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    sput-object v0, Lbze;->b:Lcol;

    return-void
.end method

.method public constructor <init>(Ldny;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbze;->c:Ldny;

    iput-object p2, p0, Lbze;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a()Lcoc;
    .locals 5

    .line 1
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-class v1, Landroid/os/Debug$MemoryInfo;

    const-string v2, "getOtherPss"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    sget-object v1, Lbze;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    .line 2
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x5e

    const-string v2, "com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture"

    const-string v3, "lambda$static$0"

    const-string v4, "MemoryUsageCapture.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "MemoryInfo.getOtherPss(which) failure"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    goto :goto_1

    .line 1
    :catch_2
    move-exception v0

    :goto_1
    sget-object v0, Lcns;->a:Lcns;

    return-object v0
.end method

.method private static c(Landroid/os/Debug$MemoryInfo;)I
    .locals 4

    .line 1
    sget-object v0, Lbze;->b:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoc;

    invoke-virtual {v0}, Lcoc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0xe

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object v0, Lbpe;->p:Lbpe;

    sput-object v0, Lbze;->b:Lcol;

    sget-object v0, Lbze;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    .line 3
    invoke-interface {v0, p0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const/16 v0, 0x77

    const-string v1, "com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture"

    const-string v2, "getOtherGraphicsPss"

    const-string v3, "MemoryUsageCapture.java"

    invoke-interface {p0, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string v0, "MemoryInfo.getOtherPss(which) invocation failure"

    invoke-interface {p0, v0}, Lcsx;->n(Ljava/lang/String;)V

    .line 2
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "expected a non-null reference"

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Lcos;

    .line 3
    invoke-static {v1, v0}, Lex;->k(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcos;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :cond_1
    :goto_0
    return-object p1

    .line 3
    :catch_0
    move-exception p0

    return-object p1
.end method


# virtual methods
.method final b(IILjava/lang/String;Ljava/lang/String;)Ldox;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v3, "MemoryUsageCapture.java"

    const-string v4, "com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture"

    iget-object v0, v1, Lbze;->c:Ldny;

    check-cast v0, Lbuk;

    invoke-virtual {v0}, Lbuk;->b()Lbyq;

    move-result-object v0

    .line 2
    invoke-static {}, Lbjq;->e()V

    iget-boolean v5, v0, Lbyq;->d:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v1, Lbze;->d:Landroid/content/Context;

    .line 3
    invoke-static {v5}, Lbvk;->a(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v5

    new-array v9, v7, [I

    aput p2, v9, v8

    .line 4
    invoke-virtual {v5, v9}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v5

    aget-object v5, v5, v8

    goto :goto_0

    .line 27
    :cond_0
    const/4 v5, 0x0

    .line 4
    :goto_0
    iget-boolean v0, v0, Lbyq;->e:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v9, v1, Lbze;->d:Landroid/content/Context;

    .line 6
    invoke-static {v9}, Lbvk;->a(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    move-object v9, v0

    goto :goto_1

    .line 27
    :cond_1
    const/4 v9, 0x0

    .line 7
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v11, "/proc/self/status"

    .line 8
    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    .line 10
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/lang/String;

    .line 11
    new-instance v13, Lcxl;

    sget-object v14, Lcxl;->a:Lcxk;

    .line 12
    invoke-direct {v13, v14}, Lcxl;-><init>(Lcxk;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v14, Ljava/io/FileInputStream;

    .line 13
    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, v13, Lcxl;->c:Ljava/util/Deque;

    .line 14
    invoke-interface {v0, v14}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcxg;->b(Ljava/io/InputStream;J)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v13}, Lcxl;->close()V

    invoke-direct {v12, v0, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 20
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lbze;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const-string v6, "procStatusFromString"

    const/16 v7, 0xdc

    .line 21
    invoke-interface {v0, v4, v6, v7, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v6, "Null or empty proc status"

    invoke-interface {v0, v6}, Lcsx;->n(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_2

    .line 22
    :cond_2
    new-instance v0, Lbzd;

    invoke-direct {v0}, Lbzd;-><init>()V

    sget-object v6, Lbzd;->a:Ljava/util/regex/Pattern;

    .line 23
    invoke-static {v6, v12}, Lbze;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lbzd;->f:Ljava/lang/Long;

    sget-object v6, Lbzd;->b:Ljava/util/regex/Pattern;

    .line 24
    invoke-static {v6, v12}, Lbze;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lbzd;->g:Ljava/lang/Long;

    sget-object v6, Lbzd;->c:Ljava/util/regex/Pattern;

    .line 25
    invoke-static {v6, v12}, Lbze;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lbzd;->h:Ljava/lang/Long;

    sget-object v6, Lbzd;->d:Ljava/util/regex/Pattern;

    .line 26
    invoke-static {v6, v12}, Lbze;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lbzd;->i:Ljava/lang/Long;

    sget-object v6, Lbzd;->e:Ljava/util/regex/Pattern;

    .line 27
    invoke-static {v6, v12}, Lbze;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lbzd;->j:Ljava/lang/Long;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v6, v0

    .line 29
    :goto_2
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3

    .line 30
    :catchall_0
    move-exception v0

    :try_start_3
    iput-object v0, v13, Lcxl;->d:Ljava/lang/Throwable;

    const-class v6, Ljava/io/IOException;

    .line 16
    invoke-static {v0, v6}, Lcop;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v6, Ljava/lang/RuntimeException;

    .line 17
    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 18
    :try_start_4
    invoke-virtual {v13}, Lcxl;->close()V

    .line 19
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 29
    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 27
    :catch_0
    move-exception v0

    :try_start_5
    sget-object v6, Lbze;->a:Lcsz;

    invoke-virtual {v6}, Lcsv;->b()Lctq;

    move-result-object v6

    .line 28
    invoke-interface {v6, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v6, "getProcStatus"

    const/16 v7, 0xf9

    invoke-interface {v0, v4, v6, v7, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v6, "Error reading proc status"

    invoke-interface {v0, v6}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 29
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v6, 0x0

    .line 31
    :goto_3
    sget-object v0, Ldox;->h:Ldox;

    .line 32
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lddh;

    .line 33
    sget-object v0, Ldow;->c:Ldow;

    .line 34
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v10

    .line 35
    sget-object v0, Ldou;->D:Ldou;

    .line 36
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v11

    const/4 v12, -0x1

    if-nez v5, :cond_3

    goto/16 :goto_4

    .line 37
    :cond_3
    iget v0, v5, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_4

    .line 38
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_4
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 39
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    const/4 v15, 0x1

    or-int/2addr v14, v15

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->b:I

    .line 38
    iget v0, v5, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_5

    .line 40
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_5
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 41
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit8 v14, v14, 0x2

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->c:I

    .line 42
    iget v0, v5, Landroid/os/Debug$MemoryInfo;->otherPss:I

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_6

    .line 43
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_6
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 44
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->d:I

    .line 45
    iget v0, v5, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_7

    .line 46
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_7
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 47
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit8 v14, v14, 0x8

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->e:I

    .line 48
    iget v0, v5, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_8

    .line 49
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_8
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 50
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->f:I

    .line 51
    iget v0, v5, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_9

    .line 52
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_9
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 53
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit8 v14, v14, 0x20

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->g:I

    .line 54
    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_a

    .line 55
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_a
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 56
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit8 v14, v14, 0x40

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->h:I

    .line 57
    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v0

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_b

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_b
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 58
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit16 v14, v14, 0x80

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->i:I

    .line 59
    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v0

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_c

    .line 60
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_c
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 61
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit16 v14, v14, 0x200

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->k:I

    .line 62
    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v0

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_d

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_d
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 63
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit16 v14, v14, 0x100

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->j:I

    .line 64
    invoke-static {v5}, Lbze;->c(Landroid/os/Debug$MemoryInfo;)I

    move-result v0

    if-eq v0, v12, :cond_f

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_e

    .line 65
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_e
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 66
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit16 v14, v14, 0x400

    iput v14, v13, Ldou;->a:I

    iput v0, v13, Ldou;->l:I

    .line 67
    :cond_f
    :try_start_6
    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getMemoryStats()Ljava/util/Map;

    move-result-object v0

    const-string v5, "summary.code"

    .line 68
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lbze;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 69
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_10

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_10
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 70
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit16 v14, v14, 0x1000

    iput v14, v13, Ldou;->a:I

    iput v5, v13, Ldou;->n:I

    :cond_11
    const-string v5, "summary.stack"

    .line 71
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lbze;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 72
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_12

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_12
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 73
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit16 v14, v14, 0x2000

    iput v14, v13, Ldou;->a:I

    iput v5, v13, Ldou;->o:I

    :cond_13
    const-string v5, "summary.graphics"

    .line 74
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lbze;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 75
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_14

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_14
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 76
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit16 v14, v14, 0x4000

    iput v14, v13, Ldou;->a:I

    iput v5, v13, Ldou;->p:I

    :cond_15
    const-string v5, "summary.system"

    .line 77
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lbze;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 78
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_16

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_16
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 79
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    const/high16 v15, 0x10000

    or-int/2addr v14, v15

    iput v14, v13, Ldou;->a:I

    iput v5, v13, Ldou;->v:I

    :cond_17
    const-string v5, "summary.java-heap"

    .line 80
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lbze;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 81
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-boolean v13, v11, Lddf;->c:Z

    if-eqz v13, :cond_18

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_18
    iget-object v13, v11, Lddf;->b:Lddk;

    .line 82
    check-cast v13, Ldou;

    iget v14, v13, Ldou;->a:I

    or-int/lit16 v14, v14, 0x800

    iput v14, v13, Ldou;->a:I

    iput v5, v13, Ldou;->m:I

    :cond_19
    const-string v5, "summary.private-other"

    .line 83
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lbze;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 84
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v5, v11, Lddf;->c:Z

    if-eqz v5, :cond_1a

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_1a
    iget-object v5, v11, Lddf;->b:Lddk;

    .line 85
    check-cast v5, Ldou;

    iget v13, v5, Ldou;->a:I

    const v14, 0x8000

    or-int/2addr v13, v14

    iput v13, v5, Ldou;->a:I

    iput v0, v5, Ldou;->u:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 19
    :catch_1
    move-exception v0

    sget-object v5, Lbze;->a:Lcsz;

    invoke-virtual {v5}, Lcsv;->b()Lctq;

    move-result-object v5

    .line 86
    invoke-interface {v5, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v5, 0x146

    const-string v13, "addDebugInfoToMemoryStats"

    invoke-interface {v0, v4, v13, v5, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v3, "failed to collect memory summary stats"

    invoke-interface {v0, v3}, Lcsx;->n(Ljava/lang/String;)V

    .line 36
    :cond_1b
    :goto_4
    if-nez v9, :cond_1c

    goto :goto_5

    .line 87
    :cond_1c
    iget-wide v3, v9, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/16 v0, 0xa

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iget-boolean v3, v11, Lddf;->c:Z

    if-eqz v3, :cond_1d

    .line 88
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_1d
    iget-object v3, v11, Lddf;->b:Lddk;

    .line 89
    check-cast v3, Ldou;

    iget v4, v3, Ldou;->a:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v3, Ldou;->a:I

    iput v0, v3, Ldou;->w:I

    .line 88
    iget-wide v3, v9, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v0, 0x14

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iget-boolean v3, v11, Lddf;->c:Z

    if-eqz v3, :cond_1e

    .line 90
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_1e
    iget-object v3, v11, Lddf;->b:Lddk;

    .line 91
    check-cast v3, Ldou;

    iget v4, v3, Ldou;->a:I

    const/high16 v5, 0x40000

    or-int/2addr v4, v5

    iput v4, v3, Ldou;->a:I

    iput v0, v3, Ldou;->x:I

    .line 36
    :goto_5
    if-nez v6, :cond_1f

    goto/16 :goto_6

    .line 128
    :cond_1f
    iget-object v0, v6, Lbzd;->f:Ljava/lang/Long;

    if-eqz v0, :cond_21

    .line 92
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v0, v11, Lddf;->c:Z

    if-eqz v0, :cond_20

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_20
    iget-object v0, v11, Lddf;->b:Lddk;

    .line 93
    check-cast v0, Ldou;

    iget v5, v0, Ldou;->a:I

    const/high16 v9, 0x80000

    or-int/2addr v5, v9

    iput v5, v0, Ldou;->a:I

    iput-wide v3, v0, Ldou;->y:J

    :cond_21
    iget-object v0, v6, Lbzd;->g:Ljava/lang/Long;

    if-eqz v0, :cond_23

    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v0, v11, Lddf;->c:Z

    if-eqz v0, :cond_22

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_22
    iget-object v0, v11, Lddf;->b:Lddk;

    .line 95
    check-cast v0, Ldou;

    iget v5, v0, Ldou;->a:I

    const/high16 v9, 0x100000

    or-int/2addr v5, v9

    iput v5, v0, Ldou;->a:I

    iput-wide v3, v0, Ldou;->z:J

    :cond_23
    iget-object v0, v6, Lbzd;->h:Ljava/lang/Long;

    if-eqz v0, :cond_25

    .line 96
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v0, v11, Lddf;->c:Z

    if-eqz v0, :cond_24

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_24
    iget-object v0, v11, Lddf;->b:Lddk;

    .line 97
    check-cast v0, Ldou;

    iget v5, v0, Ldou;->a:I

    const/high16 v9, 0x200000

    or-int/2addr v5, v9

    iput v5, v0, Ldou;->a:I

    iput-wide v3, v0, Ldou;->A:J

    :cond_25
    iget-object v0, v6, Lbzd;->i:Ljava/lang/Long;

    if-eqz v0, :cond_27

    .line 98
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v0, v11, Lddf;->c:Z

    if-eqz v0, :cond_26

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_26
    iget-object v0, v11, Lddf;->b:Lddk;

    .line 99
    check-cast v0, Ldou;

    iget v5, v0, Ldou;->a:I

    const/high16 v9, 0x400000

    or-int/2addr v5, v9

    iput v5, v0, Ldou;->a:I

    iput-wide v3, v0, Ldou;->B:J

    :cond_27
    iget-object v0, v6, Lbzd;->j:Ljava/lang/Long;

    if-eqz v0, :cond_29

    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v0, v11, Lddf;->c:Z

    if-eqz v0, :cond_28

    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v8, v11, Lddf;->c:Z

    :cond_28
    iget-object v0, v11, Lddf;->b:Lddk;

    .line 101
    check-cast v0, Ldou;

    iget v5, v0, Ldou;->a:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, v0, Ldou;->a:I

    iput-wide v3, v0, Ldou;->C:J

    .line 102
    :cond_29
    :goto_6
    invoke-virtual {v11}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldou;

    iget-boolean v3, v10, Lddf;->c:Z

    if-eqz v3, :cond_2a

    .line 103
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v8, v10, Lddf;->c:Z

    :cond_2a
    iget-object v3, v10, Lddf;->b:Lddk;

    .line 104
    check-cast v3, Ldow;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Ldow;->b:Ldou;

    iget v0, v3, Ldow;->a:I

    const/4 v4, 0x1

    or-int/2addr v0, v4

    iput v0, v3, Ldow;->a:I

    iget-boolean v0, v7, Lddf;->c:Z

    if-eqz v0, :cond_2b

    .line 106
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_2b
    iget-object v0, v7, Lddh;->b:Lddk;

    .line 107
    check-cast v0, Ldox;

    invoke-virtual {v10}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldow;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Ldox;->b:Ldow;

    iget v3, v0, Ldox;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v0, Ldox;->a:I

    .line 109
    sget-object v0, Ldph;->c:Ldph;

    .line 110
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-object v3, v1, Lbze;->d:Landroid/content/Context;

    .line 111
    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lxs;->d(Ljava/lang/String;Landroid/content/Context;)Ldpg;

    move-result-object v3

    iget-boolean v4, v0, Lddf;->c:Z

    if-eqz v4, :cond_2c

    .line 112
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v8, v0, Lddf;->c:Z

    :cond_2c
    iget-object v4, v0, Lddf;->b:Lddk;

    .line 113
    check-cast v4, Ldph;

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Ldph;->b:Ldpg;

    iget v3, v4, Ldph;->a:I

    const/4 v5, 0x1

    or-int/2addr v3, v5

    iput v3, v4, Ldph;->a:I

    iget-boolean v3, v7, Lddf;->c:Z

    if-eqz v3, :cond_2d

    .line 115
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_2d
    iget-object v3, v7, Lddh;->b:Lddk;

    .line 116
    check-cast v3, Ldox;

    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldph;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Ldox;->c:Ldph;

    iget v0, v3, Ldox;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Ldox;->a:I

    .line 118
    sget-object v0, Ldov;->c:Ldov;

    .line 119
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-object v3, v1, Lbze;->d:Landroid/content/Context;

    .line 118
    sget v4, Lbvk;->b:I

    .line 120
    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/os/PowerManager;

    .line 121
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    iget-boolean v4, v0, Lddf;->c:Z

    if-eqz v4, :cond_2e

    .line 118
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v8, v0, Lddf;->c:Z

    :cond_2e
    iget-object v4, v0, Lddf;->b:Lddk;

    .line 122
    check-cast v4, Ldov;

    iget v5, v4, Ldov;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v4, Ldov;->a:I

    iput-boolean v3, v4, Ldov;->b:Z

    iget-boolean v3, v7, Lddf;->c:Z

    if-eqz v3, :cond_2f

    .line 123
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_2f
    iget-object v3, v7, Lddh;->b:Lddk;

    .line 124
    check-cast v3, Ldox;

    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldov;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Ldox;->f:Ldov;

    iget v0, v3, Ldox;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v3, Ldox;->a:I

    iget-boolean v0, v7, Lddf;->c:Z

    if-eqz v0, :cond_30

    .line 126
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_30
    iget-object v0, v7, Lddh;->b:Lddk;

    .line 127
    check-cast v0, Ldox;

    add-int/lit8 v3, p1, -0x1

    iput v3, v0, Ldox;->e:I

    iget v3, v0, Ldox;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Ldox;->a:I

    if-eqz v2, :cond_31

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Ldox;->a:I

    iput-object v2, v0, Ldox;->g:Ljava/lang/String;

    .line 128
    :cond_31
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldox;

    return-object v0

    .line 29
    :goto_7
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 30
    throw v0
.end method
