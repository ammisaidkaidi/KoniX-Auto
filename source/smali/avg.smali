.class final Lavg;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lavi;


# direct methods
.method public constructor <init>(Lavi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lavg;->a:Lavi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string p1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lavi;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v0, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$2"

    const-string v1, "onReceive"

    const/16 v2, 0x74

    const-string v3, "BluetoothPeerManager.java"

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Unexpected action %s in %s"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2, p0}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 3
    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 4
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 5
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object p2, p0, Lavg;->a:Lavi;

    iget-object p2, p2, Lavi;->i:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lavg;->a:Lavi;

    iget-object v0, v0, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lavg;->a:Lavi;

    iget-boolean v1, v0, Lavi;->l:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    :cond_1
    sget-object p1, Lavi;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v1, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager"

    const-string v2, "handleA2dpProfileStateChangedLocked"

    const/16 v3, 0x134

    const-string v4, "BluetoothPeerManager.java"

    .line 8
    invoke-interface {p1, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v1, "A2DP profile is connected while being inhibited"

    invoke-interface {p1, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lavi;->d()V

    iget-object p1, v0, Lavi;->n:Landroid/os/Handler;

    iget-object v1, v0, Lavi;->o:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lavi;->n:Landroid/os/Handler;

    iget-object v0, v0, Lavi;->o:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1964

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_2
    sget-object p1, Lavi;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v0, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$2"

    const-string v2, "onReceive"

    const/16 v3, 0x82

    const-string v4, "BluetoothPeerManager.java"

    .line 7
    invoke-interface {p1, v0, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Unexpected device in A2DP state change broadcast intent. Expected: %s received: %s"

    iget-object v2, p0, Lavg;->a:Lavi;

    iget-object v2, v2, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v2, v1}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    :cond_3
    :goto_0
    monitor-exit p2

    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
