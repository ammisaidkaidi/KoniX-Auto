.class final Lbdl;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lbdq;


# direct methods
.method public constructor <init>(Lbdq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbdl;->a:Lbdq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p2, p0, Lbdl;->a:Lbdq;

    const-string v0, "wifi_state"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "previous_wifi_state"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    sget-object v1, Lbdq;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbdq;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_7

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/16 p1, 0xb

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    return-void

    .line 26
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->shouldIgnoreApDisabledBroadcast()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p2, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {}, Ldib;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p2, Lbdq;->m:Ljava/lang/String;

    .line 31
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p2, Lbdq;->m:Ljava/lang/String;

    :cond_4
    sget-object p1, Ldib;->a:Ldib;

    .line 32
    invoke-virtual {p1}, Ldib;->b()Ldic;

    move-result-object p1

    invoke-interface {p1}, Ldic;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p2, Lbdq;->l:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_5

    .line 33
    invoke-virtual {p2, v1}, Lbdq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 38
    monitor-exit v0

    return-void

    :cond_5
    iget-object p1, p2, Lbdq;->i:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p2, Lbdq;->l:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_6

    .line 34
    invoke-virtual {p2}, Lbdq;->g()V

    iget-object p2, p2, Lbdq;->e:Landroid/car/CarProjectionManager;

    .line 35
    invoke-static {p2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->stopProjectionAccessPoint(Landroid/car/CarProjectionManager;)V

    .line 36
    :cond_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 36
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    .line 26
    :catchall_1
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 5
    :cond_7
    :goto_1
    iget-object v0, p2, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_5
    invoke-static {}, Ldib;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p2, Lbdq;->m:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 29
    monitor-exit v0

    return-void

    :cond_8
    iput-object v1, p2, Lbdq;->m:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lbdq;->f()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 8
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lbdq;->k:Ljava/lang/String;

    :cond_9
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_a

    iput v2, p2, Lbdq;->p:I

    goto :goto_2

    .line 26
    :cond_a
    if-ne p1, v3, :cond_b

    iput v3, p2, Lbdq;->p:I

    const/4 p1, 0x1

    .line 8
    :cond_b
    :goto_2
    iget-object v2, p2, Lbdq;->g:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v2, :cond_c

    sget-object p1, Lbdq;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    const-string v1, "handleOnApStateChanged"

    const/16 v2, 0x155

    const-string v3, "AccessPoint.java"

    .line 10
    invoke-interface {p1, p2, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "android.permission.OVERRIDE_WIFI_CONFIG not granted."

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 11
    monitor-exit v0

    return-void

    :cond_c
    iget-object v2, p2, Lbdq;->f:Landroid/net/wifi/WifiManager;

    .line 12
    invoke-static {v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getWifiApConfigurationSafe(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_d

    sget-object p1, Lbdq;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    const-string v1, "handleOnApStateChanged"

    const/16 v2, 0x15b

    const-string v3, "AccessPoint.java"

    .line 13
    invoke-interface {p1, p2, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "No AP WifiConfiguration returned by WifiManager."

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 14
    monitor-exit v0

    return-void

    :cond_d
    if-ne p1, v3, :cond_11

    sget-object p1, Ldib;->a:Ldib;

    .line 15
    invoke-virtual {p1}, Ldib;->b()Ldic;

    move-result-object p1

    invoke-interface {p1}, Ldic;->c()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-boolean p1, Lbdq;->b:Z

    if-eqz p1, :cond_e

    iget-object p1, p2, Lbdq;->f:Landroid/net/wifi/WifiManager;

    .line 20
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 21
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p1

    if-ne p1, v3, :cond_f

    sget-object p1, Lbdq;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    const-string v1, "handleOnApStateChanged"

    const/16 v2, 0x164

    const-string v3, "AccessPoint.java"

    .line 27
    invoke-interface {p1, p2, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "AP supports only 2GHz"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 28
    monitor-exit v0

    return-void

    .line 16
    :cond_e
    invoke-static {v2}, Lbhi;->b(Landroid/net/wifi/WifiConfiguration;)Lj$/util/Optional;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_f

    sget-object p1, Lbdq;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    const-string v1, "handleOnApStateChanged"

    const/16 v2, 0x16a

    const-string v3, "AccessPoint.java"

    .line 18
    invoke-interface {p1, p2, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "AP supports only 2GHz"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 19
    monitor-exit v0

    return-void

    .line 22
    :cond_f
    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Lbdq;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"

    const-string v1, "handleOnApStateChanged"

    const/16 v2, 0x170

    const-string v3, "AccessPoint.java"

    .line 23
    invoke-interface {p1, p2, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "AP is an open network and is not supported"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 24
    monitor-exit v0

    return-void

    .line 25
    :cond_10
    invoke-virtual {p2, v1}, Lbdq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lbdq;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p2, Lbdq;->l:Landroid/net/wifi/WifiConfiguration;

    .line 26
    :cond_11
    monitor-exit v0

    return-void

    .line 39
    :catchall_2
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 39
    :cond_12
    sget-object p1, Lbdq;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$4"

    const-string v0, "onReceive"

    const/16 v1, 0xdb

    const-string v2, "AccessPoint.java"

    invoke-interface {p1, p2, v0, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Received %s without extras"

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-interface {p1, p2, v0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
