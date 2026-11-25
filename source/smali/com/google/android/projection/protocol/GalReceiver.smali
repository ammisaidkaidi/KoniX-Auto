.class public Lcom/google/android/projection/protocol/GalReceiver;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/projection/protocol/ControllerCallbacks;
.implements Lclw;


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field public final c:Landroid/util/SparseArray;

.field public final d:Lclv;

.field public volatile e:Z

.field public final f:Lbbh;

.field private final g:Lclp;

.field private final h:Landroid/os/Handler;

.field private final i:Lbbh;

.field private final j:Lclo;

.field private final k:Lbbh;

.field private mNativeGalReceiver:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lckh;->a:Lckh;

    iget v0, v0, Lckh;->c:I

    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    sget-object v0, Lckh;->b:Lckh;

    iget v0, v0, Lckh;->c:I

    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->b:I

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2
    const-string v1, "robolectric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/achour/tweaks/NativeLib;->load()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lbbh;Lclp;Lbbh;Lbbh;Landroid/os/Handler;Lcom/google/android/projection/protocol/GalReceiver$CarInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Landroid/util/SparseArray;

    invoke-direct {p10}, Landroid/util/SparseArray;-><init>()V

    iput-object p10, p0, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    new-instance p10, Lclo;

    invoke-direct {p10, p0}, Lclo;-><init>(Lcom/google/android/projection/protocol/GalReceiver;)V

    iput-object p10, p0, Lcom/google/android/projection/protocol/GalReceiver;->j:Lclo;

    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver;->f:Lbbh;

    iput-object p2, p0, Lcom/google/android/projection/protocol/GalReceiver;->g:Lclp;

    iput-object p3, p0, Lcom/google/android/projection/protocol/GalReceiver;->k:Lbbh;

    iput-object p4, p0, Lcom/google/android/projection/protocol/GalReceiver;->i:Lbbh;

    iput-object p5, p0, Lcom/google/android/projection/protocol/GalReceiver;->h:Landroid/os/Handler;

    new-instance p1, Lclv;

    .line 2
    invoke-direct {p1, p5, p10}, Lclv;-><init>(Landroid/os/Handler;Lclo;)V

    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver;->d:Lclv;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeInit()V

    .line 4
    invoke-direct {p0, p7, p8, p9}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCreds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0, p6}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCarInfo(Lcom/google/android/projection/protocol/GalReceiver$CarInfo;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 5
    const-string p2, "SSL initialization failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeInit()V
.end method

.method private native nativeSetCarInfo(Lcom/google/android/projection/protocol/GalReceiver$CarInfo;)V
.end method

.method private native nativeSetCreds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method


# virtual methods
.method public final a()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final audioFocusRequestCallback(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->g:Lclp;

    invoke-interface {v0, p1}, Lclp;->h(I)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final batteryStatusNotificationCallback(IIZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->f:Lbbh;

    if-eqz p3, :cond_1

    sget-object p3, Lbbl;->a:Lcsz;

    invoke-virtual {p3}, Lcsv;->c()Lctq;

    move-result-object p3

    const/16 v1, 0xe2

    const-string v2, "com/google/android/apps/auto/aareceiver/session/ProjectionSession$1"

    const-string v3, "onBatteryStatusNotification"

    const-string v4, "ProjectionSession.java"

    invoke-interface {p3, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p3

    check-cast p3, Lcsx;

    const-string v1, "Battery critical! %d seconds remaining."

    invoke-interface {p3, v1, p2}, Lcsx;->o(Ljava/lang/String;I)V

    iget-object p3, v0, Lbbh;->a:Lbbl;

    .line 2
    invoke-virtual {p3}, Lbbl;->e()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, v0, Lbbh;->a:Lbbl;

    iget-object p3, p3, Lbbl;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, v0, Lbbh;->a:Lbbl;

    iget-object p3, p3, Lbbl;->i:Landroid/os/Handler;

    new-instance v1, Lbbg;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, p1, v2}, Lbbg;-><init>(Lbbh;II[B)V

    .line 5
    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, v0, Lbbh;->a:Lbbl;

    iget-object p1, p1, Lbbl;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public final bugreportRequestCallback(J)V
    .locals 0

    return-void
.end method

.method public final byeByeRequestCallback(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->i:Lbbh;

    iget-object v1, v0, Lbbh;->a:Lbbl;

    iget-object v1, v1, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-virtual {v1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSendByeByeResponse()V

    iget-object v1, v0, Lbbh;->a:Lbbl;

    iget-object v1, v1, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    .line 2
    sget-object v2, Lcly;->b:Lcly;

    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/GalReceiver;->c(Lcly;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, v0, Lbbh;->a:Lbbl;

    iget-object p1, p1, Lbbl;->g:Lawp;

    .line 3
    sget-object v1, Lawp;->a:Lawp;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lbbh;->a:Lbbl;

    iget-object v0, p1, Lbbl;->d:Lbah;

    iget-object p1, p1, Lbbl;->h:Lawo;

    .line 4
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbah;->l(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p1, v0, Lbbh;->a:Lbbl;

    iget-object p1, p1, Lbbl;->g:Lawp;

    .line 5
    sget-object v1, Lawp;->a:Lawp;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lbbh;->a:Lbbl;

    iget-object v0, p1, Lbbl;->d:Lbah;

    iget-object p1, p1, Lbbl;->h:Lawo;

    .line 6
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbah;->h(Ljava/lang/String;)Lbaf;

    move-result-object p1

    sget-object v1, Lawp;->a:Lawp;

    invoke-virtual {v0, p1, v1}, Lbah;->s(Lbaf;Lawp;)V

    iget-object v0, v0, Lbah;->d:Lbby;

    iget-object p1, p1, Lbaf;->g:Lawo;

    .line 7
    invoke-interface {v0, p1}, Lbby;->l(Lawo;)V

    return-void

    :pswitch_3
    iget-object p1, v0, Lbbh;->a:Lbbl;

    iget-object p1, p1, Lbbl;->g:Lawp;

    .line 8
    sget-object v1, Lawp;->a:Lawp;

    if-eq p1, v1, :cond_0

    invoke-static {}, Ldih;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, v0, Lbbh;->a:Lbbl;

    iget-object p1, p1, Lbbl;->d:Lbah;

    iget-object v0, p1, Lbah;->h:Lbbl;

    iget-object v0, v0, Lbbl;->h:Lawo;

    .line 9
    invoke-static {}, Ldkd;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Lbah;->p(Lawo;)V

    return-void

    .line 2
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final byeByeResponseCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->i:Lbbh;

    iget-object v1, v0, Lbbh;->a:Lbbl;

    iget v1, v1, Lbbl;->H:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcly;->d:Lcly;

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcly;->c:Lcly;

    .line 1
    :goto_0
    iget-object v0, v0, Lbbh;->a:Lbbl;

    iget-object v0, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/GalReceiver;->c(Lcly;)V

    return-void
.end method

.method public final c(Lcly;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->d:Lclv;

    invoke-virtual {v0, p1}, Lclv;->c(Lcly;)Z

    return-void
.end method

.method public final carConnectedDevicesRequestCallback()V
    .locals 2

    .line 1
    const-string v0, "AHU.GAL_RECEIVER"

    const-string v1, "carConnectedDevicesRequestCallback: user switch is not support, ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d(ILclk;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mNativeGalReceiver:J

    .line 5
    invoke-interface {p2, p1, v0, v1}, Lclk;->c(IJ)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    .line 6
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Service "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed to init."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AHU.GAL_RECEIVER"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    const-string p2, "this service ID is already taken"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "can\'t register services after teardown"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final highLatencyCallback([I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver;->h:Landroid/os/Handler;

    new-instance v0, Lcln;

    invoke-direct {v0, p0}, Lcln;-><init>(Lcom/google/android/projection/protocol/GalReceiver;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final latencyBackToNormalCallback([I)V
    .locals 0

    return-void
.end method

.method public native nativeFlushControllerChannelQueue()V
.end method

.method public native nativeGetAdditionalBytesToRead([B)I
.end method

.method public native nativeGetEncodedFrame([B)I
.end method

.method public native nativePrepareShutdown()V
.end method

.method public native nativeQueueIncoming([BI)I
.end method

.method public native nativeRegister(J)Z
.end method

.method public native nativeSendByeByeRequest(I)V
.end method

.method public native nativeSendByeByeResponse()V
.end method

.method public native nativeSetAudioFocus(IZ)V
.end method

.method public native nativeSetCallAvailability(Z)V
.end method

.method public native nativeSetNavFocus(I)V
.end method

.method public native nativeSetTransportConfigurationListener(Lcom/google/android/projection/protocol/ConnectionConfigurationCallbacks;)Z
.end method

.method public native nativeShutdown()V
.end method

.method public native nativeStart()V
.end method

.method public final navigationFocusCallback(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->f:Lbbh;

    iget-object v0, v0, Lbbh;->a:Lbbl;

    iget-object v0, v0, Lbbl;->u:Laxc;

    invoke-virtual {v0, p1}, Laxc;->b(I)V

    return-void
.end method

.method public final serviceDiscoveryRequestCallback([B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver;->k:Lbbh;

    invoke-virtual {p1, p2, p4}, Lbbh;->a([BLjava/lang/String;)V

    return-void
.end method

.method public final unrecoverableErrorCallback(I)V
    .locals 6

    .line 1
    const/16 v0, -0x19

    if-ne p1, v0, :cond_0

    sget-object p1, Lcly;->e:Lcly;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->c(Lcly;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->f:Lbbh;

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    const/16 p1, 0x101

    goto/16 :goto_0

    :sswitch_1
    const/16 p1, 0x100

    goto/16 :goto_0

    :sswitch_2
    const/16 p1, 0xff

    goto/16 :goto_0

    :sswitch_3
    const/16 p1, 0xfe

    goto/16 :goto_0

    :sswitch_4
    const/16 p1, 0xfd

    goto/16 :goto_0

    :sswitch_5
    const/16 p1, 0xfc

    goto :goto_0

    :sswitch_6
    const/16 p1, 0xfb

    goto :goto_0

    :sswitch_7
    const/16 p1, 0xfa

    goto :goto_0

    :sswitch_8
    const/16 p1, 0xf9

    goto :goto_0

    :sswitch_9
    const/16 p1, 0xf8

    goto :goto_0

    :sswitch_a
    const/16 p1, 0xf7

    goto :goto_0

    :sswitch_b
    const/16 p1, 0xf6

    goto :goto_0

    :sswitch_c
    const/16 p1, 0xf5

    goto :goto_0

    :sswitch_d
    const/16 p1, 0xf4

    goto :goto_0

    :sswitch_e
    const/16 p1, 0xf3

    goto :goto_0

    :sswitch_f
    const/16 p1, 0xf2

    goto :goto_0

    :sswitch_10
    const/16 p1, 0xf1

    goto :goto_0

    :sswitch_11
    const/16 p1, 0xf0

    goto :goto_0

    :sswitch_12
    const/16 p1, 0xef

    goto :goto_0

    :sswitch_13
    const/16 p1, 0xee

    goto :goto_0

    :sswitch_14
    const/16 p1, 0xed

    goto :goto_0

    :sswitch_15
    const/16 p1, 0xec

    goto :goto_0

    :sswitch_16
    const/16 p1, 0xeb

    goto :goto_0

    :sswitch_17
    const/16 p1, 0xea

    goto :goto_0

    :sswitch_18
    const/16 p1, 0xe9

    goto :goto_0

    :sswitch_19
    const/16 p1, 0xe8

    goto :goto_0

    :sswitch_1a
    const/16 p1, 0xe7

    goto :goto_0

    :sswitch_1b
    const/4 p1, 0x6

    goto :goto_0

    :sswitch_1c
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_1d
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_1e
    const/4 p1, 0x2

    goto :goto_0

    .line 2
    :sswitch_1f
    const/4 p1, 0x1

    .line 1
    :goto_0
    sget-object v1, Lbbl;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    const/16 v2, 0x10b

    .line 2
    const-string v3, "com/google/android/apps/auto/aareceiver/session/ProjectionSession$1"

    const-string v4, "onUnrecoverableError"

    const-string v5, "ProjectionSession.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    sparse-switch p1, :sswitch_data_1

    const-string v2, "null"

    goto/16 :goto_1

    .line 3
    :sswitch_20
    const-string v2, "STATUS_UNSOLICITED_MESSAGE"

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "STATUS_SUCCESS"

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "STATUS_NO_COMPATIBLE_VERSION"

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "STATUS_CERTIFICATE_ERROR"

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "STATUS_AUTHENTICATION_FAILURE"

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "STATUS_INVALID_SERVICE"

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "STATUS_INVALID_CHANNEL"

    goto :goto_1

    :sswitch_27
    const-string v2, "STATUS_INVALID_PRIORITY"

    goto :goto_1

    :sswitch_28
    const-string v2, "STATUS_INTERNAL_ERROR"

    goto :goto_1

    :sswitch_29
    const-string v2, "STATUS_MEDIA_CONFIG_MISMATCH"

    goto :goto_1

    :sswitch_2a
    const-string v2, "STATUS_INVALID_SENSOR"

    goto :goto_1

    :sswitch_2b
    const-string v2, "STATUS_BLUETOOTH_PAIRING_DELAYED"

    goto :goto_1

    :sswitch_2c
    const-string v2, "STATUS_BLUETOOTH_UNAVAILABLE"

    goto :goto_1

    :sswitch_2d
    const-string v2, "STATUS_BLUETOOTH_INVALID_ADDRESS"

    goto :goto_1

    :sswitch_2e
    const-string v2, "STATUS_BLUETOOTH_INVALID_PAIRING_METHOD"

    goto :goto_1

    :sswitch_2f
    const-string v2, "STATUS_BLUETOOTH_INVALID_AUTH_DATA"

    goto :goto_1

    :sswitch_30
    const-string v2, "STATUS_BLUETOOTH_AUTH_DATA_MISMATCH"

    goto :goto_1

    :sswitch_31
    const-string v2, "STATUS_BLUETOOTH_HFP_ANOTHER_CONNECTION"

    goto :goto_1

    :sswitch_32
    const-string v2, "STATUS_BLUETOOTH_HFP_CONNECTION_FAILURE"

    goto :goto_1

    :sswitch_33
    const-string v2, "STATUS_KEYCODE_NOT_BOUND"

    goto :goto_1

    :sswitch_34
    const-string v2, "STATUS_RADIO_INVALID_STATION"

    goto :goto_1

    :sswitch_35
    const-string v2, "STATUS_INVALID_INPUT"

    goto :goto_1

    :sswitch_36
    const-string v2, "STATUS_RADIO_STATION_PRESETS_NOT_SUPPORTED"

    goto :goto_1

    :sswitch_37
    const-string v2, "STATUS_RADIO_COMM_ERROR"

    goto :goto_1

    :sswitch_38
    const-string v2, "STATUS_AUTHENTICATION_FAILURE_CERT_NOT_YET_VALID"

    goto :goto_1

    :sswitch_39
    const-string v2, "STATUS_AUTHENTICATION_FAILURE_CERT_EXPIRED"

    goto :goto_1

    :sswitch_3a
    const-string v2, "STATUS_PING_TIMEOUT"

    goto :goto_1

    :sswitch_3b
    const-string v2, "STATUS_COMMAND_NOT_SUPPORTED"

    goto :goto_1

    :sswitch_3c
    const-string v2, "STATUS_FRAMING_ERROR"

    goto :goto_1

    :sswitch_3d
    const-string v2, "STATUS_UNEXPECTED_MESSAGE"

    goto :goto_1

    :sswitch_3e
    const-string v2, "STATUS_BUSY"

    goto :goto_1

    :sswitch_3f
    const-string v2, "STATUS_OUT_OF_MEMORY"

    .line 2
    :goto_1
    if-eqz p1, :cond_1

    const-string v3, "Received unrecoverable error %s. Shutting down."

    invoke-interface {v1, v3, v2}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lbbh;->a:Lbbl;

    iget-object v1, v1, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    .line 3
    sget-object v2, Lcly;->h:Lcly;

    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/GalReceiver;->c(Lcly;)V

    iget-object v0, v0, Lbbh;->a:Lbbl;

    iput p1, v0, Lbbl;->G:I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 2
    throw p1

    :sswitch_data_0
    .sparse-switch
        -0xff -> :sswitch_1f
        -0xfe -> :sswitch_1e
        -0xfd -> :sswitch_1d
        -0xfb -> :sswitch_1c
        -0xfa -> :sswitch_1b
        -0x19 -> :sswitch_1a
        -0x18 -> :sswitch_19
        -0x17 -> :sswitch_18
        -0x16 -> :sswitch_17
        -0x15 -> :sswitch_16
        -0x14 -> :sswitch_15
        -0x13 -> :sswitch_14
        -0x12 -> :sswitch_13
        -0x11 -> :sswitch_12
        -0x10 -> :sswitch_11
        -0xf -> :sswitch_10
        -0xe -> :sswitch_f
        -0xd -> :sswitch_e
        -0xc -> :sswitch_d
        -0xb -> :sswitch_c
        -0xa -> :sswitch_b
        -0x9 -> :sswitch_a
        -0x8 -> :sswitch_9
        -0x7 -> :sswitch_8
        -0x6 -> :sswitch_7
        -0x5 -> :sswitch_6
        -0x4 -> :sswitch_5
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_3d
        0x5 -> :sswitch_3c
        0x6 -> :sswitch_3b
        0xe7 -> :sswitch_3a
        0xe8 -> :sswitch_39
        0xe9 -> :sswitch_38
        0xea -> :sswitch_37
        0xeb -> :sswitch_36
        0xec -> :sswitch_35
        0xed -> :sswitch_34
        0xee -> :sswitch_33
        0xef -> :sswitch_32
        0xf0 -> :sswitch_31
        0xf1 -> :sswitch_30
        0xf2 -> :sswitch_2f
        0xf3 -> :sswitch_2e
        0xf4 -> :sswitch_2d
        0xf5 -> :sswitch_2c
        0xf6 -> :sswitch_2b
        0xf7 -> :sswitch_2a
        0xf8 -> :sswitch_29
        0xf9 -> :sswitch_28
        0xfa -> :sswitch_27
        0xfb -> :sswitch_26
        0xfc -> :sswitch_25
        0xfd -> :sswitch_24
        0xfe -> :sswitch_23
        0xff -> :sswitch_22
        0x100 -> :sswitch_21
        0x101 -> :sswitch_20
    .end sparse-switch
.end method

.method public final userSwitchRequestCallback(Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;)V
    .locals 1

    .line 1
    const-string p1, "AHU.GAL_RECEIVER"

    const-string v0, "userSwitchRequestCallback: user switch is not support, ignored."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final voiceSessionNotificationCallback(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->f:Lbbh;

    iget-object v1, v0, Lbbh;->a:Lbbl;

    iget-object v1, v1, Lbbl;->t:Laxf;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Laxf;->b:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    sget-object v2, Laxf;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->c()Lctq;

    move-result-object v2

    const-string v5, "com/google/android/apps/auto/aareceiver/context/VoiceSessionAppFocusManager"

    const-string v6, "onVoiceSessionNotification"

    const/16 v7, 0x46

    const-string v8, "VoiceSessionAppFocusManager.java"

    .line 5
    invoke-interface {v2, v5, v6, v7, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const-string v5, "onVoiceSessionNotification called on uninitialized object"

    invoke-interface {v2, v5}, Lcsx;->n(Ljava/lang/String;)V

    .line 6
    monitor-exit v1

    goto :goto_1

    .line 8
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v4, :cond_1

    iget-boolean v5, v1, Laxf;->c:Z

    if-nez v5, :cond_2

    iget-object v5, v1, Laxf;->d:Landroid/car/CarAppFocusManager;

    iget-object v6, v1, Laxf;->e:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    .line 3
    invoke-virtual {v5, v2, v6}, Landroid/car/CarAppFocusManager;->requestAppFocus(ILandroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;)I

    iput-boolean v4, v1, Laxf;->c:Z

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v5, v1, Laxf;->c:Z

    if-eqz v5, :cond_2

    iget-object v5, v1, Laxf;->d:Landroid/car/CarAppFocusManager;

    iget-object v6, v1, Laxf;->e:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    .line 2
    invoke-virtual {v5, v6, v2}, Landroid/car/CarAppFocusManager;->abandonAppFocus(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;I)V

    iput-boolean v3, v1, Laxf;->c:Z

    .line 4
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_1
    iget-object v1, v0, Lbbh;->a:Lbbl;

    iget-object v1, v1, Lbbl;->v:Laxl;

    .line 7
    invoke-virtual {v1, p1}, Laxl;->d(I)V

    iget-object v1, v0, Lbbh;->a:Lbbl;

    iget-object v1, v1, Lbbl;->x:Latu;

    .line 8
    invoke-interface {v1, p1}, Latu;->c(I)V

    iget-object v0, v0, Lbbh;->a:Lbbl;

    if-ne p1, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, v0, Lbbl;->C:Z

    return-void

    .line 2
    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
