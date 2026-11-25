.class public Lcom/google/android/apps/auto/aareceiver/audio/AudioSinkManager$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzj;


# instance fields
.field final synthetic a:Lauj;


# direct methods
.method public constructor <init>(Lauj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/audio/AudioSinkManager$1;->a:Lauj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/audio/AudioSinkManager$1;->a:Lauj;

    iget-object v1, v0, Lauj;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/Stream;->findAny()Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latq;

    iget-object v1, v1, Latq;->i:Laue;

    iget-object v1, v1, Laue;->c:Landroid/media/AudioFormat;

    iget-object v2, v0, Lauj;->f:Lcom/google/android/projection/protocol/AudioSink;

    .line 2
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v1

    .line 3
    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/projection/protocol/AudioSink;->nativeAddSupportedConfiguration(III)V

    iget-object v1, v0, Lauj;->f:Lcom/google/android/projection/protocol/AudioSink;

    iget v2, v0, Lauj;->p:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/AudioSink;->nativeSetCodecType(I)V

    iget-object v1, v0, Lauj;->f:Lcom/google/android/projection/protocol/AudioSink;

    iget v0, v0, Lauj;->o:I

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/AudioSink;->nativeSetAudioType(I)V

    return-void

    .line 6
    :cond_0
    throw v3

    :cond_1
    nop

    .line 4
    throw v3
.end method

.method public final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/audio/AudioSinkManager$1;->a:Lauj;

    iget-object v1, v0, Lauj;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v1, v0, Lauj;->b:Landroid/os/HandlerThread;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x1

    .line 3
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    add-long/2addr v7, v2

    :goto_0
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->timedJoin(Ljava/lang/Thread;J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 9
    :cond_0
    invoke-virtual {v0}, Lauj;->a()V

    return-void

    .line 6
    :catchall_0
    move-exception v0

    move v5, v6

    goto :goto_1

    .line 8
    :catch_0
    move-exception v2

    .line 6
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-long v2, v7, v2

    const/4 v6, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 9
    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 8
    :cond_1
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method
