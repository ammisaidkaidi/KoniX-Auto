.class final Lawe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbdr;


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field final synthetic b:Lawh;


# direct methods
.method public constructor <init>(Lawh;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lawe;->b:Lawh;

    iput-object p2, p0, Lawe;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    sget-object p1, Lawh;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v0, "com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$5"

    const-string v1, "onFailed"

    const/16 v2, 0x19c

    const-string v3, "WirelessDiscoveryController.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Failed to start AP. Not sending WirelessVersionRequest"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lbdt;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lawe;->b:Lawh;

    iget-object v0, p0, Lawe;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lawh;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method
