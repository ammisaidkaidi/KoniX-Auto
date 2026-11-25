.class Labh;
.super Landroid/service/media/MediaBrowserService;
.source "PG"


# instance fields
.field final synthetic a:Labi;


# direct methods
.method public constructor <init>(Labi;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Labh;->a:Labi;

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Labh;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 11

    .line 1
    invoke-static {p3}, Lfu;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Labh;->a:Labi;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1
    :goto_0
    const/4 p3, -0x1

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 3
    const-string v4, "extra_client_version"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, v0, Labi;->d:Labz;

    iget-object v4, v4, Labz;->c:Laby;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v0, Labi;->c:Landroid/os/Messenger;

    new-instance v3, Landroid/os/Bundle;

    .line 6
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x2

    .line 7
    const-string v5, "extra_service_version"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, v0, Labi;->c:Landroid/os/Messenger;

    .line 8
    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 9
    const-string v5, "extra_messenger"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v4, v0, Labi;->d:Labz;

    iget-object v4, v4, Labz;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Lff;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {v4}, Lff;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 10
    :goto_1
    nop

    .line 11
    const-string v5, "extra_session_binder"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object v4, v0, Labi;->a:Ljava/util/List;

    .line 12
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_2
    nop

    .line 13
    const-string v4, "extra_calling_pid"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 14
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v8, p3

    goto :goto_3

    .line 12
    :cond_3
    move-object v3, v1

    const/4 v8, -0x1

    .line 14
    :goto_3
    new-instance p3, Labe;

    iget-object v6, v0, Labi;->d:Labz;

    const/4 v10, 0x0

    .line 15
    move-object v5, p3

    move-object v7, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Labe;-><init>(Labz;Ljava/lang/String;IILabx;)V

    iget-object p2, v0, Labi;->d:Labz;

    .line 16
    invoke-virtual {p2, p1}, Labz;->b(Ljava/lang/String;)Labc;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, v1

    goto :goto_5

    .line 20
    :cond_4
    iget-object p2, v0, Labi;->c:Landroid/os/Messenger;

    if-eqz p2, :cond_5

    iget-object p2, v0, Labi;->d:Labz;

    iget-object p2, p2, Labz;->a:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v3, :cond_6

    iget-object v3, p1, Labc;->b:Landroid/os/Bundle;

    goto :goto_4

    :cond_6
    iget-object p1, p1, Labc;->b:Landroid/os/Bundle;

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 17
    :cond_7
    :goto_4
    new-instance p1, Labc;

    invoke-direct {p1, v3}, Labc;-><init>(Landroid/os/Bundle;)V

    .line 16
    :goto_5
    if-nez p1, :cond_8

    return-object v1

    .line 19
    :cond_8
    new-instance p2, Landroid/service/media/MediaBrowserService$BrowserRoot;

    iget-object p3, p1, Labc;->a:Ljava/lang/String;

    iget-object p1, p1, Labc;->b:Landroid/os/Bundle;

    .line 20
    invoke-direct {p2, p3, p1}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Labh;->a:Labi;

    new-instance v1, Labp;

    invoke-direct {v1, p2}, Labp;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    new-instance p2, Labg;

    invoke-direct {p2, p1, v1}, Labg;-><init>(Ljava/lang/Object;Labp;)V

    iget-object p1, v0, Labi;->d:Labz;

    invoke-virtual {p1, p2}, Labz;->aQ(Labo;)V

    return-void
.end method
