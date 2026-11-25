.class public final Lbxw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbuz;
.implements Lbuy;


# static fields
.field private static final a:Lcsz;


# instance fields
.field private final b:Ldgz;

.field private c:Z

.field private d:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/jank/ActivityLevelJankMonitor"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbxw;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Ldgz;Ldny;Lcoc;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbxw;->c:Z

    iput-object p1, p0, Lbxw;->b:Ldgz;

    new-instance p1, Lbxv;

    invoke-direct {p1, p0, p2, p3}, Lbxv;-><init>(Lbxw;Ldny;Lcoc;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lbxw;->d:Landroid/app/Activity;

    iget-boolean v0, p0, Lbxw;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxw;->b:Ldgz;

    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyf;

    invoke-virtual {v0, p1}, Lbyf;->d(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Landroid/app/Activity;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbxw;->d:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lbxw;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/libraries/performance/primes/metrics/jank/ActivityLevelJankMonitor"

    const-string v2, "onActivityPaused"

    const/16 v3, 0x5a

    const-string v4, "ActivityLevelJankMonitor.java"

    .line 2
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Activity mismatch (currentActivity=%s, activity=%s)"

    iget-object v2, p0, Lbxw;->d:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lbxw;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbxw;->b:Ldgz;

    .line 3
    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyf;

    invoke-virtual {v0, p1}, Lbyf;->a(Landroid/app/Activity;)Ldag;

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lbxw;->d:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic c(Ldny;Lcoc;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ldny;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcoc;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Lcoc;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldny;

    invoke-interface {p1}, Ldny;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcoc;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p2}, Lcoc;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldny;

    invoke-interface {p1}, Ldny;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    :goto_0
    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lbxw;->c:Z

    iget-object p1, p0, Lbxw;->d:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Lbxw;->a(Landroid/app/Activity;)V

    .line 5
    :cond_3
    monitor-exit p0

    return-void

    .line 3
    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3
    :cond_4
    :goto_1
    return-void
.end method
