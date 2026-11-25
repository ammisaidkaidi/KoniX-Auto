.class Lbfq;
.super Ltk;
.source "PG"

# interfaces
.implements Ldht;


# instance fields
.field private c:Z

.field private final eA:Ljava/lang/Object;

.field private volatile ez:Ldhc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ltk;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbfq;->eA:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfq;->c:Z

    new-instance v0, Lbfp;

    invoke-direct {v0, p0}, Lbfp;-><init>(Lbfq;)V

    .line 2
    invoke-virtual {p0, v0}, Ltk;->j(Ltq;)V

    return-void
.end method


# virtual methods
.method public final aT()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lbfq;->ez:Ldhc;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbfq;->eA:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbfq;->ez:Ldhc;

    if-nez v1, :cond_0

    new-instance v1, Ldhc;

    .line 2
    invoke-direct {v1, p0}, Ldhc;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lbfq;->ez:Ldhc;

    .line 3
    :cond_0
    monitor-exit v0

    goto :goto_0

    .line 4
    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lbfq;->ez:Ldhc;

    .line 4
    invoke-virtual {v0}, Ldhc;->aT()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected y()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbfq;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbfq;->c:Z

    invoke-virtual {p0}, Lbfq;->aT()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lbfi;

    check-cast v0, Lass;

    iget-object v0, v0, Lass;->a:Latj;

    iget-object v0, v0, Latj;->z:Ldny;

    .line 2
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iput-object v0, v1, Lbfi;->v:Lazy;

    :cond_0
    return-void
.end method
