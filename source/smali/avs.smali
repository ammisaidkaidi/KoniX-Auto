.class public final synthetic Lavs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lavx;

.field public final synthetic b:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public synthetic constructor <init>(Lavx;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavs;->a:Lavx;

    iput-object p2, p0, Lavs;->b:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lavs;->a:Lavx;

    iget-object v1, p0, Lavs;->b:Landroid/bluetooth/BluetoothSocket;

    iget-object v0, v0, Lavx;->d:Lawa;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v0, v0, Lawa;->a:Lawh;

    iget-object v2, v0, Lawh;->i:Lbcj;

    .line 2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lbcj;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v2, 0x18a

    .line 3
    const-string v3, "com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController"

    const-string v4, "onDeviceConnected"

    const-string v5, "WirelessDiscoveryController.java"

    invoke-interface {v0, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v2, "Wireless projection is disabled for %s"

    invoke-interface {v0, v2, v1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    sget-object v2, Ldle;->a:Ldle;

    .line 5
    invoke-virtual {v2}, Ldle;->b()Ldlf;

    move-result-object v2

    invoke-interface {v2}, Ldlf;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lawh;->f:Lbdq;

    .line 6
    invoke-virtual {v2}, Lbdq;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, v0, Lawh;->f:Lbdq;

    new-instance v3, Lawe;

    invoke-direct {v3, v0, v1}, Lawe;-><init>(Lawh;Landroid/bluetooth/BluetoothDevice;)V

    .line 8
    invoke-virtual {v2, v3}, Lbdq;->i(Lbdr;)V

    iget-object v0, v0, Lawh;->f:Lbdq;

    .line 9
    invoke-virtual {v0}, Lbdq;->j()V

    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lawh;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
