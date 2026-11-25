.class public final Lbeh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;

.field private static final b:Lcqw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbeh;->a:Lcsz;

    const/16 v0, 0x2d00

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2d01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2d04

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2d05

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcqw;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lbeh;->b:Lcqw;

    return-void
.end method

.method public static a(Landroid/content/Context;Lawo;)Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lbeh;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/hardware/usb/UsbDevice;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/hardware/usb/UsbDevice;
    .locals 6

    .line 1
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    const/4 v0, 0x0

    const-string v1, "UsbUtils.java"

    const-string v2, "getConnectedUsbDevice"

    const-string v3, "com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils"

    if-nez p0, :cond_0

    sget-object p0, Lbeh;->a:Lcsz;

    invoke-virtual {p0}, Lcsv;->b()Lctq;

    move-result-object p0

    const/16 p1, 0x2b

    .line 2
    invoke-interface {p0, v3, v2, p1, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string p1, "Failed to get UsbManager from the context"

    invoke-interface {p0, p1}, Lcsx;->n(Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 4
    invoke-static {v4}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-static {v4}, Lbeh;->d(Landroid/hardware/usb/UsbDevice;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v4, Lbeh;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    const/16 v5, 0x34

    .line 6
    invoke-interface {v4, v3, v2, v5, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v4

    check-cast v4, Lcsx;

    const-string v5, "Device %s currently not in AOAP mode, ignoring."

    invoke-interface {v4, v5, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v4

    .line 8
    :catch_0
    move-exception p0

    sget-object v4, Lbeh;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    .line 7
    invoke-interface {v4, p0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const/16 v4, 0x3e

    invoke-interface {p0, v3, v2, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string v4, "Security exception while getting usb device list."

    invoke-interface {p0, v4}, Lcsx;->n(Ljava/lang/String;)V

    .line 6
    :cond_3
    sget-object p0, Lbeh;->a:Lcsz;

    invoke-virtual {p0}, Lcsv;->c()Lctq;

    move-result-object p0

    const/16 v4, 0x40

    .line 8
    invoke-interface {p0, v3, v2, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string v1, "No USB device connected with serial: %s"

    invoke-interface {p0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 3

    .line 1
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    if-nez p0, :cond_0

    sget-object p0, Lbeh;->a:Lcsz;

    invoke-virtual {p0}, Lcsv;->b()Lctq;

    move-result-object p0

    const/16 p1, 0x4d

    .line 2
    const-string v0, "com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils"

    const-string v1, "getUsbDeviceConnection"

    const-string v2, "UsbUtils.java"

    invoke-interface {p0, v0, v1, p1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string p1, "Failed to get UsbManager from the context"

    invoke-interface {p0, p1}, Lcsx;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static e(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    .line 1
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    sget-object p0, Lbeh;->a:Lcsz;

    invoke-virtual {p0}, Lcsv;->b()Lctq;

    move-result-object p0

    const/16 p1, 0x5e

    .line 2
    const-string v0, "com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils"

    const-string v1, "resetUsbDevice"

    const-string v2, "UsbUtils.java"

    invoke-interface {p0, v0, v1, p1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string p1, "Failed to get UsbManager from the context"

    invoke-interface {p0, p1}, Lcsx;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lbeh;->c(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p0

    .line 4
    invoke-static {p1, p0}, Lbeh;->f(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result p0

    .line 3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->resetDevice()Z

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    and-int/2addr p0, v0

    return p0

    .line 1
    :cond_1
    :goto_0
    sget-object p0, Lbeh;->a:Lcsz;

    invoke-virtual {p0}, Lcsv;->c()Lctq;

    move-result-object p0

    const/16 p1, 0x72

    const-string v1, "com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils"

    const-string v2, "resetUsbDevice"

    const-string v3, "UsbUtils.java"

    invoke-interface {p0, v1, v2, p1, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string p1, "Unable to reset USB device."

    invoke-interface {p0, p1}, Lcsx;->n(Ljava/lang/String;)V

    return v0
.end method
