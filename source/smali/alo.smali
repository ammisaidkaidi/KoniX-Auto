.class final Lalo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/UUID;

.field final synthetic b:Lagl;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lalp;

.field final synthetic e:Lame;


# direct methods
.method public constructor <init>(Lalp;Lame;Ljava/util/UUID;Lagl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lalo;->d:Lalp;

    iput-object p2, p0, Lalo;->e:Lame;

    iput-object p3, p0, Lalo;->a:Ljava/util/UUID;

    iput-object p4, p0, Lalo;->b:Lagl;

    iput-object p5, p0, Lalo;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lalo;->e:Lame;

    invoke-virtual {v0}, Lame;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lalo;->a:Ljava/util/UUID;

    .line 2
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lalo;->d:Lalp;

    iget-object v1, v1, Lalp;->b:Lakl;

    .line 3
    invoke-interface {v1, v0}, Lakl;->f(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lfv;->A(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lalo;->d:Lalp;

    iget-object v1, v1, Lalp;->a:Lajp;

    iget-object v2, p0, Lalo;->b:Lagl;

    move-object v3, v1

    check-cast v3, Lahf;

    iget-object v3, v3, Lahf;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {}, Lagr;->a()Lagr;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v6, "Moving WorkSpec (%s) to the foreground"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-static {v4}, Lagr;->f([Ljava/lang/Throwable;)V

    move-object v4, v1

    check-cast v4, Lahf;

    iget-object v4, v4, Lahf;->e:Ljava/util/Map;

    .line 6
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laib;

    if-eqz v4, :cond_1

    move-object v5, v1

    check-cast v5, Lahf;

    iget-object v5, v5, Lahf;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_0

    move-object v5, v1

    check-cast v5, Lahf;

    iget-object v5, v5, Lahf;->c:Landroid/content/Context;

    const-string v6, "ProcessorForegroundLck"

    .line 7
    invoke-static {v5, v6}, Lalk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lahf;

    iput-object v5, v6, Lahf;->b:Landroid/os/PowerManager$WakeLock;

    move-object v5, v1

    check-cast v5, Lahf;

    iget-object v5, v5, Lahf;->b:Landroid/os/PowerManager$WakeLock;

    .line 8
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    move-object v5, v1

    check-cast v5, Lahf;

    iget-object v5, v5, Lahf;->d:Ljava/util/Map;

    .line 9
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lahf;

    iget-object v4, v4, Lahf;->c:Landroid/content/Context;

    .line 10
    invoke-static {v4, v0, v2}, Lajs;->c(Landroid/content/Context;Ljava/lang/String;Lagl;)Landroid/content/Intent;

    move-result-object v2

    check-cast v1, Lahf;

    iget-object v1, v1, Lahf;->c:Landroid/content/Context;

    .line 11
    invoke-static {v1, v2}, Lxt;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 12
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lalo;->c:Landroid/content/Context;

    iget-object v2, p0, Lalo;->b:Lagl;

    .line 13
    invoke-static {v1, v0, v2}, Lajs;->b(Landroid/content/Context;Ljava/lang/String;Lagl;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lalo;->c:Landroid/content/Context;

    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 12
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lalo;->e:Lame;

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lame;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lalo;->e:Lame;

    .line 16
    invoke-virtual {v1, v0}, Lame;->f(Ljava/lang/Throwable;)V

    return-void
.end method
