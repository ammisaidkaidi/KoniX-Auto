.class public Lcom/google/android/projection/protocol/AudioSink;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/projection/protocol/AudioSinkCallbacks;
.implements Lclk;


# instance fields
.field private final a:Lclh;

.field private mNativeAudioSink:J


# direct methods
.method public constructor <init>(Lclh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/protocol/AudioSink;->a:Lclh;

    return-void
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeSetMaxUnackedFrames(I)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/AudioSink;->mNativeAudioSink:J

    return-wide v0
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->a:Lclh;

    check-cast v0, Lauj;

    iget-object v1, v0, Lauj;->j:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lauj;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lauj;->j:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lauj;->b:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lauj;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const/16 v2, 0xd0

    .line 2
    const-string v3, "com/google/android/apps/auto/aareceiver/audio/AudioSinkManager"

    const-string v4, "onShutdown"

    const-string v5, "AudioSinkManager.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    iget-object v2, v0, Lauj;->j:Landroid/os/Handler;

    iget-object v0, v0, Lauj;->b:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    .line 2
    invoke-interface {v1, v2, v0}, Lcsx;->B(Ljava/lang/Object;Z)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/google/android/projection/protocol/AudioSink;->nativeShutdown()V

    return-void
.end method

.method public final c(IJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/AudioSink;->nativeInit(IJ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    const/16 p2, 0x18

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/projection/protocol/AudioSink;->nativeSetMaxUnackedFrames(I)V

    return p1
.end method

.method public final codecConfigCallback([B)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->a:Lclh;

    check-cast v0, Lauj;

    iget-object v0, v0, Lauj;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    return p1
.end method

.method public final dataAvailableCallback(IJ[B)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/protocol/AudioSink;->a:Lclh;

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lcxx;->a(Lj$/time/Instant;)J

    move-result-wide p2

    check-cast p1, Lauj;

    iget-object p1, p1, Lauj;->j:Landroid/os/Handler;

    .line 3
    invoke-static {p1, p2, p3, p4}, Laul;->f(Landroid/os/Handler;JLjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public native nativeAckFramesNew(I[J)V
.end method

.method public native nativeAddSupportedConfiguration(III)V
.end method

.method public native nativeSendUnderflowNotification(I)V
.end method

.method public native nativeSetAudioType(I)V
.end method

.method public native nativeSetCodecType(I)V
.end method

.method public final playbackStartCallback(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->a:Lclh;

    check-cast v0, Lauj;

    iget-object v0, v0, Lauj;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final playbackStopCallback(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->a:Lclh;

    check-cast v0, Lauj;

    iget-object v0, v0, Lauj;->j:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setupCallback(I)I
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/protocol/AudioSink;->a:Lclh;

    check-cast p1, Lauj;

    iget-object v0, p1, Lauj;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p1, Lauj;->b:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lauf;

    invoke-direct {v2, p1}, Lauf;-><init>(Lauj;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p1, Lauj;->j:Landroid/os/Handler;

    iget-object p1, p1, Lauj;->j:Landroid/os/Handler;

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x0

    return p1
.end method
