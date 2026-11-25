.class public final Lbgz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field public static final b:Z


# instance fields
.field public final c:Lazy;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/SurfaceView;

.field public final f:Landroid/graphics/Rect;

.field public final g:Lckb;

.field public h:Z

.field public i:Lbgy;

.field public volatile j:I

.field public k:Landroid/graphics/Point;

.field public l:Landroid/graphics/Point;

.field public m:D

.field public final n:Ljava/util/Queue;

.field public o:Ldas;

.field public final p:Lbey;

.field private final q:Lbhd;

.field private final r:Landroid/view/SurfaceHolder$Callback;

.field private final s:Lbfh;

.field private final t:Lbgp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/video/ProjectionRenderer"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbgz;->a:Lcsz;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    sput-boolean v1, Lbgz;->b:Z

    return-void
.end method

.method public constructor <init>(Lazy;Lbfh;Landroid/view/View;Landroid/view/SurfaceView;Lbey;Lbhd;Lckb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbgz;->f:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgz;->h:Z

    iput v0, p0, Lbgz;->j:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lbgz;->m:D

    .line 2
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object v0

    iput-object v0, p0, Lbgz;->o:Ldas;

    new-instance v0, Lbgt;

    .line 3
    invoke-direct {v0, p0}, Lbgt;-><init>(Lbgz;)V

    iput-object v0, p0, Lbgz;->r:Landroid/view/SurfaceHolder$Callback;

    iput-object p6, p0, Lbgz;->q:Lbhd;

    iput-object p1, p0, Lbgz;->c:Lazy;

    iput-object p2, p0, Lbgz;->s:Lbfh;

    iput-object p7, p0, Lbgz;->g:Lckb;

    iput-object p3, p0, Lbgz;->d:Landroid/view/View;

    iput-object p4, p0, Lbgz;->e:Landroid/view/SurfaceView;

    iput-object p5, p0, Lbgz;->p:Lbey;

    sget-object p1, Lbgp;->a:Lbgp;

    iput-object p1, p0, Lbgz;->t:Lbgp;

    .line 4
    invoke-virtual {p4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p3, p2}, Lbgz;->i(II)V

    :cond_0
    nop

    .line 7
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_1
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lbgz;->n:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcma;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lbgz;->j:I

    if-eqz v0, :cond_1

    iget v0, p0, Lbgz;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lbgz;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lbgz;->i:Lbgy;

    iget-object v1, v0, Lbgy;->f:Landroid/os/Handler;

    new-instance v2, Lbgw;

    invoke-direct {v2, v0, p1}, Lbgw;-><init>(Lbgy;Lcma;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized b([B)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lbgz;->j:I

    if-eqz v0, :cond_2

    iget v0, p0, Lbgz;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbgz;->n:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lbgz;->c([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 1
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lbgz;->n:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c([B)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lbgz;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lbgz;->i:Lbgy;

    iget-object v1, p0, Lbgz;->k:Landroid/graphics/Point;

    .line 4
    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lbgz;->k:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p1, Lbgy;->f:Landroid/os/Handler;

    new-instance v4, Lbgx;

    invoke-direct {v4, p1, v0, v1, v2}, Lbgx;-><init>(Lbgy;Ljava/nio/ByteBuffer;II)V

    .line 5
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Landroid/view/Surface;)V
    .locals 4

    .line 1
    new-instance v0, Lbgy;

    iget-object v1, p0, Lbgz;->s:Lbfh;

    iget-object v2, p0, Lbgz;->t:Lbgp;

    iget-object v3, p0, Lbgz;->q:Lbhd;

    invoke-direct {v0, p1, v1, v2, v3}, Lbgy;-><init>(Landroid/view/Surface;Lbfh;Lbgp;Lbhd;)V

    iput-object v0, p0, Lbgz;->i:Lbgy;

    const/4 p1, 0x1

    iput p1, p0, Lbgz;->j:I

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbgz;->e:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lbgz;->r:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2
    invoke-virtual {p0}, Lbgz;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Ldas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbgz;->o:Ldas;

    invoke-virtual {p1, v0}, Ldas;->d(Ldag;)Z

    return-void
.end method

.method public final g(IIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lbgz;->o:Ldas;

    new-instance v7, Lbgr;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lbgr;-><init>(Lbgz;IIII)V

    sget-object p1, Lczj;->a:Lczj;

    .line 2
    invoke-static {v0, v7, p1}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final declared-synchronized h()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lbgz;->j:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lbgz;->j:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lbgz;->j:I

    iget-object v0, p0, Lbgz;->i:Lbgy;

    invoke-virtual {v0}, Lbgy;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbgz;->i:Lbgy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbgz;->f:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lbgz;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
