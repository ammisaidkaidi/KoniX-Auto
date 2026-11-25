.class public final synthetic Lauu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lauw;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lauw;I)V
    .locals 0

    iput p2, p0, Lauu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lauu;->a:Lauw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 8
    iget v0, p0, Lauu;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lauu;->a:Lauw;

    iget-object v2, v0, Lauw;->g:Ljava/lang/Object;

    monitor-enter v2

    goto :goto_1

    .line 13
    :pswitch_0
    iget-object v0, p0, Lauu;->a:Lauw;

    iget-object v2, v0, Lauw;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lauw;->j:Landroid/media/AudioFocusRequest;

    if-nez v3, :cond_0

    .line 1
    monitor-exit v2

    return-void

    :cond_0
    iget v3, v0, Lauw;->p:I

    sget-object v4, Lauw;->e:Landroid/media/AudioAttributes;

    const/4 v5, 0x3

    .line 2
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v4, v5}, Lauw;->i(ILandroid/media/AudioAttributes;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-static {v6}, Laul;->c(I)Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v4, Lauw;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    const-string v5, "com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager"

    const-string v7, "handleVoiceSessionStarted"

    const/16 v8, 0x12d

    const-string v9, "VoiceSessionAudioFocusManager.java"

    .line 4
    invoke-interface {v4, v5, v7, v8, v9}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v4

    check-cast v4, Lcsx;

    const-string v5, "Couldn\'t switch focus: %s, %s"

    .line 5
    invoke-static {v6}, Laul;->c(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lauw;->e:Landroid/media/AudioAttributes;

    .line 4
    invoke-interface {v4, v5, v6, v7}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :goto_0
    if-eq v3, v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Lauw;->g(Z)V

    .line 7
    :cond_2
    monitor-exit v2

    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :goto_1
    :try_start_1
    iget-object v3, v0, Lauw;->j:Landroid/media/AudioFocusRequest;

    if-eqz v3, :cond_4

    sget-object v3, Lauw;->e:Landroid/media/AudioAttributes;

    iget-object v4, v0, Lauw;->j:Landroid/media/AudioFocusRequest;

    invoke-virtual {v4}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lauw;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget v4, v0, Lauw;->l:I

    .line 9
    invoke-static {v4}, Lauw;->d(I)I

    move-result v4

    iget-object v5, v0, Lauw;->k:Landroid/media/AudioAttributes;

    iget v6, v0, Lauw;->l:I

    .line 10
    invoke-static {v6}, Laul;->g(I)I

    move-result v6

    .line 11
    invoke-virtual {v0, v4, v5, v6}, Lauw;->i(ILandroid/media/AudioAttributes;I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-static {v4}, Laul;->c(I)Ljava/lang/String;

    goto :goto_2

    .line 17
    :cond_3
    sget-object v5, Lauw;->a:Lcsz;

    invoke-virtual {v5}, Lcsv;->c()Lctq;

    move-result-object v5

    const-string v6, "com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager"

    const-string v7, "restorePreviousFocus"

    const/16 v8, 0x114

    const-string v9, "VoiceSessionAudioFocusManager.java"

    .line 13
    invoke-interface {v5, v6, v7, v8, v9}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v5

    check-cast v5, Lcsx;

    const-string v6, "Couldn\'t restore previous focus: %s, %s"

    .line 14
    invoke-static {v4}, Laul;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lauw;->k:Landroid/media/AudioAttributes;

    .line 13
    invoke-interface {v5, v6, v4, v7}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    :goto_2
    nop

    .line 15
    invoke-virtual {v0, v1}, Lauw;->g(Z)V

    .line 16
    monitor-exit v3

    goto :goto_3

    .line 17
    :catchall_1
    move-exception v0

    .line 16
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    .line 17
    :cond_4
    :goto_3
    monitor-exit v2

    return-void

    .line 4
    :catchall_2
    move-exception v0

    .line 17
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
