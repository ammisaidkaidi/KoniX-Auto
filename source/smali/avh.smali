.class public final Lavh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczv;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/bluetooth/BluetoothDevice;

.field final synthetic c:Lavi;


# direct methods
.method public constructor <init>(Lavi;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lavh;->c:Lavi;

    iput-boolean p2, p0, Lavh;->a:Z

    iput-object p3, p0, Lavh;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lavi;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$4"

    const-string v1, "onFailure"

    const-string v2, "BluetoothPeerManager.java"

    const/16 v3, 0x120

    invoke-interface {p1, v0, v1, v3, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Could not enable Bluetooth adapter"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ldik;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lavh;->c:Lavi;

    iget-object p1, p1, Lavi;->i:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lavh;->c:Lavi;

    .line 3
    invoke-static {v0}, Lavi;->e(Lavi;)V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lavh;->c:Lavi;

    iget-object p1, p1, Lavi;->i:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lavh;->c:Lavi;

    invoke-static {v0}, Lavi;->e(Lavi;)V

    iget-boolean v0, p0, Lavh;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavh;->c:Lavi;

    .line 2
    invoke-virtual {v0}, Lavi;->b()V

    .line 3
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lavh;->c:Lavi;

    iget-object p1, p1, Lavi;->f:Lavb;

    .line 4
    sget-object v0, Ldik;->a:Ldik;

    .line 5
    invoke-virtual {v0}, Ldik;->b()Ldil;

    move-result-object v0

    invoke-interface {v0}, Ldil;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lhh;->t(J)I

    move-result v0

    .line 6
    invoke-virtual {p1, v0}, Lavb;->a(I)V

    iget-object p1, p0, Lavh;->c:Lavi;

    iget-object p1, p1, Lavi;->h:Lcom/google/android/projection/protocol/BluetoothEndpoint;

    iget-object v0, p0, Lavh;->b:Landroid/bluetooth/BluetoothDevice;

    .line 7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeOnReadyForPairing(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
