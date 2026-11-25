.class public Lcom/google/android/projection/protocol/VideoSink;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/projection/protocol/VideoSinkCallbacks;
.implements Lclk;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Lckx;

.field public final c:Lbzv;

.field private final d:I

.field private mNativeVideoSink:J


# direct methods
.method public constructor <init>(Lbzv;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/projection/protocol/VideoSink;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/projection/protocol/VideoSink;->c:Lbzv;

    iput p2, p0, Lcom/google/android/projection/protocol/VideoSink;->d:I

    return-void
.end method

.method private native nativeInit(IJZI)I
.end method

.method private native nativeSetMaxUnackedFrames(I)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mNativeVideoSink:J

    return-wide v0
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/VideoSink;->nativeShutdown()V

    return-void
.end method

.method public final c(IJ)Z
    .locals 6

    .line 1
    iget v5, p0, Lcom/google/android/projection/protocol/VideoSink;->d:I

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/projection/protocol/VideoSink;->nativeInit(IJZI)I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x10

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/VideoSink;->nativeSetMaxUnackedFrames(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final codecConfigCallback([B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->c:Lbzv;

    invoke-virtual {v0, p1}, Lbzv;->a([B)V

    const/4 p1, 0x0

    return p1
.end method

.method public final dataAvailableCallback(IJLjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    const-string v0, "dataAvailableCallback"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Lcma;

    invoke-direct {v0, p1, p2, p3, p4}, Lcma;-><init>(IJLjava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/google/android/projection/protocol/VideoSink;->c:Lbzv;

    .line 2
    invoke-virtual {p1, v0}, Lbzv;->b(Lcma;)V

    .line 3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public native nativeAckFrames(II)V
.end method

.method public native nativeAddSupportedConfiguration(IIIIIIIII[B)V
.end method

.method public native nativeSetCodecType(I)V
.end method

.method public native nativeSetDisplayIdAndType(II)V
.end method

.method public native nativeSetVideoFocus(IZ)V
.end method

.method public native nativeUpdateUiConfig([B)V
.end method

.method public final playbackStartCallback(I)V
    .locals 0

    return-void
.end method

.method public final playbackStopCallback(I)V
    .locals 0

    return-void
.end method

.method public final setupCallback(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/protocol/VideoSink;->c:Lbzv;

    invoke-virtual {p1}, Lbzv;->d()V

    const/4 p1, 0x0

    return p1
.end method

.method public final sourceVideoConfigCallback(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lckz;

    .line 2
    sget-object v0, Lcky;->a:Lcky;

    iget v0, p1, Lckz;->b:I

    invoke-static {v0}, Lcky;->b(I)Lcky;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcky;->a:Lcky;

    :cond_0
    invoke-virtual {v0}, Lcky;->ordinal()I

    move-result v0

    const/16 v1, 0x438

    const/16 v2, 0x780

    const/16 v3, 0x2d0

    const/16 v4, 0x500

    const/16 v5, 0x1e0

    const/16 v6, 0x320

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0x320

    goto :goto_0

    .line 3
    :pswitch_0
    const/16 v5, 0x780

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x2d0

    const/16 v5, 0x500

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x780

    const/16 v5, 0x438

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x500

    const/16 v5, 0x2d0

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x320

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->c:Lbzv;

    .line 3
    invoke-virtual {v0, v1, v5, p1}, Lbzv;->aV(IILckz;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final updateUiConfigReplyCallback([B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v0

    sget-object v1, Lckx;->f:Lckx;

    .line 2
    invoke-static {v1, p1, v0}, Lddk;->r(Lddk;[BLdcz;)Lddk;

    move-result-object p1

    check-cast p1, Lckx;

    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/VideoSink;->b:Lckx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    move-exception p1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/projection/protocol/VideoSink;->b:Lckx;

    .line 3
    const-string p1, "AHU.VIDEO"

    const-string v0, "Failed to decode uiConfig!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/RuntimeException;

    .line 4
    const-string v0, "Failed to decode uiConfig"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final videoFocusCallback(II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/projection/protocol/VideoSink;->c:Lbzv;

    invoke-virtual {p2, p1}, Lbzv;->f(I)V

    return-void
.end method
