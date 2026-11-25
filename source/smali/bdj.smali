.class final Lbdj;
.super Lbdo;
.source "PG"


# instance fields
.field final synthetic a:Lbdq;


# direct methods
.method public constructor <init>(Lbdq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbdj;->a:Lbdq;

    invoke-direct {p0, p1}, Lbdo;-><init>(Lbdq;)V

    return-void
.end method


# virtual methods
.method public final onStarted(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbdj;->a:Lbdq;

    iget-object v0, v0, Lbdq;->h:Lbde;

    if-eqz v0, :cond_0

    sget-object v1, Lbdf;->b:Lbdf;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lbde;->b(Lbdf;I)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    iget-object v0, p0, Lbdj;->a:Lbdq;

    iget-object v0, v0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v1

    iget-object v2, p0, Lbdj;->a:Lbdq;

    .line 4
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->toWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {p1, v1}, Lbdq;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, v2, Lbdq;->l:Landroid/net/wifi/WifiConfiguration;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbdj;->a:Lbdq;

    .line 8
    invoke-virtual {p1}, Lbdq;->d()Ldag;

    move-result-object p1

    iget-object v0, p0, Lbdj;->a:Lbdq;

    iget-object v1, v0, Lbdq;->o:Lczv;

    iget-object v0, v0, Lbdq;->j:Ldah;

    .line 9
    invoke-static {p1, v1, v0}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    return-void

    .line 5
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
