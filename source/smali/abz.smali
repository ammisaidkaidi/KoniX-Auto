.class public abstract Labz;
.super Landroid/app/Service;
.source "PG"


# instance fields
.field final a:Ljava/util/ArrayList;

.field final b:Lvb;

.field public final c:Laby;

.field public d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public e:Labi;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Labe;

    .line 2
    const-string v2, "android.media.session.MediaController"

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Labe;-><init>(Labz;Ljava/lang/String;IILabx;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labz;->a:Ljava/util/ArrayList;

    new-instance v0, Lvb;

    invoke-direct {v0}, Lvb;-><init>()V

    iput-object v0, p0, Labz;->b:Lvb;

    new-instance v0, Laby;

    .line 4
    invoke-direct {v0, p0}, Laby;-><init>(Labz;)V

    iput-object v0, p0, Labz;->c:Laby;

    return-void
.end method

.method static final a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, v1, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    return-object p0

    :cond_2
    move v1, v0

    .line 2
    :goto_0
    mul-int v0, p1, v1

    add-int v2, v0, p1

    if-ltz v1, :cond_5

    if-lez p1, :cond_5

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le v2, p1, :cond_4

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 7
    :cond_4
    nop

    :goto_1
    invoke-interface {p0, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Labo;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Labo;->h:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labo;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract aQ(Labo;)V
.end method

.method public abstract b(Ljava/lang/String;)Labc;
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final e(Labo;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p1, Labo;->h:I

    invoke-virtual {p0, p1}, Labz;->aQ(Labo;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Labz;->e:Labi;

    invoke-virtual {v0, p1}, Labi;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Labn;

    .line 2
    invoke-direct {v0, p0}, Labn;-><init>(Labz;)V

    iput-object v0, p0, Labz;->e:Labi;

    .line 3
    new-instance v1, Labm;

    move-object v2, v0

    check-cast v2, Labn;

    iget-object v2, v0, Labn;->e:Labz;

    invoke-direct {v1, v0, v2}, Labm;-><init>(Labn;Landroid/content/Context;)V

    iput-object v1, v0, Labn;->b:Landroid/service/media/MediaBrowserService;

    iget-object v0, v0, Labn;->b:Landroid/service/media/MediaBrowserService;

    .line 4
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method
