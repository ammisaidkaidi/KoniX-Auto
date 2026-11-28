.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9$1;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9;


# direct methods
.method constructor <init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1321
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2100(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2200()I

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Lx/a;->usb()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$000()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    invoke-static {v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3500(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1322
    :goto_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$000()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2300(Landroid/content/Context;Z)Z

    .line 1324
    :cond_2
    return-void
.end method
