.class public final Lbvu;
.super Lbvs;
.source "PG"

# interfaces
.implements Lbuw;
.implements Lbve;
.implements Lbvd;
.implements Lbwq;


# static fields
.field private static final b:Lcsz;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Landroid/content/Context;

.field private final d:Lbvh;

.field private final e:Ldai;

.field private final f:Lbwd;

.field private final g:Lbvn;

.field private final h:Lbwn;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbvu;->b:Lcsz;

    return-void
.end method

.method public constructor <init>(Lbwo;Landroid/content/Context;Lbvh;Ldai;Ldgz;Lbwd;Lbvn;Ldny;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbvs;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbvu;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbvu;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p1, p9, p5, p8}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lbvu;->h:Lbwn;

    iput-object p2, p0, Lbvu;->c:Landroid/content/Context;

    iput-object p3, p0, Lbvu;->d:Lbvh;

    iput-object p4, p0, Lbvu;->e:Ldai;

    iput-object p6, p0, Lbvu;->f:Lbwd;

    iput-object p7, p0, Lbvu;->g:Lbvn;

    return-void
.end method

.method private final v(Ldoi;)Ldag;
    .locals 1

    .line 1
    new-instance v0, Lbvt;

    invoke-direct {v0, p0, p1}, Lbvt;-><init>(Lbvu;Ldoi;)V

    iget-object p1, p0, Lbvu;->e:Ldai;

    invoke-static {v0, p1}, Lhh;->m(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lbvu;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lbvu;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lbvu;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lbvu;->t()Ldag;

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbvu;->s()Ldag;

    return-void
.end method

.method public synthetic r(Ldoi;Lbtx;)Ldag;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    iget-object v0, v1, Lbvu;->h:Lbwn;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbwn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ldad;->a:Ldag;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lbjq;->e()V

    iget-object v3, v1, Lbvu;->f:Lbwd;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lbvu;->f:Lbwd;

    iget-object v0, v0, Lbwd;->a:Lcbp;

    .line 4
    sget-object v4, Lcdl;->j:Lcdl;

    const/4 v5, 0x7

    .line 5
    invoke-virtual {v4, v5}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ldex;

    const-string v5, "primes.battery.snapshot"

    .line 7
    invoke-static {}, Lbjq;->e()V

    iget-object v6, v0, Lcbp;->b:Landroid/content/Context;

    .line 8
    invoke-static {v6}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, v0, Lcbp;->c:Ldny;

    .line 9
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 8
    :goto_0
    const/4 v5, 0x1

    if-eqz v0, :cond_4

    array-length v6, v0

    if-nez v6, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 21
    :cond_2
    nop

    .line 10
    aget-byte v8, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v8, v5, :cond_3

    add-int/lit8 v6, v6, -0x1

    .line 11
    :try_start_1
    invoke-static {}, Ldcz;->b()Ldcz;

    move-result-object v8

    .line 12
    invoke-interface {v4, v0, v6, v8}, Ldex;->d([BILdcz;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lddu; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lcbp;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    .line 13
    invoke-interface {v4, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v4, "com/google/android/libraries/performance/primes/persistent/PersistentStorage"

    const-string v6, "readProto"

    const/16 v8, 0x50

    const-string v9, "PersistentStorage.java"

    invoke-interface {v0, v4, v6, v8, v9}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v4, "failure reading proto"

    invoke-interface {v0, v4}, Lcsx;->n(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    .line 12
    :cond_3
    sget-object v0, Lcbp;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v4, "com/google/android/libraries/performance/primes/persistent/PersistentStorage"

    const-string v6, "readProto"

    const/16 v8, 0x53

    const-string v9, "PersistentStorage.java"

    .line 14
    invoke-interface {v0, v4, v6, v8, v9}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v4, "wrong header"

    invoke-interface {v0, v4}, Lcsx;->n(Ljava/lang/String;)V

    :cond_4
    move-object v0, v2

    .line 4
    :goto_1
    check-cast v0, Lcdl;

    if-nez v0, :cond_5

    move-object v4, v2

    goto/16 :goto_a

    .line 58
    :cond_5
    iget v4, v0, Lcdl;->a:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    iget v4, v0, Lcdl;->g:I

    .line 15
    invoke-static {v4}, Ldoi;->b(I)Ldoi;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v4, Ldoi;->a:Ldoi;

    :cond_6
    move-object v14, v4

    goto :goto_2

    .line 21
    :cond_7
    move-object v14, v2

    .line 15
    :goto_2
    new-instance v4, Lbwc;

    iget-object v6, v0, Lcdl;->b:Ldos;

    if-nez v6, :cond_8

    .line 16
    sget-object v6, Ldos;->ar:Ldos;

    move-object v9, v6

    goto :goto_3

    .line 15
    :cond_8
    move-object v9, v6

    .line 16
    :goto_3
    iget v6, v0, Lcdl;->a:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    iget-wide v10, v0, Lcdl;->c:J

    .line 17
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v10, v6

    goto :goto_4

    .line 21
    :cond_9
    move-object v10, v2

    .line 17
    :goto_4
    iget v6, v0, Lcdl;->a:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_a

    iget-wide v11, v0, Lcdl;->d:J

    .line 18
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v11, v6

    goto :goto_5

    .line 21
    :cond_a
    move-object v11, v2

    .line 18
    :goto_5
    iget v6, v0, Lcdl;->a:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_b

    iget-wide v12, v0, Lcdl;->e:J

    .line 19
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v12, v6

    goto :goto_6

    .line 21
    :cond_b
    move-object v12, v2

    .line 19
    :goto_6
    iget v6, v0, Lcdl;->a:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_c

    iget-wide v5, v0, Lcdl;->f:J

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v13, v5

    goto :goto_7

    .line 21
    :cond_c
    move-object v13, v2

    .line 20
    :goto_7
    iget v5, v0, Lcdl;->a:I

    and-int/lit8 v6, v5, 0x40

    if-eqz v6, :cond_d

    iget-object v6, v0, Lcdl;->h:Ljava/lang/String;

    move-object v15, v6

    goto :goto_8

    .line 21
    :cond_d
    move-object v15, v2

    .line 20
    :goto_8
    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_f

    iget-object v0, v0, Lcdl;->i:Ldot;

    if-nez v0, :cond_e

    .line 21
    sget-object v0, Ldot;->a:Ldot;

    move-object/from16 v16, v0

    goto :goto_9

    .line 20
    :cond_e
    move-object/from16 v16, v0

    goto :goto_9

    .line 21
    :cond_f
    move-object/from16 v16, v2

    :goto_9
    move-object v8, v4

    invoke-direct/range {v8 .. v16}, Lbwc;-><init>(Ldos;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ldoi;Ljava/lang/String;Ldot;)V

    .line 22
    :goto_a
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v1, Lbvu;->g:Lbvn;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 24
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lbvn;->a:Lbwf;

    iget-object v6, v6, Lbwf;->a:Landroid/content/Context;

    const-string v8, "systemhealth"

    .line 27
    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/health/SystemHealthManager;

    if-eqz v6, :cond_10

    .line 28
    invoke-virtual {v6}, Landroid/os/health/SystemHealthManager;->takeMyUidSnapshot()Landroid/os/health/HealthStats;

    move-result-object v6

    goto :goto_b

    .line 58
    :cond_10
    move-object v6, v2

    .line 28
    :goto_b
    iget-object v8, v0, Lbvn;->c:Ldny;

    check-cast v8, Lbto;

    .line 29
    invoke-virtual {v8}, Lbto;->b()Lbvr;

    .line 30
    move-object/from16 v8, p1

    invoke-static {v3, v5, v6, v8, v0}, Lxs;->c(Ljava/lang/Long;Ljava/lang/Long;Landroid/os/health/HealthStats;Ldoi;Lbvn;)Lbwc;

    move-result-object v0

    iget-object v5, v1, Lbvu;->f:Lbwd;

    monitor-enter v5

    :try_start_3
    iget-object v3, v1, Lbvu;->f:Lbwd;

    sget-object v6, Lcdl;->j:Lcdl;

    .line 31
    invoke-virtual {v6}, Lddk;->n()Lddf;

    move-result-object v6

    iget-object v8, v0, Lbwc;->a:Ldos;

    if-eqz v8, :cond_12

    iget-boolean v9, v6, Lddf;->c:Z

    if-eqz v9, :cond_11

    .line 32
    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v7, v6, Lddf;->c:Z

    :cond_11
    iget-object v9, v6, Lddf;->b:Lddk;

    .line 33
    check-cast v9, Lcdl;

    iput-object v8, v9, Lcdl;->b:Ldos;

    iget v8, v9, Lcdl;->a:I

    const/4 v10, 0x1

    or-int/2addr v8, v10

    iput v8, v9, Lcdl;->a:I

    :cond_12
    iget-object v8, v0, Lbwc;->b:Ljava/lang/Long;

    if-eqz v8, :cond_14

    .line 34
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-boolean v10, v6, Lddf;->c:Z

    if-eqz v10, :cond_13

    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v7, v6, Lddf;->c:Z

    :cond_13
    iget-object v10, v6, Lddf;->b:Lddk;

    .line 35
    check-cast v10, Lcdl;

    iget v11, v10, Lcdl;->a:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v10, Lcdl;->a:I

    iput-wide v8, v10, Lcdl;->c:J

    :cond_14
    iget-object v8, v0, Lbwc;->c:Ljava/lang/Long;

    if-eqz v8, :cond_16

    .line 36
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-boolean v10, v6, Lddf;->c:Z

    if-eqz v10, :cond_15

    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v7, v6, Lddf;->c:Z

    :cond_15
    iget-object v10, v6, Lddf;->b:Lddk;

    .line 37
    check-cast v10, Lcdl;

    iget v11, v10, Lcdl;->a:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lcdl;->a:I

    iput-wide v8, v10, Lcdl;->d:J

    :cond_16
    iget-object v8, v0, Lbwc;->d:Ljava/lang/Long;

    if-eqz v8, :cond_18

    .line 38
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-boolean v10, v6, Lddf;->c:Z

    if-eqz v10, :cond_17

    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v7, v6, Lddf;->c:Z

    :cond_17
    iget-object v10, v6, Lddf;->b:Lddk;

    .line 39
    check-cast v10, Lcdl;

    iget v11, v10, Lcdl;->a:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v10, Lcdl;->a:I

    iput-wide v8, v10, Lcdl;->e:J

    :cond_18
    iget-object v8, v0, Lbwc;->e:Ljava/lang/Long;

    if-eqz v8, :cond_1a

    .line 40
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-boolean v10, v6, Lddf;->c:Z

    if-eqz v10, :cond_19

    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v7, v6, Lddf;->c:Z

    :cond_19
    iget-object v10, v6, Lddf;->b:Lddk;

    .line 41
    check-cast v10, Lcdl;

    iget v11, v10, Lcdl;->a:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Lcdl;->a:I

    iput-wide v8, v10, Lcdl;->f:J

    :cond_1a
    iget-object v8, v0, Lbwc;->f:Ldoi;

    if-eqz v8, :cond_1c

    iget v8, v8, Ldoi;->h:I

    iget-boolean v9, v6, Lddf;->c:Z

    if-eqz v9, :cond_1b

    .line 42
    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v7, v6, Lddf;->c:Z

    :cond_1b
    iget-object v9, v6, Lddf;->b:Lddk;

    .line 43
    check-cast v9, Lcdl;

    iget v10, v9, Lcdl;->a:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v9, Lcdl;->a:I

    iput v8, v9, Lcdl;->g:I

    :cond_1c
    iget-object v8, v0, Lbwc;->g:Ljava/lang/String;

    if-eqz v8, :cond_1e

    iget-boolean v9, v6, Lddf;->c:Z

    if-eqz v9, :cond_1d

    .line 44
    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v7, v6, Lddf;->c:Z

    :cond_1d
    iget-object v9, v6, Lddf;->b:Lddk;

    .line 45
    check-cast v9, Lcdl;

    iget v10, v9, Lcdl;->a:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v9, Lcdl;->a:I

    iput-object v8, v9, Lcdl;->h:Ljava/lang/String;

    :cond_1e
    iget-object v8, v0, Lbwc;->h:Ldot;

    if-eqz v8, :cond_20

    iget-boolean v9, v6, Lddf;->c:Z

    if-eqz v9, :cond_1f

    .line 46
    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v7, v6, Lddf;->c:Z

    :cond_1f
    iget-object v9, v6, Lddf;->b:Lddk;

    .line 47
    check-cast v9, Lcdl;

    iput-object v8, v9, Lcdl;->i:Ldot;

    iget v8, v9, Lcdl;->a:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v9, Lcdl;->a:I

    :cond_20
    iget-object v3, v3, Lbwd;->a:Lcbp;

    .line 48
    invoke-virtual {v6}, Lddf;->f()Lddk;

    move-result-object v6

    check-cast v6, Lcdl;

    .line 49
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6}, Lder;->h()[B

    move-result-object v6

    const-string v8, "primes.battery.snapshot"

    .line 50
    invoke-static {}, Lbjq;->e()V

    iget-object v9, v3, Lcbp;->b:Landroid/content/Context;

    .line 51
    invoke-static {v9}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_21

    const/4 v3, 0x0

    goto :goto_c

    .line 52
    :cond_21
    array-length v9, v6

    add-int/lit8 v10, v9, 0x1

    new-array v10, v10, [B

    .line 53
    const/4 v11, 0x1

    aput-byte v11, v10, v7

    .line 54
    invoke-static {v6, v7, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v3, Lcbp;->c:Ldny;

    .line 55
    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    .line 56
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 57
    invoke-static {v10, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 58
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 59
    :goto_c
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_23

    iget-object v0, v1, Lbvu;->d:Lbvh;

    .line 60
    invoke-virtual {v0, v1}, Lbvh;->b(Lbvg;)V

    iget-object v3, v1, Lbvu;->f:Lbwd;

    monitor-enter v3

    :try_start_4
    iget-object v0, v1, Lbvu;->f:Lbwd;

    iget-object v0, v0, Lbwd;->a:Lcbp;

    const-string v2, "primes.battery.snapshot"

    .line 61
    invoke-static {}, Lbjq;->e()V

    iget-object v4, v0, Lcbp;->b:Landroid/content/Context;

    .line 62
    invoke-static {v4}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v0, v0, Lcbp;->c:Ldny;

    .line 63
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    :cond_22
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failure storing persistent snapshot and helper data"

    .line 65
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :catchall_0
    move-exception v0

    .line 64
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 65
    :cond_23
    iget-object v3, v1, Lbvu;->g:Lbvn;

    if-eqz v4, :cond_3b

    iget-object v5, v4, Lbwc;->d:Ljava/lang/Long;

    iget-object v6, v0, Lbwc;->d:Ljava/lang/Long;

    .line 66
    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, v4, Lbwc;->e:Ljava/lang/Long;

    iget-object v6, v0, Lbwc;->e:Ljava/lang/Long;

    .line 67
    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, v4, Lbwc;->b:Ljava/lang/Long;

    if-eqz v5, :cond_3b

    iget-object v5, v4, Lbwc;->c:Ljava/lang/Long;

    if-eqz v5, :cond_3b

    iget-object v5, v0, Lbwc;->b:Ljava/lang/Long;

    if-eqz v5, :cond_3b

    iget-object v6, v0, Lbwc;->c:Ljava/lang/Long;

    if-nez v6, :cond_24

    goto/16 :goto_17

    .line 68
    :cond_24
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v8, v4, Lbwc;->b:Ljava/lang/Long;

    .line 69
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v5, v8

    iget-object v8, v0, Lbwc;->c:Ljava/lang/Long;

    .line 70
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v4, Lbwc;->c:Ljava/lang/Long;

    .line 71
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gtz v12, :cond_25

    goto/16 :goto_17

    :cond_25
    sub-long/2addr v5, v8

    .line 72
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v12, 0x19

    cmp-long v14, v5, v12

    if-ltz v14, :cond_26

    long-to-double v5, v5

    long-to-double v8, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v8

    const-wide v8, 0x3f023456789abcdfL    # 3.472222222222222E-5

    cmpg-double v12, v5, v8

    if-gtz v12, :cond_3b

    :cond_26
    iget-object v3, v3, Lbvn;->a:Lbwf;

    iget-object v5, v0, Lbwc;->a:Ldos;

    iget-object v6, v4, Lbwc;->a:Ldos;

    .line 73
    invoke-static {v5, v6}, Lbvs;->k(Ldos;Ldos;)Ldos;

    move-result-object v5

    if-nez v5, :cond_27

    move-object v3, v2

    goto/16 :goto_14

    .line 131
    :cond_27
    const/4 v6, 0x5

    .line 74
    invoke-virtual {v5, v6}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lddf;

    .line 75
    invoke-virtual {v6, v5}, Lddf;->n(Lddk;)V

    iget-object v3, v3, Lbwf;->b:Lbvv;

    iget-object v5, v6, Lddf;->b:Lddk;

    .line 76
    check-cast v5, Ldos;

    iget-object v5, v5, Ldos;->g:Lddr;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_d
    iget-object v8, v6, Lddf;->b:Lddk;

    .line 77
    check-cast v8, Ldos;

    iget-object v8, v8, Ldos;->g:Lddr;

    .line 78
    invoke-interface {v8}, Lddr;->size()I

    move-result v8

    if-ge v5, v8, :cond_28

    .line 79
    invoke-virtual {v6, v5}, Lddf;->D(I)Ldor;

    move-result-object v8

    .line 80
    invoke-virtual {v3, v8}, Lbvv;->b(Ldor;)Ldor;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lddf;->ac(ILdor;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_28
    iget-object v5, v6, Lddf;->b:Lddk;

    .line 81
    check-cast v5, Ldos;

    iget-object v5, v5, Ldos;->h:Lddr;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_e
    iget-object v8, v6, Lddf;->b:Lddk;

    .line 82
    check-cast v8, Ldos;

    iget-object v8, v8, Ldos;->h:Lddr;

    .line 83
    invoke-interface {v8}, Lddr;->size()I

    move-result v8

    if-ge v5, v8, :cond_29

    .line 84
    invoke-virtual {v6, v5}, Lddf;->E(I)Ldor;

    move-result-object v8

    .line 85
    invoke-virtual {v3, v8}, Lbvv;->b(Ldor;)Ldor;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lddf;->ad(ILdor;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_29
    iget-object v5, v6, Lddf;->b:Lddk;

    .line 86
    check-cast v5, Ldos;

    iget-object v5, v5, Ldos;->i:Lddr;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_f
    iget-object v8, v6, Lddf;->b:Lddk;

    .line 87
    check-cast v8, Ldos;

    iget-object v8, v8, Ldos;->i:Lddr;

    .line 88
    invoke-interface {v8}, Lddr;->size()I

    move-result v8

    if-ge v5, v8, :cond_2a

    .line 89
    invoke-virtual {v6, v5}, Lddf;->F(I)Ldor;

    move-result-object v8

    .line 90
    invoke-virtual {v3, v8}, Lbvv;->b(Ldor;)Ldor;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lddf;->ae(ILdor;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_2a
    iget-object v5, v6, Lddf;->b:Lddk;

    .line 91
    check-cast v5, Ldos;

    iget-object v5, v5, Ldos;->j:Lddr;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_10
    iget-object v8, v6, Lddf;->b:Lddk;

    .line 92
    check-cast v8, Ldos;

    iget-object v8, v8, Ldos;->j:Lddr;

    .line 93
    invoke-interface {v8}, Lddr;->size()I

    move-result v8

    if-ge v5, v8, :cond_2b

    .line 94
    invoke-virtual {v6, v5}, Lddf;->G(I)Ldor;

    move-result-object v8

    .line 95
    invoke-virtual {v3, v8}, Lbvv;->b(Ldor;)Ldor;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lddf;->ab(ILdor;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_2b
    iget-object v5, v6, Lddf;->b:Lddk;

    .line 96
    check-cast v5, Ldos;

    iget-object v5, v5, Ldos;->k:Lddr;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_11
    iget-object v8, v6, Lddf;->b:Lddk;

    .line 97
    check-cast v8, Ldos;

    iget-object v8, v8, Ldos;->k:Lddr;

    .line 98
    invoke-interface {v8}, Lddr;->size()I

    move-result v8

    if-ge v5, v8, :cond_2c

    .line 99
    invoke-virtual {v6, v5}, Lddf;->H(I)Ldor;

    move-result-object v8

    .line 100
    invoke-virtual {v3, v8}, Lbvv;->b(Ldor;)Ldor;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lddf;->Y(ILdor;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_2c
    iget-object v5, v6, Lddf;->b:Lddk;

    .line 101
    check-cast v5, Ldos;

    iget-object v5, v5, Ldos;->l:Lddr;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_12
    iget-object v8, v6, Lddf;->b:Lddk;

    .line 102
    check-cast v8, Ldos;

    iget-object v8, v8, Ldos;->l:Lddr;

    .line 103
    invoke-interface {v8}, Lddr;->size()I

    move-result v8

    if-ge v5, v8, :cond_2d

    .line 104
    invoke-virtual {v6, v5}, Lddf;->I(I)Ldor;

    move-result-object v8

    .line 105
    invoke-virtual {v3, v8}, Lbvv;->b(Ldor;)Ldor;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lddf;->V(ILdor;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_2d
    iget-object v5, v6, Lddf;->b:Lddk;

    .line 106
    check-cast v5, Ldos;

    iget-object v5, v5, Ldos;->n:Lddr;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v5, 0x0

    :goto_13
    iget-object v8, v6, Lddf;->b:Lddk;

    .line 107
    check-cast v8, Ldos;

    iget-object v8, v8, Ldos;->n:Lddr;

    .line 108
    invoke-interface {v8}, Lddr;->size()I

    move-result v8

    if-ge v5, v8, :cond_2e

    .line 109
    invoke-virtual {v6, v5}, Lddf;->J(I)Ldor;

    move-result-object v8

    .line 110
    invoke-virtual {v3, v8}, Lbvv;->b(Ldor;)Ldor;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lddf;->X(ILdor;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 111
    :cond_2e
    invoke-virtual {v6}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldos;

    .line 73
    :goto_14
    if-nez v3, :cond_2f

    :goto_15
    goto/16 :goto_17

    :cond_2f
    iget v5, v3, Ldos;->a:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_3a

    iget-wide v5, v3, Ldos;->c:J

    cmp-long v8, v5, v10

    if-gtz v8, :cond_30

    goto :goto_15

    .line 112
    :cond_30
    sget-object v2, Ldoj;->k:Ldoj;

    .line 113
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    iget-object v5, v0, Lbwc;->b:Ljava/lang/Long;

    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v8, v4, Lbwc;->b:Ljava/lang/Long;

    .line 115
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v5, v8

    iget-boolean v8, v2, Lddf;->c:Z

    if-eqz v8, :cond_31

    .line 116
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v7, v2, Lddf;->c:Z

    :cond_31
    iget-object v8, v2, Lddf;->b:Lddk;

    .line 117
    check-cast v8, Ldoj;

    iget v9, v8, Ldoj;->a:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v8, Ldoj;->a:I

    iput-wide v5, v8, Ldoj;->h:J

    iget-object v5, v4, Lbwc;->f:Ldoi;

    if-eqz v5, :cond_32

    iget v5, v5, Ldoi;->h:I

    iput v5, v8, Ldoj;->b:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Ldoj;->a:I

    :cond_32
    iget-object v5, v4, Lbwc;->g:Ljava/lang/String;

    if-eqz v5, :cond_33

    or-int/lit8 v9, v9, 0x8

    iput v9, v8, Ldoj;->a:I

    iput-object v5, v8, Ldoj;->e:Ljava/lang/String;

    :cond_33
    iget-object v4, v4, Lbwc;->h:Ldot;

    if-eqz v4, :cond_34

    iput-object v4, v8, Ldoj;->f:Ldot;

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Ldoj;->a:I

    goto :goto_16

    .line 131
    :cond_34
    nop

    .line 117
    :goto_16
    iget-object v4, v0, Lbwc;->f:Ldoi;

    if-eqz v4, :cond_35

    iget v4, v4, Ldoi;->h:I

    iput v4, v8, Ldoj;->g:I

    or-int/lit8 v4, v9, 0x20

    iput v4, v8, Ldoj;->a:I

    :cond_35
    iget-object v4, v0, Lbwc;->b:Ljava/lang/Long;

    if-eqz v4, :cond_37

    .line 118
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v6, v2, Lddf;->c:Z

    if-eqz v6, :cond_36

    .line 119
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v7, v2, Lddf;->c:Z

    :cond_36
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 120
    check-cast v6, Ldoj;

    iget v8, v6, Ldoj;->a:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v6, Ldoj;->a:I

    iput-wide v4, v6, Ldoj;->j:J

    :cond_37
    iget-object v4, v2, Lddf;->b:Lddk;

    .line 121
    check-cast v4, Ldoj;

    iput-object v3, v4, Ldoj;->i:Ldos;

    iget v3, v4, Ldoj;->a:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v4, Ldoj;->a:I

    .line 122
    sget-object v3, Ldpz;->y:Ldpz;

    .line 123
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 124
    sget-object v4, Ldok;->c:Ldok;

    .line 125
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    iget-boolean v5, v4, Lddf;->c:Z

    if-eqz v5, :cond_38

    .line 124
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v7, v4, Lddf;->c:Z

    :cond_38
    iget-object v5, v4, Lddf;->b:Lddk;

    .line 126
    check-cast v5, Ldok;

    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Ldoj;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v5, Ldok;->b:Ldoj;

    iget v2, v5, Ldok;->a:I

    const/4 v6, 0x1

    or-int/2addr v2, v6

    iput v2, v5, Ldok;->a:I

    iget-boolean v2, v3, Lddf;->c:Z

    if-eqz v2, :cond_39

    .line 128
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_39
    iget-object v2, v3, Lddf;->b:Lddk;

    .line 129
    check-cast v2, Ldpz;

    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Ldok;

    .line 130
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v2, Ldpz;->k:Ldok;

    iget v4, v2, Ldpz;->a:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v2, Ldpz;->a:I

    .line 131
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Ldpz;

    goto :goto_17

    :cond_3a
    goto :goto_17

    .line 111
    :cond_3b
    nop

    .line 67
    :goto_17
    if-nez v2, :cond_3c

    .line 132
    sget-object v0, Ldad;->a:Ldag;

    return-object v0

    :cond_3c
    iget-object v3, v1, Lbvu;->h:Lbwn;

    .line 133
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v4

    iget-object v5, v0, Lbwc;->g:Ljava/lang/String;

    iput-object v5, v4, Lbwi;->a:Ljava/lang/String;

    .line 134
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lbwi;->b(Z)V

    .line 135
    invoke-virtual {v4, v2}, Lbwi;->d(Ldpz;)V

    iget-object v0, v0, Lbwc;->h:Ldot;

    iput-object v0, v4, Lbwi;->b:Ldot;

    .line 136
    invoke-virtual {v4}, Lbwi;->a()Lbwj;

    move-result-object v0

    .line 137
    invoke-virtual {v3, v0}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object v0

    return-object v0

    .line 22
    :catchall_1
    move-exception v0

    .line 59
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 9
    :catchall_2
    move-exception v0

    .line 22
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_19

    :goto_18
    throw v0

    :goto_19
    goto :goto_18
.end method

.method public s()Ldag;
    .locals 2

    .line 1
    iget-object v0, p0, Lbvu;->c:Landroid/content/Context;

    invoke-static {v0}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ldad;->a:Ldag;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbvu;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    invoke-static {v0}, Lex;->r(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    sget-object v0, Ldoi;->b:Ldoi;

    invoke-direct {p0, v0}, Lbvu;->v(Ldoi;)Ldag;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object v0

    return-object v0
.end method

.method public t()Ldag;
    .locals 5

    .line 1
    iget-object v0, p0, Lbvu;->c:Landroid/content/Context;

    invoke-static {v0}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ldad;->a:Ldag;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbvu;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbvu;->b:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x86

    .line 4
    const-string v2, "com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl"

    const-string v3, "onAppToForeground"

    const-string v4, "BatteryMetricServiceImpl.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "App is already in the foreground."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lhh;->h()Ldag;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    sget-object v0, Ldoi;->c:Ldoi;

    invoke-direct {p0, v0}, Lbvu;->v(Ldoi;)Ldag;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbvu;->d:Lbvh;

    invoke-virtual {v0, p0}, Lbvh;->a(Lbvg;)V

    return-void
.end method
