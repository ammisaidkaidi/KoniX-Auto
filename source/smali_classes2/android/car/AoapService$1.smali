.class Landroid/car/AoapService$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Landroid/car/AoapService;Landroid/os/Looper;)V
    .locals 0

    .line 39
    iput-object p1, p0, Landroid/car/AoapService$1;->this$0:Landroid/car/AoapService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_5

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    goto :goto_2

    .line 44
    :cond_0
    const-class v1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 45
    const-string v1, "usb-device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 48
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 49
    nop

    .line 50
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/car/AoapService$1;->this$0:Landroid/car/AoapService;

    invoke-virtual {v1, v0}, Landroid/car/AoapService;->isDeviceSupported(Landroid/hardware/usb/UsbDevice;)I

    move-result v2

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 51
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 52
    nop

    .line 53
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/car/AoapService$1;->this$0:Landroid/car/AoapService;

    invoke-virtual {v1, v0}, Landroid/car/AoapService;->canSwitchToAoap(Landroid/hardware/usb/UsbDevice;)I

    move-result v2

    :cond_3
    const/4 v0, 0x4

    .line 57
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 62
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    const-string v0, "AoapService"

    const-string v1, "Reply failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_1
    return-void

    .line 55
    :cond_4
    return-void

    .line 43
    :cond_5
    :goto_2
    return-void
.end method
