.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->nudgeWirelessBluetoothReconnect(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$initialDelayMs:J

.field final synthetic val$phone:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(JLandroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 1447
    iput-wide p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$initialDelayMs:J

    iput-object p3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$phone:Landroid/bluetooth/BluetoothDevice;

    iput-object p5, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1451
    const-string v0, "AAReceiverCompat"

    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$initialDelayMs:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1452
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3000()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2100(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 1458
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking Wireless AA on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$phone:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " via SDP + A2DP poke"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1459
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$phone:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1460
    :goto_0
    nop

    .line 1462
    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$phone:Landroid/bluetooth/BluetoothDevice;

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3200()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    .line 1463
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 1464
    const-wide/16 v3, 0x4b0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1467
    if-eqz v2, :cond_1

    .line 1468
    :try_start_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_1

    .line 1465
    :catchall_2
    move-exception v3

    .line 1467
    if-eqz v2, :cond_1

    .line 1468
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1472
    :cond_1
    :goto_1
    const-wide/16 v2, 0x640

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1473
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3000()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2100(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 1480
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cycling Bluetooth HFP HandsfreeClient reconnect for Wireless AA on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$phone:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;->val$ctx:Landroid/content/Context;

    new-instance v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13$1;-><init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;)V

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1512
    goto :goto_4

    .line 1474
    :cond_3
    :goto_2
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1475
    return-void

    .line 1453
    :cond_4
    :goto_3
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1454
    return-void

    .line 1510
    :catchall_3
    move-exception v0

    .line 1511
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1513
    :goto_4
    return-void
.end method
