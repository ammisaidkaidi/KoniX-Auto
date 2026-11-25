.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

.field final synthetic val$profile:I

.field final synthetic val$proxy:Landroid/bluetooth/BluetoothProfile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;Landroid/bluetooth/BluetoothProfile;I)V
    .locals 0

    .line 1484
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$proxy:Landroid/bluetooth/BluetoothProfile;

    iput p3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$profile:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1488
    const-string v0, "AAReceiverCompat"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3000()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

    iget-object v2, v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;

    iget-object v2, v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2100(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1489
    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$proxy:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "disconnect"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1490
    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$proxy:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "connect"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1491
    iget-object v5, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$proxy:Landroid/bluetooth/BluetoothProfile;

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

    iget-object v7, v7, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;

    iget-object v7, v7, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$phone:Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v6, v1

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    const-wide/16 v5, 0x3b6

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1493
    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$proxy:Landroid/bluetooth/BluetoothProfile;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

    iget-object v5, v5, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;

    iget-object v5, v5, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$phone:Landroid/bluetooth/BluetoothDevice;

    aput-object v5, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reconnected HEADSET_CLIENT to trigger Wireless AA RFCOMM on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

    iget-object v3, v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;

    iget-object v3, v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$phone:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1499
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    iget v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$profile:I

    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$proxy:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1500
    :goto_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1501
    goto :goto_1

    .line 1496
    :catchall_1
    move-exception v2

    .line 1497
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT HFP nudge warning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1499
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    iget v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$profile:I

    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$proxy:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_0

    .line 1502
    :goto_1
    return-void

    .line 1499
    :catchall_3
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

    iget-object v2, v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;

    iget-object v2, v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    iget v3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$profile:I

    iget-object v4, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1$1;->val$proxy:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v2

    .line 1500
    :goto_2
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1501
    throw v0
.end method
