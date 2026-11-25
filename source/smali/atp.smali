.class public final Latp;
.super Latq;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field final b:Landroid/os/HandlerThread;

.field public final c:Ljava/util/concurrent/Semaphore;

.field public final d:Landroid/os/ConditionVariable;

.field public final e:Landroid/media/MediaFormat;

.field public f:Landroid/media/MediaCodec;

.field public g:Z

.field public final h:Ljava/util/Queue;

.field private final k:Ljava/lang/String;

.field private l:Landroid/os/Handler;

.field private final m:Landroid/media/MediaCodec$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/audio/AacDecoder"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Latp;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Laue;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Latq;-><init>(ILaue;)V

    .line 2
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Latp;->c:Ljava/util/concurrent/Semaphore;

    .line 3
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Latp;->d:Landroid/os/ConditionVariable;

    iput-boolean v2, p0, Latp;->g:Z

    new-instance v1, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Latp;->h:Ljava/util/Queue;

    .line 5
    new-instance v1, Lato;

    invoke-direct {v1, p0}, Lato;-><init>(Latp;)V

    iput-object v1, p0, Latp;->m:Landroid/media/MediaCodec$Callback;

    iget-object v1, p1, Laue;->b:Lauc;

    .line 6
    invoke-virtual {v1}, Lauc;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Latp;->k:Ljava/lang/String;

    new-instance v2, Landroid/os/HandlerThread;

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "AacDecoder-"

    if-eqz v3, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 7
    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 v3, -0x11

    invoke-direct {v2, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Latp;->b:Landroid/os/HandlerThread;

    iget-object p1, p1, Laue;->c:Landroid/media/AudioFormat;

    .line 8
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result p1

    .line 9
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v1, p1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Latp;->e:Landroid/media/MediaFormat;

    .line 10
    const-string v1, "profile"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private final j()Z
    .locals 8

    .line 1
    iget-object v0, p0, Latp;->c:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    add-long/2addr v6, v1

    :goto_0
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v5, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Latp;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const/16 v2, 0x152

    .line 7
    const-string v3, "com/google/android/apps/auto/aareceiver/audio/AacDecoder"

    const-string v4, "tryAcquireInputBufferSemaphoreWithTimeout"

    const-string v5, "AacDecoder.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    iget-boolean v2, p0, Latp;->g:Z

    iget-object v3, p0, Latp;->b:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {v3}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v3

    .line 7
    invoke-interface {v1, v2, v3}, Lcsx;->C(ZZ)V

    :cond_1
    return v0

    .line 4
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-long v1, v6, v1

    const/4 v4, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v4, 0x1

    goto :goto_1

    .line 7
    :catchall_2
    move-exception v0

    :goto_1
    if-eqz v4, :cond_2

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6
    :cond_2
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Latp;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    iget-object v0, p0, Latp;->h:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final b([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Latp;->l:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final c([BJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Latp;->j()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Latp;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 p2, 0x8d

    .line 2
    const-string p3, "com/google/android/apps/auto/aareceiver/audio/AacDecoder"

    const-string v0, "decodeAudio"

    const-string v1, "AacDecoder.java"

    invoke-interface {p1, p3, v0, p2, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Dropping audio frame"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Latp;->l:Landroid/os/Handler;

    .line 3
    invoke-static {v0, p2, p3, p1}, Laul;->f(Landroid/os/Handler;JLjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Latp;->a()V

    iget-object v0, p0, Latp;->f:Landroid/media/MediaCodec;

    iget-object v1, p0, Latp;->m:Landroid/media/MediaCodec$Callback;

    iget-object v2, p0, Latp;->l:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iget-object v0, p0, Latp;->f:Landroid/media/MediaCodec;

    iget-object v1, p0, Latp;->e:Landroid/media/MediaFormat;

    .line 3
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Latp;->f:Landroid/media/MediaCodec;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Latp;->g:Z

    iget-object v0, p0, Latq;->i:Laue;

    .line 5
    invoke-virtual {v0}, Laue;->d()V

    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Latp;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Latp;->g:Z

    .line 2
    invoke-virtual {p0}, Latp;->a()V

    iget-object v0, p0, Latq;->i:Laue;

    .line 3
    invoke-virtual {v0, p1}, Laue;->e(Z)V

    iget-object p1, p0, Latp;->d:Landroid/os/ConditionVariable;

    .line 4
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Latp;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Latp;->b:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Latn;

    invoke-direct {v2, p0}, Latn;-><init>(Latp;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Latp;->l:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Latp;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Latp;->l:Landroid/os/Handler;

    .line 2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final h(Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    invoke-direct {p0}, Latp;->j()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Latp;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 v0, 0x99

    .line 2
    const-string v1, "com/google/android/apps/auto/aareceiver/audio/AacDecoder"

    const-string v2, "stop"

    const-string v3, "AacDecoder.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Force audio flushing"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    iget-object v0, p0, Latp;->d:Landroid/os/ConditionVariable;

    .line 3
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget-object v0, p0, Latp;->l:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Latp;->l:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Latp;->b:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Latp;->b:Landroid/os/HandlerThread;

    .line 3
    invoke-static {v0}, Lhi;->k(Ljava/lang/Thread;)V

    return-void
.end method
