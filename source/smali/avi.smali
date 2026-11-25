.class public final Lavi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lclj;


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lbah;

.field public final d:Lawo;

.field public final e:Lbbl;

.field public final f:Lavb;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lcom/google/android/projection/protocol/BluetoothEndpoint;

.field public final i:Ljava/lang/Object;

.field public j:Landroid/bluetooth/BluetoothDevice;

.field public k:Ldag;

.field public l:Z

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Landroid/os/Handler;

.field public final o:Ljava/lang/Runnable;

.field public final p:Ljava/lang/Runnable;

.field public final q:Landroid/content/BroadcastReceiver;

.field public final r:Landroid/content/BroadcastReceiver;

.field private final s:Landroid/car/CarProjectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lavi;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/CarProjectionManager;Lbah;Lawo;Lbbl;Lavb;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lavi;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lavi;->k:Ldag;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lavi;->l:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lavi;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lavi;->n:Landroid/os/Handler;

    new-instance v1, Lave;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lave;-><init>(Lavi;I)V

    iput-object v1, p0, Lavi;->o:Ljava/lang/Runnable;

    new-instance v1, Lave;

    invoke-direct {v1, p0, v0}, Lave;-><init>(Lavi;I)V

    iput-object v1, p0, Lavi;->p:Ljava/lang/Runnable;

    new-instance v0, Lavf;

    .line 3
    invoke-direct {v0, p0}, Lavf;-><init>(Lavi;)V

    iput-object v0, p0, Lavi;->q:Landroid/content/BroadcastReceiver;

    new-instance v0, Lavg;

    .line 4
    invoke-direct {v0, p0}, Lavg;-><init>(Lavi;)V

    iput-object v0, p0, Lavi;->r:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lavi;->b:Landroid/content/Context;

    iput-object p2, p0, Lavi;->s:Landroid/car/CarProjectionManager;

    iput-object p3, p0, Lavi;->c:Lbah;

    iput-object p4, p0, Lavi;->d:Lawo;

    iput-object p5, p0, Lavi;->e:Lbbl;

    iput-object p6, p0, Lavi;->f:Lavb;

    iput-object p7, p0, Lavi;->g:Ljava/util/concurrent/Executor;

    iget-object p2, p6, Lavb;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [I

    fill-array-data p3, :array_0

    new-instance p4, Lcom/google/android/projection/protocol/BluetoothEndpoint;

    invoke-direct {p4, p0, p2, p3}, Lcom/google/android/projection/protocol/BluetoothEndpoint;-><init>(Lclj;Ljava/lang/String;[I)V

    iput-object p4, p0, Lavi;->h:Lcom/google/android/projection/protocol/BluetoothEndpoint;

    iget-object p2, p5, Lbbl;->F:Lzn;

    new-instance p3, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;

    invoke-direct {p3, p0, p1, p5}, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$3;-><init>(Lavi;Landroid/content/Context;Lbbl;)V

    .line 6
    invoke-virtual {p2, p3}, Lzn;->b(Lzp;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method static bridge synthetic e(Lavi;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lavi;->k:Ldag;

    return-void
.end method


# virtual methods
.method public final a()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 1
    iget-object v0, p0, Lavi;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

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

.method public final b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lavi;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lavi;->f:Lavb;

    iget-object v0, v0, Lavb;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lavi;->s:Landroid/car/CarProjectionManager;

    const/16 v2, 0xb

    .line 2
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->requestBluetoothProfileInhibit(Landroid/car/CarProjectionManager;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    iput-boolean v0, p0, Lavi;->l:Z

    if-nez v0, :cond_1

    sget-object v0, Lavi;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v1, 0x155

    .line 3
    const-string v2, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager"

    const-string v3, "ensureA2dpInhibitedLocked"

    const-string v4, "BluetoothPeerManager.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Failed to inhibit A2DP, audio may not come from projected device"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lavi;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lavi;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v0, 0x1b0

    .line 2
    const-string v1, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager"

    const-string v2, "finishSspPairing"

    const-string v3, "BluetoothPeerManager.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Unexpected BluetoothAuthenticationResult or timeout before BluetoothPairingRequest"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lavi;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lavi;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavi;->s:Landroid/car/CarProjectionManager;

    iget-object v1, p0, Lavi;->j:Landroid/bluetooth/BluetoothDevice;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->releaseBluetoothProfileInhibit(Landroid/car/CarProjectionManager;Landroid/bluetooth/BluetoothDevice;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lavi;->l:Z

    :cond_0
    return-void
.end method
