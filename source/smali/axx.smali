.class final Laxx;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PG"


# instance fields
.field final synthetic a:Laxy;


# direct methods
.method public constructor <init>(Laxy;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Laxx;->a:Laxy;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    sget-object p1, Laxz;->a:Lcsz;

    iget-object p1, p0, Laxx;->a:Laxy;

    iget-object p1, p1, Laxy;->a:Laxz;

    iget-object v0, p1, Laxz;->d:Lceo;

    .line 2
    invoke-interface {v0}, Lceo;->e()Ldag;

    move-result-object v0

    new-instance v1, Laxy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Laxy;-><init>(Laxz;I)V

    iget-object p1, p1, Laxz;->c:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v0, v1, p1}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    return-void
.end method
