.class public final Lcmm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcmi;


# instance fields
.field public final a:Ljava/util/Map;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 5
    iput p2, p0, Lcmm;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcml;

    invoke-direct {p2, p0}, Lcml;-><init>(Lcmm;)V

    iput-object p2, p0, Lcmm;->c:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcmm;->a:Ljava/util/Map;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcmm;->b:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcmm;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[B)V
    .locals 1

    .line 1
    iput p2, p0, Lcmm;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcmk;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcmk;-><init>(Lcmm;[B)V

    iput-object p2, p0, Lcmm;->c:Landroid/content/BroadcastReceiver;

    .line 2
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcmm;->a:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcmm;->b:Landroid/content/Context;

    new-instance p3, Landroid/content/IntentFilter;

    .line 4
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcmm;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget v0, p0, Lcmm;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcmm;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcmm;->b:Landroid/content/Context;

    iget-object v2, p0, Lcmm;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcmm;->d:Z

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcmm;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcmm;->b:Landroid/content/Context;

    iget-object v2, p0, Lcmm;->c:Landroid/content/BroadcastReceiver;

    .line 1
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcmm;->d:Z

    :cond_0
    return-void

    .line 2
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/os/Parcelable;Lbbj;)Lcmh;
    .locals 3

    .line 1
    iget v0, p0, Lcmm;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 7
    return-object v1

    .line 1
    :pswitch_0
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcmm;->b:Landroid/content/Context;

    .line 2
    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Lcmp;

    move-object v2, p1

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 4
    invoke-direct {v1, v0, v2}, Lcmp;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    .line 5
    const-string v0, "AHU.USB_HOST_CONNECTION"

    const-string v2, "Started USB host connection"

    invoke-static {v0, v2}, Lcjz;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcmm;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2, v1}, Lbbj;->a(Lclz;)V

    sget-object v1, Lcmj;->a:Lcmh;

    .line 1
    :goto_0
    return-object v1

    .line 2
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 3
    const-string p2, "Unable to get USB manager"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
