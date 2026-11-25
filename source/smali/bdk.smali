.class final Lbdk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczv;


# instance fields
.field final synthetic a:Lbdq;


# direct methods
.method public constructor <init>(Lbdq;)V
    .locals 0

    iput-object p1, p0, Lbdk;->a:Lbdq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lbdq;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$3"

    const-string v1, "onFailure"

    const/16 v2, 0xb7

    const-string v3, "AccessPoint.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Failed to find host IP address for Access Point."

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lbdk;->a:Lbdq;

    .line 2
    invoke-virtual {p1}, Lbdq;->c()Lcqh;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lbdr;

    const/4 v3, 0x2

    .line 4
    invoke-interface {v2, v3}, Lbdr;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/net/InetAddress;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No hostIP available"

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbdk;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbdk;->a:Lbdq;

    iget-object v0, v0, Lbdq;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbdk;->a:Lbdq;

    .line 3
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lbdq;->k:Ljava/lang/String;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbdk;->a:Lbdq;

    .line 5
    invoke-virtual {p1}, Lbdq;->b()Lbdt;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lbdt;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbdk;->a:Lbdq;

    .line 7
    invoke-virtual {v0}, Lbdq;->c()Lcqh;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Lbdr;

    .line 10
    invoke-interface {v3, p1}, Lbdr;->b(Lbdt;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    const-string v1, "Access Point configuration is not valid: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbdk;->a(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
