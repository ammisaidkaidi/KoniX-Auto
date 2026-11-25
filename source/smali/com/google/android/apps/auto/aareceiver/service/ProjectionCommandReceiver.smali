.class public Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;
.super Lbao;
.source "PG"


# static fields
.field private static final c:Lcsz;


# instance fields
.field public a:Lbah;

.field public b:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->c:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbao;-><init>()V

    return-void
.end method

.method private final b(I)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->c:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0xa5

    const-string v2, "com/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver"

    const-string v3, "setResult"

    const-string v4, "ProjectionCommandReceiver.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Error occurred while serving the request: %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->setResultCode(I)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lawo;Lawp;Lcla;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhh;->d(Landroid/content/Context;Lawo;Lawp;Lcla;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lbao;->a(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->b(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    .line 5
    invoke-direct {p0, v3}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->b(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 7
    const-string v4, "com.android.car.projection.extra.USB_SERIAL_NUMBER"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    const-string v5, "com.android.car.projection.extra.BLUETOOTH_ADDRESS"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    goto :goto_0

    .line 18
    :cond_2
    nop

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->a:Lbah;

    .line 11
    invoke-virtual {v2, v4, v6}, Lbah;->d(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v2

    const/4 v4, 0x5

    if-nez v2, :cond_3

    .line 12
    invoke-direct {p0, v4}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->b(I)V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->a:Lbah;

    .line 13
    sget-object v6, Lawp;->a:Lawp;

    invoke-virtual {v5, v2, v6}, Lbah;->v(Lawo;Lawp;)Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->a:Lbah;

    sget-object v7, Lawp;->b:Lawp;

    .line 14
    invoke-virtual {v6, v2, v7}, Lbah;->v(Lawo;Lawp;)Z

    move-result v6

    .line 15
    const-string v7, "com.android.car.projection.extra.START_REQUEST_REASON"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 16
    sget-object v8, Lcla;->a:Lcla;

    iget v8, v8, Lcla;->d:I

    .line 17
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcla;->b(I)Lcla;

    move-result-object p2

    if-nez p2, :cond_5

    sget-object p2, Lcla;->a:Lcla;

    goto :goto_1

    .line 18
    :cond_4
    sget-object p2, Lcla;->a:Lcla;

    .line 17
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    .line 29
    :sswitch_0
    const-string v1, "com.android.car.projection.action.START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :sswitch_1
    const-string v1, "com.android.car.projection.action.STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_2
    const-string v3, "com.android.car.projection.action.START_WIRELESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :sswitch_3
    const-string v1, "com.android.car.projection.action.START_USB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    .line 17
    :cond_6
    :goto_2
    const/4 v1, -0x1

    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 25
    nop

    .line 29
    invoke-direct {p0, v9}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->b(I)V

    return-void

    .line 17
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->a:Lbah;

    iget-object p1, p1, Lbah;->h:Lbbl;

    if-eqz p1, :cond_7

    iget-object p2, p1, Lbbl;->h:Lawo;

    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 21
    invoke-virtual {p1}, Lbbl;->f()Ldag;

    goto :goto_6

    .line 27
    :cond_7
    sget-object p2, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->c:Lcsz;

    invoke-virtual {p2}, Lcsv;->c()Lctq;

    move-result-object p2

    const/16 v0, 0x62

    .line 20
    const-string v1, "com/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver"

    const-string v3, "onReceive"

    const-string v4, "ProjectionCommandReceiver.java"

    invoke-interface {p2, v1, v3, v0, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v0, "Received stop request for %s, but didn\'t find matched session. Current session: %s"

    invoke-interface {p2, v0, v2, p1}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 28
    :pswitch_1
    if-nez v5, :cond_8

    const/4 p1, 0x7

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->b(I)V

    return-void

    :cond_8
    sget-object v0, Lawp;->a:Lawp;

    .line 23
    invoke-static {p1, v2, v0, p2}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->c(Landroid/content/Context;Lawo;Lawp;Lcla;)V

    goto :goto_6

    :pswitch_2
    if-nez v6, :cond_9

    const/4 p1, 0x6

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->b(I)V

    return-void

    :cond_9
    sget-object v0, Lawp;->b:Lawp;

    .line 25
    invoke-static {p1, v2, v0, p2}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->c(Landroid/content/Context;Lawo;Lawp;Lcla;)V

    goto :goto_6

    .line 20
    :pswitch_3
    if-nez v5, :cond_b

    if-eqz v6, :cond_a

    goto :goto_4

    .line 26
    :cond_a
    nop

    .line 28
    invoke-direct {p0, v4}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->b(I)V

    return-void

    :cond_b
    if-nez v6, :cond_c

    sget-object v0, Lawp;->a:Lawp;

    goto :goto_5

    .line 20
    :cond_c
    :goto_4
    sget-object v0, Lawp;->b:Lawp;

    .line 26
    :goto_5
    invoke-static {p1, v2, v0, p2}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->c(Landroid/content/Context;Lawo;Lawp;Lcla;)V

    .line 21
    :goto_6
    nop

    .line 27
    invoke-direct {p0, v8}, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;->b(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c224e18 -> :sswitch_3
        -0x3e113e66 -> :sswitch_2
        -0x21a9da9f -> :sswitch_1
        -0x1391ad3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
