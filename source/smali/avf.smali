.class final Lavf;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lavi;


# direct methods
.method public constructor <init>(Lavi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lavf;->a:Lavi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lavf;->a:Lavi;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lavi;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 4
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6
    const-string v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v3, "BluetoothPeerManager.java"

    const-string v4, "handlePairingRequestBroadcast"

    const-string v5, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager"

    if-ne p2, v2, :cond_1

    sget-object p1, Lavi;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 p2, 0x179

    .line 7
    invoke-interface {p1, v5, v4, p2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Received pairing request broadcast with missing pairing key"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    .line 14
    :pswitch_0
    sget-object p1, Lavi;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 p2, 0x197

    .line 16
    invoke-interface {p1, v5, v4, p2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Invalid Bluetooth pairing method: %d"

    invoke-interface {p1, p2, v1}, Lcsx;->o(Ljava/lang/String;I)V

    return-void

    .line 7
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v6, [Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "%06d"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lavi;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p1, Lavi;->h:Lcom/google/android/projection/protocol/BluetoothEndpoint;

    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, p2, v1}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeSendAuthData(Ljava/lang/String;I)V

    iget-object p2, p1, Lavi;->n:Landroid/os/Handler;

    iget-object p1, p1, Lavi;->p:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    .line 11
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 15
    :pswitch_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "%04d"

    invoke-static {v1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lavi;->h:Lcom/google/android/projection/protocol/BluetoothEndpoint;

    const/4 v1, 0x4

    .line 13
    invoke-virtual {p1, p2, v1}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeSendAuthData(Ljava/lang/String;I)V

    .line 14
    sget-object p1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 15
    :goto_0
    invoke-virtual {p0}, Lavf;->abortBroadcast()V

    return-void

    .line 1
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
