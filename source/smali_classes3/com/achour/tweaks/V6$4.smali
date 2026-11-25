.class Lcom/achour/tweaks/V6$4;
.super Landroid/content/BroadcastReceiver;
.source "V6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/achour/tweaks/V6;->defer(ILandroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 633
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 637
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 638
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    .line 639
    invoke-static {}, Lcom/achour/tweaks/V6;->fireDefer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :cond_0
    goto :goto_0

    .line 641
    :catchall_0
    move-exception p1

    .line 643
    :goto_0
    return-void
.end method
