.class public final synthetic Lcjc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcjf;

.field public final synthetic b:Ldag;

.field public final synthetic c:Ldag;


# direct methods
.method public synthetic constructor <init>(Lcjf;Ldag;Ldag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjc;->a:Lcjf;

    iput-object p2, p0, Lcjc;->b:Ldag;

    iput-object p3, p0, Lcjc;->c:Ldag;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 3

    .line 1
    iget-object p1, p0, Lcjc;->a:Lcjf;

    iget-object v0, p0, Lcjc;->b:Ldag;

    iget-object v1, p0, Lcjc;->c:Ldag;

    invoke-static {v0}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p1, Ldad;->a:Ldag;

    goto :goto_0

    :cond_0
    new-instance v0, Lcjb;

    invoke-direct {v0, p1, v1}, Lcjb;-><init>(Lcjf;Ldag;)V

    .line 2
    invoke-static {v0}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v0

    iget-object v2, p1, Lcjf;->c:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v1, v0, v2}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    iget-object p1, p1, Lcjf;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    monitor-exit p1

    move-object p1, v0

    .line 5
    :goto_0
    return-object p1

    .line 4
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
