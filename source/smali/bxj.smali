.class final Lbxj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lbxk;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lbxk;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lbxj;->a:Lbxk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbxj;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    :try_start_0
    iget-object v4, v1, Lbxj;->a:Lbxk;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    move-object/from16 v17, v6

    move-object v6, v0

    move-object/from16 v0, v17

    :goto_0
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eq v0, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 5
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Ldpm;->i:Ldpm;

    .line 8
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v7

    iget-boolean v0, v7, Lddf;->c:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_1
    iget-object v0, v7, Lddf;->b:Lddk;

    .line 9
    check-cast v0, Ldpm;

    iget v9, v0, Ldpm;->a:I

    const/4 v10, 0x1

    or-int/2addr v9, v10

    iput v9, v0, Ldpm;->a:I

    iput-boolean v10, v0, Ldpm;->b:Z

    iget-object v0, v4, Lbxk;->b:Lbtx;

    const/4 v9, 0x0

    if-nez v0, :cond_2

    move-object v0, v9

    goto :goto_1

    .line 28
    :cond_2
    iget-object v0, v0, Lbtx;->a:Ljava/lang/String;

    .line 9
    :goto_1
    const/4 v11, 0x4

    if-eqz v0, :cond_4

    iget-boolean v12, v7, Lddf;->c:Z

    if-eqz v12, :cond_3

    .line 10
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_3
    iget-object v12, v7, Lddf;->b:Lddk;

    .line 11
    check-cast v12, Ldpm;

    iget v13, v12, Ldpm;->a:I

    or-int/2addr v13, v11

    iput v13, v12, Ldpm;->a:I

    iput-object v0, v12, Ldpm;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :cond_4
    const/4 v12, 0x2

    :try_start_1
    sget-object v0, Ldph;->c:Ldph;

    .line 13
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-object v13, v4, Lbxk;->c:Landroid/content/Context;

    .line 14
    invoke-static {v9, v13}, Lxs;->d(Ljava/lang/String;Landroid/content/Context;)Ldpg;

    move-result-object v13

    iget-boolean v14, v0, Lddf;->c:Z

    if-eqz v14, :cond_5

    .line 15
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v8, v0, Lddf;->c:Z

    :cond_5
    iget-object v14, v0, Lddf;->b:Lddk;

    .line 16
    check-cast v14, Ldph;

    .line 17
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v13, v14, Ldph;->b:Ldpg;

    iget v13, v14, Ldph;->a:I

    or-int/2addr v13, v10

    iput v13, v14, Ldph;->a:I

    iget-boolean v13, v7, Lddf;->c:Z

    if-eqz v13, :cond_6

    .line 18
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_6
    iget-object v13, v7, Lddf;->b:Lddk;

    .line 19
    check-cast v13, Ldpm;

    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldph;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v13, Ldpm;->c:Ldph;

    iget v0, v13, Ldpm;->a:I

    or-int/2addr v0, v12

    iput v0, v13, Ldpm;->a:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 71
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v13, Lbxk;->a:Lcsz;

    invoke-virtual {v13}, Lcsv;->c()Lctq;

    move-result-object v13

    .line 21
    invoke-interface {v13, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v13, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl"

    const-string v14, "createCrashMetric"

    const/16 v15, 0xd4

    const-string v12, "CrashMetricServiceImpl.java"

    invoke-interface {v0, v13, v14, v15, v12}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v12, "Failed to get process stats."

    invoke-interface {v0, v12}, Lcsx;->n(Ljava/lang/String;)V

    .line 20
    :goto_2
    iget-boolean v0, v7, Lddf;->c:Z

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_7
    iget-object v0, v7, Lddf;->b:Lddk;

    .line 23
    check-cast v0, Ldpm;

    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v0, Ldpm;->a:I

    or-int/lit8 v12, v12, 0x8

    iput v12, v0, Ldpm;->a:I

    iput-object v5, v0, Ldpm;->e:Ljava/lang/String;

    .line 25
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Ljava/lang/OutOfMemoryError;

    const/4 v12, 0x5

    const/4 v13, 0x3

    if-ne v0, v5, :cond_8

    const/16 v16, 0x3

    goto :goto_3

    .line 55
    :cond_8
    const-class v5, Ljava/lang/NullPointerException;

    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v16, 0x2

    goto :goto_3

    :cond_9
    const-class v5, Ljava/lang/RuntimeException;

    .line 27
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v16, 0x4

    goto :goto_3

    :cond_a
    const-class v5, Ljava/lang/Error;

    .line 28
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v16, 0x5

    goto :goto_3

    :cond_b
    const/16 v16, 0x1

    .line 25
    :goto_3
    iget-boolean v0, v7, Lddf;->c:Z

    if-eqz v0, :cond_c

    .line 29
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_c
    iget-object v0, v7, Lddf;->b:Lddk;

    .line 30
    check-cast v0, Ldpm;

    add-int/lit8 v5, v16, -0x1

    iput v5, v0, Ldpm;->f:I

    iget v5, v0, Ldpm;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Ldpm;->a:I

    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Ldpm;->a:I

    iput-object v6, v0, Ldpm;->g:Ljava/lang/String;

    .line 32
    sget-object v0, Lcxu;->d:Lcxu;

    .line 33
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    .line 34
    invoke-static/range {p2 .. p2}, Lhg;->u(Ljava/lang/Throwable;)Lddf;

    move-result-object v5

    iget-boolean v6, v0, Lddf;->c:Z

    if-eqz v6, :cond_d

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v8, v0, Lddf;->c:Z

    :cond_d
    iget-object v6, v0, Lddf;->b:Lddk;

    .line 35
    check-cast v6, Lcxu;

    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v5

    check-cast v5, Lcxt;

    .line 36
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v6, Lcxu;->b:Lcxt;

    iget v5, v6, Lcxu;->a:I

    or-int/2addr v5, v10

    iput v5, v6, Lcxu;->a:I

    .line 37
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_f

    .line 38
    invoke-static {v5}, Lhg;->u(Ljava/lang/Throwable;)Lddf;

    move-result-object v6

    iget-boolean v10, v0, Lddf;->c:Z

    if-eqz v10, :cond_e

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v8, v0, Lddf;->c:Z

    :cond_e
    iget-object v10, v0, Lddf;->b:Lddk;

    .line 39
    check-cast v10, Lcxu;

    invoke-virtual {v6}, Lddf;->f()Lddk;

    move-result-object v6

    check-cast v6, Lcxt;

    .line 40
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-virtual {v10}, Lcxu;->b()V

    iget-object v10, v10, Lcxu;->c:Lddr;

    .line 42
    invoke-interface {v10, v6}, Lddr;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_4

    :cond_f
    iget-boolean v5, v7, Lddf;->c:Z

    if-eqz v5, :cond_10

    .line 43
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_10
    iget-object v5, v7, Lddf;->b:Lddk;

    .line 44
    check-cast v5, Ldpm;

    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lcxu;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, Ldpm;->h:Lcxu;

    iget v0, v5, Ldpm;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v5, Ldpm;->a:I

    .line 46
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldpm;

    sget-object v5, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    .line 47
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    sget-object v5, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    .line 48
    invoke-static {v5}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    iget-object v5, v4, Lbxk;->e:Ldgz;

    .line 49
    invoke-interface {v5}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbxf;

    .line 50
    invoke-virtual {v5}, Lbxf;->b()Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_9

    .line 69
    :cond_11
    iget-boolean v6, v4, Lbxk;->i:Z

    if-eqz v6, :cond_13

    iget-object v6, v4, Lbxk;->d:Lbwn;

    iget-object v6, v6, Lbwn;->e:Lbut;

    iget-object v7, v6, Lbut;->a:Ljava/util/WeakHashMap;

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v10, v6, Lbut;->a:Ljava/util/WeakHashMap;

    .line 51
    invoke-virtual {v10}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 52
    sget-object v6, Lbus;->a:Lbus;

    monitor-exit v7

    goto :goto_5

    .line 64
    :cond_12
    iget-object v6, v6, Lbut;->a:Ljava/util/WeakHashMap;

    .line 53
    invoke-virtual {v6}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v10, v8, [Lbuv;

    invoke-interface {v6, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lbuv;

    .line 54
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    :try_start_4
    new-instance v7, Lbus;

    invoke-direct {v7, v6}, Lbus;-><init>([Lbuv;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v7

    goto :goto_5

    .line 21
    :catchall_0
    move-exception v0

    .line 54
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 55
    :cond_13
    move-object v6, v9

    .line 52
    :goto_5
    iget-object v7, v4, Lbxk;->d:Lbwn;

    .line 56
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v10

    .line 57
    sget-object v14, Ldpz;->y:Ldpz;

    .line 58
    invoke-virtual {v14}, Lddk;->n()Lddf;

    move-result-object v14

    iget-boolean v15, v14, Lddf;->c:Z

    if-eqz v15, :cond_14

    .line 57
    invoke-virtual {v14}, Lddf;->k()V

    iput-boolean v8, v14, Lddf;->c:Z

    :cond_14
    iget-object v8, v14, Lddf;->b:Lddk;

    .line 59
    check-cast v8, Ldpz;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v8, Ldpz;->h:Ldpm;

    iget v0, v8, Ldpz;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v8, Ldpz;->a:I

    .line 57
    invoke-virtual {v14}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldpz;

    invoke-virtual {v10, v0}, Lbwi;->d(Ldpz;)V

    iput-object v9, v10, Lbwi;->b:Ldot;

    iput-object v6, v10, Lbwi;->e:Lbus;

    .line 61
    invoke-virtual {v10}, Lbwi;->a()Lbwj;

    move-result-object v0

    .line 62
    invoke-virtual {v7, v0}, Lbwn;->b(Lbwj;)Ldag;

    :goto_6
    iget-object v0, v4, Lbxk;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-gtz v0, :cond_17

    :goto_7
    iget-object v0, v4, Lbxk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-gtz v0, :cond_16

    :goto_8
    iget-object v0, v4, Lbxk;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_15

    .line 68
    invoke-virtual {v4, v12, v5}, Lbxk;->e(ILbxf;)Ldag;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    .line 50
    :cond_15
    :goto_9
    iget-object v0, v1, Lbxj;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_18

    .line 69
    :goto_a
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 68
    :cond_16
    nop

    .line 66
    :try_start_7
    invoke-virtual {v4, v11, v5}, Lbxk;->e(ILbxf;)Ldag;

    goto :goto_7

    :cond_17
    nop

    .line 64
    invoke-virtual {v4, v13, v5}, Lbxk;->e(ILbxf;)Ldag;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 69
    :catchall_1
    move-exception v0

    goto :goto_b

    .line 28
    :catch_1
    move-exception v0

    :try_start_8
    sget-object v4, Lbxk;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    .line 70
    invoke-interface {v4, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v4, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl$PrimesUncaughtExceptionHandler"

    const-string v5, "uncaughtException"

    const/16 v6, 0x93

    const-string v7, "CrashMetricServiceImpl.java"

    invoke-interface {v0, v4, v5, v6, v7}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v4, "Failed to record crash."

    invoke-interface {v0, v4}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, v1, Lbxj;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_18

    .line 69
    goto :goto_a

    :cond_18
    return-void

    :goto_b
    iget-object v4, v1, Lbxj;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v4, :cond_19

    invoke-interface {v4, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 71
    :cond_19
    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method
