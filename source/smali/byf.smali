.class public final Lbyf;
.super Lbyl;
.source "PG"

# interfaces
.implements Lbvd;
.implements Lbwq;


# static fields
.field private static final a:Lcsz;


# instance fields
.field private final b:Landroid/app/Application;

.field private final c:Lbvh;

.field private final d:Lbxz;

.field private final e:Lbxw;

.field private final f:Landroid/util/ArrayMap;

.field private final g:Lbwn;

.field private final h:Ldny;

.field private final i:Lbwv;

.field private final j:Lcol;

.field private final k:Ldny;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbyf;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Lbwo;Landroid/content/Context;Lbvh;Ldgz;Lbxw;Ldny;Ldny;Ljava/util/concurrent/Executor;Ldgz;Lbwv;Ldny;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbyl;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lbyf;->f:Landroid/util/ArrayMap;

    .line 2
    const/4 v1, 0x1

    invoke-static {v1}, Lex;->r(Z)V

    .line 3
    invoke-virtual {p1, p8, p4, p7}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lbyf;->g:Lbwn;

    check-cast p2, Landroid/app/Application;

    iput-object p2, p0, Lbyf;->b:Landroid/app/Application;

    iput-object p3, p0, Lbyf;->c:Lbvh;

    iput-object p6, p0, Lbyf;->h:Ldny;

    iput-object p5, p0, Lbyf;->e:Lbxw;

    iput-object p10, p0, Lbyf;->i:Lbwv;

    new-instance p1, Lbxy;

    invoke-direct {p1, p0, p11}, Lbxy;-><init>(Lbyf;Ldny;)V

    .line 4
    invoke-static {p1}, Lex;->i(Lcol;)Lcol;

    move-result-object p1

    iput-object p1, p0, Lbyf;->j:Lcol;

    iput-object p11, p0, Lbyf;->k:Ldny;

    .line 5
    new-instance p1, Lbyb;

    invoke-direct {p1, p2, v0}, Lbyb;-><init>(Landroid/content/Context;Landroid/util/ArrayMap;)V

    if-eqz p12, :cond_0

    new-instance p2, Lbyd;

    .line 6
    invoke-direct {p2, p1, p9}, Lbyd;-><init>(Landroid/view/Window$OnFrameMetricsAvailableListener;Ldgz;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lbye;

    .line 7
    invoke-direct {p2, p1, p9}, Lbye;-><init>(Landroid/view/Window$OnFrameMetricsAvailableListener;Ldgz;)V

    .line 6
    :goto_0
    iput-object p2, p0, Lbyf;->d:Lbxz;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Ldag;
    .locals 12

    .line 1
    invoke-static {p1}, Lbyc;->a(Landroid/app/Activity;)Lbyc;

    move-result-object p1

    iget-object v0, p0, Lbyf;->g:Lbwn;

    .line 2
    invoke-virtual {v0}, Lbwn;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Ldad;->a:Ldag;

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lbyf;->f:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbyf;->f:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbyh;

    iget-object v2, p0, Lbyf;->f:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbyf;->d:Lbxz;

    .line 6
    invoke-interface {v2}, Lbxz;->d()V

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    sget-object v0, Lbyf;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    const-string v2, "stopAsFuture"

    const/16 v3, 0x164

    const-string v4, "FrameMetricServiceImpl.java"

    .line 8
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Measurement not found: %s"

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    sget-object p1, Ldad;->a:Ldag;

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p1}, Lbyc;->b()Ljava/lang/String;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbyf;->k:Ldny;

    .line 11
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbyn;

    iget-object v2, v2, Lbyn;->b:Lddr;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbym;

    iget v6, v3, Lbym;->a:I

    invoke-static {v6}, Lbxr;->a(I)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :cond_4
    add-int/lit8 v6, v6, -0x1

    packed-switch v6, :pswitch_data_0

    iget-object v3, v3, Lbym;->b:Ljava/lang/String;

    goto :goto_0

    .line 13
    :pswitch_0
    iget v6, v1, Lbyh;->m:I

    goto :goto_1

    :pswitch_1
    iget v6, v1, Lbyh;->k:I

    goto :goto_1

    :pswitch_2
    iget v6, v1, Lbyh;->j:I

    goto :goto_1

    :pswitch_3
    iget v6, v1, Lbyh;->i:I

    goto :goto_1

    :pswitch_4
    iget v6, v1, Lbyh;->h:I

    goto :goto_1

    :pswitch_5
    iget v6, v1, Lbyh;->f:I

    goto :goto_1

    .line 11
    :pswitch_6
    const/4 v6, 0x0

    :goto_1
    iget-object v3, v3, Lbym;->b:Ljava/lang/String;

    const-string v7, "%EVENT_NAME%"

    .line 12
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    int-to-long v6, v6

    .line 13
    invoke-static {v3, v6, v7}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-string v0, "J<%s>"

    .line 14
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x1505a658

    invoke-static {v0, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 9
    :cond_6
    :goto_2
    iget v0, v1, Lbyh;->h:I

    if-nez v0, :cond_7

    .line 66
    sget-object p1, Ldad;->a:Ldag;

    goto/16 :goto_7

    :cond_7
    iget-object v0, p0, Lbyf;->k:Ldny;

    .line 15
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyn;

    iget-boolean v0, v0, Lbyn;->c:Z

    if-nez v0, :cond_8

    goto :goto_3

    .line 32
    :cond_8
    iget v0, v1, Lbyh;->m:I

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x9

    .line 16
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gtz v0, :cond_9

    iget v0, v1, Lbyh;->f:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbyf;->i:Lbwv;

    iget-object v2, p0, Lbyf;->j:Lcol;

    .line 17
    invoke-interface {v2}, Lcol;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbwv;->a(Ljava/lang/String;)V

    .line 18
    :cond_9
    :goto_3
    sget-object v0, Ldpz;->y:Ldpz;

    .line 19
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Lbyh;->c:J

    sub-long/2addr v2, v6

    long-to-int v3, v2

    add-int/2addr v3, v4

    .line 21
    sget-object v2, Ldpq;->o:Ldpq;

    .line 22
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    iget-boolean v6, v2, Lddf;->c:Z

    if-eqz v6, :cond_a

    .line 23
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v5, v2, Lddf;->c:Z

    :cond_a
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 24
    check-cast v6, Ldpq;

    iget v7, v6, Ldpq;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Ldpq;->a:I

    iput v3, v6, Ldpq;->f:I

    iget v3, v1, Lbyh;->f:I

    or-int/2addr v7, v4

    iput v7, v6, Ldpq;->a:I

    iput v3, v6, Ldpq;->b:I

    iget v3, v1, Lbyh;->h:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Ldpq;->a:I

    iput v3, v6, Ldpq;->c:I

    iget v3, v1, Lbyh;->i:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Ldpq;->a:I

    iput v3, v6, Ldpq;->d:I

    iget v3, v1, Lbyh;->k:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Ldpq;->a:I

    iput v3, v6, Ldpq;->g:I

    iget v3, v1, Lbyh;->m:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v6, Ldpq;->a:I

    iput v3, v6, Ldpq;->h:I

    iget v3, v1, Lbyh;->j:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Ldpq;->a:I

    iput v3, v6, Ldpq;->e:I

    iget v3, v1, Lbyh;->n:I

    const/high16 v6, -0x80000000

    if-eq v3, v6, :cond_11

    sget-object v3, Lbyh;->b:[I

    iget-object v6, v1, Lbyh;->e:[I

    iget v7, v1, Lbyh;->n:I

    .line 25
    sget-object v8, Ldpt;->c:Ldpt;

    .line 26
    invoke-virtual {v8}, Lddk;->n()Lddf;

    move-result-object v8

    const/4 v9, 0x0

    :goto_4
    const/16 v10, 0x34

    if-ge v9, v10, :cond_e

    .line 27
    aget v10, v3, v9

    if-le v10, v7, :cond_b

    .line 30
    invoke-virtual {v8, v5}, Lddf;->ag(I)V

    add-int/2addr v7, v4

    invoke-virtual {v8, v7}, Lddf;->af(I)V

    invoke-virtual {v8}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldpt;

    goto :goto_5

    .line 28
    :cond_b
    aget v10, v6, v9

    if-gtz v10, :cond_c

    if-lez v9, :cond_d

    add-int/lit8 v11, v9, -0x1

    aget v11, v6, v11

    if-lez v11, :cond_d

    .line 29
    :cond_c
    invoke-virtual {v8, v10}, Lddf;->ag(I)V

    aget v10, v3, v9

    invoke-virtual {v8, v10}, Lddf;->af(I)V

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_e
    const/16 v3, 0x33

    aget v3, v6, v3

    if-lez v3, :cond_f

    add-int/2addr v7, v4

    .line 31
    invoke-virtual {v8, v7}, Lddf;->af(I)V

    invoke-virtual {v8, v5}, Lddf;->ag(I)V

    .line 32
    :cond_f
    invoke-virtual {v8}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldpt;

    .line 30
    :goto_5
    iget-boolean v6, v2, Lddf;->c:Z

    if-eqz v6, :cond_10

    .line 33
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v5, v2, Lddf;->c:Z

    :cond_10
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 34
    check-cast v6, Ldpq;

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v6, Ldpq;->n:Ldpt;

    iget v3, v6, Ldpq;->a:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v6, Ldpq;->a:I

    iget v7, v1, Lbyh;->g:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v6, Ldpq;->a:I

    iput v7, v6, Ldpq;->l:I

    iget v7, v1, Lbyh;->l:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v6, Ldpq;->a:I

    iput v7, v6, Ldpq;->m:I

    const/4 v3, 0x0

    goto :goto_6

    .line 32
    :cond_11
    const/4 v3, 0x0

    .line 35
    :goto_6
    const/16 v6, 0x1c

    if-ge v3, v6, :cond_19

    iget-object v7, v1, Lbyh;->d:[I

    .line 36
    aget v7, v7, v3

    if-lez v7, :cond_18

    .line 37
    sget-object v7, Ldpp;->e:Ldpp;

    .line 38
    invoke-virtual {v7}, Lddk;->n()Lddf;

    move-result-object v7

    iget-object v8, v1, Lbyh;->d:[I

    .line 37
    aget v8, v8, v3

    iget-boolean v9, v7, Lddf;->c:Z

    if-eqz v9, :cond_12

    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v5, v7, Lddf;->c:Z

    :cond_12
    iget-object v9, v7, Lddf;->b:Lddk;

    .line 39
    check-cast v9, Ldpp;

    iget v10, v9, Ldpp;->a:I

    or-int/2addr v10, v4

    iput v10, v9, Ldpp;->a:I

    iput v8, v9, Ldpp;->b:I

    sget-object v8, Lbyh;->a:[I

    .line 37
    aget v8, v8, v3

    iget-boolean v9, v7, Lddf;->c:Z

    if-eqz v9, :cond_13

    .line 40
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v5, v7, Lddf;->c:Z

    :cond_13
    iget-object v9, v7, Lddf;->b:Lddk;

    .line 41
    check-cast v9, Ldpp;

    iget v10, v9, Ldpp;->a:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v9, Ldpp;->a:I

    iput v8, v9, Ldpp;->c:I

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v6, :cond_15

    sget-object v6, Lbyh;->a:[I

    .line 42
    aget v6, v6, v8

    add-int/lit8 v6, v6, -0x1

    iget-boolean v8, v7, Lddf;->c:Z

    if-eqz v8, :cond_14

    .line 43
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v5, v7, Lddf;->c:Z

    :cond_14
    iget-object v8, v7, Lddf;->b:Lddk;

    .line 44
    check-cast v8, Ldpp;

    iget v9, v8, Ldpp;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v8, Ldpp;->a:I

    iput v6, v8, Ldpp;->d:I

    :cond_15
    iget-boolean v6, v2, Lddf;->c:Z

    if-eqz v6, :cond_16

    .line 45
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v5, v2, Lddf;->c:Z

    :cond_16
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 46
    check-cast v6, Ldpq;

    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Ldpp;

    .line 47
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v6, Ldpq;->j:Lddr;

    .line 48
    invoke-interface {v8}, Lddr;->c()Z

    move-result v9

    if-nez v9, :cond_17

    .line 49
    invoke-static {v8}, Lddk;->z(Lddr;)Lddr;

    move-result-object v8

    iput-object v8, v6, Ldpq;->j:Lddr;

    :cond_17
    iget-object v6, v6, Ldpq;->j:Lddr;

    .line 50
    invoke-interface {v6, v7}, Lddr;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 51
    :cond_19
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldpq;

    const/4 v2, 0x5

    .line 52
    invoke-virtual {v1, v2}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v2

    .line 53
    check-cast v2, Lddf;

    .line 54
    invoke-virtual {v2, v1}, Lddf;->n(Lddk;)V

    iget-object v1, p0, Lbyf;->b:Landroid/app/Application;

    .line 55
    invoke-static {v1}, Lbxx;->a(Landroid/content/Context;)I

    move-result v1

    iget-boolean v3, v2, Lddf;->c:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v5, v2, Lddf;->c:Z

    :cond_1a
    iget-object v3, v2, Lddf;->b:Lddk;

    .line 56
    check-cast v3, Ldpq;

    iget v6, v3, Ldpq;->a:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v3, Ldpq;->a:I

    iput v1, v3, Ldpq;->k:I

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_1b

    .line 57
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_1b
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 58
    check-cast v1, Ldpz;

    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Ldpq;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Ldpz;->l:Ldpq;

    iget v2, v1, Ldpz;->a:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Ldpz;->a:I

    .line 60
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldpz;

    iget-object v1, p0, Lbyf;->g:Lbwn;

    .line 61
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v0}, Lbwi;->d(Ldpz;)V

    const/4 v0, 0x0

    iput-object v0, v2, Lbwi;->b:Ldot;

    const-string v0, "Activity"

    iput-object v0, v2, Lbwi;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lbyc;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lbwi;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v2, v4}, Lbwi;->b(Z)V

    .line 64
    invoke-virtual {v2}, Lbwi;->a()Lbwj;

    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object p1

    .line 3
    :goto_7
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b(Ldny;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p1}, Ldny;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbyn;

    iget-object p1, p1, Lbyn;->a:Ljava/lang/String;

    iget-object v0, p0, Lbyf;->b:Landroid/app/Application;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%PACKAGE_NAME%"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lbyf;->f:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lbyf;->f:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lbyc;->a(Landroid/app/Activity;)Lbyc;

    move-result-object p1

    iget-object v0, p0, Lbyf;->g:Lbwn;

    invoke-virtual {p1}, Lbyc;->b()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lbwn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbyf;->f:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbyf;->f:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x19

    if-lt v1, v2, :cond_1

    sget-object v1, Lbyf;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    const-string v3, "start"

    const/16 v4, 0x11c

    const-string v5, "FrameMetricServiceImpl.java"

    .line 4
    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Too many concurrent measurements, ignoring %s"

    invoke-interface {v1, v2, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lbyf;->f:Landroid/util/ArrayMap;

    iget-object v2, p0, Lbyf;->h:Ldny;

    check-cast v2, Lbyi;

    .line 6
    invoke-virtual {v2}, Lbyi;->b()Lbyh;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbyh;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lbyf;->f:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbyf;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    const-string v3, "start"

    const/16 v4, 0x129

    const-string v5, "FrameMetricServiceImpl.java"

    .line 8
    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "measurement already started: %s"

    invoke-interface {v1, v2, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lbyf;->f:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lbyf;->d:Lbxz;

    .line 11
    invoke-interface {v1}, Lbxz;->c()V

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_4

    .line 12
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "J<%s>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lbyc;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 13
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x1505a658

    .line 14
    invoke-static {p1, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 15
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbyf;->c:Lbvh;

    iget-object v1, p0, Lbyf;->d:Lbxz;

    invoke-virtual {v0, v1}, Lbvh;->a(Lbvg;)V

    iget-object v0, p0, Lbyf;->c:Lbvh;

    iget-object v1, p0, Lbyf;->e:Lbxw;

    .line 2
    invoke-virtual {v0, v1}, Lbvh;->a(Lbvg;)V

    return-void
.end method
