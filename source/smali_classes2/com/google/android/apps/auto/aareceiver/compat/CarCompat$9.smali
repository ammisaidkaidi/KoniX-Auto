.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9;
.super Landroid/content/BroadcastReceiver;
.source "CarCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->initPersistentService(Landroid/app/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1306
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1309
    if-nez p2, :cond_0

    return-void

    .line 1310
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1311
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1312
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    .line 1313
    if-eqz p2, :cond_2

    .line 1314
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2000(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Z)V

    goto :goto_0

    .line 1316
    :cond_1
    const-string p1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1318
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9$1;

    invoke-direct {p2, p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9$1;-><init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9;)V

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1316
    :cond_2
    :goto_0
    nop

    .line 1327
    :goto_1
    return-void
.end method
