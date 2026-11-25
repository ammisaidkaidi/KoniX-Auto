.class public Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;
.super Lbea;
.source "PG"


# static fields
.field private static final o:Lcsz;

.field private static p:Lbec;


# instance fields
.field public b:Lbah;

.field public c:Lbby;

.field public d:Lawh;

.field public e:Lazy;

.field public l:Lawy;

.field public m:Lbde;

.field public n:Lbef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->o:Lcsz;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->p:Lbec;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbea;-><init>()V

    sget-object v0, Lcaa;->a:Lcaa;

    .line 2
    invoke-virtual {v0}, Lcaa;->a()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lbea;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "device"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/hardware/usb/UsbDevice;

    invoke-static {p0, v6}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->interceptNewDeviceActivity(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {v6}, Lbeh;->d(Landroid/hardware/usb/UsbDevice;)Z

    .line 7
    invoke-static {v6}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbeh;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    const/4 v7, 0x1

    const-string v2, "NewDeviceActivity.java"

    const-string v3, "onCreate"

    const-string v4, "com/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity"

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->o:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x47

    .line 8
    invoke-interface {v0, v4, v3, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "UsbDevice from UsbManager is either not connected or is not in AOAP mode. Resetting the device received in NewDeviceActivity."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 9
    invoke-static {p1, v6}, Lbeh;->e(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100053

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->finish()V

    return-void

    :cond_2
    nop

    .line 15
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->m:Lbde;

    .line 16
    invoke-virtual {v0}, Lbde;->c()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->b:Lbah;

    iget-object v1, v0, Lbah;->f:Lbav;

    .line 17
    invoke-static {v6}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbav;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaf;

    if-nez v1, :cond_3

    iget-object v1, v0, Lbah;->d:Lbby;

    .line 18
    invoke-interface {v1, v6}, Lbby;->e(Landroid/hardware/usb/UsbDevice;)Lawo;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lbah;->e(Lawo;)Lbaf;

    move-result-object v1

    .line 20
    :cond_3
    sget-object v2, Lawp;->a:Lawp;

    .line 19
    invoke-virtual {v0, v1, v2}, Lbah;->o(Lbaf;Lawp;)V

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->p:Lbec;

    if-nez v0, :cond_4

    goto :goto_0

    .line 32
    :cond_4
    iget-boolean v0, v0, Lbec;->b:Z

    if-nez v0, :cond_5

    .line 19
    :goto_0
    new-instance v8, Lbec;

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->b:Lbah;

    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->c:Lbby;

    iget-object v4, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->d:Lawh;

    iget-object v5, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->m:Lbde;

    .line 21
    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbec;-><init>(Landroid/content/Context;Lbah;Lbby;Lawh;Lbde;)V

    sput-object v8, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->p:Lbec;

    iget-object v0, v8, Lbec;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    .line 22
    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v7, v8, Lbec;->b:Z

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->b:Lbah;

    .line 23
    invoke-static {v6}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbah;->d(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->b:Lbah;

    .line 24
    invoke-virtual {v0, v3}, Lbah;->z(Lawo;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->l:Lawy;

    .line 26
    invoke-virtual {v0}, Lawy;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->finish()V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->e:Lazy;

    sget-object v2, Lawp;->a:Lawp;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->l:Lawy;

    .line 28
    invoke-virtual {v1}, Lawy;->b()I

    move-result v4

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->l:Lawy;

    .line 29
    invoke-virtual {v1}, Lawy;->a()I

    move-result v5

    const/4 v6, 0x1

    .line 30
    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lazy;->d(Landroid/content/Context;Lawp;Lawo;IIZ)V

    goto :goto_2

    .line 25
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->finish()V

    return-void

    .line 32
    :cond_9
    sget-object p1, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->o:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v0, 0x7f

    .line 31
    invoke-interface {p1, v4, v3, v0, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Unexpected intent action: %s"

    invoke-interface {p1, v0, v1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->finish()V

    return-void
.end method
