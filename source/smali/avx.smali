.class public final Lavx;
.super Ljava/lang/Thread;
.source "PG"

# interfaces
.implements Lavz;


# static fields
.field public static final a:Lcsz;

.field private static final e:Ljava/lang/Long;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/Map;

.field public final d:Lawa;

.field private final f:Lavw;

.field private final g:Lavq;

.field private final h:Ljava/util/concurrent/Executor;

.field private i:Landroid/bluetooth/BluetoothServerSocket;

.field private volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lavx;->a:Lcsz;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lavx;->e:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lawa;Ljava/util/concurrent/Executor;Lavw;Lavq;)V
    .locals 1

    .line 1
    const-string v0, "RFCOMM Server"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lavx;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lavx;->j:Z

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lavx;->c:Ljava/util/Map;

    iput-object p1, p0, Lavx;->d:Lawa;

    iput-object p2, p0, Lavx;->h:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lavx;->f:Lavw;

    iput-object p4, p0, Lavx;->g:Lavq;

    return-void
.end method

.method private final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lavx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lavx;->c:Ljava/util/Map;

    .line 2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lavv;

    .line 5
    :try_start_1
    iget-object v4, v3, Lavv;->b:Landroid/bluetooth/BluetoothSocket;

    .line 6
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3
    :catch_0
    move-exception v4

    .line 7
    :goto_1
    iget-object v3, v3, Lavv;->c:Lavp;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lavp;->d:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lavx;->i:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3
    :catch_1
    move-exception v0

    .line 9
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lavx;->i:Landroid/bluetooth/BluetoothServerSocket;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lavx;->j:Z

    invoke-virtual {p0}, Lavx;->interrupt()V

    .line 2
    invoke-direct {p0}, Lavx;->b()V

    const-wide/16 v0, 0xbb8

    .line 3
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lavx;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lavx;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lavr;

    invoke-direct {v1, p0}, Lavr;-><init>(Lavx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lavx;->j:Z

    if-nez v0, :cond_3

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lavx;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lavx;->i:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lavx;->f:Lavw;

    .line 2
    invoke-interface {v0}, Lavw;->a()Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    iput-object v0, p0, Lavx;->i:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 17
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2
    :cond_1
    :try_start_2
    iget-object v0, p0, Lavx;->i:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->onRfcommConnected(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lavx;->g:Lavq;

    new-instance v4, Lavu;

    invoke-direct {v4, p0, v3, v0}, Lavu;-><init>(Lavx;Ljava/lang/String;Landroid/bluetooth/BluetoothSocket;)V

    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    new-instance v9, Lavp;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lavq;->a:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/concurrent/Executor;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lavq;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/concurrent/Executor;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lavp;-><init>(Ljava/lang/String;Lavu;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iget-object v1, v9, Lavp;->c:Ljava/lang/Thread;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lavv;

    .line 9
    invoke-direct {v1, v0, v9}, Lavv;-><init>(Landroid/bluetooth/BluetoothSocket;Lavp;)V

    iget-object v2, p0, Lavx;->b:Ljava/lang/Object;

    .line 10
    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v3, p0, Lavx;->c:Ljava/util/Map;

    iget-object v4, v1, Lavv;->a:Ljava/lang/String;

    .line 11
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lavv;

    .line 12
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    sget-object v2, Lavx;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->c()Lctq;

    move-result-object v2

    const-string v4, "com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer"

    const-string v5, "listenForConnection"

    const/16 v6, 0x60

    const-string v7, "RfcommServer.java"

    .line 13
    invoke-interface {v2, v4, v5, v6, v7}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const-string v4, "RFCOMM connection established with the device %s, while active connection with the same device exists."

    iget-object v1, v1, Lavv;->a:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lavx;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Lavt;

    invoke-direct {v2, p0, v3}, Lavt;-><init>(Lavx;Lavv;)V

    .line 14
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, p0, Lavx;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Lavs;

    invoke-direct {v2, p0, v0}, Lavs;-><init>(Lavx;Landroid/bluetooth/BluetoothSocket;)V

    .line 15
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 12
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    .line 20
    :catch_1
    move-exception v0

    sget-object v1, Lavx;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    .line 16
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer"

    const-string v2, "run"

    const/16 v3, 0x9b

    const-string v4, "RfcommServer.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Received security exception, shutting down RFCOMM server"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lavx;->a()V

    goto/16 :goto_0

    .line 15
    :catch_2
    move-exception v0

    sget-object v1, Lavx;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer"

    const-string v3, "run"

    const/16 v4, 0x94

    const-string v5, "RfcommServer.java"

    .line 18
    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Failed to open RFCOMM socket: %s"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-direct {p0}, Lavx;->b()V

    sget-object v0, Lavx;->e:Ljava/lang/Long;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 15
    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lavx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lavx;->c:Ljava/util/Map;

    .line 2
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lavx;->f:Lavw;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lavx;->i:Landroid/bluetooth/BluetoothServerSocket;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x3b

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{BluetoothAdapter: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n ServerSocket: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n ConnectedDevices: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
