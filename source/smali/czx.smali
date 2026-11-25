.class public final Lczx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/concurrent/Future;

.field final b:Lczv;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lczv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczx;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lczx;->b:Lczv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lczx;->a:Ljava/util/concurrent/Future;

    instance-of v1, v0, Ldaz;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Ldaz;

    .line 3
    invoke-virtual {v0}, Ldaz;->g()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lczx;->b:Lczv;

    .line 8
    invoke-interface {v1, v0}, Lczv;->a(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lczx;->a:Ljava/util/concurrent/Future;

    .line 4
    invoke-static {v0}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lczx;->b:Lczv;

    .line 7
    invoke-interface {v1, v0}, Lczv;->b(Ljava/lang/Object;)V

    return-void

    .line 6
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v1, p0, Lczx;->b:Lczv;

    .line 5
    invoke-interface {v1, v0}, Lczv;->a(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :catch_2
    move-exception v0

    iget-object v1, p0, Lczx;->b:Lczv;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lczv;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcob;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1}, Lcob;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lczx;->b:Lczv;

    new-instance v2, Lcoa;

    invoke-direct {v2}, Lcoa;-><init>()V

    iget-object v3, v0, Lcob;->a:Lcoa;

    .line 3
    iput-object v2, v3, Lcoa;->b:Lcoa;

    iput-object v2, v0, Lcob;->a:Lcoa;

    iput-object v1, v2, Lcoa;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lcob;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
