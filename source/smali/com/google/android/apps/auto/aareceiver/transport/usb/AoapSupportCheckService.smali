.class public Lcom/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService;
.super Lbdy;
.source "PG"


# static fields
.field private static final b:Lcsz;


# instance fields
.field public a:Lbah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService;->b:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbdy;-><init>()V

    return-void
.end method


# virtual methods
.method public final canSwitchToAoap(Landroid/hardware/usb/UsbDevice;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService;->a:Lbah;

    invoke-virtual {v0, p1}, Lbah;->y(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService;->b:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x1e

    .line 2
    const-string v2, "com/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService"

    const-string v3, "canSwitchToAoap"

    const-string v4, "AoapSupportCheckService.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "canSwitchToAoap, projection over USB for device %s is not supported"

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService;->a:Lbah;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lbah;->d(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService;->a:Lbah;

    .line 5
    sget-object v3, Lawp;->b:Lawp;

    .line 6
    invoke-virtual {v2, v0, v3}, Lbah;->v(Lawo;Lawp;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    return v1

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService;->a:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lbbl;->h:Lawo;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lawo;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Lawo;->e()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final isDeviceSupported(Landroid/hardware/usb/UsbDevice;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService;->a:Lbah;

    invoke-virtual {v0, p1}, Lbah;->y(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
