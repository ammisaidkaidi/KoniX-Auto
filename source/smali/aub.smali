.class final Laub;
.super Landroid/os/CountDownTimer;
.source "PG"


# instance fields
.field final synthetic a:Laue;


# direct methods
.method public constructor <init>(Laue;)V
    .locals 4

    .line 1
    iput-object p1, p0, Laub;->a:Laue;

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Laub;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final onTick(J)V
    .locals 5

    .line 1
    iget-object p1, p0, Laub;->a:Laue;

    iget-object p1, p1, Laue;->e:Laud;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Laub;->a:Laue;

    iget-object p1, p1, Laue;->d:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result p1

    iget-object p2, p0, Laub;->a:Laue;

    iget p2, p2, Laue;->f:I

    sub-int/2addr p1, p2

    if-lez p1, :cond_1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    sget-object v0, Laue;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/audio/AudioPlayer$1"

    const-string v2, "onTick"

    const/16 v3, 0x49

    const-string v4, "AudioPlayer.java"

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Underflow reported!"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    iget-object v0, p0, Laub;->a:Laue;

    iget-object v0, v0, Laue;->e:Laud;

    move-object v1, v0

    check-cast v1, Lauj;

    iget-object v1, v1, Lauj;->f:Lcom/google/android/projection/protocol/AudioSink;

    check-cast v0, Lauj;

    iget v0, v0, Lauj;->l:I

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/AudioSink;->nativeSendUnderflowNotification(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Laub;->a:Laue;

    iget-object p2, p1, Laue;->d:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result p2

    iput p2, p1, Laue;->f:I

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
