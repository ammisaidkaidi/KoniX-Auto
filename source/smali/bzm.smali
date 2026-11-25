.class public final Lbzm;
.super Lbyl;
.source "PG"

# interfaces
.implements Lbvd;
.implements Lbwq;


# instance fields
.field public final a:Lbwn;

.field public final b:Ldgz;

.field private final c:Ldai;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lbwo;Lbvh;Ldai;Ldgz;Ldgz;Ldny;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbyl;-><init>([B)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbzm;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbzm;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbzm;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p1, p7, p4, p6}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lbzm;->a:Lbwn;

    iput-object p3, p0, Lbzm;->c:Ldai;

    iput-object p5, p0, Lbzm;->b:Ldgz;

    .line 4
    invoke-virtual {p2, p0}, Lbvh;->a(Lbvg;)V

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 5

    .line 1
    iget-object v0, p0, Lbzm;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lbzk;

    invoke-direct {v0, p0}, Lbzk;-><init>(Lbzm;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lbzm;->c:Ldai;

    .line 2
    invoke-static {v0}, Ldax;->e(Lczb;)Ldax;

    move-result-object v0

    const-wide/16 v3, 0x1

    .line 3
    invoke-interface {v2, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    new-instance v2, Lczw;

    invoke-direct {v2, v1}, Lczw;-><init>(Ljava/util/concurrent/Future;)V

    .line 4
    sget-object v1, Lczj;->a:Lczj;

    .line 5
    invoke-virtual {v0, v2, v1}, Ldax;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lbzm;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzm;->e:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbzm;->e:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lbzi;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lbzi;

    iget-object v2, p0, Lbzm;->e:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 11
    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 10
    sget-object v0, Ldad;->a:Ldag;

    return-object v0

    :cond_2
    new-instance v0, Lbzl;

    invoke-direct {v0, p0, v1}, Lbzl;-><init>(Lbzm;[Lbzi;)V

    iget-object v1, p0, Lbzm;->c:Ldai;

    .line 11
    invoke-static {v0, v1}, Lhh;->m(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbzm;->a()Ldag;

    return-void
.end method

.method public final synthetic u()V
    .locals 0

    return-void
.end method
