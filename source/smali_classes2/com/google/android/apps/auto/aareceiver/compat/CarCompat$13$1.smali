.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;


# direct methods
.method constructor <init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;)V
    .locals 0

    .line 1481
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 1484
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;-><init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;Landroid/bluetooth/BluetoothProfile;I)V

    const-string p1, "bt-hfp-cycle"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1504
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 1507
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1508
    return-void
.end method
