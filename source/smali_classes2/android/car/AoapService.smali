.class public abstract Landroid/car/AoapService;
.super Landroid/app/Service;
.source "AoapService.java"


# static fields
.field public static final KEY_DEVICE:Ljava/lang/String; = "usb-device"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final MSG_CAN_SWITCH_TO_AOAP:I = 0x3

.field public static final MSG_CAN_SWITCH_TO_AOAP_RESPONSE:I = 0x4

.field public static final MSG_NEW_USB_DEVICE:I = 0x1

.field public static final MSG_NEW_USB_DEVICE_RESPONSE:I = 0x2

.field public static final RESULT_DEVICE_NOT_SUPPORTED:I = 0x1

.field public static final RESULT_DO_NOT_SWITCH_TO_AOAP:I = 0x2

.field public static final RESULT_OK:I


# instance fields
.field private mLegacyBinder:Landroid/os/IBinder;

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public canSwitchToAoap(Landroid/hardware/usb/UsbDevice;)I
    .locals 0

    .line 33
    const/4 p1, 0x0

    return p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 90
    const-string p1, "AoapService (API-28 compat v8 active)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public abstract isDeviceSupported(Landroid/hardware/usb/UsbDevice;)I
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 82
    if-eqz p1, :cond_0

    const-string v0, "android.car.usb.handler.action.USB_AOAP_SUPPORT_CHECK_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/car/AoapService;->mLegacyBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 83
    return-object p1

    .line 85
    :cond_0
    iget-object p1, p0, Landroid/car/AoapService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/car/AoapService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/car/AoapService$1;-><init>(Landroid/car/AoapService;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/car/AoapService;->mMessenger:Landroid/os/Messenger;

    .line 69
    :try_start_0
    new-instance v0, Landroid/car/AoapService$2;

    invoke-direct {v0, p0}, Landroid/car/AoapService$2;-><init>(Landroid/car/AoapService;)V

    iput-object v0, p0, Landroid/car/AoapService;->mLegacyBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    const-string v1, "AoapService"

    const-string v2, "Legacy binder unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_0
    return-void
.end method
