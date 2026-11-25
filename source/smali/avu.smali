.class final Lavu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/bluetooth/BluetoothSocket;

.field final synthetic c:Lavx;


# direct methods
.method public constructor <init>(Lavx;Ljava/lang/String;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    iput-object p1, p0, Lavu;->c:Lavx;

    iput-object p2, p0, Lavu;->a:Ljava/lang/String;

    iput-object p3, p0, Lavu;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lavu;->c:Lavx;

    iget-object v0, v0, Lavx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lavu;->c:Lavx;

    iget-object v1, v1, Lavx;->c:Ljava/util/Map;

    iget-object v2, p0, Lavu;->a:Ljava/lang/String;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lavv;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lavv;->b:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lavu;->b:Landroid/bluetooth/BluetoothSocket;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lavu;->c:Lavx;

    iget-object v1, v1, Lavx;->c:Ljava/util/Map;

    iget-object v2, p0, Lavu;->a:Ljava/lang/String;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lavu;->c:Lavx;

    iget-object v1, v1, Lavx;->d:Lawa;

    iget-object v2, p0, Lavu;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lawa;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->onRfcommDisconnected(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lavx;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer$1"

    const-string v3, "onConnectionFailure"

    const/16 v4, 0x7e

    const-string v5, "RfcommServer.java"

    .line 5
    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "onConnectionFailure received, but there was another socket opened with the same device, ignoring failure."

    invoke-interface {v1, v2}, Lcsx;->n(Ljava/lang/String;)V

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    .line 5
    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
