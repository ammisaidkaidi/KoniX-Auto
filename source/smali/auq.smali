.class public final Lauq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Latt;


# static fields
.field static final a:Landroid/media/AudioAttributes;

.field static final b:Landroid/media/AudioAttributes;

.field static final c:Landroid/media/AudioAttributes;

.field static final d:Lcqk;

.field private static final e:Lcsz;


# instance fields
.field private f:Z

.field private g:Z

.field private final h:Ljava/util/Map;

.field private final i:Landroid/media/AudioManager;

.field private j:Lcom/google/android/projection/protocol/GalReceiver;

.field private final k:Ljava/util/concurrent/ExecutorService;

.field private final l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final n:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lauq;->e:Lcsz;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 4
    invoke-static {}, Laul;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lauq;->a:Landroid/media/AudioAttributes;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 6
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 7
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 9
    invoke-static {}, Laul;->b()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    sput-object v2, Lauq;->b:Landroid/media/AudioAttributes;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 11
    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 12
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 14
    invoke-static {}, Laul;->b()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, Lauq;->c:Landroid/media/AudioAttributes;

    new-instance v3, Lcqi;

    .line 16
    invoke-direct {v3}, Lcqi;-><init>()V

    sget-object v4, Lauc;->b:Lauc;

    .line 17
    invoke-virtual {v3, v4, v1}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lauc;->a:Lauc;

    .line 18
    invoke-virtual {v3, v1, v0}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lauc;->c:Lauc;

    .line 19
    invoke-virtual {v3, v0, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v3}, Lcqi;->c()Lcqk;

    move-result-object v0

    sput-object v0, Lauq;->d:Lcqk;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioManager;Lcom/google/android/projection/protocol/GalReceiver;Lzn;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lauq;->f:Z

    iput-boolean v0, p0, Lauq;->g:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lauq;->h:Ljava/util/Map;

    .line 2
    new-instance v1, Lauo;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lauo;-><init>(Lauq;I)V

    iput-object v1, p0, Lauq;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v1, Lauo;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lauo;-><init>(Lauq;I)V

    iput-object v1, p0, Lauq;->m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v1, Lauo;

    invoke-direct {v1, p0, v0}, Lauo;-><init>(Lauq;I)V

    iput-object v1, p0, Lauq;->n:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lauq;->i:Landroid/media/AudioManager;

    iput-object p2, p0, Lauq;->j:Lcom/google/android/projection/protocol/GalReceiver;

    iput-object p4, p0, Lauq;->k:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager$1;

    invoke-direct {p1, p0}, Lcom/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager$1;-><init>(Lauq;)V

    .line 3
    invoke-virtual {p3, p1}, Lzn;->b(Lzp;)V

    return-void
.end method

.method static j(I)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lauq;->e:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    const/16 v2, 0x23e

    const-string v3, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v4, "mapPlatformFocusToFocusLoss"

    const-string v5, "MultipleAudioFocusManager.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Unknown focus event %d"

    invoke-interface {v1, v2, p0}, Lcsx;->o(Ljava/lang/String;I)V

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static k(I)I
    .locals 5

    .line 6
    packed-switch p0, :pswitch_data_0

    sget-object v0, Lauq;->e:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x191

    const-string v2, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v3, "getStateFromPlatformFocusRequest"

    const-string v4, "MultipleAudioFocusManager.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Invalid focus request: %s"

    invoke-interface {v0, v1, p0}, Lcsx;->o(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid focus request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :pswitch_0
    sget p0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 p0, 0x2

    return p0

    .line 2
    :pswitch_1
    sget p0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 p0, 0x1

    return p0

    .line 3
    :pswitch_2
    sget p0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 p0, 0x3

    return p0

    .line 4
    :pswitch_3
    sget p0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 p0, 0x5

    return p0

    .line 5
    :pswitch_4
    sget p0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static l(Lauc;)I
    .locals 5

    .line 1
    sget-object v0, Lauc;->a:Lauc;

    invoke-virtual {p0}, Lauc;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lauq;->e:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x212

    .line 2
    const-string v2, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v3, "mapAudioPlayerTypeToUsage"

    const-string v4, "MultipleAudioFocusManager.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unknown player type: %s"

    invoke-interface {v0, v1, p0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x10

    return p0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final declared-synchronized m(I)I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0xc

    if-ne p1, v0, :cond_2

    :try_start_1
    iget-boolean p1, p0, Lauq;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    sget-object v0, Lauq;->e:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const-string v2, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v3, "mapGalFocusToUsage"

    const/16 v4, 0x25c

    const-string v5, "MultipleAudioFocusManager.java"

    .line 2
    invoke-interface {v0, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v2, "Unknown Gal audio focus: %d"

    invoke-interface {v0, v2, p1}, Lcsx;->o(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized n(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lauq;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 2
    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Lauq;->m(I)I

    move-result p1

    invoke-static {p1}, Lauq;->o(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static o(I)I
    .locals 5

    .line 1
    sparse-switch p0, :sswitch_data_0

    sget-object v0, Lauq;->e:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x26a

    const-string v2, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v3, "mapUsageToPlatformFocus"

    const-string v4, "MultipleAudioFocusManager.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unknown usage: %d."

    invoke-interface {v0, v1, p0}, Lcsx;->o(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x4

    return p0

    :sswitch_1
    const/4 p0, 0x3

    return p0

    :sswitch_2
    const/4 p0, 0x1

    return p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private final declared-synchronized p(I)Landroid/media/AudioAttributes;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    sget-object p1, Lauq;->a:Landroid/media/AudioAttributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lauq;->f:Z

    if-eqz p1, :cond_1

    sget-object p1, Lauq;->b:Landroid/media/AudioAttributes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    sget-object p1, Lauq;->c:Landroid/media/AudioAttributes;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final q(ILandroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest;
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v1, Lauq;->e:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const/16 v2, 0x22b

    .line 2
    const-string v3, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v4, "getAudioFocusChangeListener"

    const-string v5, "MultipleAudioFocusManager.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Unknown focus usage: %s"

    invoke-interface {v1, v2, v0}, Lcsx;->o(Ljava/lang/String;I)V

    .line 3
    new-instance v0, Lauo;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lauo;-><init>(Lauq;I)V

    goto :goto_0

    .line 9
    :sswitch_0
    iget-object v0, p0, Lauq;->n:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lauq;->m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lauq;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4
    :goto_0
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, p1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 5
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private final declared-synchronized r()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lats;

    iget-object v1, v1, Lats;->a:Landroid/media/AudioFocusRequest;

    .line 2
    invoke-direct {p0, v1}, Lauq;->s(Landroid/media/AudioFocusRequest;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final declared-synchronized s(Landroid/media/AudioFocusRequest;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    .line 2
    invoke-static {v0}, Laul;->e(I)Ljava/lang/String;

    iget-object v1, p0, Lauq;->i:Landroid/media/AudioManager;

    .line 3
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    sget-object p1, Lauq;->e:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v1, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v2, "releaseFocusRequest"

    const/16 v3, 0x17c

    const-string v4, "MultipleAudioFocusManager.java"

    .line 4
    invoke-interface {p1, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v1, "Failed to abandon focus request with usage: %s"

    .line 5
    invoke-static {v0}, Laul;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1, v1, v0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized t(Landroid/media/AudioFocusRequest;Z)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v1, v0}, Lauq;->w(ZI)V

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    invoke-static {v0}, Laul;->e(I)Ljava/lang/String;

    iget-object v1, p0, Lauq;->i:Landroid/media/AudioManager;

    .line 4
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lauq;->e:Lcsz;

    goto :goto_0

    .line 5
    :pswitch_0
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, p1, v0}, Lauq;->x(II)V

    const/4 v2, 0x5

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result p1

    invoke-static {p1}, Lauq;->k(I)I

    move-result v2

    goto :goto_1

    :pswitch_2
    nop

    .line 9
    invoke-direct {p0, v3, v0}, Lauq;->w(ZI)V

    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    goto :goto_1

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v4, "requestAudioFocusFromHU"

    const/16 v5, 0x106

    const-string v6, "MultipleAudioFocusManager.java"

    .line 12
    invoke-interface {v0, v1, v4, v5, v6}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unknown audio focus response."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    .line 13
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    :goto_1
    if-eqz p2, :cond_0

    .line 15
    invoke-direct {p0, v2, v3}, Lauq;->u(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final declared-synchronized u(IZ)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lauq;->j:Lcom/google/android/projection/protocol/GalReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetAudioFocus(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final declared-synchronized v(IZ)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Laul;->e(I)Ljava/lang/String;

    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lats;

    if-nez v0, :cond_0

    sget-object p2, Lauq;->e:Lcsz;

    invoke-virtual {p2}, Lcsv;->c()Lctq;

    move-result-object p2

    const-string v0, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v1, "setExpectedFocusLoss"

    const/16 v2, 0x1f6

    const-string v3, "MultipleAudioFocusManager.java"

    .line 3
    invoke-interface {p2, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v0, "Focus request with usage %s doesn\'t exist."

    invoke-static {p1}, Laul;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {p1}, Laul;->e(I)Ljava/lang/String;

    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 5
    invoke-static {}, Lats;->a()Latr;

    move-result-object v2

    iget-object v3, v0, Lats;->a:Landroid/media/AudioFocusRequest;

    .line 6
    invoke-virtual {v2, v3}, Latr;->d(Landroid/media/AudioFocusRequest;)V

    iget v0, v0, Lats;->c:I

    .line 7
    invoke-virtual {v2, v0}, Latr;->c(I)V

    .line 8
    invoke-virtual {v2, p2}, Latr;->b(Z)V

    .line 9
    invoke-virtual {v2}, Latr;->a()Lats;

    move-result-object p2

    .line 10
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized w(ZI)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 2
    invoke-direct {p0, v1, p1}, Lauq;->v(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final declared-synchronized x(II)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lats;

    if-nez v0, :cond_0

    sget-object p2, Lauq;->e:Lcsz;

    invoke-virtual {p2}, Lcsv;->c()Lctq;

    move-result-object p2

    const-string v0, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v1, "changeFocusLoss"

    const/16 v2, 0x1c8

    const-string v3, "MultipleAudioFocusManager.java"

    .line 2
    invoke-interface {p2, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v0, "Focus request with usage %s doesn\'t exist."

    invoke-static {p1}, Laul;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p1}, Laul;->e(I)Ljava/lang/String;

    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 4
    invoke-static {}, Lats;->a()Latr;

    move-result-object v2

    iget-object v0, v0, Lats;->a:Landroid/media/AudioFocusRequest;

    .line 5
    invoke-virtual {v2, v0}, Latr;->d(Landroid/media/AudioFocusRequest;)V

    .line 6
    invoke-virtual {v2, p2}, Latr;->c(I)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {v2, p2}, Latr;->b(Z)V

    .line 8
    invoke-virtual {v2}, Latr;->a()Lats;

    move-result-object p2

    .line 9
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lauc;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lauq;->l(Lauc;)I

    move-result v0

    iget-object v1, p0, Lauq;->h:Ljava/util/Map;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lauq;->h:Ljava/util/Map;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lats;

    iget v1, v1, Lats;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    const/4 p1, 0x0

    .line 3
    :try_start_1
    throw p1

    :cond_2
    :goto_0
    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    const/16 v1, 0x10

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .line 8
    :cond_3
    iput-boolean v3, p0, Lauq;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    .line 5
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {v0}, Lauq;->o(I)I

    move-result v1

    sget-object v2, Lauq;->d:Lcqk;

    .line 6
    invoke-virtual {v2, p1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioAttributes;

    invoke-direct {p0, v1, p1}, Lauq;->q(ILandroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest;

    move-result-object p1

    iget-object v1, p0, Lauq;->h:Ljava/util/Map;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lats;->a()Latr;

    move-result-object v2

    invoke-virtual {v2, p1}, Latr;->d(Landroid/media/AudioFocusRequest;)V

    invoke-virtual {v2}, Latr;->a()Lats;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lauq;->t(Landroid/media/AudioFocusRequest;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized b(Lauc;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lauc;->c:Lauc;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lauq;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {p1}, Lauq;->l(Lauc;)I

    move-result v0

    iget-object v1, p0, Lauq;->h:Ljava/util/Map;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lauq;->g:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lauq;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    sget-object v0, Lauq;->e:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v2, "audioStoppedReleaseFocus"

    const/16 v3, 0xb9

    const-string v4, "MultipleAudioFocusManager.java"

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "%s stopped, but no focus request was made for it."

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lats;

    iget v0, v0, Lats;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Lauq;->l(Lauc;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lats;

    iget-object p1, p1, Lats;->a:Landroid/media/AudioFocusRequest;

    invoke-direct {p0, p1}, Lauq;->s(Landroid/media/AudioFocusRequest;)V

    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 7
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    iput-boolean v1, p0, Lauq;->f:Z

    if-eqz v1, :cond_1

    .line 2
    sget-object p1, Lauc;->c:Lauc;

    invoke-virtual {p0, p1}, Lauq;->a(Lauc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_1
    sget-object p1, Lauc;->c:Lauc;

    invoke-virtual {p0, p1}, Lauq;->b(Lauc;)V

    iget-boolean p1, p0, Lauq;->g:Z

    if-eqz p1, :cond_2

    sget-object p1, Lauc;->a:Lauc;

    .line 4
    invoke-virtual {p0, p1}, Lauq;->a(Lauc;)V

    iput-boolean v0, p0, Lauq;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Laul;->c(I)Ljava/lang/String;

    iget-object v0, p0, Lauq;->k:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lauq;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Laup;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Laup;-><init>(Lauq;II)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Laul;->c(I)Ljava/lang/String;

    iget-object v0, p0, Lauq;->k:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lauq;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Laup;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Laup;-><init>(Lauq;II)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Laul;->c(I)Ljava/lang/String;

    iget-object v0, p0, Lauq;->k:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lauq;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Laup;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Laup;-><init>(Lauq;II)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(II)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, v0, Lats;->b:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 2
    invoke-static {p1}, Laul;->c(I)Ljava/lang/String;

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    :try_start_2
    invoke-direct {p0, p2, p1}, Lauq;->v(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    if-eq p1, v3, :cond_4

    :try_start_3
    iget v0, v0, Lats;->c:I

    .line 5
    invoke-static {p1}, Lauq;->j(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {p1}, Laul;->c(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, -0x1

    .line 5
    :goto_0
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 7
    :pswitch_0
    :try_start_4
    sget-object p2, Lauq;->e:Lcsz;

    goto :goto_1

    .line 11
    :pswitch_1
    nop

    .line 6
    invoke-direct {p0, p2, v0}, Lauq;->x(II)V

    .line 7
    invoke-static {p1}, Lauq;->k(I)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lauq;->u(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :pswitch_2
    :try_start_5
    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 9
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eq p2, v0, :cond_5

    if-ne p2, v2, :cond_6

    :cond_5
    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 12
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 13
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 p1, 0x7

    invoke-direct {p0, p1, v0}, Lauq;->u(IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_6
    iget-object p1, p0, Lauq;->h:Ljava/util/Map;

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0}, Lauq;->u(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    .line 15
    :pswitch_3
    :try_start_7
    invoke-static {p1}, Lauq;->j(I)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lauq;->x(II)V

    .line 16
    invoke-static {p1}, Lauq;->k(I)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lauq;->u(IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :goto_1
    :try_start_8
    invoke-virtual {p2}, Lcsv;->b()Lctq;

    move-result-object p2

    const-string v0, "com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager"

    const-string v1, "handleFocusFromPlatform"

    const/16 v2, 0x159

    const-string v3, "MultipleAudioFocusManager.java"

    .line 17
    invoke-interface {p2, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v0, "Unknown focus response from HU: %s"

    invoke-interface {p2, v0, p1}, Lcsx;->o(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized h(I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lauq;->r()V

    const/4 p1, 0x3

    .line 3
    invoke-direct {p0, p1, v1}, Lauq;->u(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lauq;->n(I)I

    move-result v0

    iget-object v2, p0, Lauq;->h:Ljava/util/Map;

    .line 5
    invoke-direct {p0, p1}, Lauq;->m(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lats;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v3, p1, Lats;->a:Landroid/media/AudioFocusRequest;

    .line 6
    invoke-virtual {v3}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v3

    if-ne v3, v0, :cond_1

    iget p1, p1, Lats;->c:I

    if-ne p1, v2, :cond_1

    .line 12
    invoke-static {v0}, Lauq;->k(I)I

    move-result p1

    invoke-direct {p0, p1, v1}, Lauq;->u(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lauq;->p(I)Landroid/media/AudioAttributes;

    move-result-object p1

    .line 7
    invoke-direct {p0, v0, p1}, Lauq;->q(ILandroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest;

    move-result-object p1

    iget-object v0, p0, Lauq;->h:Ljava/util/Map;

    .line 8
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    invoke-static {}, Lats;->a()Latr;

    move-result-object v3

    invoke-virtual {v3, p1}, Latr;->d(Landroid/media/AudioFocusRequest;)V

    invoke-virtual {v3}, Latr;->a()Lats;

    move-result-object v3

    .line 10
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-direct {p0, p1, v2}, Lauq;->t(Landroid/media/AudioFocusRequest;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lauq;->r()V

    iget-object v0, p0, Lauq;->k:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lauq;->j:Lcom/google/android/projection/protocol/GalReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
