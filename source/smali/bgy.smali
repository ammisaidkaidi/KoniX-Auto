.class final Lbgy;
.super Landroid/media/MediaCodec$Callback;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final a:Ljava/util/Queue;

.field public final b:Ljava/util/Queue;

.field public final c:Ljava/util/Queue;

.field public final d:Landroid/view/Surface;

.field public e:Lbgu;

.field public final f:Landroid/os/Handler;

.field public g:Z

.field public final h:Lbgp;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Lbhd;

.field private final k:Lbfh;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Lbfh;Lbgp;Lbhd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbgy;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbgy;->b:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbgy;->c:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgy;->g:Z

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lbgy;->h:Lbgp;

    iput-object p4, p0, Lbgy;->j:Lbhd;

    iput-object p1, p0, Lbgy;->d:Landroid/view/Surface;

    iput-object p2, p0, Lbgy;->k:Lbfh;

    new-instance p1, Landroid/os/HandlerThread;

    .line 6
    const-string p2, "VideoFrameHandler"

    const/16 p3, -0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lbgy;->i:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lbgy;->f:Landroid/os/Handler;

    new-instance p1, Lbgv;

    invoke-direct {p1, p0, v0}, Lbgv;-><init>(Lbgy;I)V

    .line 9
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbgy;->f:Landroid/os/Handler;

    new-instance v1, Lbgv;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lbgv;-><init>(Lbgy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lbgy;->i:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lbgy;->i:Landroid/os/HandlerThread;

    .line 3
    invoke-static {v0}, Lhi;->k(Ljava/lang/Thread;)V

    return-void
.end method

.method public final b(Landroid/media/MediaCodec;Lcma;I)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lbgy;->j:Lbhd;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcma;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lbgy;->j:Lbhd;

    iget-wide v2, p2, Lcma;->c:J

    .line 2
    invoke-virtual {v1, v0, v2, v3}, Lbhd;->b(IJ)V

    .line 3
    :cond_0
    invoke-virtual {p1, p3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p2, Lcma;->a:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    goto :goto_0

    .line 20
    :cond_1
    const/4 v2, 0x1

    .line 7
    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v1, p2, Lcma;->a:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    sget-boolean v1, Lbgz;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "queueInputBuffer"

    .line 10
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x0

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget-wide v7, p2, Lcma;->c:J

    const/4 v9, 0x0

    move-object v3, p1

    move v4, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    sget-boolean p1, Lbgz;->b:Z

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    if-eqz v2, :cond_7

    iget-object p1, p2, Lcma;->a:Ljava/nio/ByteBuffer;

    .line 13
    sget-object p3, Lcom/google/android/projection/common/BufferPool;->a:Lcom/google/android/projection/common/BufferPool;

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p3, v0}, Lcom/google/android/projection/common/BufferPool;->a(I)Ljava/util/List;

    move-result-object p3

    const/16 v1, 0x200

    if-gt v0, v1, :cond_4

    const/16 v0, 0x78

    goto :goto_1

    .line 20
    :cond_4
    const/16 v1, 0x4000

    if-gt v0, v1, :cond_5

    const/16 v0, 0x14

    goto :goto_1

    :cond_5
    const/16 v0, 0xa

    .line 16
    :goto_1
    monitor-enter p3

    .line 17
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_6

    .line 18
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_6
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/2addr v1, v0

    .line 20
    invoke-interface {p3, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    iput-object p1, p2, Lcma;->a:Ljava/nio/ByteBuffer;

    sget-object p1, Lcsz;->b:Lcsy;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    invoke-interface {p1, p2}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    goto :goto_3

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 22
    :cond_7
    :goto_3
    return v2
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 3

    .line 1
    sget-object p1, Lbgz;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    invoke-interface {p1, p2}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "com/google/android/apps/auto/aareceiver/video/ProjectionRenderer$VideoFrameHandler"

    const-string v0, "onError"

    const/16 v1, 0xe5

    const-string v2, "ProjectionRenderer.java"

    invoke-interface {p1, p2, v0, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Internal codec error"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbgy;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    if-nez v0, :cond_0

    iget-object p1, p0, Lbgy;->b:Ljava/util/Queue;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lbgy;->b(Landroid/media/MediaCodec;Lcma;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbgy;->a:Ljava/util/Queue;

    .line 4
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object p1, p0, Lbgy;->c:Ljava/util/Queue;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .line 1
    sget-object v0, Lbgz;->a:Lcsz;

    sget-object v0, Lcsz;->b:Lcsy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lbgy;->c:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbgy;->c:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const-string v1, "ackFrames"

    if-nez v0, :cond_0

    sget-object v0, Lbgz;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v2, 0x175

    .line 4
    const-string v3, "com/google/android/apps/auto/aareceiver/video/ProjectionRenderer$VideoFrameHandler"

    const-string v4, "ProjectionRenderer.java"

    invoke-interface {v0, v3, v1, v2, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Missing frame(s) to ack!"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p0, Lbgy;->c:Ljava/util/Queue;

    .line 5
    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    iget-object v3, p0, Lbgy;->c:Ljava/util/Queue;

    .line 6
    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    iget-object v3, p0, Lbgy;->k:Lbfh;

    .line 7
    iget v2, v2, Lcma;->b:I

    iget-object v3, v3, Lbfh;->a:Lbfi;

    iget-object v4, v3, Lbfi;->v:Lazy;

    .line 8
    invoke-virtual {v3}, Lbfi;->o()Lckb;

    move-result-object v3

    iget-object v5, v4, Lazy;->i:Lbah;

    iget-object v5, v5, Lbah;->h:Lbbl;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lbbl;->p:Lcqk;

    .line 9
    invoke-virtual {v5, v3}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/protocol/VideoSink;

    .line 10
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v2, v0}, Lcom/google/android/projection/protocol/VideoSink;->nativeAckFrames(II)V

    .line 11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v4, Lazy;->b:Lazw;

    iget-wide v1, v0, Lazw;->a:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lazw;->a:J

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lbgy;->j:Lbhd;

    if-eqz v0, :cond_2

    .line 12
    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Lbhd;->a(J)V

    :cond_2
    sget-boolean p3, Lbgz;->b:Z

    if-eqz p3, :cond_3

    .line 13
    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_3
    const-wide/16 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    sget-boolean p1, Lbgz;->b:Z

    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_4
    return-void
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    sget-object p1, Lbgz;->a:Lcsz;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbgy;->d:Landroid/view/Surface;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbgy;->d:Landroid/view/Surface;

    .line 2
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    iget-boolean v3, p0, Lbgy;->g:Z

    iget-object v4, p0, Lbgy;->i:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x59

    add-int/2addr v5, v6

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{ surface: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", surface.isValid: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", codecConfigured: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", handlerThread.isAlive: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
