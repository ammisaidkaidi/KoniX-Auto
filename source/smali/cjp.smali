.class public final Lcjp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcjq;

.field public final c:Lcmw;

.field public final d:Ljava/lang/Object;

.field public final e:Lcnd;

.field public f:Ljava/util/List;

.field private final g:Ldag;

.field private final h:Lczq;

.field private final i:Lcmw;


# direct methods
.method public constructor <init>(Lcjq;Ldag;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcmw;

    new-instance v1, Lcjm;

    invoke-direct {v1, p0}, Lcjm;-><init>(Lcjp;)V

    .line 2
    sget-object v2, Lczj;->a:Lczj;

    .line 3
    invoke-direct {v0, v1, v2}, Lcmw;-><init>(Lczb;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcjp;->i:Lcmw;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcjp;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcjp;->f:Ljava/util/List;

    iput-object p1, p0, Lcjp;->b:Lcjq;

    iput-object p2, p0, Lcjp;->g:Ldag;

    move-object p2, p1

    check-cast p2, Lcjf;

    iget-object p2, p2, Lcjf;->a:Ljava/lang/String;

    iput-object p2, p0, Lcjp;->a:Ljava/lang/String;

    new-instance p2, Lcmw;

    new-instance v0, Lciy;

    check-cast p1, Lcjf;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lciy;-><init>(Lcjf;I)V

    sget-object p1, Lczj;->a:Lczj;

    .line 5
    invoke-direct {p2, v0, p1}, Lcmw;-><init>(Lczb;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcjp;->c:Lcmw;

    .line 6
    invoke-static {}, Lczq;->a()Lczq;

    move-result-object p1

    iput-object p1, p0, Lcjp;->h:Lczq;

    if-eqz p3, :cond_0

    invoke-static {}, Lcnd;->d()Lcnd;

    move-result-object p1

    iput-object p1, p0, Lcjp;->e:Lcnd;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcnd;->c()Lcnd;

    move-result-object p1

    iput-object p1, p0, Lcjp;->e:Lcnd;

    .line 6
    :goto_0
    new-instance p1, Lcji;

    invoke-direct {p1, p0, v1}, Lcji;-><init>(Lcjp;I)V

    .line 7
    invoke-virtual {p0, p1}, Lcjp;->c(Lczc;)V

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 4

    .line 1
    iget-object v0, p0, Lcjp;->e:Lcnd;

    invoke-virtual {v0}, Lcnd;->a()V

    iget-object v0, p0, Lcjp;->i:Lcmw;

    iget-object v0, v0, Lcmw;->d:Ldas;

    .line 2
    invoke-virtual {v0}, Ldas;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcjp;->b:Lcjq;

    check-cast v0, Lcjf;

    .line 3
    invoke-virtual {v0}, Lcjf;->a()Ldag;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcjp;->e:Lcnd;

    iget-object v1, p0, Lcjp;->a:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Get "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 4
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lcnd;->b(Ljava/lang/String;)Lcng;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcjp;->i:Lcmw;

    .line 6
    invoke-virtual {v1}, Lcmw;->c()Ldag;

    move-result-object v1

    new-instance v2, Lcji;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcji;-><init>(Lcjp;I)V

    .line 7
    invoke-static {v2}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v2

    .line 8
    sget-object v3, Lczj;->a:Lczj;

    .line 9
    invoke-static {v1, v2, v3}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcng;->a(Ldag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0}, Lcng;->close()V

    move-object v0, v1

    .line 3
    :goto_1
    iget-object v1, p0, Lcjp;->g:Ldag;

    .line 12
    invoke-static {v1}, Lhh;->k(Ldag;)Ldag;

    .line 13
    invoke-static {v0}, Lhh;->k(Ldag;)Ldag;

    move-result-object v0

    return-object v0

    .line 4
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcng;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    throw v1
.end method

.method public final b(Lcny;Ljava/util/concurrent/Executor;)Ldag;
    .locals 5

    .line 1
    new-instance v0, Lcjk;

    invoke-direct {v0, p1}, Lcjk;-><init>(Lcny;)V

    invoke-static {v0}, Lcnm;->b(Lczc;)Lczc;

    move-result-object p1

    iget-object v0, p0, Lcjp;->e:Lcnd;

    iget-object v1, p0, Lcjp;->a:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Update "

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 2
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Lcnd;->b(Ljava/lang/String;)Lcng;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcjp;->i:Lcmw;

    .line 4
    invoke-virtual {v1}, Lcmw;->c()Ldag;

    move-result-object v1

    iget-object v2, p0, Lcjp;->h:Lczq;

    new-instance v3, Lcjh;

    invoke-direct {v3, v1}, Lcjh;-><init>(Ldag;)V

    .line 5
    sget-object v4, Lczj;->a:Lczj;

    .line 6
    invoke-virtual {v2, v3, v4}, Lczq;->b(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    iget-object v2, p0, Lcjp;->h:Lczq;

    new-instance v3, Lcjg;

    invoke-direct {v3, p0, v1, p1, p2}, Lcjg;-><init>(Lcjp;Ldag;Lczc;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-static {v3}, Lcnm;->a(Lczb;)Lczb;

    move-result-object p1

    sget-object p2, Lczj;->a:Lczj;

    .line 8
    invoke-virtual {v2, p1, p2}, Lczq;->b(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p1}, Ldag;->isDone()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-static {p1, v1}, Lhh;->q(Ldag;Ljava/util/concurrent/Future;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lczy;

    invoke-direct {p2, p1, v1}, Lczy;-><init>(Ldag;Ljava/util/concurrent/Future;)V

    sget-object v2, Lczj;->a:Lczj;

    .line 13
    invoke-interface {p1, p2, v2}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget-object v2, Lczj;->a:Lczj;

    .line 14
    invoke-interface {v1, p2, v2}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 10
    :goto_1
    iget-object p2, p0, Lcjp;->g:Ldag;

    .line 15
    invoke-static {p2}, Lhh;->k(Ldag;)Ldag;

    .line 16
    invoke-virtual {v0, p1}, Lcng;->a(Ldag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Lcng;->close()V

    return-object p1

    .line 2
    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Lcng;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :goto_2
    throw p1
.end method

.method public final c(Lczc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcjp;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcjp;->f:Ljava/util/List;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
