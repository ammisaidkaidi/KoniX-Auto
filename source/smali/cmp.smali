.class public final Lcmp;
.super Lclz;
.source "PG"


# instance fields
.field public final a:Landroid/hardware/usb/UsbDeviceConnection;

.field public final b:Landroid/hardware/usb/UsbEndpoint;

.field public c:Z

.field private final d:Landroid/hardware/usb/UsbInterface;

.field private final e:Landroid/hardware/usb/UsbEndpoint;

.field private final f:Lcjx;

.field private final g:Lcmo;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lclz;-><init>()V

    new-instance v0, Lcmo;

    invoke-direct {v0, p0}, Lcmo;-><init>(Lcmp;)V

    iput-object v0, p0, Lcmp;->g:Lcmo;

    new-instance v1, Lcjx;

    invoke-direct {v1, v0}, Lcjx;-><init>(Lcmo;)V

    iput-object v1, p0, Lcmp;->f:Lcjx;

    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    iput-object p1, p0, Lcmp;->a:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p1, :cond_7

    .line 2
    nop

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p2

    iput-object p2, p0, Lcmp;->d:Landroid/hardware/usb/UsbInterface;

    if-eqz p2, :cond_6

    .line 4
    nop

    .line 5
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    move-object p2, p1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcmp;->d:Landroid/hardware/usb/UsbInterface;

    .line 6
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcmp;->d:Landroid/hardware/usb/UsbInterface;

    .line 7
    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 9
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    const-string v4, "Found bulk IN endpoint at %d"

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object p1, v3

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-nez v4, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v0

    const-string v4, "Found bulk OUT endpoint at %d"

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object p2, v3

    goto :goto_1

    :cond_1
    nop

    .line 10
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    if-eqz p1, :cond_4

    .line 13
    if-eqz p2, :cond_3

    .line 15
    iput-object p1, p0, Lcmp;->b:Landroid/hardware/usb/UsbEndpoint;

    iput-object p2, p0, Lcmp;->e:Landroid/hardware/usb/UsbEndpoint;

    iput-boolean v1, p0, Lcmp;->c:Z

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 14
    const-string p2, "Could not find USB bulk out endpoint"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 13
    const-string p2, "Could not find USB bulk in endpoint"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 15
    const-string p2, "interface could not be claimed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 4
    const-string p2, "interface not available"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 2
    const-string p2, "connection failed to open"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final a([BII)I
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcmp;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcmp;->f:Lcjx;

    iget v1, v0, Lcjx;->b:I

    iget v2, v0, Lcjx;->c:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_1

    iget-object v3, v0, Lcjx;->a:[B

    .line 2
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3
    invoke-static {v3, v2, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lt v1, p3, :cond_0

    iget p1, v0, Lcjx;->c:I

    add-int/2addr p1, p3

    iput p1, v0, Lcjx;->c:I

    goto :goto_3

    :cond_0
    sub-int v2, p3, v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 13
    :cond_1
    move v2, p3

    .line 3
    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Lcjx;->b:I

    iput v1, v0, Lcjx;->c:I

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    :goto_1
    const-string v4, "read failed "

    const/16 v5, 0x17

    const-string v6, "interrupted"

    const v7, 0x8000

    if-gt v2, v7, :cond_6

    :goto_2
    iget v8, v0, Lcjx;->b:I

    if-le v2, v8, :cond_5

    .line 7
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_4

    .line 9
    iget-object v8, v0, Lcjx;->d:Lcmo;

    iget-object v9, v0, Lcjx;->a:[B

    iget v10, v0, Lcjx;->b:I

    .line 8
    invoke-virtual {v8, v9, v10, v7}, Lcmo;->a([BII)I

    move-result v8

    if-lez v8, :cond_2

    iget v9, v0, Lcjx;->b:I

    add-int/2addr v9, v8

    iput v9, v0, Lcjx;->b:I

    goto :goto_2

    :cond_2
    if-ltz v8, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 9
    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    iget-object v3, v0, Lcjx;->a:[B

    .line 11
    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v0, Lcjx;->c:I

    add-int/2addr p1, v2

    iput p1, v0, Lcjx;->c:I

    .line 3
    :goto_3
    return p3

    .line 5
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_9

    .line 12
    iget-object v6, v0, Lcjx;->d:Lcmo;

    .line 6
    invoke-virtual {v6, p1, p2, v2}, Lcmo;->a([BII)I

    move-result v6

    if-lez v6, :cond_7

    add-int/2addr p2, v6

    sub-int/2addr v2, v6

    goto :goto_4

    :cond_7
    if-ltz v6, :cond_8

    :goto_4
    goto :goto_1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 12
    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection was closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final b(Lcly;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcmp;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcmp;->d:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 2
    sget-object v0, Lcly;->b:Lcly;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcmp;->a:Landroid/hardware/usb/UsbDeviceConnection;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "resetDevice"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lcmp;->a:Landroid/hardware/usb/UsbDeviceConnection;

    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    move-exception p1

    .line 5
    const-string v0, "AHU.USB_HOST_CONNECTION"

    const-string v2, "Unable to reset USB - restarting projection will not work"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_0
    :goto_0
    iget-object p1, p0, Lcmp;->a:Landroid/hardware/usb/UsbDeviceConnection;

    .line 6
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    iput-boolean v1, p0, Lcmp;->c:Z

    return-void
.end method

.method public final c([BI)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcmp;->c:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcmp;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcmp;->e:Landroid/hardware/usb/UsbEndpoint;

    const/4 v4, 0x0

    const v6, 0x2255100

    .line 2
    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 3
    const-string p2, "Bulk transfer failed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection was closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
