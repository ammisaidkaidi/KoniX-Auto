.class public Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;
.super Laxm;
.source "PG"

# interfaces
.implements Lbag;


# static fields
.field private static final h:Lcsz;


# instance fields
.field public f:Lfu;

.field public g:Lbah;

.field private final i:Landroid/os/IBinder;

.field private j:Z

.field private k:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/media/MediaBrowserService"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->h:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Laxm;-><init>()V

    new-instance v0, Laxo;

    .line 2
    invoke-direct {v0, p0}, Laxo;-><init>(Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->i:Landroid/os/IBinder;

    return-void
.end method

.method public static i(Lbbl;I)V
    .locals 3

    .line 1
    sget-object v0, Lckb;->a:Lckb;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lbbl;->c(Lckb;Landroid/view/KeyEvent;)V

    sget-object v0, Lckb;->a:Lckb;

    new-instance v1, Landroid/view/KeyEvent;

    .line 2
    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lbbl;->c(Lckb;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private static k(Ljava/lang/String;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 2

    .line 1
    new-instance v0, Lfx;

    invoke-direct {v0}, Lfx;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lfx;->b:I

    iput-object p0, v0, Lfx;->c:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {v0}, Lfx;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final aQ(Labo;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Labo;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Labc;
    .locals 6

    .line 1
    const-string v0, "MediaBrowserService.java"

    const-string v1, "onGetRoot"

    const-string v2, "com/google/android/apps/auto/aareceiver/media/MediaBrowserService"

    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Labc;

    invoke-direct {v3, v5}, Labc;-><init>(Landroid/os/Bundle;)V

    return-object v3

    :cond_0
    sget-object v3, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->h:Lcsz;

    invoke-virtual {v3}, Lcsv;->c()Lctq;

    move-result-object v3

    const/16 v4, 0x84

    .line 4
    invoke-interface {v3, v2, v1, v4, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const-string v4, "Connection to media browser service is rejected for %s"

    invoke-interface {v3, v4, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v3

    sget-object v4, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->h:Lcsz;

    invoke-virtual {v4}, Lcsv;->b()Lctq;

    move-result-object v4

    .line 5
    invoke-interface {v4, v3}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const/16 v4, 0x89

    invoke-interface {v3, v2, v1, v4, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "%s is not found."

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v5
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "*** "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ***"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->j:Z

    new-instance v3, Ljava/lang/StringBuilder;

    .line 2
    const/16 v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "service is bound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->k:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "service is bound by intent: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {v0}, Lfu;->i()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "sessionCompat\'s active status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    .line 5
    invoke-virtual {v0}, Lfu;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sessionCompat\'s session token: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    iget-object v0, v0, Lfu;->c:Lfk;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lfk;->a:Lfh;

    move-object v3, v0

    check-cast v3, Lfj;

    iget-object v4, v3, Lfj;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 6
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Lff;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    check-cast v0, Lfj;

    iget-object v0, v0, Lfj;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Lff;

    move-result-object v0

    invoke-interface {v0}, Lff;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 36
    :catch_0
    move-exception v0

    .line 8
    const-string v4, "MediaControllerCompat"

    const-string v6, "Dead object in getPlaybackState."

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_1
    iget-object v0, v3, Lfj;->a:Landroid/media/session/MediaController;

    .line 9
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-static {v0}, Lfv;->q(Landroid/media/session/PlaybackState;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 13
    check-cast v6, Landroid/media/session/PlaybackState$CustomAction;

    .line 14
    invoke-static {v6}, Lfv;->m(Landroid/media/session/PlaybackState$CustomAction;)Landroid/os/Bundle;

    move-result-object v7

    .line 15
    invoke-static {v7}, Lfu;->c(Landroid/os/Bundle;)V

    new-instance v8, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 16
    invoke-static {v6}, Lfv;->p(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-static {v6}, Lfv;->o(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 18
    invoke-static {v6}, Lfv;->b(Landroid/media/session/PlaybackState$CustomAction;)I

    move-result v11

    invoke-direct {v8, v9, v10, v11, v7}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    iput-object v6, v8, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->e:Landroid/media/session/PlaybackState$CustomAction;

    goto :goto_1

    .line 19
    :cond_2
    move-object v8, v5

    :goto_1
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object/from16 v22, v4

    goto :goto_2

    .line 29
    :cond_4
    move-object/from16 v22, v5

    .line 20
    :goto_2
    invoke-static {v0}, Lfw;->a(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v25, v3

    .line 21
    invoke-static {v3}, Lfu;->c(Landroid/os/Bundle;)V

    new-instance v3, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v9, v3

    .line 22
    invoke-static {v0}, Lfv;->c(Landroid/media/session/PlaybackState;)I

    move-result v10

    .line 23
    invoke-static {v0}, Lfv;->h(Landroid/media/session/PlaybackState;)J

    move-result-wide v11

    .line 24
    invoke-static {v0}, Lfv;->f(Landroid/media/session/PlaybackState;)J

    move-result-wide v13

    .line 25
    invoke-static {v0}, Lfv;->a(Landroid/media/session/PlaybackState;)F

    move-result v15

    .line 26
    invoke-static {v0}, Lfv;->d(Landroid/media/session/PlaybackState;)J

    move-result-wide v16

    const/16 v18, 0x0

    .line 27
    invoke-static {v0}, Lfv;->n(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 28
    invoke-static {v0}, Lfv;->g(Landroid/media/session/PlaybackState;)J

    move-result-wide v20

    .line 29
    invoke-static {v0}, Lfv;->e(Landroid/media/session/PlaybackState;)J

    move-result-wide v23

    invoke-direct/range {v9 .. v25}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    iput-object v0, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Landroid/media/session/PlaybackState;

    move-object v0, v3

    goto :goto_3

    :cond_5
    move-object v0, v5

    .line 30
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sessionCompat\'s playback status: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    iget-object v0, v0, Lfu;->c:Lfk;

    iget-object v0, v0, Lfk;->a:Lfh;

    check-cast v0, Lfj;

    iget-object v0, v0, Lfj;->a:Landroid/media/session/MediaController;

    .line 32
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 33
    invoke-static {v0}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v5

    goto :goto_4

    .line 34
    :cond_6
    nop

    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sessionCompat\'s meta data: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_7
    nop

    .line 35
    const-string v0, "session compat\'s controller is null."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_8
    nop

    .line 36
    const-string v0, "session compat is null."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lawo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    const v0, 0x7f100001

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->k(Ljava/lang/String;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfu;->h(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public final g(Lawo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->g:Lbah;

    invoke-virtual {p1}, Lbah;->i()Lcqh;

    move-result-object p1

    invoke-virtual {p1}, Lcqh;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    const/high16 v0, 0x7f100000

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->k(Ljava/lang/String;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lfu;->h(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_0
    return-void
.end method

.method public final synthetic h(Lbbl;)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfu;->d(Z)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    .line 2
    const/high16 v1, 0x7f100000

    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->k(Ljava/lang/String;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lfu;->h(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    .line 4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfu;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->j:Z

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->k:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediaBrowserServiceIntentAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->i:Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labz;->e:Labi;

    .line 2
    invoke-virtual {v0, p1}, Labi;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    .line 1
    :goto_0
    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Laxm;->onCreate()V

    new-instance v0, Lfu;

    .line 2
    invoke-direct {v0, p0}, Lfu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    iget-object v0, v0, Lfu;->b:Lfo;

    .line 3
    invoke-interface {v0}, Lfo;->m()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    .line 4
    invoke-virtual {v0}, Lfu;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Labz;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v1, :cond_0

    .line 6
    iput-object v0, p0, Labz;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Labz;->e:Labi;

    iget-object v2, v1, Labi;->d:Labz;

    iget-object v2, v2, Labz;->c:Laby;

    new-instance v3, Labf;

    invoke-direct {v3, v1, v0}, Labf;-><init>(Labi;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 7
    invoke-virtual {v2, v3}, Laby;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    const/high16 v1, 0x7f100000

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->k(Ljava/lang/String;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lfu;->h(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->g:Lbah;

    .line 10
    invoke-virtual {v0, p0}, Lbah;->n(Lbag;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "The session token has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string v1, "Session token may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Laxm;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->g:Lbah;

    .line 2
    invoke-virtual {v0, p0}, Lbah;->r(Lbag;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->j()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    iget-object v0, v0, Lfu;->b:Lfo;

    .line 4
    invoke-interface {v0}, Lfo;->c()V

    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->k:Landroid/content/Intent;

    return p1
.end method
