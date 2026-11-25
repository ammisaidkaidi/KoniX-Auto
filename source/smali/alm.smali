.class final Lalm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laln;

.field final synthetic b:Lame;


# direct methods
.method public constructor <init>(Laln;Lame;)V
    .locals 0

    iput-object p1, p0, Lalm;->a:Laln;

    iput-object p2, p0, Lalm;->b:Lame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lalm;->b:Lame;

    invoke-virtual {v0}, Lame;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lagl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v5, :cond_0

    .line 2
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v2

    sget v3, Laln;->g:I

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lalm;->a:Laln;

    iget-object v4, v4, Laln;->b:Lakk;

    iget-object v4, v4, Lakk;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v4, "Updating notification for %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v0, p0, Lalm;->a:Laln;

    iget-object v2, v0, Laln;->c:Landroidx/work/ListenableWorker;

    iput-boolean v1, v2, Landroidx/work/ListenableWorker;->e:Z

    iget-object v7, v0, Laln;->f:Lame;

    iget-object v1, v0, Laln;->d:Lagm;

    iget-object v6, v0, Laln;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->c()Ljava/util/UUID;

    move-result-object v4

    invoke-static {}, Lame;->h()Lame;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lalp;

    iget-object v8, v2, Lalp;->c:Lamh;

    new-instance v9, Lalo;

    move-object v2, v1

    check-cast v2, Lalp;

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lalo;-><init>(Lalp;Lame;Ljava/util/UUID;Lagl;Landroid/content/Context;)V

    .line 4
    invoke-virtual {v8, v9}, Lamh;->a(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v7, v0}, Lame;->g(Ldag;)V

    return-void

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lalm;->a:Laln;

    iget-object v2, v2, Laln;->b:Lakk;

    .line 6
    iget-object v2, v2, Lakk;->c:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "Worker was marked important (%s) but did not provide ForegroundInfo"

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lalm;->a:Laln;

    iget-object v1, v1, Laln;->f:Lame;

    .line 9
    invoke-virtual {v1, v0}, Lame;->f(Ljava/lang/Throwable;)V

    return-void
.end method
