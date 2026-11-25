.class final Lbar;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lbat;


# direct methods
.method public constructor <init>(Lbat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbar;->a:Lbat;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    .line 3
    :sswitch_0
    nop

    .line 2
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 4
    sget-object p1, Lbat;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v0, 0x65

    .line 3
    const-string v1, "com/google/android/apps/auto/aareceiver/service/PersistentServiceController$1"

    const-string v2, "onReceive"

    const-string v3, "PersistentServiceController.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unexpected action received: %s"

    invoke-interface {p1, v0, p2}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lbar;->a:Lbat;

    .line 4
    invoke-virtual {p1}, Lbat;->c()V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lbar;->a:Lbat;

    iget-object p2, p1, Lbat;->g:Landroid/hardware/usb/UsbDevice;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lbat;->f:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p2, p1}, Lbeh;->f(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Z

    iget-object p1, p0, Lbar;->a:Lbat;

    const/4 p2, 0x0

    iput-object p2, p1, Lbat;->f:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p2, p1, Lbat;->g:Landroid/hardware/usb/UsbDevice;

    :cond_1
    iget-object p1, p0, Lbar;->a:Lbat;

    iget-object p2, p1, Lbat;->d:Lcom/google/android/apps/auto/aareceiver/service/PersistentService;

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b()V

    :cond_2
    iget-boolean p2, p1, Lbat;->e:Z

    if-eqz p2, :cond_3

    iput-boolean v1, p1, Lbat;->e:Z

    iget-object p2, p1, Lbat;->c:Landroid/car/CarProjectionManager;

    iget-object p1, p1, Lbat;->b:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lbat;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->unregisterProjectionRunner(Landroid/car/CarProjectionManager;Landroid/content/Intent;)V

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2bd33ed2 -> :sswitch_1
        0x66232abd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
