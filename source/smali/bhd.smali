.class public final Lbhd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;


# instance fields
.field private final b:[I

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:Z

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/video/latencychecker/VideoLatencyChecker"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbhd;->a:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lbhd;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lbhd;->c:I

    iput v0, p0, Lbhd;->d:I

    iput v0, p0, Lbhd;->e:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lbhd;->f:J

    iput-wide v1, p0, Lbhd;->g:J

    iput-wide v1, p0, Lbhd;->h:J

    iput-wide v1, p0, Lbhd;->i:J

    iput-wide v1, p0, Lbhd;->j:J

    iput-wide v1, p0, Lbhd;->k:J

    iput-boolean v0, p0, Lbhd;->l:Z

    iput-wide v1, p0, Lbhd;->m:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lxr;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbhd;->i:J

    iget-wide v0, p0, Lbhd;->j:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p0, Lbhd;->i:J

    iget-wide v2, p0, Lbhd;->f:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lbhd;->m:J

    sget-object p1, Lbhd;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/video/latencychecker/VideoLatencyChecker"

    const-string v0, "onDecodingFinish"

    const/16 v1, 0x8e

    const-string v2, "VideoLatencyChecker.java"

    .line 3
    invoke-interface {p1, p2, v0, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "**Latency measurement (ms) ** Input event to encoded frame: %d, Video output decoding latency: %d, Total latency: %d"

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lbhd;->h:J

    iget-wide v3, p0, Lbhd;->f:J

    sub-long/2addr v1, v3

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lbhd;->i:J

    iget-wide v4, p0, Lbhd;->h:J

    sub-long/2addr v2, v4

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lbhd;->m:J

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3
    invoke-interface {p1, p2, v0, v1, v2}, Lcsx;->u(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbhd;->l:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lbhd;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lbhd;->k:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    sget-object p1, Lbhd;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/video/latencychecker/VideoLatencyChecker"

    const-string v0, "onDecodingFinish"

    const/16 v1, 0x9a

    const-string v2, "VideoLatencyChecker.java"

    .line 7
    invoke-interface {p1, p2, v0, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p0, Lbhd;->i:J

    iget-wide v2, p0, Lbhd;->g:J

    sub-long/2addr v0, v2

    .line 8
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 7
    invoke-interface {p1, v0, v1}, Lcsx;->D(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(IJ)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lbhd;->e:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbhd;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lbhd;->d:I

    const/4 v1, 0x2

    if-lez v0, :cond_2

    iget-boolean v2, p0, Lbhd;->l:Z

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v0, 0x4

    if-le p1, v2, :cond_2

    const/16 v2, 0x1000

    if-gt p1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lxr;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lbhd;->h:J

    iput-wide p2, p0, Lbhd;->j:J

    iput v1, p0, Lbhd;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_2
    :goto_0
    :try_start_2
    iget-wide v2, p0, Lbhd;->k:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iput-wide p2, p0, Lbhd;->k:J

    :cond_3
    iget-object p2, p0, Lbhd;->b:[I

    iget p3, p0, Lbhd;->c:I

    aget v2, p2, p3

    sub-int v2, p1, v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lbhd;->d:I

    .line 2
    aput p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lbhd;->c:I

    if-lt p3, v1, :cond_4

    const/4 p1, 0x0

    iput p1, p0, Lbhd;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Landroid/view/MotionEvent;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbhd;->l:Z

    iput p1, p0, Lbhd;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lbhd;->l:Z

    if-nez p1, :cond_1

    .line 2
    invoke-static {}, Lxr;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbhd;->f:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbhd;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lbhd;->l:Z

    if-nez v0, :cond_0

    invoke-static {}, Lxr;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbhd;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
