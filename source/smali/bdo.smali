.class Lbdo;
.super Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;
.source "PG"


# instance fields
.field final synthetic b:Lbdq;


# direct methods
.method public constructor <init>(Lbdq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbdo;->b:Lbdq;

    invoke-direct {p0}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lbdo;->b:Lbdq;

    iget-object v0, v0, Lbdq;->h:Lbde;

    sget-object v1, Lbdf;->b:Lbdf;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lbde;->b(Lbdf;I)V

    sget-object v0, Lbdq;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    .line 2
    const-string v1, "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$CarProjectionApCallback"

    const-string v2, "onFailed"

    const/16 v3, 0x25e

    const-string v4, "AccessPoint.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Access point failed, reason: %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    iget-object v0, p0, Lbdo;->b:Lbdq;

    .line 3
    invoke-virtual {v0}, Lbdq;->g()V

    iget-object v0, p0, Lbdo;->b:Lbdq;

    .line 4
    invoke-virtual {v0}, Lbdq;->c()Lcqh;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lbdr;

    .line 6
    invoke-interface {v3, p1}, Lbdr;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStopped()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbdo;->b:Lbdq;

    iget-object v0, v0, Lbdq;->h:Lbde;

    invoke-virtual {v0}, Lbde;->c()V

    iget-object v0, p0, Lbdo;->b:Lbdq;

    .line 2
    invoke-virtual {v0}, Lbdq;->g()V

    iget-object v0, p0, Lbdo;->b:Lbdq;

    .line 3
    invoke-virtual {v0}, Lbdq;->c()Lcqh;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lbdr;

    .line 5
    invoke-interface {v3}, Lbdr;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
