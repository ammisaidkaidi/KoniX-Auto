.class final Lbas;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbag;


# instance fields
.field final synthetic a:Lbat;


# direct methods
.method public constructor <init>(Lbat;)V
    .locals 0

    iput-object p1, p0, Lbas;->a:Lbat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic f(Lawo;)V
    .locals 0

    return-void
.end method

.method public final g(Lawo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbas;->a:Lbat;

    iget-object v0, v0, Lbat;->g:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbas;->a:Lbat;

    iget-object v0, v0, Lbat;->g:Landroid/hardware/usb/UsbDevice;

    .line 2
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbas;->a:Lbat;

    const/4 v0, 0x0

    iput-object v0, p1, Lbat;->g:Landroid/hardware/usb/UsbDevice;

    iput-object v0, p1, Lbat;->f:Landroid/hardware/usb/UsbDeviceConnection;

    :cond_0
    return-void
.end method

.method public final h(Lbbl;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lbbl;->g:Lawp;

    sget-object v1, Lawp;->a:Lawp;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbas;->a:Lbat;

    iget-object v1, v0, Lbat;->b:Landroid/content/Context;

    iget-object v2, p1, Lbbl;->h:Lawo;

    .line 2
    invoke-static {v1, v2}, Lbeh;->a(Landroid/content/Context;Lawo;)Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    iput-object v1, v0, Lbat;->g:Landroid/hardware/usb/UsbDevice;

    iget-object v0, p0, Lbas;->a:Lbat;

    iget-object v1, v0, Lbat;->g:Landroid/hardware/usb/UsbDevice;

    if-nez v1, :cond_0

    sget-object v0, Lbat;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v1, 0x77

    .line 3
    const-string v2, "com/google/android/apps/auto/aareceiver/service/PersistentServiceController$2"

    const-string v3, "onProjectionSessionStarted"

    const-string v4, "PersistentServiceController.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    iget-object p1, p1, Lbbl;->h:Lawo;

    const-string v1, "Device unexpectedly not found: %s"

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbas;->a:Lbat;

    const/4 v0, 0x0

    iput-object v0, p1, Lbat;->f:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :cond_0
    iget-object p1, v0, Lbat;->b:Landroid/content/Context;

    .line 4
    invoke-static {p1, v1}, Lbeh;->c(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    iput-object p1, v0, Lbat;->f:Landroid/hardware/usb/UsbDeviceConnection;

    :cond_1
    return-void
.end method
