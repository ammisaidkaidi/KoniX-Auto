.class public final synthetic Lauv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lauw;

.field public final synthetic b:I

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lauw;II)V
    .locals 0

    iput p3, p0, Lauv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lauv;->a:Lauw;

    iput p2, p0, Lauv;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 10
    iget v0, p0, Lauv;->c:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lauv;->a:Lauw;

    iget v2, p0, Lauv;->b:I

    sget-object v3, Lauw;->b:Lcqw;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v0, Lauw;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager"

    const-string v3, "handleAudioFocusRequest"

    const/16 v4, 0x99

    const-string v5, "VoiceSessionAudioFocusManager.java"

    .line 11
    invoke-interface {v0, v1, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Invalid audio focus request from GAL: %d"

    invoke-interface {v0, v1, v2}, Lcsx;->o(Ljava/lang/String;I)V

    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lauv;->a:Lauw;

    iget v2, p0, Lauv;->b:I

    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_1

    .line 6
    :pswitch_1
    sget-object v0, Lauw;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager"

    const-string v3, "handlePlatformFocusChanged"

    const/16 v4, 0x176

    const-string v5, "VoiceSessionAudioFocusManager.java"

    .line 9
    invoke-interface {v0, v1, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unknown focus event %d"

    invoke-interface {v0, v1, v2}, Lcsx;->o(Ljava/lang/String;I)V

    return-void

    .line 6
    :pswitch_2
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x2

    goto :goto_0

    .line 17
    :pswitch_4
    const/4 v4, 0x3

    :goto_0
    iget-object v5, v0, Lauw;->g:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    :try_start_0
    iget-object v2, v0, Lauw;->i:Ljava/util/Set;

    .line 1
    sget-object v6, Lauc;->b:Lauc;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    iput v2, v0, Lauw;->o:I

    sget-object v2, Lauw;->f:Landroid/media/AudioAttributes;

    .line 2
    invoke-virtual {v0, v3, v2}, Lauw;->e(ILandroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest;

    move-result-object v2

    iput-object v2, v0, Lauw;->j:Landroid/media/AudioFocusRequest;

    const/4 v4, 0x1

    goto :goto_1

    .line 8
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lauw;->j:Landroid/media/AudioFocusRequest;

    iput-object v2, v0, Lauw;->k:Landroid/media/AudioAttributes;

    iput v1, v0, Lauw;->o:I

    goto :goto_1

    :cond_1
    iget v3, v0, Lauw;->p:I

    if-ne v4, v3, :cond_2

    .line 3
    monitor-exit v5

    return-void

    :cond_2
    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lauw;->j:Landroid/media/AudioFocusRequest;

    if-eqz v2, :cond_3

    sget-object v2, Lauw;->d:Landroid/media/AudioAttributes;

    iget-object v3, v0, Lauw;->k:Landroid/media/AudioAttributes;

    .line 4
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lauw;->c:Lcqw;

    iget-object v3, v0, Lauw;->j:Landroid/media/AudioFocusRequest;

    .line 5
    invoke-virtual {v3}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v0}, Lauw;->f()V

    const/4 v4, 0x1

    .line 2
    :cond_3
    :goto_1
    iput v4, v0, Lauw;->p:I

    .line 7
    invoke-virtual {v0, v1}, Lauw;->g(Z)V

    .line 8
    monitor-exit v5

    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12
    :cond_4
    invoke-static {v2}, Laul;->g(I)I

    move-result v3

    iget-object v4, v0, Lauw;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 13
    :try_start_1
    invoke-static {v2}, Lauw;->d(I)I

    move-result v5

    sget-object v6, Lauw;->d:Landroid/media/AudioAttributes;

    .line 14
    sget v7, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 v7, 0x4

    if-eq v2, v7, :cond_6

    iget-boolean v8, v0, Lauw;->m:Z

    if-eqz v8, :cond_5

    sget-object v6, Lauw;->e:Landroid/media/AudioAttributes;

    const/4 v5, 0x4

    goto :goto_2

    .line 17
    :cond_5
    if-eq v2, v1, :cond_6

    sget-object v6, Lauw;->f:Landroid/media/AudioAttributes;

    .line 14
    :cond_6
    :goto_2
    if-eqz v5, :cond_9

    .line 15
    invoke-virtual {v0, v5, v6, v3}, Lauw;->i(ILandroid/media/AudioAttributes;I)I

    move-result v5

    if-eqz v5, :cond_7

    iput v2, v0, Lauw;->l:I

    goto :goto_4

    .line 19
    :cond_7
    sget-object v2, Lauw;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->c()Lctq;

    move-result-object v2

    const-string v5, "com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager"

    const-string v6, "handleAudioFocusRequest"

    const/16 v7, 0xb3

    const-string v8, "VoiceSessionAudioFocusManager.java"

    .line 16
    invoke-interface {v2, v5, v6, v7, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const-string v5, "Audio focus request for %s rejected"

    if-ne v3, v1, :cond_8

    const-string v1, "RELEASE"

    goto :goto_3

    :cond_8
    packed-switch v3, :pswitch_data_2

    const-string v1, "GAIN_TRANSIENT_MAY_DUCK"

    goto :goto_3

    :pswitch_5
    const-string v1, "GAIN_TRANSIENT"

    goto :goto_3

    :pswitch_6
    const-string v1, "GAIN"

    :goto_3
    invoke-interface {v2, v5, v1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 17
    :cond_9
    invoke-virtual {v0}, Lauw;->f()V

    .line 15
    :goto_4
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lauw;->g(Z)V

    .line 19
    monitor-exit v4

    return-void

    .line 9
    :catchall_1
    move-exception v0

    .line 19
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
