.class public final Lccq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lccw;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lccq;->a:Landroid/app/Application;

    iput-object p2, p0, Lccq;->c:Ljava/util/Set;

    iput-object p3, p0, Lccq;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lccv;
    .locals 2

    new-instance v0, Lccv;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lccv;-><init>(I)V

    return-object v0
.end method

.method public final b(Ldpz;)V
    .locals 3

    .line 1
    iget-object v0, p1, Ldpz;->h:Ldpm;

    if-nez v0, :cond_0

    sget-object v0, Ldpm;->i:Ldpm;

    :cond_0
    iget v0, v0, Ldpm;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccq;->c:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lccq;->b:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v0

    iget-object v1, p0, Lccq;->c:Ljava/util/Set;

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcct;

    .line 6
    invoke-interface {v2}, Lcct;->a()Ldag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcqc;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcqc;->f()Lcqh;

    move-result-object v0

    invoke-static {v0}, Lhh;->n(Ljava/lang/Iterable;)Ldag;

    move-result-object v0

    new-instance v1, Lccp;

    invoke-direct {v1, p0, p1}, Lccp;-><init>(Lccq;Ldpz;)V

    .line 8
    sget-object p1, Lczj;->a:Lczj;

    .line 9
    invoke-static {v0, v1, p1}, Lcyt;->o(Ldag;Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    .line 10
    :try_start_0
    invoke-static {p1}, Lhi;->j(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 12
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Lczk;

    .line 13
    check-cast p1, Ljava/lang/Error;

    invoke-direct {v0, p1}, Lczk;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 10
    :cond_3
    new-instance v0, Lday;

    .line 14
    invoke-direct {v0, p1}, Lday;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3
    :cond_4
    :goto_1
    return-void
.end method
