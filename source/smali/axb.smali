.class final Laxb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;


# instance fields
.field final synthetic a:Laxc;


# direct methods
.method public constructor <init>(Laxc;)V
    .locals 0

    iput-object p1, p0, Laxb;->a:Laxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppFocusOwnershipGranted(I)V
    .locals 5

    .line 2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Laxb;->a:Laxc;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Laxb;->a:Laxc;

    iget-object p1, p1, Laxc;->b:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    iget-object p1, p0, Laxb;->a:Laxc;

    invoke-virtual {p1}, Laxc;->f()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Laxc;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v1, "com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager$OnAppFocusOwnershipCallback"

    const-string v2, "onAppFocusOwnershipGranted"

    const/16 v3, 0xeb

    const-string v4, "NavigationAppFocusManager.java"

    .line 3
    invoke-interface {p1, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v1, "We have gained focus before starting NavigationAppFocusManager. MD not updated."

    invoke-interface {p1, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    iget-object p1, p0, Laxb;->a:Laxc;

    iget-object p1, p1, Laxc;->d:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Laxb;->a:Laxc;

    iget-object p1, p1, Laxc;->c:Lcom/google/android/projection/protocol/GalReceiver;

    .line 6
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->b:I

    invoke-virtual {p1, v1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetNavFocus(I)V

    iget-object p1, p0, Laxb;->a:Laxc;

    .line 7
    invoke-virtual {p1}, Laxc;->c()V

    .line 8
    monitor-exit v0

    return-void

    .line 1
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    sget-object v0, Laxc;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager$OnAppFocusOwnershipCallback"

    const-string v2, "onAppFocusOwnershipGranted"

    const/16 v3, 0xf4

    const-string v4, "NavigationAppFocusManager.java"

    .line 1
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Callback called with the wrong appType: %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    return-void
.end method

.method public final onAppFocusOwnershipLost(I)V
    .locals 5

    .line 2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Laxb;->a:Laxc;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Laxb;->a:Laxc;

    invoke-virtual {p1}, Laxc;->f()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Laxc;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v1, "com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager$OnAppFocusOwnershipCallback"

    const-string v2, "onAppFocusOwnershipLost"

    const/16 v3, 0xd8

    const-string v4, "NavigationAppFocusManager.java"

    invoke-interface {p1, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v1, "We have lost focus before starting NavigationAppFocusManager. MD not updated."

    invoke-interface {p1, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    iget-object p1, p0, Laxb;->a:Laxc;

    iget-object p1, p1, Laxc;->c:Lcom/google/android/projection/protocol/GalReceiver;

    .line 4
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    invoke-virtual {p1, v1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetNavFocus(I)V

    .line 5
    monitor-exit v0

    return-void

    .line 1
    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    sget-object v0, Laxc;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager$OnAppFocusOwnershipCallback"

    const-string v2, "onAppFocusOwnershipLost"

    const/16 v3, 0xe0

    const-string v4, "NavigationAppFocusManager.java"

    .line 1
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Callback called with the wrong appType: %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    return-void
.end method
