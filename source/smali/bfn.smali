.class final Lbfn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltq;


# instance fields
.field final synthetic a:Lbfo;


# direct methods
.method public constructor <init>(Lbfo;)V
    .locals 0

    iput-object p1, p0, Lbfn;->a:Lbfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbfn;->a:Lbfo;

    iget-boolean v1, v0, Lbfo;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbfo;->c:Z

    invoke-virtual {v0}, Lbfo;->aT()Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;

    check-cast v1, Lass;

    iget-object v2, v1, Lass;->a:Latj;

    invoke-static {}, Lbff;->c()Lbfe;

    move-result-object v3

    iget-object v4, v2, Latj;->a:Ldhq;

    iget-object v4, v4, Ldhq;->a:Landroid/content/Context;

    iget-object v2, v2, Latj;->w:Ldny;

    .line 2
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/Optional;

    invoke-static {v4, v2}, Lbfd;->c(Landroid/content/Context;Lj$/util/Optional;)Lbfc;

    move-result-object v2

    iput-object v2, v3, Lbfe;->a:Lbfc;

    iput-object v3, v0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;->a:Lbfe;

    .line 1
    iget-object v1, v1, Lass;->a:Latj;

    iget-object v1, v1, Latj;->p:Ldny;

    .line 3
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbah;

    iput-object v1, v0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;->b:Lbah;

    :cond_0
    return-void
.end method
