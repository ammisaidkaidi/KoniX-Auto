.class public final Lbdq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field public static final b:Z

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;


# instance fields
.field public final e:Landroid/car/CarProjectionManager;

.field public final f:Landroid/net/wifi/WifiManager;

.field public final g:Landroid/content/Context;

.field public final h:Lbde;

.field public final i:Ljava/lang/Object;

.field public final j:Ldah;

.field public k:Ljava/lang/String;

.field public l:Landroid/net/wifi/WifiConfiguration;

.field m:Ljava/lang/String;

.field final n:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

.field public final o:Lczv;

.field public p:I

.field private final q:Lbdw;

.field private final r:Ljava/util/ArrayList;

.field private final s:Landroid/os/Handler;

.field private final t:Landroid/location/LocationManager;

.field private final u:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbdq;->a:Lcsz;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "R"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lbdq;->b:Z

    if-eq v1, v0, :cond_2

    const-string v2, "wifi_ap_interface_name"

    goto :goto_2

    :cond_2
    const-string v2, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    :goto_2
    sput-object v2, Lbdq;->c:Ljava/lang/String;

    if-eq v1, v0, :cond_3

    const-string v0, "wifi_ap_mode"

    goto :goto_3

    :cond_3
    const-string v0, "android.net.wifi.extra.WIFI_AP_MODE"

    :goto_3
    sput-object v0, Lbdq;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/car/CarProjectionManager;Lbdw;Ldah;Lbde;Landroid/location/LocationManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbdq;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbdq;->r:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Lbdi;

    invoke-direct {v0, p0}, Lbdi;-><init>(Lbdq;)V

    iput-object v0, p0, Lbdq;->n:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    new-instance v0, Lbdj;

    .line 3
    invoke-direct {v0, p0}, Lbdj;-><init>(Lbdq;)V

    iput-object v0, p0, Lbdq;->u:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    new-instance v0, Lbdk;

    invoke-direct {v0, p0}, Lbdk;-><init>(Lbdq;)V

    iput-object v0, p0, Lbdq;->o:Lczv;

    iput-object p1, p0, Lbdq;->g:Landroid/content/Context;

    iput-object p2, p0, Lbdq;->f:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lbdq;->q:Lbdw;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lbdq;->e:Landroid/car/CarProjectionManager;

    iput-object p5, p0, Lbdq;->j:Ldah;

    iput-object p6, p0, Lbdq;->h:Lbde;

    iput-object p7, p0, Lbdq;->t:Landroid/location/LocationManager;

    new-instance p2, Lbdp;

    .line 5
    invoke-direct {p2, p0}, Lbdp;-><init>(Lbdq;)V

    iput-object p2, p0, Lbdq;->s:Landroid/os/Handler;

    .line 6
    invoke-static {}, Ldkm;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lbdm;

    .line 7
    invoke-direct {p2, p0}, Lbdm;-><init>(Lbdq;)V

    invoke-virtual {p0, p2}, Lbdq;->h(Lbdr;)V

    :cond_0
    new-instance p2, Lbdl;

    .line 8
    invoke-direct {p2, p0}, Lbdl;-><init>(Lbdq;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b()Lbdt;
    .locals 8

    .line 1
    iget-object v0, p0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbdq;->l:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, p0, Lbdq;->k:Ljava/lang/String;

    iget v6, p0, Lbdq;->p:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    new-instance v0, Lbdt;

    .line 3
    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lbdt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final c()Lcqh;
    .locals 2

    .line 1
    iget-object v0, p0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbdq;->r:Ljava/util/ArrayList;

    invoke-static {v1}, Lcqh;->n(Ljava/util/Collection;)Lcqh;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Ldag;
    .locals 3

    .line 1
    iget-object v0, p0, Lbdq;->j:Ldah;

    new-instance v1, Lbdh;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbdh;-><init>(Lbdq;I)V

    invoke-interface {v0, v1}, Ldah;->b(Ljava/util/concurrent/Callable;)Ldag;

    move-result-object v0

    return-object v0
.end method

.method final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lbdq;->q:Lbdw;

    invoke-virtual {v1, p1}, Lbdw;->b(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lbdq;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const/16 v2, 0x26e

    .line 5
    const-string v3, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    const-string v4, "getBssid"

    const-string v5, "AccessPoint.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "BSSID is null for interface %s"

    invoke-interface {v1, v2, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MacAddress;

    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final f()Ljava/net/InetAddress;
    .locals 6

    iget-object v0, p0, Lbdq;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApHostInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 1
    iget-object v0, p0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbdq;->m:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lbdq;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    const-string v3, "getHostIp"

    const/16 v4, 0x27d

    const-string v5, "AccessPoint.java"

    .line 2
    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Network interface for access point is unknown"

    invoke-interface {v1, v2}, Lcsx;->n(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lbdq;->q:Lbdw;

    .line 3
    invoke-virtual {v2, v1}, Lbdw;->a(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0

    :catchall_0
    move-exception v1

    .line 1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lbdq;->l:Landroid/net/wifi/WifiConfiguration;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h(Lbdr;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbdq;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lbdq;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v1, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    const-string v2, "registerObserver"

    const/16 v3, 0x1db

    const-string v4, "AccessPoint.java"

    .line 2
    invoke-interface {p1, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v1, "Observer already registered"

    invoke-interface {p1, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lbdq;->r:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lbdq;->b()Lbdt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lbdt;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p1, v0}, Lbdr;->b(Lbdt;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Lbdr;)V
    .locals 4

    .line 1
    new-instance v0, Lbdn;

    invoke-direct {v0, p0, p1}, Lbdn;-><init>(Lbdq;Lbdr;)V

    invoke-virtual {p0, v0}, Lbdq;->h(Lbdr;)V

    iget-object v1, p0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbdq;->r:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    monitor-exit v1

    return-void

    :cond_0
    iget-object p1, p0, Lbdq;->s:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7530

    .line 5
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lbdq;->b()Lbdt;

    move-result-object v0

    const-string v1, "AccessPoint.java"

    const-string v2, "start"

    const-string v3, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    if-eqz v0, :cond_2

    iget-object v4, v0, Lbdt;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2
    invoke-virtual {p0}, Lbdq;->c()Lcqh;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbdr;

    .line 3
    invoke-interface {v4, v0}, Lbdr;->b(Lbdt;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lbdq;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v4, 0xfa

    .line 4
    invoke-interface {v0, v3, v2, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Access point created, but host IP address was not provisioned"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lbdq;->d()Ldag;

    move-result-object v0

    iget-object v1, p0, Lbdq;->o:Lczv;

    iget-object v2, p0, Lbdq;->j:Ldah;

    invoke-static {v0, v1, v2}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    iget-object v0, p0, Lbdq;->t:Landroid/location/LocationManager;

    .line 6
    const/4 v0, 0x1

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lbdq;->h:Lbde;

    .line 7
    sget-object v4, Lbdf;->b:Lbdf;

    invoke-virtual {v0, v4}, Lbde;->a(Lbdf;)V

    sget-boolean v0, Lbdq;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbdq;->e:Landroid/car/CarProjectionManager;

    iget-object v4, p0, Lbdq;->u:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    .line 8
    invoke-static {v0, v4}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->startProjectionAccessPoint(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V

    return-void

    :cond_3
    iget-object v0, p0, Lbdq;->e:Landroid/car/CarProjectionManager;

    iget-object v4, p0, Lbdq;->n:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    .line 9
    invoke-static {v0, v4}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->startProjectionAccessPoint(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 12
    :catch_0
    move-exception v0

    iget-object v4, p0, Lbdq;->h:Lbde;

    .line 10
    sget-object v5, Lbdf;->b:Lbdf;

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lbde;->b(Lbdf;I)V

    sget-object v4, Lbdq;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    .line 11
    invoke-interface {v4, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v4, 0x113

    invoke-interface {v0, v3, v2, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "AccessPoint startup already running."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_4
    sget-object v0, Lbdq;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v4, 0x101

    .line 12
    invoke-interface {v0, v3, v2, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Can\'t start access point, location services might be disabled."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbdq;->b()Lbdt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbdt;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l(Lbdr;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbdq;->s:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lbdq;->r:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessPoint"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "{"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbdq;->l:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_0

    const-string v2, "AP is N/A"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "AP SSID: "

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v2}, Lcoe;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", IP: "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbdq;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iface: "

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbdq;->m:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", accessPointType: "

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbdq;->p:I

    if-eqz v2, :cond_1

    packed-switch v2, :pswitch_data_0

    const-string v2, "DYNAMIC"

    goto :goto_0

    .line 12
    :pswitch_0
    const-string v2, "STATIC"

    goto :goto_0

    :cond_1
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_1
    const-string v2, "}"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
