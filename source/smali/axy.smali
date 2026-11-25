.class final Laxy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczv;


# instance fields
.field final synthetic a:Laxz;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Laxz;I)V
    .locals 0

    iput p2, p0, Laxy;->b:I

    iput-object p1, p0, Laxy;->a:Laxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 2
    iget v0, p0, Laxy;->b:I

    const-string v1, "PhenotypeManager.java"

    const-string v2, "onFailure"

    packed-switch v0, :pswitch_data_0

    sget-object v0, Laxz;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const/16 v0, 0x91

    const-string v3, "com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager$1"

    invoke-interface {p1, v3, v2, v0, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Phenotype register failed."

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    iget-object p1, p0, Laxy;->a:Laxz;

    iget-object p1, p1, Laxz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 1
    :pswitch_0
    sget-object v0, Laxz;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const/16 v0, 0xbc

    const-string v3, "com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager$2"

    invoke-interface {p1, v3, v2, v0, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Phenotype sync failed."

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Laxy;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5
    check-cast p1, Ljava/lang/Void;

    .line 6
    sget-object p1, Laxz;->a:Lcsz;

    .line 7
    new-instance p1, Laxx;

    invoke-direct {p1, p0, v1}, Laxx;-><init>(Laxy;[B)V

    .line 8
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 9
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v1, p0, Laxy;->a:Laxz;

    iput-object p1, v1, Laxz;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v1, v1, Laxz;->f:Landroid/net/ConnectivityManager;

    .line 11
    invoke-virtual {v1, v0, p1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    .line 1
    :pswitch_0
    check-cast p1, Ldgx;

    .line 2
    sget-object p1, Laxz;->a:Lcsz;

    iget-object p1, p0, Laxy;->a:Laxz;

    iget-object v0, p1, Laxz;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object v2, p1, Laxz;->f:Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v1, p1, Laxz;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    iget-object p1, p0, Laxy;->a:Laxz;

    iget-object p1, p1, Laxz;->e:Lj$/util/Optional;

    .line 4
    sget-object v0, Lazu;->b:Lazu;

    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
