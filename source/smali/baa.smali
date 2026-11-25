.class public final Lbaa;
.super Lbal;
.source "PG"


# static fields
.field private static final b:Lcsz;


# instance fields
.field public a:Lbah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/service/BluetoothStateChangeReceiver"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbaa;->b:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbal;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lbal;->a(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lbaa;->b:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 p2, 0x21

    .line 3
    const-string v0, "com/google/android/apps/auto/aareceiver/service/BluetoothStateChangeReceiver"

    const-string v1, "onReceive"

    const-string v2, "BluetoothStateChangeReceiver.java"

    invoke-interface {p1, v0, v1, p2, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Received intent with null action"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    nop

    .line 4
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6
    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    const/16 p1, 0xc

    if-ne v0, p1, :cond_3

    .line 7
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lbaa;->a:Lbah;

    iget-object v0, p2, Lbah;->d:Lbby;

    .line 8
    invoke-interface {v0, p1}, Lbby;->b(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lbah;->f:Lbav;

    .line 9
    invoke-virtual {v1, p1}, Lbav;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaf;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p2, v0}, Lbah;->w(Lawo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lbah;->h:Lbbl;

    .line 11
    invoke-virtual {v0}, Lbbl;->a()V

    :cond_2
    iget-object p2, p2, Lbah;->d:Lbby;

    .line 12
    invoke-interface {p2, p1}, Lbby;->k(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 8
    :cond_3
    :goto_0
    return-void
.end method
