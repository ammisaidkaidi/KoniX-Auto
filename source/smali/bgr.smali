.class final Lbgr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczv;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lbgz;


# direct methods
.method public constructor <init>(Lbgz;IIII)V
    .locals 0

    iput-object p1, p0, Lbgr;->e:Lbgz;

    iput p2, p0, Lbgr;->a:I

    iput p3, p0, Lbgr;->b:I

    iput p4, p0, Lbgr;->c:I

    iput p5, p0, Lbgr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lbgz;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "com/google/android/apps/auto/aareceiver/video/ProjectionRenderer$1"

    const-string v1, "onFailure"

    const/16 v2, 0x255

    const-string v3, "ProjectionRenderer.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Starting renderer failed. Codec initialization failed or was cancelled"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lbgr;->e:Lbgz;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lbgr;->e:Lbgz;

    iget-boolean v1, v0, Lbgz;->h:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lbgz;->p:Lbey;

    .line 2
    invoke-virtual {v0}, Lbey;->a()V

    iget-object v0, p0, Lbgr;->e:Lbgz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbgz;->h:Z

    :cond_0
    iget-object v0, p0, Lbgr;->e:Lbgz;

    .line 3
    invoke-virtual {v0}, Lbgz;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbgr;->e:Lbgz;

    iget-object v1, v0, Lbgz;->i:Lbgy;

    .line 4
    invoke-virtual {v1}, Lbgy;->a()V

    iget-object v1, v0, Lbgz;->i:Lbgy;

    .line 5
    iget-object v1, v1, Lbgy;->d:Landroid/view/Surface;

    .line 6
    invoke-virtual {v0, v1}, Lbgz;->d(Landroid/view/Surface;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lbgr;->e:Lbgz;

    iget v0, v0, Lbgz;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 22
    monitor-exit p1

    return-void

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lbgr;->e:Lbgz;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lbgr;->a:I

    iget v3, p0, Lbgr;->b:I

    .line 7
    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lbgz;->k:Landroid/graphics/Point;

    iget-object v0, p0, Lbgr;->e:Lbgz;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lbgr;->a:I

    iget v3, p0, Lbgr;->c:I

    sub-int/2addr v2, v3

    iget v3, p0, Lbgr;->b:I

    iget v4, p0, Lbgr;->d:I

    sub-int/2addr v3, v4

    .line 8
    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lbgz;->l:Landroid/graphics/Point;

    iget-object v5, p0, Lbgr;->e:Lbgz;

    iget-object v0, v5, Lbgz;->c:Lazy;

    iget-object v1, v5, Lbgz;->g:Lckb;

    iget-object v2, v5, Lbgz;->k:Landroid/graphics/Point;

    .line 9
    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v5, Lbgz;->k:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v3}, Lazy;->a(Lckb;II)D

    move-result-wide v0

    iput-wide v0, v5, Lbgz;->m:D

    iget-object v0, v5, Lbgz;->k:Landroid/graphics/Point;

    .line 10
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget-wide v2, v5, Lbgz;->m:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v6, v0

    iget-object v0, v5, Lbgz;->k:Landroid/graphics/Point;

    .line 11
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget-wide v2, v5, Lbgz;->m:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v7, v0

    iget-object v0, v5, Lbgz;->l:Landroid/graphics/Point;

    .line 12
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget-wide v2, v5, Lbgz;->m:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v8, v0

    iget-object v0, v5, Lbgz;->l:Landroid/graphics/Point;

    .line 13
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget-wide v2, v5, Lbgz;->m:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v9, v0

    iget-object v0, v5, Lbgz;->e:Landroid/view/SurfaceView;

    .line 14
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, v5, Lbgz;->e:Landroid/view/SurfaceView;

    .line 15
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_3

    iget-object v0, v5, Lbgz;->d:Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ne v0, v8, :cond_3

    iget-object v0, v5, Lbgz;->d:Landroid/view/View;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eq v0, v9, :cond_4

    :cond_3
    iget-object v0, v5, Lbgz;->d:Landroid/view/View;

    new-instance v1, Lbgq;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lbgq;-><init>(Lbgz;IIII)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Lbgr;->e:Lbgz;

    const/4 v1, 0x2

    iput v1, v0, Lbgz;->j:I

    .line 19
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p1, p0, Lbgr;->e:Lbgz;

    :goto_1
    iget-object v0, p1, Lbgz;->n:Ljava/util/Queue;

    .line 20
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lbgz;->n:Ljava/util/Queue;

    .line 21
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Lbgz;->c([B)V

    goto :goto_1

    :cond_5
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 19
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
