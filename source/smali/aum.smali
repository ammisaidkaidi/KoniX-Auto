.class public final Laum;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:Z

.field public volatile c:Z

.field final synthetic d:Laun;


# direct methods
.method public constructor <init>(Laun;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laum;->d:Laun;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laum;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Laum;->b:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Laum;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    sget-object v0, Laun;->a:Lcsz;

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-boolean v2, p0, Laum;->c:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Laum;->b:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/AudioRecord;

    const/4 v4, 0x0

    const/16 v5, 0x3e80

    const/16 v6, 0x10

    const/4 v7, 0x2

    sget v2, Laun;->b:I

    mul-int/lit8 v8, v2, 0x4

    .line 2
    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 3
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    :cond_0
    :goto_1
    iget-boolean v2, p0, Laum;->b:Z

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    sget v2, Laun;->b:I

    .line 4
    new-array v2, v2, [B

    sget v3, Laun;->b:I

    :goto_2
    if-lez v3, :cond_2

    .line 5
    invoke-virtual {p0}, Laum;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Laun;->b:I

    sub-int/2addr v4, v3

    .line 6
    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    .line 16
    sub-int/2addr v3, v4

    goto :goto_2

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    sget v1, Laun;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x4b

    .line 16
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error reading from AudioRecord "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while trying to read "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v3, p0, Laum;->c:Z

    if-eqz v3, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    iget-object v3, p0, Laum;->d:Laun;

    iget-object v3, v3, Laun;->f:Lcom/google/android/projection/protocol/AudioSource;

    iget-boolean v4, v3, Lcom/google/android/projection/protocol/AudioSource;->a:Z

    if-nez v4, :cond_4

    const-wide/16 v4, 0x0

    .line 7
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/projection/protocol/AudioSource;->nativeSend(J[B)V

    :cond_4
    iget-boolean v2, p0, Laum;->c:Z

    if-nez v2, :cond_5

    :try_start_0
    iget-object v2, p0, Laum;->d:Laun;

    iget-object v2, v2, Laun;->e:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Laun;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->c()Lctq;

    move-result-object v2

    const-string v3, "com/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$AudioSourceThread"

    const-string v4, "readDataFromMic"

    const/16 v5, 0x99

    const-string v6, "MicrophoneRecorder.java"

    .line 9
    invoke-interface {v2, v3, v4, v5, v6}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const-string v3, "mic ACK timeout, move on"

    invoke-interface {v2, v3}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 15
    :catch_0
    move-exception v2

    sget-object v2, Laun;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->b()Lctq;

    move-result-object v2

    const-string v3, "com/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$AudioSourceThread"

    const-string v4, "readDataFromMic"

    const/16 v5, 0x9c

    const-string v6, "MicrophoneRecorder.java"

    .line 10
    invoke-interface {v2, v3, v4, v5, v6}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const-string v3, "Dropping audio frame."

    invoke-interface {v2, v3}, Lcsx;->n(Ljava/lang/String;)V

    .line 16
    :cond_5
    :goto_3
    iget-boolean v2, p0, Laum;->b:Z

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 12
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    move-object v1, v0

    :cond_6
    iget-object v2, p0, Laum;->a:Ljava/lang/Object;

    .line 13
    monitor-enter v2

    :goto_4
    :try_start_1
    iget-boolean v3, p0, Laum;->b:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Laum;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_7

    :try_start_2
    iget-object v3, p0, Laum;->a:Ljava/lang/Object;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 15
    :catch_1
    move-exception v3

    :cond_7
    :try_start_3
    monitor-exit v2

    goto/16 :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 9
    :cond_8
    return-void
.end method
