.class public Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothAdapterManager$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzj;


# instance fields
.field final synthetic a:Lbbl;

.field final synthetic b:Lavb;


# direct methods
.method public constructor <init>(Lavb;Lbbl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothAdapterManager$1;->b:Lavb;

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothAdapterManager$1;->a:Lbbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothAdapterManager$1;->b:Lavb;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothAdapterManager$1;->a:Lbbl;

    iget-object v2, v0, Lavb;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lavb;->h:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lavb;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lavb;->h:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lavb;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lavb;->g:Z

    .line 4
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method
