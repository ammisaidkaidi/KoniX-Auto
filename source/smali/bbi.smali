.class final Lbbi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lbbl;


# direct methods
.method public constructor <init>(Lbbl;)V
    .locals 0

    iput-object p1, p0, Lbbi;->a:Lbbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lbbi;->a:Lbbl;

    check-cast p2, Laxo;

    iget-object p2, p2, Laxo;->a:Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;

    iput-object p2, p1, Lbbl;->b:Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;

    iget-object p2, p1, Lbbl;->b:Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;

    iget-object v0, p2, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    .line 2
    invoke-virtual {v0}, Lfu;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lfu;->d(Z)V

    :cond_0
    iget-object p2, p2, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    new-instance v0, Laxn;

    .line 4
    invoke-direct {v0, p1}, Laxn;-><init>(Lbbl;)V

    invoke-virtual {p2, v0}, Lfu;->e(Lfn;)V

    iget-object p1, p0, Lbbi;->a:Lbbl;

    iget-object p2, p1, Lbbl;->k:Laxs;

    iget-object p1, p1, Lbbl;->b:Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;

    iget-object p1, p1, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    iput-object p1, p2, Laxs;->c:Lfu;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lbbi;->a:Lbbl;

    const/4 v0, 0x0

    iput-object v0, p1, Lbbl;->b:Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;

    iget-object p1, p1, Lbbl;->k:Laxs;

    iput-object v0, p1, Laxs;->c:Lfu;

    return-void
.end method
