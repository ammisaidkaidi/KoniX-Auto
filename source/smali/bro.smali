.class public final Lbro;
.super Lbrh;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lbrj;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbrh;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbro;->a:Ljava/lang/Object;

    new-instance v0, Lbrj;

    invoke-direct {v0}, Lbrj;-><init>()V

    iput-object v0, p0, Lbro;->b:Lbrj;

    return-void
.end method

.method private final k()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lbro;->c:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lbrh;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lbrh;->a()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "failure"

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lbrh;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lbrh;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v1, p0, Lbro;->d:Z

    if-eqz v1, :cond_2

    const-string v1, "cancellation"

    goto :goto_0

    :cond_2
    const-string v1, "unknown issue"

    .line 3
    :goto_0
    new-instance v2, Lbqy;

    const-string v3, "Complete with: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_3
    new-instance v1, Ljava/lang/String;

    .line 6
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v2, v1, v0}, Lbqy;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2
    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 7
    :goto_2
    throw v2

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbro;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbro;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lhr;->j(ZLjava/lang/Object;)V

    iget-boolean v1, p0, Lbro;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lbro;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lbro;->e:Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-object v1

    .line 1
    :cond_0
    new-instance v2, Lbrg;

    .line 2
    invoke-direct {v2, v1}, Lbrg;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbro;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbro;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lbro;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lbro;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(Lbrc;)V
    .locals 1

    .line 1
    sget-object v0, Lbrn;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lbrh;->f(Ljava/util/concurrent/Executor;Lbrc;)V

    return-void
.end method

.method public final f(Ljava/util/concurrent/Executor;Lbrc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbro;->b:Lbrj;

    new-instance v1, Lbrb;

    invoke-direct {v1, p1, p2}, Lbrb;-><init>(Ljava/util/concurrent/Executor;Lbrc;)V

    invoke-virtual {v0, v1}, Lbrj;->a(Lbri;)V

    .line 2
    invoke-virtual {p0}, Lbro;->h()V

    return-void
.end method

.method public final g(Ljava/util/concurrent/Executor;Laga;)Lbrh;
    .locals 2

    .line 1
    new-instance p2, Lbro;

    invoke-direct {p2}, Lbro;-><init>()V

    iget-object v0, p0, Lbro;->b:Lbrj;

    new-instance v1, Lbqx;

    invoke-direct {v1, p1, p2}, Lbqx;-><init>(Ljava/util/concurrent/Executor;Lbro;)V

    .line 2
    invoke-virtual {v0, v1}, Lbrj;->a(Lbri;)V

    .line 3
    invoke-virtual {p0}, Lbro;->h()V

    return-object p2
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbro;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbro;->b:Lbrj;

    .line 3
    invoke-virtual {v0, p0}, Lbrj;->b(Lbrh;)V

    return-void

    :catchall_0
    move-exception v1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lbro;->k()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbro;->c:Z

    iput-object p1, p0, Lbro;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbro;->b:Lbrj;

    .line 4
    invoke-virtual {p1, p0}, Lbrj;->b(Lbrh;)V

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

.method public final j(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lbro;->k()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbro;->c:Z

    iput-object p1, p0, Lbro;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbro;->b:Lbrj;

    .line 3
    invoke-virtual {p1, p0}, Lbrj;->b(Lbrh;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
