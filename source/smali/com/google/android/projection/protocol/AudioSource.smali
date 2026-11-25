.class public Lcom/google/android/projection/protocol/AudioSource;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/projection/protocol/AudioSourceCallbacks;
.implements Lclk;


# instance fields
.field public volatile a:Z

.field private final b:Lcli;

.field private mNativeAudioSource:J


# direct methods
.method public constructor <init>(Lcli;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/protocol/AudioSource;->a:Z

    iput-object p1, p0, Lcom/google/android/projection/protocol/AudioSource;->b:Lcli;

    return-void
.end method

.method private native nativeInit(IJI)I
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/AudioSource;->mNativeAudioSource:J

    return-wide v0
.end method

.method public final ackCallback(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/protocol/AudioSource;->b:Lcli;

    sget-object v0, Lcsz;->b:Lcsy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    check-cast p1, Laun;

    iget-object p1, p1, Laun;->e:Ljava/util/concurrent/Semaphore;

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/concurrent/Semaphore;->release(I)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/projection/protocol/AudioSource;->a:Z

    invoke-direct {p0}, Lcom/google/android/projection/protocol/AudioSource;->nativeShutdown()V

    return-void
.end method

.method public final c(IJ)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/projection/protocol/AudioSource;->nativeInit(IJI)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final microphoneRequestCallback(ZZZI)I
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/projection/protocol/AudioSource;->b:Lcli;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    move-object p3, p2

    check-cast p3, Laun;

    iput-object p1, p3, Laun;->e:Ljava/util/concurrent/Semaphore;

    iget-object p1, p3, Laun;->c:Laum;

    .line 2
    invoke-virtual {p1}, Laum;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p3, Laun;->c:Laum;

    .line 3
    invoke-virtual {p1}, Laum;->start()V

    :cond_0
    iget-object p1, p3, Laun;->c:Laum;

    iget-object p3, p1, Laum;->a:Ljava/lang/Object;

    .line 4
    monitor-enter p3

    const/4 p4, 0x0

    :try_start_0
    iput-boolean p4, p1, Laum;->b:Z

    iget-object p1, p1, Laum;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p3

    goto :goto_0

    .line 8
    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    move-object p1, p2

    check-cast p1, Laun;

    iget-object p1, p1, Laun;->c:Laum;

    iget-object p3, p1, Laum;->a:Ljava/lang/Object;

    .line 7
    monitor-enter p3

    const/4 p4, 0x1

    :try_start_1
    iput-boolean p4, p1, Laum;->b:Z

    .line 8
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :goto_0
    check-cast p2, Laun;

    iget p1, p2, Laun;->d:I

    add-int/lit8 p3, p1, 0x1

    iput p3, p2, Laun;->d:I

    return p1

    :catchall_1
    move-exception p1

    .line 8
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public native nativeSend(J[B)V
.end method

.method public native nativeSetConfig(III)V
.end method
