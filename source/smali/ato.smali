.class final Lato;
.super Landroid/media/MediaCodec$Callback;
.source "PG"


# instance fields
.field final synthetic a:Latp;


# direct methods
.method public constructor <init>(Latp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lato;->a:Latp;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 3

    .line 1
    sget-object p1, Latp;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    invoke-interface {p1, p2}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "com/google/android/apps/auto/aareceiver/audio/AacDecoder$1"

    const-string v0, "onError"

    const/16 v1, 0x61

    const-string v2, "AacDecoder.java"

    invoke-interface {p1, p2, v0, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "CodecException from AAC codec"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lato;->a:Latp;

    iget-object p1, p1, Latp;->h:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lato;->a:Latp;

    iget-object p1, p1, Latp;->c:Ljava/util/concurrent/Semaphore;

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lato;->a:Latp;

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p1, Latp;->f:Landroid/media/MediaCodec;

    .line 2
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    :cond_0
    iget-object v0, p1, Latp;->f:Landroid/media/MediaCodec;

    .line 3
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p1, Latq;->i:Laue;

    .line 7
    invoke-virtual {v2, v0}, Laue;->b(Ljava/nio/ByteBuffer;)V

    :cond_1
    iget-object v0, p1, Latp;->f:Landroid/media/MediaCodec;

    .line 8
    invoke-virtual {v0, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 9
    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1, v1}, Latp;->e(Z)V

    :cond_2
    return-void
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method
