.class public Lcom/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzj;


# instance fields
.field final synthetic a:Lauw;


# direct methods
.method public constructor <init>(Lauw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager$1;->a:Lauw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager$1;->a:Lauw;

    iget-object v1, v0, Lauw;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lauw;->f()V

    iget-object v2, v0, Lauw;->h:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v2, 0x0

    iput-object v2, v0, Lauw;->n:Lcom/google/android/projection/protocol/GalReceiver;

    .line 3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
