.class public final Laxc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Ljava/util/Deque;

.field public c:Lcom/google/android/projection/protocol/GalReceiver;

.field public final d:Landroid/content/Context;

.field public e:Ljava/lang/ref/WeakReference;

.field final f:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

.field private final g:Landroid/content/pm/PackageManager;

.field private final h:Landroid/car/CarAppFocusManager;

.field private final i:Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Laxc;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/car/CarAppFocusManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Laxc;->b:Ljava/util/Deque;

    .line 2
    new-instance v0, Laxa;

    invoke-direct {v0, p0}, Laxa;-><init>(Laxc;)V

    iput-object v0, p0, Laxc;->i:Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;

    const/4 v1, 0x0

    iput-object v1, p0, Laxc;->e:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Laxc;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Laxc;->g:Landroid/content/pm/PackageManager;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Laxc;->h:Landroid/car/CarAppFocusManager;

    .line 5
    const/4 p1, 0x1

    invoke-virtual {p3, v0, p1}, Landroid/car/CarAppFocusManager;->addFocusListener(Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;I)V

    .line 6
    new-instance p1, Laxb;

    invoke-direct {p1, p0}, Laxb;-><init>(Laxc;)V

    iput-object p1, p0, Laxc;->f:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    return-void
.end method

.method private final declared-synchronized g()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Laxc;->h:Landroid/car/CarAppFocusManager;

    iget-object v1, p0, Laxc;->f:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/car/CarAppFocusManager;->abandonAppFocus(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;I)V

    iget-object v0, p0, Laxc;->b:Ljava/util/Deque;

    .line 2
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    iget-object v0, p0, Laxc;->c:Lcom/google/android/projection/protocol/GalReceiver;

    .line 3
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetNavFocus(I)V

    .line 4
    invoke-virtual {p0}, Laxc;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized h()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Laxc;->h:Landroid/car/CarAppFocusManager;

    const/4 v1, 0x1

    iget-object v2, p0, Laxc;->f:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/CarAppFocusManager;->requestAppFocus(ILandroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laxc;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager"

    const-string v2, "requestNavFocus"

    const/16 v3, 0xa6

    const-string v4, "NavigationAppFocusManager.java"

    .line 2
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Failed to set nav app focus"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    iget-object v0, p0, Laxc;->c:Lcom/google/android/projection/protocol/GalReceiver;

    .line 3
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetNavFocus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/projection/protocol/GalReceiver;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Laxc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laxc;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager"

    const-string v2, "initialize"

    const/16 v3, 0x4f

    const-string v4, "NavigationAppFocusManager.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "initialize called twice on the object"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Laxc;->c:Lcom/google/android/projection/protocol/GalReceiver;
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

.method public final declared-synchronized b(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Laxc;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Laxc;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v0, "com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager"

    const-string v1, "onNavigationFocusRequest"

    const/16 v2, 0x64

    const-string v3, "NavigationAppFocusManager.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "onNavigationFocusRequest called on uninitialized object"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-static {p1}, Lckh;->b(I)Lckh;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_2
    invoke-static {}, Ldkp;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lckh;->a:Lckh;

    .line 4
    invoke-virtual {v0, p1}, Lckh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laxc;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawk;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lawk;->a:Lawn;

    new-instance v1, Landroid/os/Bundle;

    .line 6
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lawn;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :try_start_3
    sget-object v3, Lk;->e:Lk;

    .line 8
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    iput-object v3, v0, Lawn;->j:Lddf;

    .line 9
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    iput-object v3, v0, Lawn;->f:Lj$/util/Optional;

    const-string v3, "navstate2"

    iget-object v4, v0, Lawn;->j:Lddf;

    .line 10
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Lk;

    invoke-virtual {v4}, Ldbv;->h()[B

    move-result-object v4

    .line 11
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 12
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :try_start_4
    invoke-virtual {v0, v1}, Lawn;->c(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 12
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    .line 14
    :cond_2
    :goto_0
    sget-object v0, Ldjl;->a:Ldjl;

    .line 15
    invoke-virtual {v0}, Ldjl;->b()Ldjm;

    move-result-object v0

    invoke-interface {v0}, Ldjm;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "geo:0,0"

    .line 17
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Laxc;->g:Landroid/content/pm/PackageManager;

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object p1, Lckh;->b:Lckh;

    :cond_3
    iget-object v0, p0, Laxc;->b:Ljava/util/Deque;

    .line 19
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Laxc;->b:Ljava/util/Deque;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Laxc;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :cond_4
    :try_start_7
    iget-object v0, p0, Laxc;->b:Ljava/util/Deque;

    .line 22
    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-void

    .line 0
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Laxc;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lckh;->b:Lckh;

    iget-object v1, p0, Laxc;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lckh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Laxc;->h()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Laxc;->g()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Laxc;->h:Landroid/car/CarAppFocusManager;

    iget-object v1, p0, Laxc;->f:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    invoke-virtual {v0, v1}, Landroid/car/CarAppFocusManager;->abandonAppFocus(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;)V

    iget-object v0, p0, Laxc;->h:Landroid/car/CarAppFocusManager;

    iget-object v1, p0, Laxc;->i:Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;

    .line 2
    invoke-virtual {v0, v1}, Landroid/car/CarAppFocusManager;->removeFocusListener(Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Laxc;->h:Landroid/car/CarAppFocusManager;

    iget-object v1, p0, Laxc;->f:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/car/CarAppFocusManager;->isOwningFocus(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laxc;->c:Lcom/google/android/projection/protocol/GalReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
