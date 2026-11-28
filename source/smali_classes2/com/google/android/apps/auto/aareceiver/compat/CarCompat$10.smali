.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$10;
.super Landroid/content/BroadcastReceiver;
.source "CarCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->initPersistentService(Landroid/app/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1333
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1336
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2100(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1337
    :cond_0
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1338
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 1339
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Lx/g;->shouldSkipWirelessNudge(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1340
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-wide/16 v1, 0xed8

    invoke-static {p1, v0, p2, v1, v2}, Lx/i;->aclAttempt(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V

    .line 1343
    :cond_1
    return-void

    .line 1336
    :cond_2
    :goto_0
    return-void
.end method
