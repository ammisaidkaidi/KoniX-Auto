.class public final Lcmo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Lcmp;


# direct methods
.method public constructor <init>(Lcmp;)V
    .locals 0

    iput-object p1, p0, Lcmo;->a:Lcmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcmo;->a:Lcmp;

    iget-boolean v1, v0, Lcmp;->c:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, v0, Lcmp;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, v0, Lcmp;->b:Landroid/hardware/usb/UsbEndpoint;

    const v7, 0x2255100

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    return p1

    .line 1
    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    .line 2
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 3
    const-string p2, "USB device is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
