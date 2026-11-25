.class public final Lfu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static a:I


# instance fields
.field public final b:Lfo;

.field public final c:Lfk;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfu;->d:Ljava/util/ArrayList;

    .line 2
    const-string v0, "AAPMediaSession"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v2, Landroid/content/ComponentName;

    .line 9
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 11
    const-string v0, "MediaButtonReceiver"

    const-string v2, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto :goto_0

    .line 27
    :cond_1
    move-object v2, v4

    .line 9
    :goto_0
    if-nez v2, :cond_2

    .line 12
    const-string v0, "MediaSessionCompat"

    const-string v6, "Couldn\'t find a unique registered media button receiver in the given context."

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_4

    new-instance v0, Landroid/content/Intent;

    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lre;->c()Z

    move-result v1

    if-eq v5, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 18
    :cond_3
    const/high16 v1, 0x2000000

    .line 15
    :goto_1
    nop

    .line 16
    invoke-static {p1, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_2

    .line 18
    :cond_4
    nop

    .line 16
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    new-instance v0, Lfs;

    .line 17
    invoke-direct {v0, p1}, Lfs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfu;->b:Lfo;

    goto :goto_3

    .line 20
    :cond_5
    new-instance v0, Lfr;

    .line 18
    invoke-direct {v0, p1}, Lfr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfu;->b:Lfo;

    .line 17
    :goto_3
    new-instance v0, Landroid/os/Handler;

    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_4
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lfn;

    .line 21
    invoke-direct {v1}, Lfn;-><init>()V

    .line 22
    invoke-virtual {p0, v1, v0}, Lfu;->f(Lfn;Landroid/os/Handler;)V

    iget-object v0, p0, Lfu;->b:Lfo;

    .line 23
    invoke-interface {v0, v4}, Lfo;->f(Landroid/app/PendingIntent;)V

    new-instance v0, Lfk;

    .line 24
    invoke-direct {v0, p1, p0}, Lfk;-><init>(Landroid/content/Context;Lfu;)V

    iput-object v0, p0, Lfu;->c:Lfk;

    sget v0, Lfu;->a:I

    if-nez v0, :cond_7

    const/high16 v0, 0x43a00000    # 320.0f

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 26
    invoke-static {v5, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lfu;->a:I

    :cond_7
    return-void

    .line 11
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string v0, "tag must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-static {p0}, Lfu;->c(Landroid/os/Bundle;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    const-string p0, "MediaSessionCompat"

    const-string v0, "Could not unparcel the data."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const-class v0, Lfu;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Lfu;->b:Lfo;

    invoke-interface {v0}, Lfo;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfu;->b:Lfo;

    invoke-interface {v0, p1}, Lfo;->d(Z)V

    iget-object p1, p0, Lfu;->d:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Lft;

    .line 3
    invoke-interface {v2}, Lft;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lfn;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lfu;->f(Lfn;Landroid/os/Handler;)V

    return-void
.end method

.method public final f(Lfn;Landroid/os/Handler;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    iget-object p1, p0, Lfu;->b:Lfo;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lfo;->e(Lfn;Landroid/os/Handler;)V

    return-void

    :cond_0
    iget-object v0, p0, Lfu;->b:Lfo;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    :goto_0
    invoke-interface {v0, p1, p2}, Lfo;->e(Lfn;Landroid/os/Handler;)V

    return-void
.end method

.method public final g(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfu;->b:Lfo;

    invoke-interface {v0, p1}, Lfo;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public final h(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfu;->b:Lfo;

    invoke-interface {v0, p1}, Lfo;->h(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfu;->b:Lfo;

    invoke-interface {v0}, Lfo;->k()Z

    move-result v0

    return v0
.end method
