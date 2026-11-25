.class public final Lcyb;
.super Lczr;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ldag;

.field b:Ljava/lang/Class;

.field c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldag;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lczr;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcyb;->a:Ldag;

    iput-object p2, p0, Lcyb;->b:Ljava/lang/Class;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcyb;->c:Ljava/lang/Object;

    return-void
.end method

.method public static e(Ldag;Ljava/lang/Class;Lczc;Ljava/util/concurrent/Executor;)Ldag;
    .locals 1

    .line 1
    new-instance v0, Lcyb;

    invoke-direct {v0, p0, p1, p2}, Lcyb;-><init>(Ldag;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2
    invoke-static {p3, v0}, Lhi;->n(Ljava/util/concurrent/Executor;Lcyp;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcyb;->a:Ldag;

    iget-object v1, p0, Lcyb;->b:Ljava/lang/Class;

    iget-object v2, p0, Lcyb;->c:Ljava/lang/Object;

    invoke-super {p0}, Lczr;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "inputFuture=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "exceptionType=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], fallback=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcyb;->a:Ldag;

    invoke-virtual {p0, v0}, Lcyp;->j(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcyb;->a:Ldag;

    iput-object v0, p0, Lcyb;->b:Ljava/lang/Class;

    iput-object v0, p0, Lcyb;->c:Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcyb;->a:Ldag;

    iget-object v1, p0, Lcyb;->b:Ljava/lang/Class;

    iget-object v2, p0, Lcyb;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 16
    :cond_0
    const/4 v5, 0x0

    .line 1
    :goto_0
    if-nez v1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 16
    :cond_1
    const/4 v6, 0x0

    .line 1
    :goto_1
    or-int/2addr v5, v6

    if-nez v2, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    const/4 v3, 0x0

    .line 1
    :goto_2
    or-int/2addr v3, v5

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcyp;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcyb;->a:Ldag;

    .line 2
    :try_start_0
    instance-of v4, v0, Ldaz;

    if-eqz v4, :cond_4

    .line 3
    move-object v4, v0

    check-cast v4, Ldaz;

    .line 4
    invoke-virtual {v4}, Ldaz;->g()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_3

    .line 16
    :cond_4
    move-object v4, v3

    .line 4
    :goto_3
    if-nez v4, :cond_5

    .line 5
    invoke-static {v0}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 16
    :cond_5
    move-object v5, v3

    .line 5
    :goto_4
    goto :goto_6

    .line 8
    :catchall_0
    move-exception v4

    :goto_5
    move-object v5, v3

    goto :goto_6

    .line 16
    :catch_0
    move-exception v4

    .line 6
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/NullPointerException;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x23

    add-int/2addr v7, v8

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Future type "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " threw "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " without a cause"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_5

    .line 6
    :cond_6
    move-object v4, v5

    goto :goto_5

    .line 5
    :goto_6
    if-nez v4, :cond_7

    .line 9
    invoke-virtual {p0, v5}, Lcyp;->k(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 11
    :try_start_1
    invoke-interface {v2, v4}, Lczc;->a(Ljava/lang/Object;)Ldag;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v3, p0, Lcyb;->b:Ljava/lang/Class;

    iput-object v3, p0, Lcyb;->c:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0, v0}, Lcyp;->d(Ldag;)Z

    return-void

    .line 8
    :catchall_1
    move-exception v0

    .line 13
    :try_start_2
    invoke-virtual {p0, v0}, Lcyp;->l(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v3, p0, Lcyb;->b:Ljava/lang/Class;

    iput-object v3, p0, Lcyb;->c:Ljava/lang/Object;

    return-void

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcyb;->b:Ljava/lang/Class;

    iput-object v3, p0, Lcyb;->c:Ljava/lang/Object;

    .line 14
    throw v0

    .line 16
    :cond_8
    invoke-virtual {p0, v0}, Lcyp;->d(Ldag;)Z

    return-void

    .line 1
    :cond_9
    :goto_7
    return-void
.end method
