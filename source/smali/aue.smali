.class public final Laue;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Lauc;

.field public final c:Landroid/media/AudioFormat;

.field public d:Landroid/media/AudioTrack;

.field public e:Laud;

.field public f:I

.field final g:Landroid/os/CountDownTimer;

.field private final h:Landroid/media/AudioAttributes;

.field private final i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/audio/AudioPlayer"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Laue;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Lauc;Landroid/media/AudioFormat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laub;

    invoke-direct {v0, p0}, Laub;-><init>(Laue;)V

    iput-object v0, p0, Laue;->g:Landroid/os/CountDownTimer;

    iput-object p1, p0, Laue;->b:Lauc;

    .line 2
    invoke-virtual {p1}, Lauc;->name()Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    invoke-virtual {p1}, Lauc;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    const/16 p1, 0x10

    .line 6
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xc

    .line 8
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 9
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 14
    :pswitch_2
    nop

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 10
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Laue;->h:Landroid/media/AudioAttributes;

    .line 11
    new-instance p1, Landroid/media/AudioFormat$Builder;

    invoke-direct {p1, p2}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p1, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    iput-object p1, p0, Laue;->c:Landroid/media/AudioFormat;

    .line 13
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result p1

    const/16 v0, 0x3e80

    if-ne p1, v0, :cond_0

    const/16 p1, 0x400

    goto :goto_1

    .line 14
    :cond_0
    const/16 p1, 0x800

    :goto_1
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result p2

    mul-int p1, p1, p2

    add-int/2addr p1, p1

    add-int/2addr p1, p1

    iput p1, p0, Laue;->i:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Laue;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Laue;->d:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_0

    sget-object p1, Laue;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v0, 0xba

    .line 2
    const-string v1, "com/google/android/apps/auto/aareceiver/audio/AudioPlayer"

    const-string v2, "playAudio"

    const-string v3, "AudioPlayer.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Error writing to AudioTrack"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p0, Laue;->j:I

    if-lez v1, :cond_2

    sub-int/2addr v1, v0

    iput v1, p0, Laue;->j:I

    if-gtz v1, :cond_1

    iput v2, p0, Laue;->j:I

    iget-object v0, p0, Laue;->d:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    iget-object v0, p0, Laue;->d:Landroid/media/AudioTrack;

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Laue;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laue;->f()V

    :cond_0
    iget v0, p0, Laue;->i:I

    iget-object v1, p0, Laue;->c:Landroid/media/AudioFormat;

    .line 2
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    iget-object v2, p0, Laue;->c:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    iget-object v3, p0, Laue;->c:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    .line 3
    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Laue;->h:Landroid/media/AudioAttributes;

    iget-object v2, p0, Laue;->c:Landroid/media/AudioFormat;

    .line 5
    new-instance v3, Landroid/media/AudioTrack$Builder;

    invoke-direct {v3}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 6
    invoke-virtual {v3, v1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    add-int/2addr v0, v0

    .line 8
    invoke-virtual {v1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 9
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setPerformanceMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Laue;->d:Landroid/media/AudioTrack;

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget v0, p0, Laue;->i:I

    iput v0, p0, Laue;->j:I

    iget-object v0, p0, Laue;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v0

    iput v0, p0, Laue;->f:I

    iget-object v0, p0, Laue;->g:Landroid/os/CountDownTimer;

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 3
    if-nez p1, :cond_0

    iget p1, p0, Laue;->j:I

    if-lez p1, :cond_1

    iget-object p1, p0, Laue;->d:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    const/4 p1, 0x0

    iput p1, p0, Laue;->j:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Laue;->d:Landroid/media/AudioTrack;

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->pause()V

    iget-object p1, p0, Laue;->d:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->flush()V

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Laue;->d:Landroid/media/AudioTrack;

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    iget-object p1, p0, Laue;->g:Landroid/os/CountDownTimer;

    .line 5
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laue;->e(Z)V

    iget-object v0, p0, Laue;->d:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Laue;->d:Landroid/media/AudioTrack;

    return-void
.end method
