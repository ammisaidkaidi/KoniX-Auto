.class public abstract Lcyt;
.super Lczr;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ldag;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldag;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lczr;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcyt;->a:Ldag;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcyt;->b:Ljava/lang/Object;

    return-void
.end method

.method public static o(Ldag;Lcny;Ljava/util/concurrent/Executor;)Ldag;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcys;

    .line 2
    invoke-direct {v0, p0, p1}, Lcys;-><init>(Ldag;Lcny;)V

    .line 3
    invoke-static {p2, v0}, Lhi;->n(Ljava/util/concurrent/Executor;Lcyp;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcyr;

    .line 2
    invoke-direct {v0, p0, p1}, Lcyr;-><init>(Ldag;Lczc;)V

    .line 3
    invoke-static {p2, v0}, Lhi;->n(Ljava/util/concurrent/Executor;Lcyp;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcyt;->a:Ldag;

    iget-object v1, p0, Lcyt;->b:Ljava/lang/Object;

    invoke-super {p0}, Lczr;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "inputFuture=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "function=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcyt;->a:Ldag;

    invoke-virtual {p0, v0}, Lcyp;->j(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcyt;->a:Ldag;

    iput-object v0, p0, Lcyt;->b:Ljava/lang/Object;

    return-void
.end method

.method public abstract e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract n(Ljava/lang/Object;)V
.end method

.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcyt;->a:Ldag;

    iget-object v1, p0, Lcyt;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcyp;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 12
    :cond_0
    const/4 v5, 0x0

    .line 1
    :goto_0
    or-int/2addr v2, v5

    if-nez v1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    const/4 v3, 0x0

    .line 1
    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcyt;->a:Ldag;

    .line 2
    invoke-interface {v0}, Ldag;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lcyp;->d(Ldag;)Z

    return-void

    .line 4
    :cond_3
    :try_start_0
    invoke-static {v0}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcyt;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Lcyt;->b:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, v0}, Lcyt;->n(Ljava/lang/Object;)V

    return-void

    .line 5
    :catchall_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-virtual {p0, v0}, Lcyp;->l(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    iput-object v2, p0, Lcyt;->b:Ljava/lang/Object;

    return-void

    .line 10
    :catchall_1
    move-exception v0

    iput-object v2, p0, Lcyt;->b:Ljava/lang/Object;

    .line 11
    throw v0

    .line 6
    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0, v0}, Lcyp;->l(Ljava/lang/Throwable;)Z

    return-void

    .line 7
    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {p0, v0}, Lcyp;->l(Ljava/lang/Throwable;)Z

    return-void

    .line 8
    :catch_2
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcyp;->l(Ljava/lang/Throwable;)Z

    return-void

    .line 8
    :catch_3
    move-exception v0

    invoke-virtual {p0, v4}, Lcyp;->cancel(Z)Z

    return-void
.end method
