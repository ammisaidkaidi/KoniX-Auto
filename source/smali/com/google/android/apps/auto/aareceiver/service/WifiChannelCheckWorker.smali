.class public Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;
.super Landroidx/work/Worker;
.source "PG"


# static fields
.field private static final g:Lcsz;


# instance fields
.field private final h:Lbhi;

.field private final i:Lawh;

.field private final j:Lbcj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->g:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const-class p2, Lbay;

    .line 2
    invoke-static {p1, p2}, Ldpx;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbay;

    .line 3
    invoke-interface {p1}, Lbay;->g()Lbhi;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    .line 4
    invoke-interface {p1}, Lbay;->c()Lawh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->i:Lawh;

    .line 5
    invoke-interface {p1}, Lbay;->f()Lbcj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->j:Lbcj;

    return-void
.end method


# virtual methods
.method public final h()Lex;
    .locals 12

    .line 1
    const-string v0, "WifiChannelCheckWorker.java"

    const-string v1, "doWork"

    const-string v2, "com/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker"

    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    invoke-virtual {v3}, Lbhi;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-static {}, Lex;->h()Lex;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    .line 3
    invoke-virtual {v3}, Lbhi;->c()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    iget-object v5, v4, Lbhi;->a:Landroid/net/wifi/WifiManager;

    .line 4
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget-object v4, v4, Lbhi;->a:Landroid/net/wifi/WifiManager;

    .line 5
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 13
    :cond_1
    iget-object v4, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    const/4 v5, 0x1

    .line 6
    invoke-virtual {v4, v5}, Lbhi;->f(Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    :try_start_1
    sget-object v5, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->g:Lcsz;

    invoke-virtual {v5}, Lcsv;->c()Lctq;

    move-result-object v5

    const/16 v6, 0x37

    .line 7
    invoke-interface {v5, v2, v1, v6, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v5

    check-cast v5, Lcsx;

    const-string v6, "Couldn\'t enable WiFi"

    invoke-interface {v5, v6}, Lcsx;->n(Ljava/lang/String;)V

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    :cond_4
    iget-object v7, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    .line 9
    invoke-virtual {v7}, Lbhi;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    const-wide/16 v7, 0x12c

    .line 10
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    const-wide/16 v7, 0x2710

    add-long/2addr v7, v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gtz v11, :cond_4

    iget-object v5, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    .line 12
    invoke-virtual {v5}, Lbhi;->c()Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->g:Lcsz;

    invoke-virtual {v5}, Lcsv;->c()Lctq;

    move-result-object v5

    const/16 v6, 0x3b

    .line 17
    invoke-interface {v5, v2, v1, v6, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v5

    check-cast v5, Lcsx;

    const-string v6, "Couldn\'t find channels"

    invoke-interface {v5, v6}, Lcsx;->n(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lex;->f()Lex;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    .line 13
    invoke-virtual {v1, v3}, Lbhi;->f(Z)Z

    :cond_6
    return-object v0

    .line 9
    :cond_7
    :goto_1
    if-eqz v4, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    .line 13
    invoke-virtual {v0, v3}, Lbhi;->f(Z)Z

    goto :goto_4

    .line 20
    :catch_0
    move-exception v5

    goto :goto_2

    .line 13
    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_3

    .line 7
    :catch_1
    move-exception v4

    const/4 v4, 0x0

    :goto_2
    :try_start_2
    sget-object v5, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->g:Lcsz;

    invoke-virtual {v5}, Lcsv;->c()Lctq;

    move-result-object v5

    const/16 v6, 0x40

    .line 19
    invoke-interface {v5, v2, v1, v6, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Failed to retrieve channels"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    invoke-static {}, Lex;->g()Lex;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    .line 13
    invoke-virtual {v1, v3}, Lbhi;->f(Z)Z

    :cond_8
    return-object v0

    .line 20
    :catchall_1
    move-exception v0

    .line 13
    :goto_3
    if-eqz v4, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->h:Lbhi;

    invoke-virtual {v1, v3}, Lbhi;->f(Z)Z

    .line 20
    :cond_9
    throw v0

    .line 13
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->i:Lawh;

    .line 14
    invoke-virtual {v0}, Lawh;->i()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->j:Lbcj;

    invoke-interface {v0}, Lbcj;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;->i:Lawh;

    .line 15
    invoke-virtual {v0}, Lawh;->d()V

    .line 16
    :cond_b
    invoke-static {}, Lex;->h()Lex;

    move-result-object v0

    return-object v0
.end method
