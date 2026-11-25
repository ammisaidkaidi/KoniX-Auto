.class final Lawb;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field final synthetic a:Lawh;


# direct methods
.method public constructor <init>(Lawh;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lawb;->a:Lawh;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7530

    const-string v2, "WirelessDiscoveryController.java"

    const-string v3, "handleMessage"

    const-string v4, "com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$2"

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v1, 0xf3

    .line 2
    invoke-interface {v0, v4, v3, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v1, "Unexpected message: %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    return-void

    .line 3
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lawg;

    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v5, 0xeb

    .line 4
    invoke-interface {v0, v4, v3, v5, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v2, "Didn\'t receive connection status from device %s within %d milliseconds."

    invoke-interface {v0, v2, p1, v1}, Lcsx;->s(Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v0, p0, Lawb;->a:Lawh;

    iget-object v0, v0, Lawh;->d:Lbah;

    .line 5
    iget-object p1, p1, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 6
    invoke-virtual {v0, p1}, Lbah;->c(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object p1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lbah;->q(Lawo;Z)V

    return-void

    .line 8
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lawg;

    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v5, 0xd9

    .line 9
    invoke-interface {v0, v4, v3, v5, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v2, "Didn\'t receive Wi-Fi version response from device %s within %d milliseconds."

    invoke-interface {v0, v2, p1, v1}, Lcsx;->s(Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v0, 0x3

    .line 10
    iput v0, p1, Lawg;->b:I

    iget-object v0, p0, Lawb;->a:Lawh;

    iget-object v0, v0, Lawh;->d:Lbah;

    .line 11
    iget-object p1, p1, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 12
    invoke-virtual {v0, p1}, Lbah;->k(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 13
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lawg;

    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0xe2

    .line 14
    invoke-interface {v0, v4, v3, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x61a8

    const-string v2, "Didn\'t receive Wi-Fi start response from device %s within %d milliseconds."

    invoke-interface {v0, v2, p1, v1}, Lcsx;->s(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 15
    iget p1, p1, Lawg;->b:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lawb;->a:Lawh;

    .line 16
    invoke-virtual {p1}, Lawh;->c()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
