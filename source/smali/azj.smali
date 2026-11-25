.class public abstract Lazj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;


# instance fields
.field private b:Z

.field public final f:Ljava/lang/Object;

.field public g:Lcom/google/android/projection/protocol/SensorSource;

.field public h:Lcqk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/sensors/SensorFeed"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lazj;->a:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lazj;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lazj;->g:Lcom/google/android/projection/protocol/SensorSource;

    sget-object v0, Lcse;->a:Lcqk;

    iput-object v0, p0, Lazj;->h:Lcqk;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lazj;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()Lcqw;
.end method

.method public abstract c(Lcqw;)V
.end method

.method protected abstract d(Lcqw;)V
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lazj;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lazj;->h:Lcqk;

    invoke-virtual {v1}, Lcqk;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lazj;->h:Lcqk;

    .line 2
    invoke-virtual {v1}, Lcqk;->l()Lcqw;

    move-result-object v1

    invoke-virtual {p0, v1}, Lazj;->d(Lcqw;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lazj;->g:Lcom/google/android/projection/protocol/SensorSource;

    sget-object v1, Lcse;->a:Lcqk;

    iput-object v1, p0, Lazj;->h:Lcqk;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lazj;->b:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final f(Lckw;Lj$/util/function/Consumer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lazj;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lazj;->h:Lcqk;

    invoke-virtual {v1}, Lcqk;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lazj;->b:Z

    if-nez v1, :cond_0

    sget-object p1, Lazj;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/sensors/SensorFeed"

    const-string v1, "trySendUpdate"

    const/16 v2, 0x5f

    const-string v3, "SensorFeed.java"

    .line 8
    invoke-interface {p1, p2, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Suppressing sensor updates before start() or after stop()"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lazj;->b:Z

    .line 9
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lazj;->h:Lcqk;

    .line 2
    invoke-virtual {v1, p1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/function/BooleanSupplier;

    if-nez v1, :cond_1

    sget-object p2, Lazj;->a:Lcsz;

    invoke-virtual {p2}, Lcsv;->c()Lctq;

    move-result-object p2

    const-string v1, "com/google/android/apps/auto/aareceiver/sensors/SensorFeed"

    const-string v2, "trySendUpdate"

    const/16 v3, 0x66

    const-string v4, "SensorFeed.java"

    .line 3
    invoke-interface {p2, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v1, "Trying to send update for unregistered sensor %s"

    invoke-interface {p2, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    invoke-interface {v1}, Lj$/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lazj;->g:Lcom/google/android/projection/protocol/SensorSource;

    .line 6
    invoke-interface {p2, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
