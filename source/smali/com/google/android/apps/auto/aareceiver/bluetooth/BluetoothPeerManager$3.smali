.class public Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzj;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbbl;

.field final synthetic c:Lavi;


# direct methods
.method public constructor <init>(Lavi;Landroid/content/Context;Lbbl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->c:Lavi;

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->b:Lbbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->c:Lavi;

    iget-object v2, v2, Lavi;->q:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->c:Lavi;

    iget-object v1, v1, Lavi;->r:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    .line 4
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->c:Lavi;

    iget-object v0, v0, Lavi;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->c:Lavi;

    iget-object v1, v1, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->b:Lbbl;

    iget-object v1, v1, Lbbl;->h:Lawo;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->c:Lavi;

    invoke-interface {v1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v2, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->c:Lavi;

    .line 5
    invoke-virtual {v1}, Lavi;->b()V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;->c:Lavi;

    iget-object v1, v0, Lavi;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lavi;->k:Ldag;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ldag;->cancel(Z)Z

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lavi;->k:Ldag;

    .line 2
    invoke-virtual {v0}, Lavi;->d()V

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lavi;->b:Landroid/content/Context;

    iget-object v2, v0, Lavi;->q:Landroid/content/BroadcastReceiver;

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Lavi;->b:Landroid/content/Context;

    iget-object v0, v0, Lavi;->r:Landroid/content/BroadcastReceiver;

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method
