.class Landroid/car/AoapService$2;
.super Landroid/car/IUsbAoapSupportCheckService$Stub;
.source "AoapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/AoapService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/AoapService;


# direct methods
.method constructor <init>(Landroid/car/AoapService;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroid/car/AoapService$2;->this$0:Landroid/car/AoapService;

    invoke-direct {p0}, Landroid/car/IUsbAoapSupportCheckService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceSupported(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/car/AoapService$2;->this$0:Landroid/car/AoapService;

    invoke-virtual {v0, p1}, Landroid/car/AoapService;->isDeviceSupported(Landroid/hardware/usb/UsbDevice;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
