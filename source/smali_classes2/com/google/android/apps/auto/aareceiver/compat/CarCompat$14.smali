.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->handleAttachedUsbDevice(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dev:Landroid/hardware/usb/UsbDevice;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$dev:Landroid/hardware/usb/UsbDevice;

    iput-object p3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1581
    const-string v0, "Android Auto"

    const-string v1, "AAReceiverCompat"

    .line 1583
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$ctx:Landroid/content/Context;

    const-class v4, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1584
    if-nez v3, :cond_0

    .line 1603
    nop

    .line 1606
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3400()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1584
    return-void

    .line 1585
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$dev:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1586
    if-nez v2, :cond_2

    .line 1603
    if-eqz v2, :cond_1

    .line 1604
    :try_start_2
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1606
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3400()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1586
    return-void

    .line 1587
    :cond_2
    const/4 v3, 0x2

    :try_start_3
    new-array v4, v3, [B

    .line 1588
    const/16 v6, 0xc0

    const/16 v7, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x1f4

    move-object v5, v2

    move-object v10, v4

    invoke-virtual/range {v5 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1589
    if-eq v5, v3, :cond_4

    .line 1603
    if-eqz v2, :cond_3

    .line 1604
    :try_start_4
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 1606
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3400()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1589
    return-void

    .line 1590
    :cond_4
    const/4 v5, 0x0

    :try_start_5
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x1

    aget-byte v4, v4, v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v6

    .line 1591
    if-ge v4, v7, :cond_6

    .line 1603
    if-eqz v2, :cond_5

    .line 1604
    :try_start_6
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 1606
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3400()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1591
    return-void

    .line 1592
    :cond_6
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB device "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$dev:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " supports AOAP v"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " -> switching to Android Auto AOAP!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    const-string v4, "Android"

    invoke-static {v2, v5, v4}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3300(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    .line 1594
    invoke-static {v2, v7, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3300(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    .line 1595
    invoke-static {v2, v3, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3300(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    .line 1596
    const-string v0, "1"

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3300(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    .line 1597
    const-string v0, "http://www.android.com/auto/"

    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3300(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    .line 1598
    const-string v0, "12345678"

    const/4 v3, 0x5

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3300(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    .line 1599
    const/16 v6, 0x40

    const/16 v7, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f4

    move-object v5, v2

    invoke-virtual/range {v5 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1603
    if-eqz v2, :cond_7

    .line 1604
    :try_start_8
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 1600
    :catchall_4
    move-exception v0

    .line 1601
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AOAP probe/switch skipped for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1603
    if-eqz v2, :cond_7

    .line 1604
    :try_start_a
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    .line 1606
    :cond_7
    :goto_3
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3400()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1607
    nop

    .line 1608
    return-void

    .line 1603
    :catchall_6
    move-exception v0

    if-eqz v2, :cond_8

    .line 1604
    :try_start_b
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v1

    .line 1606
    :cond_8
    :goto_4
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$3400()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;->val$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1607
    throw v0
.end method
