.class public Lcom/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzj;


# instance fields
.field final synthetic a:Laun;


# direct methods
.method public constructor <init>(Laun;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$1;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$1;->a:Laun;

    iget-object v0, v0, Laun;->f:Lcom/google/android/projection/protocol/AudioSource;

    const/16 v1, 0x3e80

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/projection/protocol/AudioSource;->nativeSetConfig(III)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$1;->a:Laun;

    iget-object v1, v0, Laun;->c:Laum;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Laum;->c:Z

    iput-boolean v2, v1, Laum;->b:Z

    invoke-virtual {v1}, Laum;->interrupt()V

    iget-object v2, v1, Laum;->a:Ljava/lang/Object;

    .line 2
    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Laum;->a:Ljava/lang/Object;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x3e8

    .line 1
    :try_start_1
    invoke-virtual {v1, v2, v3}, Laum;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    move-exception v1

    .line 1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, Laun;->c:Laum;

    return-void

    :catchall_0
    move-exception v0

    .line 4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1
    :cond_0
    return-void
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
