.class final Lcmk;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lcmm;


# direct methods
.method public constructor <init>(Lcmm;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcmk;->a:Lcmm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    const-string p1, "accessory"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcmk;->a:Lcmm;

    iget-object p2, p2, Lcmm;->a:Ljava/util/Map;

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbbj;

    if-eqz p1, :cond_2

    .line 4
    const-string p2, "AHU.USB_ACC_CONNECTION"

    const-string v0, "Disconnected, finishing"

    invoke-static {p2, v0}, Lcjz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lbbj;->b()V

    :cond_2
    return-void
.end method
