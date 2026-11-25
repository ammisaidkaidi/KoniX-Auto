.class final Lawd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbdr;


# instance fields
.field final synthetic a:Lawg;

.field final synthetic b:Lcla;

.field final synthetic c:Lawo;

.field final synthetic d:Lawh;


# direct methods
.method public constructor <init>(Lawh;Lawg;Lcla;Lawo;)V
    .locals 0

    iput-object p1, p0, Lawd;->d:Lawh;

    iput-object p2, p0, Lawd;->a:Lawg;

    iput-object p3, p0, Lawd;->b:Lcla;

    iput-object p4, p0, Lawd;->c:Lawo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(I)V
    .locals 0

    return-void
.end method

.method public final b(Lbdt;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lawd;->d:Lawh;

    iget-object v0, p0, Lawd;->a:Lawg;

    iget-object v1, p0, Lawd;->b:Lcla;

    iget-object v2, p1, Lawh;->f:Lbdq;

    iget-object v3, v2, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lbdq;->k:Ljava/lang/String;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p1, Lawh;->m:Lbdu;

    .line 3
    invoke-virtual {v3}, Lbdu;->a()Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    iget v4, v0, Lawg;->b:I

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1

    .line 4
    sget-object v4, Lcld;->e:Lcld;

    .line 5
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    iget-boolean v5, v4, Lddf;->c:Z

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v6, v4, Lddf;->c:Z

    :cond_0
    iget-object v5, v4, Lddf;->b:Lddk;

    .line 7
    check-cast v5, Lcld;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v5, Lcld;->a:I

    or-int/2addr v6, v7

    iput v6, v5, Lcld;->a:I

    iput-object v2, v5, Lcld;->b:Ljava/lang/String;

    or-int/lit8 v2, v6, 0x2

    iput v2, v5, Lcld;->a:I

    iput v3, v5, Lcld;->c:I

    iget v1, v1, Lcla;->d:I

    iput v1, v5, Lcld;->d:I

    or-int/lit8 v1, v2, 0x4

    iput v1, v5, Lcld;->a:I

    .line 9
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Lcld;

    .line 10
    invoke-virtual {v0}, Lawg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v7, v1}, Lawh;->j(Ljava/lang/String;ILder;)V

    const/16 v1, 0x8

    iput v1, v0, Lawg;->b:I

    .line 11
    invoke-virtual {p1, v0}, Lawh;->g(Lawg;)V

    iget-object p1, p1, Lawh;->h:Landroid/os/Handler;

    .line 12
    invoke-virtual {p1, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x61a8

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x7

    if-ne v4, v1, :cond_3

    .line 14
    invoke-virtual {v0}, Lawg;->a()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v4, Lcle;->e:Lcle;

    .line 16
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    iget-boolean v5, v4, Lddf;->c:Z

    if-eqz v5, :cond_2

    .line 17
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v6, v4, Lddf;->c:Z

    :cond_2
    iget-object v5, v4, Lddf;->b:Lddk;

    .line 18
    check-cast v5, Lcle;

    iput v6, v5, Lcle;->d:I

    iget v6, v5, Lcle;->a:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lcle;->a:I

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/2addr v6, v7

    iput v6, v5, Lcle;->a:I

    iput-object v2, v5, Lcle;->b:Ljava/lang/String;

    or-int/lit8 v2, v6, 0x2

    iput v2, v5, Lcle;->a:I

    iput v3, v5, Lcle;->c:I

    .line 20
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v2

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Lawh;->j(Ljava/lang/String;ILder;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lawh;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const-string v1, "com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController"

    const-string v2, "sendWifiStart"

    const/16 v3, 0x2f5

    const-string v4, "WirelessDiscoveryController.java"

    .line 22
    invoke-interface {p1, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v1, "sendWifiStart failed, unexpected device state: %s"

    invoke-interface {p1, v1, v0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lawd;->d:Lawh;

    iget-object p1, p1, Lawh;->d:Lbah;

    iget-object v0, p0, Lawd;->c:Lawo;

    .line 23
    invoke-virtual {p1, v0, v7}, Lbah;->q(Lawo;Z)V

    iget-object p1, p0, Lawd;->d:Lawh;

    iget-object v0, p0, Lawd;->a:Lawg;

    .line 24
    invoke-virtual {p1, v0}, Lawh;->f(Lawg;)V

    iget-object p1, p1, Lawh;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method
