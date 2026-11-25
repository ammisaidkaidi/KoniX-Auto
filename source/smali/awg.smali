.class final Lawg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/bluetooth/BluetoothDevice;

.field b:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x1

    iput p1, p0, Lawg;->b:I

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lawg;->b:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "null"

    goto :goto_0

    :pswitch_0
    const-string v1, "STARTED"

    goto :goto_0

    :pswitch_1
    const-string v1, "ERROR"

    goto :goto_0

    :pswitch_2
    const-string v1, "WIFI_START_REQUEST_SENT"

    goto :goto_0

    :pswitch_3
    const-string v1, "WIFI_START_REQUESTED_BY_MD"

    goto :goto_0

    :pswitch_4
    const-string v1, "WIFI_START_REQUESTED_BY_HU"

    goto :goto_0

    :pswitch_5
    const-string v1, "VERSION_VERIFIED"

    goto :goto_0

    :pswitch_6
    const-string v1, "INVALID_VERSION"

    goto :goto_0

    :pswitch_7
    const-string v1, "WIFI_NOT_SUPPORTED"

    goto :goto_0

    :pswitch_8
    const-string v1, "VERSION_REQUESTED"

    goto :goto_0

    :pswitch_9
    const-string v1, "RFCOMM_CONNECTED"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", state: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
