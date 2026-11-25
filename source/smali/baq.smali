.class public final Lbaq;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/auto/aareceiver/service/PersistentService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/aareceiver/service/PersistentService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbaq;->a:Lcom/google/android/apps/auto/aareceiver/service/PersistentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lbaq;->a:Lcom/google/android/apps/auto/aareceiver/service/PersistentService;

    iget-object p1, p1, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->e:Lbah;

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p1, Lbah;->d:Lbby;

    .line 3
    invoke-interface {v0, p2}, Lbby;->b(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Lawj;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Lbah;->f:Lbav;

    .line 5
    invoke-virtual {v1, v0}, Lbav;->b(Lawo;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaf;

    if-nez v1, :cond_1

    iget-object p1, p1, Lbah;->d:Lbby;

    .line 6
    invoke-interface {p1, v0, p2}, Lbby;->j(Lawo;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p1, Lbah;->d:Lbby;

    iget-object v1, v1, Lbaf;->g:Lawo;

    .line 7
    invoke-interface {v0, v1, p2}, Lbby;->j(Lawo;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lbah;->t()V

    return-void

    .line 3
    :cond_2
    :goto_0
    return-void
.end method
