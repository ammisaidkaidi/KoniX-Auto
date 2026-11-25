.class public final Lbdw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/transport/net/utils/NetworkInterfaceUtil"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbdw;->a:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lj$/util/Optional;
    .locals 6

    .line 1
    const-string v0, "NetworkInterfaceUtil.java"

    const-string v1, "getHostIp"

    const-string v2, "com/google/android/apps/auto/aareceiver/transport/net/utils/NetworkInterfaceUtil"

    :try_start_0
    invoke-static {p1}, Lhl;->m(Ljava/lang/String;)Lbdx;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    move-exception v3

    sget-object v4, Lbdw;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    .line 2
    invoke-interface {v4, v3}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const/16 v4, 0x32

    invoke-interface {v3, v2, v1, v4, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const-string v4, "No interface found for the name %s"

    invoke-interface {v3, v4, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 1
    :goto_0
    if-nez v3, :cond_0

    sget-object v3, Lbdw;->a:Lcsz;

    invoke-virtual {v3}, Lcsv;->c()Lctq;

    move-result-object v3

    const/16 v4, 0x35

    .line 3
    invoke-interface {v3, v2, v1, v4, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Failed to get network interface object for %s"

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v3, v3, Lbdx;->a:Ljava/net/NetworkInterface;

    .line 5
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 6
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 8
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 10
    invoke-static {v4}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v3, Lbdw;->a:Lcsz;

    invoke-virtual {v3}, Lcsv;->c()Lctq;

    move-result-object v3

    const/16 v4, 0x41

    .line 11
    invoke-interface {v3, v2, v1, v4, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Couldn\'t determine access point host IP address for %s"

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lj$/util/Optional;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p1}, Lhl;->m(Ljava/lang/String;)Lbdx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lbdx;->a:Ljava/net/NetworkInterface;

    .line 2
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :goto_0
    return-object p1

    .line 3
    :catch_0
    move-exception v0

    sget-object v1, Lbdw;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x23

    const-string v2, "com/google/android/apps/auto/aareceiver/transport/net/utils/NetworkInterfaceUtil"

    const-string v3, "getMacAddressForInterface"

    const-string v4, "NetworkInterfaceUtil.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unable to retrieve hardware address for %s"

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method
