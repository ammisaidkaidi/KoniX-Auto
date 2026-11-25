.class public final Lauw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Latt;


# static fields
.field public static final a:Lcsz;

.field public static final b:Lcqw;

.field public static final c:Lcqw;

.field static final d:Landroid/media/AudioAttributes;

.field static final e:Landroid/media/AudioAttributes;

.field static final f:Landroid/media/AudioAttributes;


# instance fields
.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/Set;

.field public j:Landroid/media/AudioFocusRequest;

.field k:Landroid/media/AudioAttributes;

.field l:I

.field public m:Z

.field public n:Lcom/google/android/projection/protocol/GalReceiver;

.field public o:I

.field public p:I

.field private final q:Landroid/media/AudioManager;

.field private final r:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lauw;->a:Lcsz;

    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    .line 2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6
    invoke-static {v1, v3, v5, v6}, Lcqw;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcqw;

    move-result-object v1

    sput-object v1, Lauw;->b:Lcqw;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v1, v7

    aput-object v5, v1, v0

    aput-object v6, v1, v2

    .line 7
    invoke-static {v4, v1}, Lcqw;->l(I[Ljava/lang/Object;)Lcqw;

    move-result-object v1

    sput-object v1, Lauw;->c:Lcqw;

    .line 8
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 9
    invoke-virtual {v1, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 11
    invoke-static {}, Laul;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, Lauw;->d:Landroid/media/AudioAttributes;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 13
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 14
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 16
    invoke-static {}, Laul;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, Lauw;->e:Landroid/media/AudioAttributes;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 18
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 19
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 21
    invoke-static {}, Laul;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lauw;->f:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioManager;Lcom/google/android/projection/protocol/GalReceiver;Lzn;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lauw;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lauw;->i:Ljava/util/Set;

    const/4 v0, 0x1

    iput v0, p0, Lauw;->o:I

    iput v0, p0, Lauw;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lauw;->j:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lauw;->m:Z

    iput-object p1, p0, Lauw;->q:Landroid/media/AudioManager;

    iput-object p2, p0, Lauw;->n:Lcom/google/android/projection/protocol/GalReceiver;

    .line 2
    new-instance p1, Laut;

    invoke-direct {p1, p0}, Laut;-><init>(Lauw;)V

    iput-object p1, p0, Lauw;->r:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p4, p0, Lauw;->h:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager$1;

    invoke-direct {p1, p0}, Lcom/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager$1;-><init>(Lauw;)V

    .line 3
    invoke-virtual {p3, p1}, Lzn;->b(Lzp;)V

    return-void
.end method

.method public static d(I)I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 2
    const/4 p0, 0x0

    return p0

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "Invalid audio focus"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lauc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lauw;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lauw;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lauc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lauw;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lauw;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    iget-object v2, p0, Lauw;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean p1, p0, Lauw;->m:Z

    if-eqz p1, :cond_1

    new-instance p1, Lauu;

    .line 2
    invoke-direct {p1, p0, v0}, Lauu;-><init>(Lauw;I)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Lauu;

    .line 2
    invoke-direct {p1, p0, v1}, Lauu;-><init>(Lauw;I)V

    :goto_1
    iget-object v0, p0, Lauw;->h:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lauw;->h:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    :cond_2
    monitor-exit v2

    return-void

    .line 2
    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(ILandroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 2
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lauw;->r:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 5
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    return-object p1
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lauw;->j:Landroid/media/AudioFocusRequest;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lauw;->q:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    if-eq v0, v1, :cond_0

    sget-object v0, Lauw;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v2, 0x1b1

    .line 2
    const-string v3, "com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager"

    const-string v4, "abandonCurrentRequestLocked"

    const-string v5, "VoiceSessionAudioFocusManager.java"

    invoke-interface {v0, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    iget-object v2, p0, Lauw;->j:Landroid/media/AudioFocusRequest;

    .line 3
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v2

    invoke-static {v2}, Laul;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lauw;->j:Landroid/media/AudioFocusRequest;

    .line 4
    invoke-virtual {v3}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 2
    const-string v4, "Failed to abandon current request: %s %s"

    invoke-interface {v0, v4, v2, v3}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lauw;->j:Landroid/media/AudioFocusRequest;

    iput-object v0, p0, Lauw;->k:Landroid/media/AudioAttributes;

    :cond_1
    iput v1, p0, Lauw;->o:I

    iput v1, p0, Lauw;->p:I

    return-void
.end method

.method public final g(Z)V
    .locals 5

    .line 3
    iget-object v0, p0, Lauw;->n:Lcom/google/android/projection/protocol/GalReceiver;

    if-eqz v0, :cond_3

    iget v1, p0, Lauw;->p:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lauw;->o:I

    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_1

    packed-switch v4, :pswitch_data_1

    new-instance p1, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x3

    :goto_0
    :pswitch_5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetAudioFocus(IZ)V

    return-void

    .line 1
    :cond_1
    nop

    .line 2
    throw v3

    .line 4
    :cond_2
    nop

    .line 1
    throw v3

    .line 2
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lauw;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lauw;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lauv;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lauv;-><init>(Lauw;II)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final i(ILandroid/media/AudioAttributes;I)I
    .locals 4

    .line 3
    iget-object v0, p0, Lauw;->j:Landroid/media/AudioFocusRequest;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v2, p0, Lauw;->p:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lauw;->j:Landroid/media/AudioFocusRequest;

    .line 2
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lauw;->o:I

    if-ne v2, p3, :cond_1

    return v1

    .line 3
    :cond_1
    :goto_0
    iget-object v2, p0, Lauw;->j:Landroid/media/AudioFocusRequest;

    invoke-virtual {v2}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-static {p1}, Laul;->c(I)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lauw;->f()V

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p2}, Lauw;->e(ILandroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest;

    move-result-object p1

    iget-object v2, p0, Lauw;->q:Landroid/media/AudioManager;

    .line 7
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-virtual {p0}, Lauw;->f()V

    const/4 p1, 0x0

    return p1

    :cond_3
    iput p3, p0, Lauw;->o:I

    const/4 p3, 0x2

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 10
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lauw;->k:Landroid/media/AudioAttributes;

    goto :goto_2

    :cond_4
    iget p2, p0, Lauw;->o:I

    if-ne p2, p3, :cond_5

    sget-object p2, Lauw;->d:Landroid/media/AudioAttributes;

    goto :goto_1

    :cond_5
    :goto_2
    iput-object p1, p0, Lauw;->j:Landroid/media/AudioFocusRequest;

    if-ne v2, p3, :cond_6

    iput p3, p0, Lauw;->p:I

    goto :goto_3

    :cond_6
    iput v1, p0, Lauw;->p:I

    :goto_3
    return v2
.end method
