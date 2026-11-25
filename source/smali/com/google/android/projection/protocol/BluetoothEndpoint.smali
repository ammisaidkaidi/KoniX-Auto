.class public Lcom/google/android/projection/protocol/BluetoothEndpoint;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/projection/protocol/BluetoothCallbacks;
.implements Lclk;


# instance fields
.field private final a:Lclj;

.field private final b:Ljava/lang/String;

.field private final c:[I

.field private mNativeBluetoothEndpoint:J


# direct methods
.method public constructor <init>(Lclj;Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->a:Lclj;

    iput-object p2, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->c:[I

    return-void
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeSetDeviceInfo(Ljava/lang/String;[I)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->mNativeBluetoothEndpoint:J

    return-wide v0
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeShutdown()V

    return-void
.end method

.method public final c(IJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeInit(IJ)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->c:[I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeSetDeviceInfo(Ljava/lang/String;[I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public native nativeOnReadyForPairing(Z)V
.end method

.method public native nativeRequestDelayedPairing()V
.end method

.method public native nativeSendAuthData(Ljava/lang/String;I)V
.end method

.method public final onAuthenticationResult(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->a:Lclj;

    check-cast v0, Lavi;

    iget-object v1, v0, Lavi;->n:Landroid/os/Handler;

    iget-object v2, v0, Lavi;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    nop

    .line 2
    invoke-virtual {v0, p1}, Lavi;->c(Z)V

    return-void
.end method

.method public final onPairingRequest(Ljava/lang/String;I)V
    .locals 11

    .line 1
    iget-object p2, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->a:Lclj;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p2, Lavi;->a:Lcsz;

    invoke-virtual {p2}, Lcsv;->b()Lctq;

    move-result-object p2

    const-string v0, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager"

    const-string v1, "onPairingRequest"

    const/16 v2, 0xd3

    const-string v3, "BluetoothPeerManager.java"

    .line 2
    invoke-interface {p2, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v0, "Invalid MD Bluetooth address in BluetoothPairingRequest: %s"

    invoke-interface {p2, v0, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lavi;

    iget-object v1, v0, Lavi;->f:Lavb;

    iget-object v1, v1, Lavb;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iget-object v0, v0, Lavi;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    move-object v1, p2

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lavi;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager"

    const-string v3, "onPairingRequest"

    const/16 v4, 0xdd

    const-string v5, "BluetoothPeerManager.java"

    .line 38
    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Mismatched phone Bluetooth address - expected %s, got %s"

    check-cast p2, Lavi;

    iget-object p2, p2, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, p2, p1}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    monitor-exit v0

    return-void

    :cond_1
    move-object v1, p2

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    move-object v1, p2

    check-cast v1, Lavi;

    iput-object p1, v1, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    move-object v1, p2

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->d:Lawo;

    .line 5
    invoke-interface {v1}, Lawo;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->c:Lbah;

    move-object v4, p2

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->d:Lawo;

    .line 6
    invoke-interface {v4}, Lawo;->e()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v1, p1, v4}, Lbah;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Lawo;

    invoke-virtual {v1}, Lbah;->t()V

    const/4 v1, 0x1

    goto :goto_0

    .line 27
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_0
    move-object v4, p2

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->k:Ldag;

    if-nez v4, :cond_d

    move-object v4, p2

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->f:Lavb;

    move-object v5, p2

    check-cast v5, Lavi;

    iget-object v5, v5, Lavi;->e:Lbbl;

    iget-object v6, v4, Lavb;->c:Landroid/bluetooth/BluetoothAdapter;

    if-nez v6, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bluetooth adapter is not available on this device"

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object v4

    goto/16 :goto_4

    .line 34
    :cond_4
    iget-object v6, v4, Lavb;->f:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, v4, Lavb;->h:Ljava/util/Set;

    .line 9
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lauy;

    invoke-direct {v7, v4, v5}, Lauy;-><init>(Lavb;Lbbl;)V

    iget-object v5, v4, Lavb;->a:Landroid/os/Handler;

    .line 10
    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object v5, v4, Lavb;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 11
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 12
    sget-object v4, Ldad;->a:Ldag;

    .line 13
    monitor-exit v6

    goto/16 :goto_4

    .line 14
    :cond_6
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object v5

    new-instance v7, Lauz;

    .line 15
    invoke-direct {v7, v5}, Lauz;-><init>(Ldas;)V

    new-instance v8, Laux;

    invoke-direct {v8, v4, v7}, Laux;-><init>(Lavb;Landroid/content/BroadcastReceiver;)V

    .line 16
    sget-object v9, Lczj;->a:Lczj;

    .line 17
    invoke-virtual {v5, v8, v9}, Ldas;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v8, v4, Lavb;->b:Landroid/content/Context;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 18
    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, v4, Lavb;->b:Landroid/content/Context;

    .line 19
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "bluetooth_on"

    .line 20
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    .line 27
    :cond_7
    nop

    .line 20
    :goto_1
    iput-boolean v2, v4, Lavb;->g:Z

    .line 21
    invoke-static {}, Ldik;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v4, Lavb;->d:Lbde;

    .line 22
    sget-object v3, Lbdf;->d:Lbdf;

    invoke-virtual {v2, v3}, Lbde;->a(Lbdf;)V

    :cond_8
    iget-object v2, v4, Lavb;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 23
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    .line 24
    invoke-static {}, Ldik;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v2, :cond_a

    iget-object v3, v4, Lavb;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 25
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v5, v3}, Ldas;->k(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "BT Adapter couldn\'t be started"

    .line 27
    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ldas;->l(Ljava/lang/Throwable;)Z

    .line 28
    :cond_a
    :goto_2
    invoke-static {}, Ldik;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Ldkm;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_b

    new-instance v2, Lava;

    invoke-direct {v2, v4}, Lava;-><init>(Lavb;)V

    iget-object v3, v4, Lavb;->e:Ljava/util/concurrent/Executor;

    .line 29
    invoke-static {v5, v2, v3}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    .line 31
    :cond_b
    iget-object v2, v4, Lavb;->d:Lbde;

    .line 30
    sget-object v3, Lbdf;->d:Lbdf;

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lbde;->b(Lbdf;I)V

    .line 31
    :cond_c
    :goto_3
    monitor-exit v6

    move-object v4, v5

    goto :goto_4

    .line 37
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 33
    :cond_d
    :goto_4
    invoke-interface {v4}, Ldag;->isDone()Z

    move-result v2

    if-nez v2, :cond_e

    move-object v2, p2

    check-cast v2, Lavi;

    iget-object v2, v2, Lavi;->h:Lcom/google/android/projection/protocol/BluetoothEndpoint;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeRequestDelayedPairing()V

    move-object v2, p2

    check-cast v2, Lavi;

    iput-object v4, v2, Lavi;->k:Ldag;

    move-object v2, p2

    check-cast v2, Lavi;

    iget-object v2, v2, Lavi;->g:Ljava/util/concurrent/Executor;

    goto :goto_5

    .line 34
    :cond_e
    sget-object v2, Lczj;->a:Lczj;

    .line 35
    :goto_5
    new-instance v3, Lavh;

    check-cast p2, Lavi;

    invoke-direct {v3, p2, v1, p1}, Lavh;-><init>(Lavi;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 36
    invoke-static {v4, v3, v2}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    .line 37
    monitor-exit v0

    return-void

    .line 27
    :catchall_1
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
