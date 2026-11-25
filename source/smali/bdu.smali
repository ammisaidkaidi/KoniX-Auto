.class public final Lbdu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;


# instance fields
.field private b:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/transport/net/WirelessSocketProvider"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbdu;->a:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbdu;->b:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/net/ServerSocket;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbdu;->b:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 2
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    iput-object v0, p0, Lbdu;->b:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    .line 2
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lbdu;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/apps/auto/aareceiver/transport/net/WirelessSocketProvider"

    const-string v3, "getServerSocket"

    const/16 v4, 0x25

    const-string v5, "WirelessSocketProvider.java"

    .line 3
    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Failed to create socket"

    invoke-interface {v1, v2}, Lcsx;->n(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create server socket"

    .line 4
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
