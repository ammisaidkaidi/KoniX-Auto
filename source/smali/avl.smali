.class public final synthetic Lavl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lavp;

.field public final synthetic b:Lavo;


# direct methods
.method public synthetic constructor <init>(Lavp;Lavo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavl;->a:Lavp;

    iput-object p2, p0, Lavl;->b:Lavo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, "handleVersionResponse"

    const-string v1, "handleWifiResponseStart"

    iget-object v2, p0, Lavl;->a:Lavp;

    iget-object v3, p0, Lavl;->b:Lavo;

    iget-object v2, v2, Lavp;->g:Lavu;

    iget v4, v3, Lavo;->b:I

    iget-object v3, v3, Lavo;->a:[B

    iget-object v5, v2, Lavu;->c:Lavx;

    iget-object v5, v5, Lavx;->d:Lawa;

    iget-object v2, v2, Lavu;->a:Ljava/lang/String;

    iget-object v5, v5, Lawa;->a:Lawh;

    iget-object v6, v5, Lawh;->b:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lawg;

    const-string v7, "onMessageReceived"

    const-string v8, "WirelessDiscoveryController.java"

    const-string v9, "com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController"

    if-nez v6, :cond_0

    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v1, 0x1c4

    .line 2
    invoke-interface {v0, v9, v7, v1, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Device %s not registered. Message ignored."

    invoke-interface {v0, v1, v2}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v2, 0xd

    const/16 v10, 0xc

    const/4 v11, 0x4

    const/4 v12, 0x0

    packed-switch v4, :pswitch_data_0

    .line 61
    :pswitch_0
    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v1, 0x1da

    .line 78
    invoke-interface {v0, v9, v7, v1, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unexpected WifiMessageType %d"

    invoke-interface {v0, v1, v4}, Lcsx;->o(Ljava/lang/String;I)V

    return-void

    .line 47
    :pswitch_1
    invoke-virtual {v5, v6}, Lawh;->g(Lawg;)V

    .line 48
    :try_start_0
    invoke-static {}, Ldcz;->b()Ldcz;

    move-result-object v0

    sget-object v4, Lcle;->e:Lcle;

    .line 49
    invoke-static {v4, v3, v0}, Lddk;->r(Lddk;[BLdcz;)Lddk;

    move-result-object v0

    check-cast v0, Lcle;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, v0, Lcle;->a:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_2

    iget v0, v0, Lcle;->d:I

    invoke-static {v0}, Lbzv;->g(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    .line 61
    :cond_2
    const/4 v2, 0x0

    .line 49
    :goto_0
    if-nez v2, :cond_3

    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v2, 0x29a

    .line 51
    invoke-interface {v0, v9, v1, v2, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v2, "Received start response without status"

    invoke-interface {v0, v2}, Lcsx;->n(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    if-eqz v2, :cond_6

    if-eq v2, v10, :cond_6

    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v3, 0x29e

    .line 52
    invoke-interface {v0, v9, v1, v3, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    add-int/lit8 v2, v2, -0xc

    const-string v1, "WifiStartResponse: received unsuccessful status: %d"

    invoke-interface {v0, v1, v2}, Lcsx;->o(Ljava/lang/String;I)V

    .line 53
    sget-object v0, Ldih;->a:Ldih;

    .line 54
    invoke-virtual {v0}, Ldih;->b()Ldii;

    move-result-object v0

    invoke-interface {v0}, Ldii;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v5, Lawh;->d:Lbah;

    iget-object v1, v6, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 55
    invoke-virtual {v0, v1}, Lbah;->c(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1, v12}, Lbah;->q(Lawo;Z)V

    .line 57
    invoke-virtual {v5, v6}, Lawh;->f(Lawg;)V

    iget-object v0, v5, Lawh;->n:Lbew;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lbew;->a:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 59
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->a(Landroid/content/Context;)V

    new-instance v1, Lbev;

    invoke-direct {v1, v0}, Lbev;-><init>(Landroid/app/Activity;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 62
    :cond_4
    iget-object v0, v5, Lawh;->d:Lbah;

    iget-object v1, v6, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 61
    invoke-virtual {v0, v1}, Lbah;->k(Landroid/bluetooth/BluetoothDevice;)V

    .line 62
    :cond_5
    :goto_1
    invoke-virtual {v5}, Lawh;->c()V

    const/16 v0, 0x9

    iput v0, v6, Lawg;->b:I

    return-void

    .line 61
    :cond_6
    const/16 v0, 0xa

    iput v0, v6, Lawg;->b:I

    return-void

    .line 5
    :catch_0
    move-exception v0

    sget-object v2, Lawh;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->b()Lctq;

    move-result-object v2

    .line 50
    invoke-interface {v2, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v2, 0x295

    invoke-interface {v0, v9, v1, v2, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unable to parse start response"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    .line 63
    :pswitch_2
    invoke-virtual {v5, v6}, Lawh;->f(Lawg;)V

    iget-object v0, v5, Lawh;->d:Lbah;

    iget-object v1, v6, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 64
    invoke-virtual {v0, v1}, Lbah;->c(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1, v12}, Lbah;->q(Lawo;Z)V

    .line 66
    :try_start_1
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v0

    sget-object v1, Lclb;->c:Lclb;

    .line 67
    invoke-static {v1, v3, v0}, Lddk;->r(Lddk;[BLdcz;)Lddk;

    move-result-object v0

    check-cast v0, Lclb;
    :try_end_1
    .catch Lddu; {:try_start_1 .. :try_end_1} :catch_1

    iget v1, v0, Lclb;->a:I

    invoke-static {v1}, Lbzv;->g(I)I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    .line 69
    :cond_7
    if-ne v1, v10, :cond_8

    iget-object v0, v5, Lawh;->k:Lbde;

    .line 77
    invoke-virtual {v0}, Lbde;->c()V

    return-void

    .line 67
    :cond_8
    :goto_2
    iget-object v1, v5, Lawh;->n:Lbew;

    if-nez v1, :cond_9

    goto/16 :goto_8

    :cond_9
    iget v1, v0, Lclb;->a:I

    invoke-static {v1}, Lbzv;->g(I)I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    .line 76
    :cond_a
    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    iget-object v0, v5, Lawh;->c:Landroid/content/Context;

    const v1, 0x7f100052

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 67
    :cond_b
    :goto_3
    iget-object v0, v0, Lclb;->b:Ljava/lang/String;

    .line 70
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v5, Lawh;->n:Lbew;

    iget-object v1, v1, Lbew;->a:Ljava/lang/ref/WeakReference;

    .line 71
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_13

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;

    .line 72
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10020000

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    const-string v3, "extra_message"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 78
    :catch_1
    move-exception v0

    sget-object v1, Lawh;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    .line 68
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x1f3

    const-string v2, "handleConnectStatus"

    invoke-interface {v0, v9, v2, v1, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unable to parse WifiConnectStatus"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    .line 3
    :pswitch_3
    :try_start_2
    invoke-static {}, Ldcz;->b()Ldcz;

    move-result-object v1

    sget-object v4, Lclg;->f:Lclg;

    .line 4
    invoke-static {v4, v3, v1}, Lddk;->r(Lddk;[BLdcz;)Lddk;

    move-result-object v1

    check-cast v1, Lclg;
    :try_end_2
    .catch Lddu; {:try_start_2 .. :try_end_2} :catch_2

    .line 6
    invoke-static {v1}, Lawh;->a(Lclg;)Ljava/lang/String;

    iget-object v3, v5, Lawh;->h:Landroid/os/Handler;

    const/4 v4, 0x2

    .line 7
    invoke-virtual {v3, v4, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget v3, v1, Lclg;->e:I

    invoke-static {v3}, Lbzv;->g(I)I

    move-result v3

    if-nez v3, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    iget v3, v1, Lclg;->a:I

    and-int/2addr v3, v11

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    iget-object v3, v1, Lclg;->d:Ljava/lang/String;

    goto :goto_6

    .line 23
    :cond_d
    move-object v3, v4

    .line 7
    :goto_6
    nop

    .line 8
    const-string v7, "unknown"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_7

    :cond_e
    move-object v4, v3

    goto :goto_7

    .line 23
    :cond_f
    nop

    .line 8
    :goto_7
    if-eq v2, v10, :cond_10

    sget-object v2, Lawh;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->c()Lctq;

    move-result-object v2

    const/16 v3, 0x23a

    .line 9
    invoke-interface {v2, v9, v0, v3, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    .line 10
    invoke-static {v1}, Lawh;->a(Lclg;)Ljava/lang/String;

    move-result-object v1

    .line 9
    const-string v2, "%s rejected our protocol version: %s"

    invoke-interface {v0, v2, v6, v1}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput v11, v6, Lawg;->b:I

    return-void

    :cond_10
    iget-object v0, v5, Lawh;->d:Lbah;

    iget-object v1, v6, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 11
    invoke-virtual {v0, v1}, Lbah;->f(Landroid/bluetooth/BluetoothDevice;)Lbaf;

    move-result-object v2

    if-eqz v4, :cond_11

    iget-object v3, v2, Lbaf;->g:Lawo;

    .line 12
    invoke-interface {v3}, Lawo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 11
    invoke-virtual {v0, v1, v4}, Lbah;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Lawo;

    move-result-object v1

    iput-object v1, v2, Lbaf;->g:Lawo;

    .line 13
    :cond_11
    sget-object v1, Lawp;->b:Lawp;

    .line 11
    invoke-virtual {v0, v2, v1}, Lbah;->o(Lbaf;Lawp;)V

    const/4 v0, 0x5

    iput v0, v6, Lawg;->b:I

    iget-object v0, v5, Lawh;->d:Lbah;

    iget-object v1, v6, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 14
    invoke-virtual {v0, v1}, Lbah;->c(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v0

    .line 15
    sget-object v1, Ldih;->a:Ldih;

    .line 16
    invoke-virtual {v1}, Ldih;->b()Ldii;

    move-result-object v1

    invoke-interface {v1}, Ldii;->d()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v0, v6, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 17
    invoke-virtual {v5}, Lawh;->h()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v5, Lawh;->d:Lbah;

    .line 18
    invoke-virtual {v1, v0}, Lbah;->c(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Lawo;->b()Lbcq;

    move-result-object v1

    sget-object v2, Lbcq;->b:Lbcq;

    if-ne v1, v2, :cond_13

    .line 20
    invoke-interface {v0}, Lawo;->f()Z

    move-result v1

    if-nez v1, :cond_13

    .line 21
    sget-object v1, Lcla;->b:Lcla;

    invoke-virtual {v5, v0, v1}, Lawh;->e(Lawo;Lcla;)V

    return-void

    :cond_12
    iget-object v1, v5, Lawh;->d:Lbah;

    .line 22
    invoke-virtual {v1, v0}, Lbah;->z(Lawo;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 23
    sget-object v1, Lcla;->b:Lcla;

    invoke-virtual {v5, v0, v1}, Lawh;->e(Lawo;Lcla;)V

    return-void

    .line 67
    :cond_13
    :goto_8
    return-void

    .line 68
    :catch_2
    move-exception v1

    sget-object v2, Lawh;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->b()Lctq;

    move-result-object v2

    .line 5
    invoke-interface {v2, v1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const/16 v2, 0x229

    invoke-interface {v1, v9, v0, v2, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Failed to decode WifiVersionResponse message"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    .line 23
    :pswitch_4
    iget-object v0, v5, Lawh;->f:Lbdq;

    new-instance v1, Lawf;

    invoke-direct {v1, v5, v6}, Lawf;-><init>(Lawh;Lawg;)V

    .line 24
    invoke-virtual {v0, v1}, Lbdq;->i(Lbdr;)V

    iget-object v0, v5, Lawh;->f:Lbdq;

    .line 25
    invoke-virtual {v0}, Lbdq;->j()V

    return-void

    .line 26
    :pswitch_5
    invoke-virtual {v5}, Lawh;->h()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_15

    .line 27
    invoke-virtual {v6}, Lawg;->a()Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object v2, Lcle;->e:Lcle;

    .line 29
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    iget-boolean v3, v2, Lddf;->c:Z

    if-eqz v3, :cond_14

    .line 30
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v12, v2, Lddf;->c:Z

    :cond_14
    iget-object v3, v2, Lddf;->b:Lddk;

    .line 31
    check-cast v3, Lcle;

    const/4 v4, -0x4

    iput v4, v3, Lcle;->d:I

    iget v4, v3, Lcle;->a:I

    or-int/2addr v4, v11

    iput v4, v3, Lcle;->a:I

    .line 32
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    .line 33
    invoke-virtual {v5, v0, v1, v2}, Lawh;->j(Ljava/lang/String;ILder;)V

    return-void

    :cond_15
    iget-object v0, v5, Lawh;->f:Lbdq;

    .line 34
    invoke-virtual {v0}, Lbdq;->k()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lawh;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v2, 0x279

    .line 35
    const-string v3, "handleWifiStartRequest"

    invoke-interface {v0, v9, v3, v2, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v2, "Access point is not started yet."

    invoke-interface {v0, v2}, Lcsx;->n(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v6}, Lawg;->a()Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v2, Lcle;->e:Lcle;

    .line 38
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    iget-boolean v3, v2, Lddf;->c:Z

    if-eqz v3, :cond_16

    .line 39
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v12, v2, Lddf;->c:Z

    :cond_16
    iget-object v3, v2, Lddf;->b:Lddk;

    .line 40
    check-cast v3, Lcle;

    const/4 v4, -0x6

    iput v4, v3, Lcle;->d:I

    iget v4, v3, Lcle;->a:I

    or-int/2addr v4, v11

    iput v4, v3, Lcle;->a:I

    .line 41
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    .line 42
    invoke-virtual {v5, v0, v1, v2}, Lawh;->j(Ljava/lang/String;ILder;)V

    iget-object v0, v5, Lawh;->f:Lbdq;

    .line 43
    invoke-virtual {v0}, Lbdq;->j()V

    return-void

    :cond_17
    iput v1, v6, Lawg;->b:I

    iget-object v0, v5, Lawh;->c:Landroid/content/Context;

    iget-object v1, v5, Lawh;->d:Lbah;

    iget-object v2, v6, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 44
    invoke-virtual {v1, v2}, Lbah;->c(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v1

    sget-object v2, Lawp;->b:Lawp;

    sget-object v3, Lcla;->a:Lcla;

    .line 45
    invoke-static {v0, v1, v2, v3}, Lhh;->d(Landroid/content/Context;Lawo;Lawp;Lcla;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, v5, Lawh;->c:Landroid/content/Context;

    .line 46
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
