.class final Lbgt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final a:Landroid/os/Handler;

.field final synthetic b:Lbgz;


# direct methods
.method public constructor <init>(Lbgz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbgt;->b:Lbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lbgt;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    sget-object p1, Lbgz;->a:Lcsz;

    iget-object p1, p0, Lbgt;->b:Lbgz;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lbgt;->b:Lbgz;

    .line 2
    invoke-virtual {p2, p3, p4}, Lbgz;->i(II)V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbgt;->b:Lbgz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbgt;->b:Lbgz;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    .line 2
    invoke-virtual {v1, p1}, Lbgz;->d(Landroid/view/Surface;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbgt;->b:Lbgz;

    iget-object v0, p1, Lbgz;->c:Lazy;

    iget-object p1, p1, Lbgz;->g:Lckb;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lazy;->g(Lckb;I)V

    iget-object p1, p0, Lbgt;->b:Lbgz;

    iget-object p1, p1, Lbgz;->o:Ldas;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ldas;->k(Ljava/lang/Object;)Z

    iget-object p1, p0, Lbgt;->a:Landroid/os/Handler;

    new-instance v0, Lbgs;

    invoke-direct {v0, p0}, Lbgs;-><init>(Lbgt;)V

    const-wide/16 v1, 0xbb8

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lbgt;->b:Lbgz;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lbgt;->b:Lbgz;

    invoke-virtual {v0}, Lbgz;->h()V

    iget-object v0, p0, Lbgt;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lbgt;->b:Lbgz;

    iget-boolean v1, v0, Lbgz;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lbgz;->h:Z

    iget-object v0, v0, Lbgz;->p:Lbey;

    .line 3
    invoke-virtual {v0}, Lbey;->a()V

    .line 4
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbgt;->b:Lbgz;

    iget-object p1, p1, Lbgz;->o:Ldas;

    .line 5
    invoke-virtual {p1, v2}, Ldas;->cancel(Z)Z

    iget-object p1, p0, Lbgt;->b:Lbgz;

    invoke-static {}, Ldas;->e()Ldas;

    move-result-object v0

    iput-object v0, p1, Lbgz;->o:Ldas;

    iget-object p1, p0, Lbgt;->b:Lbgz;

    iget-object v0, p1, Lbgz;->c:Lazy;

    iget-object p1, p1, Lbgz;->g:Lckb;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, p1, v1}, Lazy;->g(Lckb;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
