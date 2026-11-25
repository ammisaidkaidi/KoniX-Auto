.class public Lcom/google/android/projection/protocol/NavigationStatus;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/projection/protocol/NavigationStatusCallbacks;
.implements Lclk;


# instance fields
.field private final a:Lclx;

.field private mNativeNavigationStatus:J


# direct methods
.method public constructor <init>(Lclx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/protocol/NavigationStatus;->a:Lclx;

    return-void
.end method

.method private native nativeInit(IJIIIII)I
.end method

.method private native nativeStart()V
.end method

.method private native nativeStop()V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mNativeNavigationStatus:J

    return-wide v0
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/NavigationStatus;->nativeStop()V

    return-void
.end method

.method public final c(IJ)Z
    .locals 9

    .line 1
    const/16 v4, 0x3e8

    const/4 v5, 0x2

    const/16 v6, 0x200

    const/16 v7, 0x200

    const/16 v8, 0x20

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/projection/protocol/NavigationStatus;->nativeInit(IJIIIII)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/protocol/NavigationStatus;->nativeStart()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final navigationCurrentPositionCallback([B)V
    .locals 21

    .line 1
    :try_start_0
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v0

    sget-object v1, Lckj;->e:Lckj;

    .line 2
    move-object/from16 v2, p1

    invoke-static {v1, v2, v0}, Lddk;->r(Lddk;[BLdcz;)Lddk;

    move-result-object v0

    check-cast v0, Lckj;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/projection/protocol/NavigationStatus;->a:Lclx;

    new-instance v3, Landroid/os/Bundle;

    .line 5
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v2

    check-cast v4, Lawn;

    iget-object v5, v4, Lawn;->e:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v6, v0, Lckj;->b:Lckv;

    if-nez v6, :cond_0

    .line 6
    sget-object v6, Lckv;->c:Lckv;

    :cond_0
    iget v6, v6, Lckv;->a:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    const/4 v8, 0x0

    if-eqz v6, :cond_7

    iget-object v6, v0, Lckj;->b:Lckv;

    if-nez v6, :cond_1

    sget-object v6, Lckv;->c:Lckv;

    :cond_1
    iget-object v6, v6, Lckv;->b:Lckm;

    if-nez v6, :cond_2

    .line 7
    sget-object v6, Lckm;->e:Lckm;

    .line 8
    :cond_2
    invoke-static {v6}, Lawn;->a(Lckm;)Ld;

    move-result-object v6

    move-object v9, v2

    check-cast v9, Lawn;

    iget-object v9, v9, Lawn;->e:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    move-object v10, v2

    check-cast v10, Lawn;

    iget-object v10, v10, Lawn;->f:Lj$/util/Optional;

    .line 9
    invoke-virtual {v10}, Lj$/util/Optional;->isPresent()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v2

    check-cast v10, Lawn;

    iget-object v10, v10, Lawn;->f:Lj$/util/Optional;

    .line 17
    invoke-virtual {v10}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lddf;

    iget-boolean v11, v10, Lddf;->c:Z

    if-eqz v11, :cond_3

    .line 18
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v8, v10, Lddf;->c:Z

    :cond_3
    iget-object v11, v10, Lddf;->b:Lddk;

    .line 19
    check-cast v11, Lm;

    sget-object v12, Lm;->e:Lm;

    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v11, Lm;->a:Ld;

    move-object v6, v2

    check-cast v6, Lawn;

    iget-object v6, v6, Lawn;->j:Lddf;

    iget-boolean v11, v6, Lddf;->c:Z

    if-eqz v11, :cond_4

    .line 21
    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v8, v6, Lddf;->c:Z

    :cond_4
    iget-object v6, v6, Lddf;->b:Lddk;

    .line 22
    check-cast v6, Lk;

    .line 23
    invoke-virtual {v10}, Lddf;->f()Lddk;

    move-result-object v10

    check-cast v10, Lm;

    .line 22
    sget-object v11, Lk;->e:Lk;

    .line 24
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {v6}, Lk;->b()V

    iget-object v6, v6, Lk;->a:Lddr;

    .line 26
    invoke-interface {v6, v8, v10}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    sget-object v10, Lm;->e:Lm;

    .line 11
    invoke-virtual {v10}, Lddk;->n()Lddf;

    move-result-object v10

    iget-boolean v11, v10, Lddf;->c:Z

    if-eqz v11, :cond_6

    .line 12
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v8, v10, Lddf;->c:Z

    :cond_6
    iget-object v11, v10, Lddf;->b:Lddk;

    .line 13
    check-cast v11, Lm;

    .line 14
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v11, Lm;->a:Ld;

    move-object v6, v2

    check-cast v6, Lawn;

    iget-object v6, v6, Lawn;->j:Lddf;

    .line 15
    invoke-virtual {v6, v10}, Lddf;->ai(Lddf;)V

    .line 16
    invoke-static {v10}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v6

    move-object v10, v2

    check-cast v10, Lawn;

    iput-object v6, v10, Lawn;->f:Lj$/util/Optional;

    .line 27
    :goto_0
    monitor-exit v9

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_7
    :goto_1
    iget-object v6, v0, Lckj;->c:Lddr;

    .line 28
    invoke-interface {v6}, Lddr;->size()I

    move-result v6

    if-eqz v6, :cond_1d

    move-object v6, v2

    check-cast v6, Lawn;

    iget-object v6, v6, Lawn;->e:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v10, 0x0

    :goto_2
    :try_start_4
    iget-object v11, v0, Lckj;->c:Lddr;

    .line 29
    invoke-interface {v11}, Lddr;->size()I

    move-result v11

    if-ge v10, v11, :cond_1c

    iget-object v11, v0, Lckj;->c:Lddr;

    .line 30
    invoke-interface {v11, v10}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lckl;

    .line 31
    sget-object v12, Lc;->e:Lc;

    .line 32
    invoke-virtual {v12}, Lddk;->n()Lddf;

    move-result-object v12

    move-object v13, v2

    check-cast v13, Lawn;

    iget-object v13, v13, Lawn;->j:Lddf;

    iget-object v13, v13, Lddf;->b:Lddk;

    .line 33
    check-cast v13, Lk;

    iget-object v13, v13, Lk;->b:Lddr;

    .line 34
    invoke-interface {v13}, Lddr;->size()I

    move-result v13

    if-ge v10, v13, :cond_8

    move-object v12, v2

    check-cast v12, Lawn;

    iget-object v12, v12, Lawn;->j:Lddf;

    iget-object v12, v12, Lddf;->b:Lddk;

    .line 35
    check-cast v12, Lk;

    iget-object v12, v12, Lk;->b:Lddr;

    .line 36
    invoke-interface {v12, v10}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc;

    const/4 v13, 0x5

    .line 37
    invoke-virtual {v12, v13}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v13

    .line 38
    check-cast v13, Lddf;

    .line 39
    invoke-virtual {v13, v12}, Lddf;->n(Lddk;)V

    move-object v12, v13

    :cond_8
    iget v13, v11, Lckl;->a:I

    and-int/2addr v13, v7

    if-eqz v13, :cond_b

    iget-object v13, v11, Lckl;->b:Lckm;

    if-nez v13, :cond_9

    .line 40
    sget-object v13, Lckm;->e:Lckm;

    .line 41
    :cond_9
    invoke-static {v13}, Lawn;->a(Lckm;)Ld;

    move-result-object v13

    iget-boolean v14, v12, Lddf;->c:Z

    if-eqz v14, :cond_a

    invoke-virtual {v12}, Lddf;->k()V

    iput-boolean v8, v12, Lddf;->c:Z

    :cond_a
    iget-object v14, v12, Lddf;->b:Lddk;

    .line 42
    check-cast v14, Lc;

    .line 43
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v13, v14, Lc;->b:Ld;

    :cond_b
    iget v13, v11, Lckl;->a:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_17

    iget-wide v13, v11, Lckl;->c:J

    .line 44
    const-wide/16 v7, 0x3c

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-float v7, v7

    const/high16 v8, 0x42700000    # 60.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    .line 45
    invoke-static {v7, v8}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v7

    .line 46
    move/from16 v16, v10

    invoke-virtual {v7}, Lj$/time/Duration;->toDays()J

    move-result-wide v9

    long-to-int v10, v9

    int-to-long v8, v10

    .line 47
    invoke-virtual {v7, v8, v9}, Lj$/time/Duration;->minusDays(J)Lj$/time/Duration;

    move-result-object v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lj$/time/Duration;->toHours()J

    move-result-wide v4

    long-to-int v5, v4

    .line 48
    invoke-virtual {v7, v8, v9}, Lj$/time/Duration;->minusDays(J)Lj$/time/Duration;

    move-result-object v4

    int-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Lj$/time/Duration;->minusHours(J)Lj$/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/Duration;->toMinutes()J

    move-result-wide v7

    long-to-int v4, v7

    if-lez v10, :cond_e

    const/16 v7, 0x1d

    if-le v4, v7, :cond_c

    add-int/lit8 v4, v5, 0x1

    const/16 v5, 0x18

    if-ne v4, v5, :cond_d

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_3

    .line 60
    :cond_c
    move v4, v5

    .line 48
    :cond_d
    :goto_3
    move v5, v4

    const/4 v4, 0x0

    :cond_e
    const v7, 0x7f100087

    if-lez v10, :cond_f

    move-object v4, v2

    check-cast v4, Lawn;

    iget-object v4, v4, Lawn;->b:Landroid/content/Context;

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const-string v13, "number_days"

    const/4 v14, 0x0

    aput-object v13, v9, v14

    .line 49
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    const v10, 0x7f100085

    invoke-static {v4, v10, v9}, Lhf;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_13

    move-object v9, v2

    check-cast v9, Lawn;

    iget-object v9, v9, Lawn;->b:Landroid/content/Context;

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const-string v13, "number_hours"

    const/4 v14, 0x0

    aput-object v13, v10, v14

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v10, v13

    invoke-static {v9, v7, v10}, Lhf;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v2

    check-cast v7, Lawn;

    iget-object v7, v7, Lawn;->b:Landroid/content/Context;

    .line 51
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v5, v9, v4

    const v4, 0x7f100086

    .line 52
    invoke-virtual {v7, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 81
    :cond_f
    const v9, 0x7f100089

    if-lez v5, :cond_11

    move-object v10, v2

    check-cast v10, Lawn;

    iget-object v10, v10, Lawn;->b:Landroid/content/Context;

    const/4 v8, 0x2

    new-array v13, v8, [Ljava/lang/Object;

    const-string v14, "number_hours"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v13, v14

    invoke-static {v10, v7, v13}, Lhf;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_10

    move-object v7, v2

    check-cast v7, Lawn;

    iget-object v7, v7, Lawn;->b:Landroid/content/Context;

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const-string v13, "number_minutes"

    const/4 v14, 0x0

    aput-object v13, v10, v14

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v13, 0x1

    aput-object v4, v10, v13

    .line 55
    invoke-static {v7, v9, v10}, Lhf;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v2

    check-cast v7, Lawn;

    iget-object v7, v7, Lawn;->b:Landroid/content/Context;

    .line 56
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v5, 0x1

    aput-object v4, v9, v5

    const v4, 0x7f100088

    .line 57
    invoke-virtual {v7, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 53
    :cond_10
    move-object v4, v5

    goto :goto_4

    .line 57
    :cond_11
    const-wide/16 v17, 0x0

    cmp-long v5, v13, v17

    if-lez v5, :cond_12

    move-object v5, v2

    check-cast v5, Lawn;

    iget-object v5, v5, Lawn;->b:Landroid/content/Context;

    const/4 v7, 0x2

    new-array v10, v7, [Ljava/lang/Object;

    const-string v7, "number_minutes"

    const/4 v13, 0x0

    aput-object v7, v10, v13

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v10, v7

    .line 59
    invoke-static {v5, v9, v10}, Lhf;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_12
    move-object v4, v2

    check-cast v4, Lawn;

    iget-object v4, v4, Lawn;->b:Landroid/content/Context;

    .line 60
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    :cond_13
    :goto_4
    iget-boolean v5, v12, Lddf;->c:Z

    if-eqz v5, :cond_14

    .line 61
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v12, Lddf;->c:Z

    :cond_14
    iget-object v5, v12, Lddf;->b:Lddk;

    .line 62
    check-cast v5, Lc;

    .line 63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lc;->d:Ljava/lang/String;

    .line 64
    sget-object v4, Ldkp;->a:Ldkp;

    .line 65
    invoke-virtual {v4}, Ldkp;->b()Ldkq;

    move-result-object v4

    invoke-interface {v4}, Ldkq;->a()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-wide v4, v11, Lckl;->c:J

    .line 66
    sget-object v7, Ln;->b:Ln;

    .line 67
    invoke-virtual {v7}, Lddk;->n()Lddf;

    move-result-object v7

    .line 68
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v9

    .line 69
    invoke-virtual {v9, v4, v5}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v4

    iget-boolean v9, v7, Lddf;->c:Z

    if-eqz v9, :cond_15

    invoke-virtual {v7}, Lddf;->k()V

    const/4 v9, 0x0

    iput-boolean v9, v7, Lddf;->c:Z

    :cond_15
    iget-object v9, v7, Lddf;->b:Lddk;

    .line 70
    check-cast v9, Ln;

    iput-wide v4, v9, Ln;->a:J

    .line 71
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Ln;

    iget-boolean v5, v12, Lddf;->c:Z

    if-eqz v5, :cond_16

    .line 72
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v12, Lddf;->c:Z

    :cond_16
    iget-object v5, v12, Lddf;->b:Lddk;

    .line 73
    check-cast v5, Lc;

    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lc;->c:Ln;

    goto :goto_5

    .line 43
    :cond_17
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move/from16 v16, v10

    .line 74
    :cond_18
    :goto_5
    move-object v4, v2

    check-cast v4, Lawn;

    iget-object v4, v4, Lawn;->j:Lddf;

    iget-object v4, v4, Lddf;->b:Lddk;

    .line 75
    check-cast v4, Lk;

    iget-object v4, v4, Lk;->b:Lddr;

    .line 76
    invoke-interface {v4}, Lddr;->size()I

    move-result v4

    move/from16 v5, v16

    if-ge v5, v4, :cond_1a

    move-object v4, v2

    check-cast v4, Lawn;

    iget-object v4, v4, Lawn;->j:Lddf;

    iget-boolean v7, v4, Lddf;->c:Z

    if-eqz v7, :cond_19

    .line 82
    invoke-virtual {v4}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v4, Lddf;->c:Z

    :cond_19
    iget-object v4, v4, Lddf;->b:Lddk;

    .line 83
    check-cast v4, Lk;

    .line 84
    invoke-virtual {v12}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Lc;

    .line 85
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-virtual {v4}, Lk;->c()V

    iget-object v4, v4, Lk;->b:Lddr;

    .line 87
    invoke-interface {v4, v5, v7}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v6

    goto :goto_7

    .line 103
    :cond_1a
    move-object v4, v2

    check-cast v4, Lawn;

    iget-object v4, v4, Lawn;->j:Lddf;

    iget-boolean v7, v4, Lddf;->c:Z

    if-eqz v7, :cond_1b

    .line 77
    invoke-virtual {v4}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v4, Lddf;->c:Z

    :cond_1b
    iget-object v4, v4, Lddf;->b:Lddk;

    .line 78
    check-cast v4, Lk;

    invoke-virtual {v12}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Lc;

    .line 79
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-virtual {v4}, Lk;->c()V

    iget-object v4, v4, Lk;->b:Lddr;

    .line 81
    invoke-interface {v4, v7}, Lddr;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v5, 0x1

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 89
    :cond_1c
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    monitor-exit v6

    goto :goto_7

    .line 27
    :catchall_1
    move-exception v0

    move-object/from16 v19, v5

    .line 89
    :goto_6
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    .line 27
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 28
    :cond_1d
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    .line 88
    :goto_7
    iget v4, v0, Lckj;->a:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_22

    move-object v4, v2

    check-cast v4, Lawn;

    iget-object v4, v4, Lawn;->j:Lddf;

    iget-object v0, v0, Lckj;->d:Lcks;

    if-nez v0, :cond_1e

    .line 90
    sget-object v0, Lcks;->c:Lcks;

    .line 91
    :cond_1e
    sget-object v5, Ll;->b:Ll;

    .line 92
    invoke-virtual {v5}, Lddk;->n()Lddf;

    move-result-object v5

    iget v6, v0, Lcks;->a:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_20

    iget-object v0, v0, Lcks;->b:Ljava/lang/String;

    iget-boolean v6, v5, Lddf;->c:Z

    if-eqz v6, :cond_1f

    .line 93
    invoke-virtual {v5}, Lddf;->k()V

    const/4 v6, 0x0

    iput-boolean v6, v5, Lddf;->c:Z

    :cond_1f
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 94
    check-cast v6, Ll;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v6, Ll;->a:Ljava/lang/String;

    .line 96
    :cond_20
    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ll;

    iget-boolean v5, v4, Lddf;->c:Z

    if-eqz v5, :cond_21

    .line 97
    invoke-virtual {v4}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lddf;->c:Z

    :cond_21
    iget-object v4, v4, Lddf;->b:Lddk;

    .line 98
    check-cast v4, Lk;

    sget-object v5, Lk;->e:Lk;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v4, Lk;->c:Ll;

    :cond_22
    const-string v0, "navstate2"

    check-cast v2, Lawn;

    iget-object v2, v2, Lawn;->j:Lddf;

    .line 100
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Lk;

    invoke-virtual {v2}, Ldbv;->h()[B

    move-result-object v2

    .line 101
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 102
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 103
    move-object/from16 v2, v20

    invoke-virtual {v2, v3}, Lawn;->c(Landroid/os/Bundle;)V

    return-void

    .line 4
    :catchall_3
    move-exception v0

    move-object/from16 v19, v5

    .line 102
    :goto_8
    :try_start_7
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 4
    :catchall_4
    move-exception v0

    goto :goto_8

    .line 16
    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    const-string v2, "AHU.NAVIGATION"

    const-string v3, "Error parsing protocol buffer in callback"

    .line 3
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error parsing protocol buffer in callback"

    .line 4
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :goto_9
    throw v2

    :goto_a
    goto :goto_9
.end method

.method public final navigationNextTurnCallback(Ljava/lang/String;II[BII)V
    .locals 14

    .line 1
    move/from16 v0, p6

    move-object v1, p0

    iget-object v2, v1, Lcom/google/android/projection/protocol/NavigationStatus;->a:Lclx;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v2

    check-cast v4, Lawn;

    iget-object v5, v4, Lawn;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 2
    :try_start_0
    invoke-static/range {p3 .. p3}, Lckr;->b(I)Lckr;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v10, 0x0

    goto :goto_0

    .line 5
    :pswitch_0
    const/4 v10, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v10, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v10, 0x1

    .line 3
    :goto_0
    sget-object v11, Lawm;->a:Lcqk;

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    if-nez v6, :cond_0

    goto :goto_3

    .line 52
    :cond_0
    packed-switch v10, :pswitch_data_1

    :pswitch_3
    sget-object v10, Lawm;->b:Lcqk;

    goto :goto_1

    .line 4
    :pswitch_4
    sget-object v10, Lawm;->c:Lcqk;

    .line 6
    invoke-virtual {v10, v6}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Li;

    goto :goto_3

    :pswitch_5
    sget-object v10, Lawm;->a:Lcqk;

    .line 5
    invoke-virtual {v10, v6}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Li;

    goto :goto_2

    .line 4
    :goto_1
    invoke-virtual {v10, v6}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Li;

    goto :goto_3

    .line 5
    :cond_1
    :goto_2
    nop

    .line 3
    :goto_3
    invoke-static {v11}, Lhn;->e(Ljava/lang/Object;)Lbic;

    move-result-object v10

    .line 7
    sget-object v11, Li;->a:Li;

    invoke-virtual {v10, v11}, Lbic;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li;

    .line 8
    sget-object v11, Lj;->d:Lj;

    .line 9
    invoke-virtual {v11}, Lddk;->n()Lddf;

    move-result-object v11

    iget-boolean v12, v11, Lddf;->c:Z

    if-eqz v12, :cond_2

    .line 10
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v9, v11, Lddf;->c:Z

    :cond_2
    iget-object v12, v11, Lddf;->b:Lddk;

    .line 11
    check-cast v12, Lj;

    .line 12
    invoke-virtual {v10}, Li;->a()I

    move-result v13

    iput v13, v12, Lj;->a:I

    if-lez v0, :cond_4

    sget-object v12, Lckr;->n:Lckr;

    .line 13
    invoke-virtual {v12, v6}, Lckr;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, v11, Lddf;->c:Z

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v9, v11, Lddf;->c:Z

    :cond_3
    iget-object v6, v11, Lddf;->b:Lddk;

    .line 15
    check-cast v6, Lj;

    iput v0, v6, Lj;->b:I

    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    .line 16
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "maneuver"

    .line 17
    invoke-virtual {v10}, Li;->a()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "image"

    .line 18
    move-object/from16 v10, p4

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "turnangle"

    .line 19
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v6, v2

    check-cast v6, Lawn;

    iget-object v6, v6, Lawn;->b:Landroid/content/Context;

    .line 20
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v10, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->b:Landroid/net/Uri;

    .line 21
    invoke-virtual {v6, v10, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_5

    sget-object v2, Lawn;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->c()Lctq;

    move-result-object v2

    const-string v3, "com/google/android/apps/auto/aareceiver/cluster/TurnDataNavStatusListener"

    const-string v4, "onNextTurn"

    const/16 v6, 0xc5

    const-string v7, "TurnDataNavStatusListener.java"

    .line 53
    invoke-interface {v2, v3, v4, v6, v7}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const-string v3, "Failed to insert turn image for %s"

    invoke-interface {v2, v3, v0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    monitor-exit v5

    return-void

    .line 22
    :cond_5
    sget-object v0, Le;->d:Le;

    .line 23
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-boolean v10, v0, Lddf;->c:Z

    if-eqz v10, :cond_6

    .line 24
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v9, v0, Lddf;->c:Z

    :cond_6
    iget-object v10, v0, Lddf;->b:Lddk;

    .line 25
    check-cast v10, Le;

    iput-boolean v8, v10, Le;->c:Z

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    iput-wide v12, v10, Le;->b:D

    .line 26
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, v0, Lddf;->c:Z

    if-eqz v8, :cond_7

    .line 27
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v9, v0, Lddf;->c:Z

    :cond_7
    iget-object v8, v0, Lddf;->b:Lddk;

    .line 28
    check-cast v8, Le;

    .line 29
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Le;->a:Ljava/lang/String;

    iget-boolean v6, v11, Lddf;->c:Z

    if-eqz v6, :cond_8

    .line 30
    invoke-virtual {v11}, Lddf;->k()V

    iput-boolean v9, v11, Lddf;->c:Z

    :cond_8
    iget-object v6, v11, Lddf;->b:Lddk;

    .line 31
    check-cast v6, Lj;

    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Le;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v6, Lj;->c:Le;

    .line 33
    sget-object v0, Lk;->e:Lk;

    .line 34
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-boolean v6, v0, Lddf;->c:Z

    if-eqz v6, :cond_9

    .line 35
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v9, v0, Lddf;->c:Z

    :cond_9
    iget-object v6, v0, Lddf;->b:Lddk;

    .line 36
    check-cast v6, Lk;

    invoke-static {v7}, Lr;->c(I)I

    move-result v7

    iput v7, v6, Lk;->d:I

    .line 37
    sget-object v6, Ll;->b:Ll;

    .line 38
    invoke-virtual {v6}, Lddk;->n()Lddf;

    move-result-object v6

    iget-boolean v7, v6, Lddf;->c:Z

    if-eqz v7, :cond_a

    .line 37
    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v9, v6, Lddf;->c:Z

    :cond_a
    iget-object v7, v6, Lddf;->b:Lddk;

    .line 39
    check-cast v7, Ll;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, p1

    iput-object v8, v7, Ll;->a:Ljava/lang/String;

    iget-boolean v7, v0, Lddf;->c:Z

    if-eqz v7, :cond_b

    .line 41
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v9, v0, Lddf;->c:Z

    :cond_b
    iget-object v7, v0, Lddf;->b:Lddk;

    .line 42
    check-cast v7, Lk;

    invoke-virtual {v6}, Lddf;->f()Lddk;

    move-result-object v6

    check-cast v6, Ll;

    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v7, Lk;->c:Ll;

    move-object v6, v2

    check-cast v6, Lawn;

    iput-object v0, v6, Lawn;->j:Lddf;

    .line 44
    sget-object v0, Lm;->e:Lm;

    .line 45
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-boolean v6, v0, Lddf;->c:Z

    if-eqz v6, :cond_c

    .line 44
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v9, v0, Lddf;->c:Z

    :cond_c
    iget-object v6, v0, Lddf;->b:Lddk;

    .line 46
    check-cast v6, Lm;

    invoke-virtual {v11}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Lj;

    .line 47
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v6, Lm;->b:Lj;

    .line 44
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    move-object v6, v2

    check-cast v6, Lawn;

    iput-object v0, v6, Lawn;->f:Lj$/util/Optional;

    move-object v0, v2

    check-cast v0, Lawn;

    iget-object v0, v0, Lawn;->j:Lddf;

    move-object v6, v2

    check-cast v6, Lawn;

    iget-object v6, v6, Lawn;->f:Lj$/util/Optional;

    .line 48
    invoke-virtual {v6}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lddf;

    invoke-virtual {v0, v6}, Lddf;->ai(Lddf;)V

    const-string v0, "navstate2"

    check-cast v2, Lawn;

    iget-object v2, v2, Lawn;->j:Lddf;

    .line 49
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Lk;

    invoke-virtual {v2}, Ldbv;->h()[B

    move-result-object v2

    .line 50
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 51
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {v4, v3}, Lawn;->c(Landroid/os/Bundle;)V

    return-void

    .line 5
    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final navigationNextTurnDistanceCallback(IIII)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/projection/protocol/NavigationStatus;->a:Lclx;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    check-cast v3, Lawn;

    iget-object v4, v3, Lawn;->e:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    move-object v5, v0

    check-cast v5, Lawn;

    iget-object v5, v5, Lawn;->f:Lj$/util/Optional;

    .line 2
    invoke-virtual {v5}, Lj$/util/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    move-object v5, v0

    check-cast v5, Lawn;

    iget-object v5, v5, Lawn;->j:Lddf;

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x6

    packed-switch p4, :pswitch_data_0

    const/4 v9, 0x0

    goto :goto_0

    .line 10
    :pswitch_0
    const/16 v9, 0x8

    goto :goto_0

    :pswitch_1
    const/4 v9, 0x7

    goto :goto_0

    :pswitch_2
    const/4 v9, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v9, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v9, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v9, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v9, 0x2

    goto :goto_0

    :pswitch_7
    const/4 v9, 0x1

    .line 3
    :goto_0
    move-object v10, v0

    check-cast v10, Lawn;

    iget-object v10, v10, Lawn;->d:Landroid/content/res/Configuration;

    .line 4
    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v13

    if-eq v9, v6, :cond_2

    if-ne v9, v8, :cond_1

    goto :goto_1

    :cond_1
    move v15, v9

    goto :goto_2

    :cond_2
    move v8, v9

    .line 5
    :goto_1
    invoke-virtual {v13, v7}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    move v15, v8

    :goto_2
    move-object v5, v0

    check-cast v5, Lawn;

    iget-object v5, v5, Lawn;->f:Lj$/util/Optional;

    .line 6
    new-instance v6, Lawl;

    move-object v11, v0

    check-cast v11, Lawn;

    move-object v10, v6

    move/from16 v12, p1

    move/from16 v14, p3

    invoke-direct/range {v10 .. v15}, Lawl;-><init>(Lawn;ILjava/text/NumberFormat;II)V

    invoke-virtual {v5, v6}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    const-string v5, "navstate2"

    check-cast v0, Lawn;

    iget-object v0, v0, Lawn;->j:Lddf;

    .line 7
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lk;

    invoke-virtual {v0}, Ldbv;->h()[B

    move-result-object v0

    .line 8
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 9
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v3, v2}, Lawn;->c(Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_3
    :goto_3
    :try_start_1
    monitor-exit v4

    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final navigationStateCallback([B)V
    .locals 20

    .line 1
    :try_start_0
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v0

    sget-object v1, Lckt;->c:Lckt;

    .line 2
    move-object/from16 v2, p1

    invoke-static {v1, v2, v0}, Lddk;->r(Lddk;[BLdcz;)Lddk;

    move-result-object v0

    check-cast v0, Lckt;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/projection/protocol/NavigationStatus;->a:Lclx;

    new-instance v3, Landroid/os/Bundle;

    .line 5
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v2

    check-cast v4, Lawn;

    iget-object v5, v4, Lawn;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 6
    :try_start_1
    sget-object v6, Lk;->e:Lk;

    .line 7
    invoke-virtual {v6}, Lddk;->n()Lddf;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lawn;

    iput-object v6, v7, Lawn;->j:Lddf;

    .line 8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lawn;

    iput-object v6, v7, Lawn;->f:Lj$/util/Optional;

    iget-object v6, v0, Lckt;->a:Lddr;

    .line 9
    invoke-interface {v6}, Lddr;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3c

    move-object v6, v2

    check-cast v6, Lawn;

    iget-object v6, v6, Lawn;->j:Lddf;

    .line 10
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v9

    iget-object v10, v0, Lckt;->a:Lddr;

    .line 11
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_32

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcku;

    .line 12
    sget-object v13, Lm;->e:Lm;

    .line 13
    invoke-virtual {v13}, Lddk;->n()Lddf;

    move-result-object v13

    iget v14, v11, Lcku;->a:I

    and-int/2addr v14, v7

    if-eqz v14, :cond_1d

    iget-object v14, v11, Lcku;->b:Lckq;

    if-nez v14, :cond_0

    .line 14
    sget-object v14, Lckq;->e:Lckq;

    .line 15
    :cond_0
    sget-object v15, Lj;->d:Lj;

    .line 16
    invoke-virtual {v15}, Lddk;->n()Lddf;

    move-result-object v15

    iget v7, v14, Lckq;->b:I

    .line 17
    invoke-static {v7}, Lckp;->b(I)Lckp;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v7, Lckp;->a:Lckp;

    .line 18
    :cond_1
    sget-object v16, Ldkp;->a:Ldkp;

    .line 19
    invoke-virtual/range {v16 .. v16}, Ldkp;->b()Ldkq;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ldkq;->b()Z

    move-result v16

    if-eqz v16, :cond_17

    sget-object v8, Lckp;->F:Lckp;

    .line 20
    invoke-virtual {v8, v7}, Lckp;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v12, 0x2d

    if-eqz v8, :cond_c

    iget v7, v14, Lckq;->d:I

    const/4 v8, 0x5

    if-le v7, v8, :cond_2

    if-gt v7, v12, :cond_2

    .line 29
    sget-object v7, Li;->L:Li;

    goto/16 :goto_1

    .line 101
    :cond_2
    if-le v7, v12, :cond_3

    const/16 v8, 0x87

    if-ge v7, v8, :cond_3

    .line 28
    sget-object v7, Li;->M:Li;

    goto/16 :goto_1

    :cond_3
    const/16 v8, 0x87

    if-lt v7, v8, :cond_4

    const/16 v8, 0xaa

    if-gt v7, v8, :cond_4

    .line 27
    sget-object v7, Li;->N:Li;

    goto/16 :goto_1

    :cond_4
    const/16 v8, 0xaa

    if-le v7, v8, :cond_5

    const/16 v8, 0xbe

    if-ge v7, v8, :cond_5

    .line 26
    sget-object v7, Li;->K:Li;

    goto/16 :goto_1

    :cond_5
    const/16 v8, 0xbe

    if-lt v7, v8, :cond_6

    const/16 v8, 0xe1

    if-gt v7, v8, :cond_6

    .line 25
    sget-object v7, Li;->J:Li;

    goto/16 :goto_1

    :cond_6
    const/16 v8, 0xe1

    if-le v7, v8, :cond_7

    const/16 v8, 0x13b

    if-ge v7, v8, :cond_7

    .line 24
    sget-object v7, Li;->I:Li;

    goto/16 :goto_1

    :cond_7
    const/16 v8, 0x13b

    if-lt v7, v8, :cond_8

    const/16 v8, 0x163

    if-ge v7, v8, :cond_8

    .line 23
    sget-object v7, Li;->H:Li;

    goto/16 :goto_1

    :cond_8
    const/16 v8, 0x163

    if-lt v7, v8, :cond_9

    const/16 v8, 0x168

    if-le v7, v8, :cond_a

    :cond_9
    if-lez v7, :cond_b

    const/4 v8, 0x5

    if-gt v7, v8, :cond_b

    .line 22
    :cond_a
    sget-object v7, Li;->O:Li;

    goto/16 :goto_1

    .line 21
    :cond_b
    sget-object v7, Li;->G:Li;

    goto/16 :goto_1

    :cond_c
    sget-object v8, Lckp;->H:Lckp;

    .line 30
    invoke-virtual {v8, v7}, Lckp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget v7, v14, Lckq;->d:I

    const/4 v8, 0x5

    if-le v7, v8, :cond_d

    if-gt v7, v12, :cond_d

    .line 42
    sget-object v7, Li;->Q:Li;

    goto/16 :goto_1

    :cond_d
    if-le v7, v12, :cond_e

    const/16 v8, 0x87

    if-ge v7, v8, :cond_e

    .line 41
    sget-object v7, Li;->R:Li;

    goto/16 :goto_1

    :cond_e
    const/16 v8, 0x87

    if-lt v7, v8, :cond_f

    const/16 v8, 0xaa

    if-gt v7, v8, :cond_f

    .line 40
    sget-object v7, Li;->S:Li;

    goto :goto_1

    :cond_f
    const/16 v8, 0xaa

    if-le v7, v8, :cond_10

    const/16 v8, 0xbe

    if-ge v7, v8, :cond_10

    .line 39
    sget-object v7, Li;->T:Li;

    goto :goto_1

    :cond_10
    const/16 v8, 0xbe

    if-lt v7, v8, :cond_11

    const/16 v8, 0xe1

    if-gt v7, v8, :cond_11

    .line 38
    sget-object v7, Li;->W:Li;

    goto :goto_1

    :cond_11
    const/16 v8, 0xe1

    if-le v7, v8, :cond_12

    const/16 v8, 0x13b

    if-ge v7, v8, :cond_12

    .line 37
    sget-object v7, Li;->V:Li;

    goto :goto_1

    :cond_12
    const/16 v8, 0x13b

    if-lt v7, v8, :cond_13

    const/16 v8, 0x163

    if-ge v7, v8, :cond_13

    .line 36
    sget-object v7, Li;->U:Li;

    goto :goto_1

    :cond_13
    const/16 v8, 0x163

    if-lt v7, v8, :cond_14

    const/16 v8, 0x168

    if-le v7, v8, :cond_15

    :cond_14
    if-lez v7, :cond_16

    const/4 v8, 0x5

    if-gt v7, v8, :cond_16

    .line 35
    :cond_15
    sget-object v7, Li;->X:Li;

    goto :goto_1

    .line 34
    :cond_16
    sget-object v7, Li;->P:Li;

    goto :goto_1

    .line 31
    :cond_17
    sget-object v7, Lawm;->d:Lcqk;

    iget v8, v14, Lckq;->b:I

    invoke-static {v8}, Lckp;->b(I)Lckp;

    move-result-object v8

    if-nez v8, :cond_18

    sget-object v8, Lckp;->a:Lckp;

    .line 32
    :cond_18
    invoke-virtual {v7, v8}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li;

    invoke-static {v7}, Lhn;->e(Ljava/lang/Object;)Lbic;

    move-result-object v7

    .line 31
    sget-object v8, Li;->a:Li;

    .line 33
    invoke-virtual {v7, v8}, Lbic;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li;

    .line 29
    :goto_1
    iget-boolean v8, v15, Lddf;->c:Z

    if-eqz v8, :cond_19

    .line 15
    invoke-virtual {v15}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v15, Lddf;->c:Z

    :cond_19
    iget-object v8, v15, Lddf;->b:Lddk;

    .line 43
    check-cast v8, Lj;

    .line 44
    invoke-virtual {v7}, Li;->a()I

    move-result v7

    iput v7, v8, Lj;->a:I

    iget v7, v14, Lckq;->a:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1b

    iget v7, v14, Lckq;->c:I

    iget-boolean v8, v15, Lddf;->c:Z

    if-eqz v8, :cond_1a

    .line 45
    invoke-virtual {v15}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v15, Lddf;->c:Z

    :cond_1a
    iget-object v8, v15, Lddf;->b:Lddk;

    .line 46
    check-cast v8, Lj;

    iput v7, v8, Lj;->b:I

    .line 47
    :cond_1b
    invoke-virtual {v15}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Lj;

    iget-boolean v8, v13, Lddf;->c:Z

    if-eqz v8, :cond_1c

    .line 48
    invoke-virtual {v13}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v13, Lddf;->c:Z

    :cond_1c
    iget-object v8, v13, Lddf;->b:Lddk;

    .line 49
    check-cast v8, Lm;

    .line 50
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v8, Lm;->b:Lj;

    :cond_1d
    iget-object v7, v11, Lcku;->d:Lddr;

    .line 51
    invoke-interface {v7}, Lddr;->size()I

    move-result v7

    if-eqz v7, :cond_29

    .line 52
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v7

    iget-object v8, v11, Lcku;->d:Lddr;

    .line 53
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcko;

    .line 54
    sget-object v14, Lh;->b:Lh;

    .line 55
    invoke-virtual {v14}, Lddk;->n()Lddf;

    move-result-object v14

    iget-object v15, v12, Lcko;->a:Lddr;

    .line 56
    invoke-interface {v15}, Lddr;->size()I

    move-result v15

    if-eqz v15, :cond_25

    .line 57
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v15

    iget-object v12, v12, Lcko;->a:Lddr;

    .line 58
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lckn;

    .line 59
    sget-object v17, Lg;->c:Lg;

    .line 60
    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v17}, Lddk;->n()Lddf;

    move-result-object v8

    move-object/from16 v17, v10

    iget v10, v1, Lckn;->a:I

    invoke-static {v10}, Lbyl;->f(I)I

    move-result v10

    if-nez v10, :cond_1e

    const/4 v10, 0x1

    :cond_1e
    add-int/lit8 v10, v10, -0x1

    .line 61
    invoke-static {v10}, Lf;->b(I)Lf;

    move-result-object v10

    invoke-static {v10}, Lhn;->e(Ljava/lang/Object;)Lbic;

    move-result-object v10

    move-object/from16 v19, v12

    sget-object v12, Lf;->a:Lf;

    .line 62
    invoke-virtual {v10, v12}, Lbic;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lf;

    iget-boolean v12, v8, Lddf;->c:Z

    if-eqz v12, :cond_1f

    .line 59
    invoke-virtual {v8}, Lddf;->k()V

    const/4 v12, 0x0

    iput-boolean v12, v8, Lddf;->c:Z

    :cond_1f
    iget-object v12, v8, Lddf;->b:Lddk;

    .line 63
    check-cast v12, Lg;

    .line 64
    invoke-virtual {v10}, Lf;->a()I

    move-result v10

    iput v10, v12, Lg;->a:I

    iget-boolean v1, v1, Lckn;->b:Z

    if-eqz v1, :cond_21

    iget-boolean v1, v8, Lddf;->c:Z

    if-eqz v1, :cond_20

    .line 65
    invoke-virtual {v8}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v8, Lddf;->c:Z

    :cond_20
    iget-object v1, v8, Lddf;->b:Lddk;

    .line 66
    check-cast v1, Lg;

    const/4 v10, 0x1

    iput-boolean v10, v1, Lg;->b:Z

    .line 67
    :cond_21
    invoke-virtual {v8}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Lg;

    invoke-virtual {v15, v1}, Lcqc;->g(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    move-object/from16 v12, v19

    goto :goto_3

    .line 68
    :cond_22
    move-object/from16 v18, v8

    move-object/from16 v17, v10

    invoke-virtual {v15}, Lcqc;->f()Lcqh;

    move-result-object v1

    iget-boolean v8, v14, Lddf;->c:Z

    if-eqz v8, :cond_23

    .line 69
    invoke-virtual {v14}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v14, Lddf;->c:Z

    :cond_23
    iget-object v8, v14, Lddf;->b:Lddk;

    .line 70
    check-cast v8, Lh;

    iget-object v10, v8, Lh;->a:Lddr;

    .line 71
    invoke-interface {v10}, Lddr;->c()Z

    move-result v12

    if-nez v12, :cond_24

    .line 72
    invoke-static {v10}, Lddk;->z(Lddr;)Lddr;

    move-result-object v10

    iput-object v10, v8, Lh;->a:Lddr;

    :cond_24
    iget-object v8, v8, Lh;->a:Lddr;

    .line 73
    invoke-static {v1, v8}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    goto :goto_4

    .line 56
    :cond_25
    move-object/from16 v18, v8

    move-object/from16 v17, v10

    .line 74
    :goto_4
    invoke-virtual {v14}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Lh;

    invoke-virtual {v7, v1}, Lcqc;->g(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    goto/16 :goto_2

    .line 75
    :cond_26
    move-object/from16 v17, v10

    invoke-virtual {v7}, Lcqc;->f()Lcqh;

    move-result-object v1

    iget-boolean v7, v13, Lddf;->c:Z

    if-eqz v7, :cond_27

    .line 76
    invoke-virtual {v13}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v13, Lddf;->c:Z

    :cond_27
    iget-object v7, v13, Lddf;->b:Lddk;

    .line 77
    check-cast v7, Lm;

    iget-object v8, v7, Lm;->c:Lddr;

    .line 78
    invoke-interface {v8}, Lddr;->c()Z

    move-result v10

    if-nez v10, :cond_28

    .line 79
    invoke-static {v8}, Lddk;->z(Lddr;)Lddr;

    move-result-object v8

    iput-object v8, v7, Lm;->c:Lddr;

    :cond_28
    iget-object v7, v7, Lm;->c:Lddr;

    .line 80
    invoke-static {v1, v7}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    goto :goto_5

    .line 51
    :cond_29
    move-object/from16 v17, v10

    .line 80
    :goto_5
    iget v1, v11, Lcku;->a:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2a

    goto/16 :goto_6

    .line 102
    :cond_2a
    iget-object v1, v11, Lcku;->e:Lcki;

    if-nez v1, :cond_2b

    .line 81
    sget-object v1, Lcki;->b:Lcki;

    .line 82
    :cond_2b
    sget-object v7, Lb;->c:Lb;

    .line 83
    invoke-virtual {v7}, Lddk;->n()Lddf;

    move-result-object v7

    iget-object v8, v1, Lcki;->a:Lddr;

    .line 84
    invoke-interface {v8}, Lddr;->size()I

    move-result v8

    if-eqz v8, :cond_30

    iget-object v1, v1, Lcki;->a:Lddr;

    .line 85
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    sget-object v8, La;->b:La;

    .line 87
    invoke-virtual {v8}, Lddk;->n()Lddf;

    move-result-object v8

    iget-boolean v10, v8, Lddf;->c:Z

    if-eqz v10, :cond_2c

    .line 86
    invoke-virtual {v8}, Lddf;->k()V

    const/4 v10, 0x0

    iput-boolean v10, v8, Lddf;->c:Z

    :cond_2c
    iget-object v10, v8, Lddf;->b:Lddk;

    .line 88
    check-cast v10, La;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v10, La;->a:Ljava/lang/String;

    iget-boolean v10, v7, Lddf;->c:Z

    if-eqz v10, :cond_2d

    .line 86
    invoke-virtual {v7}, Lddf;->k()V

    const/4 v10, 0x0

    iput-boolean v10, v7, Lddf;->c:Z

    :cond_2d
    iget-object v10, v7, Lddf;->b:Lddk;

    .line 90
    check-cast v10, Lb;

    invoke-virtual {v8}, Lddf;->f()Lddk;

    move-result-object v8

    check-cast v8, La;

    .line 91
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v10, Lb;->a:Lddr;

    .line 92
    invoke-interface {v11}, Lddr;->c()Z

    move-result v12

    if-nez v12, :cond_2e

    .line 93
    invoke-static {v11}, Lddk;->z(Lddr;)Lddr;

    move-result-object v11

    iput-object v11, v10, Lb;->a:Lddr;

    :cond_2e
    iget-object v10, v10, Lb;->a:Lddr;

    .line 94
    invoke-interface {v10, v8}, Lddr;->add(Ljava/lang/Object;)Z

    iget-boolean v8, v7, Lddf;->c:Z

    if-eqz v8, :cond_2f

    .line 95
    invoke-virtual {v7}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_2f
    iget-object v8, v7, Lddf;->b:Lddk;

    .line 96
    check-cast v8, Lb;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v8, Lb;->b:Ljava/lang/String;

    .line 98
    :cond_30
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Lb;

    iget-boolean v7, v13, Lddf;->c:Z

    if-eqz v7, :cond_31

    .line 99
    invoke-virtual {v13}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v13, Lddf;->c:Z

    :cond_31
    iget-object v7, v13, Lddf;->b:Lddk;

    .line 100
    check-cast v7, Lm;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v7, Lm;->d:Lb;

    .line 102
    :goto_6
    invoke-virtual {v13}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Lm;

    invoke-virtual {v9, v1}, Lcqc;->g(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    move-object/from16 v10, v17

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 103
    :cond_32
    invoke-virtual {v9}, Lcqc;->f()Lcqh;

    move-result-object v1

    iget-boolean v7, v6, Lddf;->c:Z

    if-eqz v7, :cond_33

    .line 104
    invoke-virtual {v6}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v6, Lddf;->c:Z

    :cond_33
    iget-object v6, v6, Lddf;->b:Lddk;

    .line 105
    check-cast v6, Lk;

    .line 106
    invoke-virtual {v6}, Lk;->b()V

    iget-object v6, v6, Lk;->a:Lddr;

    .line 107
    invoke-static {v1, v6}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    move-object v1, v2

    check-cast v1, Lawn;

    iget-object v1, v1, Lawn;->j:Lddf;

    iget-object v1, v1, Lddf;->b:Lddk;

    .line 108
    check-cast v1, Lk;

    iget-object v1, v1, Lk;->a:Lddr;

    .line 109
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm;

    .line 110
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v6

    .line 111
    check-cast v6, Lddf;

    .line 112
    invoke-virtual {v6, v1}, Lddf;->n(Lddk;)V

    .line 110
    invoke-static {v6}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    move-object v6, v2

    check-cast v6, Lawn;

    iput-object v1, v6, Lawn;->f:Lj$/util/Optional;

    .line 113
    sget-object v1, Ldkp;->a:Ldkp;

    .line 114
    invoke-virtual {v1}, Ldkp;->b()Ldkq;

    move-result-object v1

    invoke-interface {v1}, Ldkq;->e()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lckt;->a:Lddr;

    .line 115
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcku;

    iget v6, v1, Lcku;->a:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_38

    iget-object v6, v1, Lcku;->c:Lcks;

    if-nez v6, :cond_34

    .line 116
    sget-object v6, Lcks;->c:Lcks;

    :cond_34
    iget-object v6, v6, Lcks;->b:Ljava/lang/String;

    move-object v7, v2

    check-cast v7, Lawn;

    iget-object v7, v7, Lawn;->h:Ljava/lang/String;

    if-nez v7, :cond_37

    .line 117
    sget-object v7, Lckp;->b:Lckp;

    iget-object v1, v1, Lcku;->b:Lckq;

    if-nez v1, :cond_35

    .line 118
    sget-object v1, Lckq;->e:Lckq;

    :cond_35
    iget v1, v1, Lckq;->b:I

    invoke-static {v1}, Lckp;->b(I)Lckp;

    move-result-object v1

    if-nez v1, :cond_36

    sget-object v1, Lckp;->a:Lckp;

    .line 119
    :cond_36
    invoke-virtual {v7, v1}, Lckp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    move-object v1, v2

    check-cast v1, Lawn;

    iput-object v6, v1, Lawn;->h:Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Lawn;

    iput-object v6, v1, Lawn;->g:Ljava/lang/String;

    goto :goto_7

    .line 146
    :cond_37
    move-object v1, v2

    check-cast v1, Lawn;

    iget-object v1, v1, Lawn;->g:Ljava/lang/String;

    .line 120
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    move-object v1, v2

    check-cast v1, Lawn;

    iget-object v1, v1, Lawn;->g:Ljava/lang/String;

    move-object v7, v2

    check-cast v7, Lawn;

    iput-object v1, v7, Lawn;->h:Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Lawn;

    iput-object v6, v1, Lawn;->g:Ljava/lang/String;

    goto :goto_7

    :cond_38
    move-object v1, v2

    check-cast v1, Lawn;

    .line 121
    invoke-virtual {v1}, Lawn;->b()V

    .line 119
    :cond_39
    :goto_7
    move-object v1, v2

    check-cast v1, Lawn;

    iget-object v1, v1, Lawn;->h:Ljava/lang/String;

    if-eqz v1, :cond_3c

    move-object v6, v2

    check-cast v6, Lawn;

    iget-object v6, v6, Lawn;->j:Lddf;

    .line 122
    sget-object v7, Ll;->b:Ll;

    .line 123
    invoke-virtual {v7}, Lddk;->n()Lddf;

    move-result-object v7

    iget-boolean v8, v7, Lddf;->c:Z

    if-eqz v8, :cond_3a

    .line 122
    invoke-virtual {v7}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lddf;->c:Z

    :cond_3a
    iget-object v8, v7, Lddf;->b:Lddk;

    .line 124
    check-cast v8, Ll;

    iput-object v1, v8, Ll;->a:Ljava/lang/String;

    iget-boolean v1, v6, Lddf;->c:Z

    if-eqz v1, :cond_3b

    .line 122
    invoke-virtual {v6}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v6, Lddf;->c:Z

    :cond_3b
    iget-object v1, v6, Lddf;->b:Lddk;

    .line 125
    check-cast v1, Lk;

    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v6

    check-cast v6, Ll;

    .line 126
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v1, Lk;->c:Ll;

    :cond_3c
    iget-object v1, v0, Lckt;->b:Lddr;

    .line 127
    invoke-interface {v1}, Lddr;->size()I

    move-result v1

    if-eqz v1, :cond_41

    move-object v1, v2

    check-cast v1, Lawn;

    iget-object v1, v1, Lawn;->j:Lddf;

    .line 128
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v6

    iget-object v0, v0, Lckt;->b:Lddr;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lckk;

    .line 130
    sget-object v8, Lc;->e:Lc;

    .line 131
    invoke-virtual {v8}, Lddk;->n()Lddf;

    move-result-object v8

    iget v9, v7, Lckk;->a:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_3e

    iget-object v7, v7, Lckk;->b:Ljava/lang/String;

    iget-boolean v9, v8, Lddf;->c:Z

    if-eqz v9, :cond_3d

    .line 132
    invoke-virtual {v8}, Lddf;->k()V

    const/4 v9, 0x0

    iput-boolean v9, v8, Lddf;->c:Z

    :cond_3d
    iget-object v9, v8, Lddf;->b:Lddk;

    .line 133
    check-cast v9, Lc;

    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v9, Lc;->a:Ljava/lang/String;

    .line 135
    :cond_3e
    invoke-virtual {v8}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Lc;

    invoke-virtual {v6, v7}, Lcqc;->g(Ljava/lang/Object;)V

    goto :goto_8

    .line 136
    :cond_3f
    invoke-virtual {v6}, Lcqc;->f()Lcqh;

    move-result-object v0

    iget-boolean v6, v1, Lddf;->c:Z

    if-eqz v6, :cond_40

    .line 137
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v6, 0x0

    iput-boolean v6, v1, Lddf;->c:Z

    :cond_40
    iget-object v1, v1, Lddf;->b:Lddk;

    .line 138
    check-cast v1, Lk;

    .line 139
    invoke-virtual {v1}, Lk;->c()V

    iget-object v1, v1, Lk;->b:Lddr;

    .line 140
    invoke-static {v0, v1}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_41
    move-object v0, v2

    check-cast v0, Lawn;

    iget-object v0, v0, Lawn;->j:Lddf;

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_42

    .line 141
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_42
    iget-object v0, v0, Lddf;->b:Lddk;

    .line 142
    check-cast v0, Lk;

    const/4 v1, 0x3

    invoke-static {v1}, Lr;->c(I)I

    move-result v1

    iput v1, v0, Lk;->d:I

    const-string v0, "navstate2"

    check-cast v2, Lawn;

    iget-object v1, v2, Lawn;->j:Lddf;

    .line 143
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Lk;

    invoke-virtual {v1}, Ldbv;->h()[B

    move-result-object v1

    .line 144
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 145
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-virtual {v4, v3}, Lawn;->c(Landroid/os/Bundle;)V

    return-void

    .line 4
    :catchall_0
    move-exception v0

    .line 145
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 121
    :catch_0
    move-exception v0

    const-string v1, "AHU.NAVIGATION"

    const-string v2, "Error parsing protocol buffer in callback"

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error parsing protocol buffer in callback: "

    .line 4
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method public final navigationStatusCallback(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/NavigationStatus;->a:Lclx;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 11
    :pswitch_0
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x1

    .line 1
    :goto_0
    if-nez p1, :cond_0

    :goto_1
    goto/16 :goto_4

    :cond_0
    move-object v5, v0

    check-cast v5, Lawn;

    invoke-virtual {v5}, Lawn;->b()V

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    .line 2
    :pswitch_5
    invoke-static {}, Ldkp;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Landroid/os/Bundle;

    .line 3
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v1, v5, Lawn;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v2, Lk;->e:Lk;

    .line 5
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    iget-boolean v6, v2, Lddf;->c:Z

    if-eqz v6, :cond_1

    .line 4
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v3, v2, Lddf;->c:Z

    :cond_1
    iget-object v3, v2, Lddf;->b:Lddk;

    .line 6
    check-cast v3, Lk;

    invoke-static {v4}, Lr;->c(I)I

    move-result v4

    iput v4, v3, Lk;->d:I

    move-object v3, v0

    check-cast v3, Lawn;

    iput-object v2, v3, Lawn;->j:Lddf;

    .line 7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lawn;

    iput-object v2, v3, Lawn;->f:Lj$/util/Optional;

    const-string v2, "navstate2"

    check-cast v0, Lawn;

    iget-object v0, v0, Lawn;->j:Lddf;

    .line 8
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lk;

    invoke-virtual {v0}, Ldbv;->h()[B

    move-result-object v0

    .line 9
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v5, p1}, Lawn;->c(Landroid/os/Bundle;)V

    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1
    :pswitch_6
    iget-object p1, v5, Lawn;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    move-object v6, v0

    check-cast v6, Lawn;

    iget-object v6, v6, Lawn;->j:Lddf;

    if-nez v6, :cond_2

    .line 12
    monitor-exit p1

    return-void

    .line 13
    :cond_2
    invoke-static {}, Ldkp;->d()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    check-cast v6, Lawn;

    iget-object v6, v6, Lawn;->j:Lddf;

    iget-object v6, v6, Lddf;->b:Lddk;

    .line 14
    check-cast v6, Lk;

    iget v6, v6, Lk;->d:I

    packed-switch v6, :pswitch_data_2

    const/4 v1, 0x0

    goto :goto_2

    .line 25
    :pswitch_7
    const/4 v1, 0x4

    goto :goto_2

    :pswitch_8
    goto :goto_2

    :pswitch_9
    const/4 v1, 0x2

    .line 14
    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    if-ne v1, v4, :cond_4

    .line 25
    monitor-exit p1

    return-void

    .line 15
    :cond_4
    :goto_3
    invoke-static {}, Ldkp;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lawn;

    iget-object v1, v1, Lawn;->j:Lddf;

    .line 16
    invoke-virtual {v1}, Lddf;->g()Lddk;

    move-result-object v1

    check-cast v1, Lk;

    .line 17
    sget-object v2, Lk;->e:Lk;

    invoke-virtual {v1, v2}, Lddk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    monitor-exit p1

    return-void

    .line 18
    :cond_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-instance p1, Landroid/os/Bundle;

    .line 19
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v1, v5, Lawn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v2, "navstate2"

    check-cast v0, Lawn;

    iget-object v0, v0, Lawn;->j:Lddf;

    .line 20
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lk;

    invoke-virtual {v0}, Ldbv;->h()[B

    move-result-object v0

    .line 21
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 22
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    invoke-virtual {v5, p1}, Lawn;->c(Landroid/os/Bundle;)V

    return-void

    .line 18
    :catchall_1
    move-exception p1

    .line 22
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 11
    :catchall_2
    move-exception v0

    .line 18
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1
    :cond_6
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
