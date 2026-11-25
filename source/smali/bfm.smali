.class public abstract Lbfm;
.super Lbfi;
.source "PG"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbfi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfm;->a:Z

    new-instance v0, Lbfl;

    invoke-direct {v0, p0}, Lbfl;-><init>(Lbfm;)V

    .line 2
    invoke-virtual {p0, v0}, Ltk;->j(Ltq;)V

    return-void
.end method


# virtual methods
.method protected final y()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lbfm;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbfm;->a:Z

    invoke-virtual {p0}, Lbfq;->aT()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    check-cast v0, Lass;

    iget-object v2, v0, Lass;->a:Latj;

    iget-object v2, v2, Latj;->z:Ldny;

    .line 2
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lazy;

    iput-object v2, v1, Lbfi;->v:Lazy;

    .line 1
    iget-object v2, v0, Lass;->a:Latj;

    iget-object v2, v2, Latj;->j:Ldny;

    .line 3
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/CarProjectionManager;

    iput-object v2, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->l:Landroid/car/CarProjectionManager;

    .line 1
    iget-object v2, v0, Lass;->a:Latj;

    iget-object v2, v2, Latj;->p:Ldny;

    .line 4
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbah;

    iput-object v2, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    .line 1
    iget-object v2, v0, Lass;->a:Latj;

    iget-object v2, v2, Latj;->E:Ldny;

    .line 5
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lawh;

    iput-object v2, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->n:Lawh;

    .line 1
    iget-object v2, v0, Lass;->a:Latj;

    iget-object v2, v2, Latj;->a:Ldhq;

    iget-object v2, v2, Ldhq;->a:Landroid/content/Context;

    invoke-static {v2}, Laxu;->c(Landroid/content/Context;)Ldhq;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->u:Ldhq;

    iget-object v2, v0, Lass;->a:Latj;

    .line 6
    invoke-virtual {v2}, Latj;->d()Lawy;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->o:Lawy;

    .line 1
    iget-object v2, v0, Lass;->a:Latj;

    iget-object v2, v2, Latj;->l:Ldny;

    .line 7
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbcj;

    iput-object v2, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->p:Lbcj;

    .line 1
    iget-object v2, v0, Lass;->a:Latj;

    iget-object v2, v2, Latj;->M:Ldny;

    .line 8
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbed;

    iput-object v2, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->t:Lbed;

    .line 1
    iget-object v2, v0, Lass;->a:Latj;

    iget-object v3, v2, Latj;->l:Ldny;

    .line 9
    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbcj;

    iget-object v2, v2, Latj;->N:Ldny;

    .line 10
    invoke-interface {v3}, Lbcj;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lbhe;

    .line 11
    invoke-virtual {v2}, Lbhe;->b()Lbhd;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    .line 11
    :goto_0
    iput-object v2, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->q:Lj$/util/Optional;

    .line 1
    iget-object v2, v0, Lass;->a:Latj;

    iget-object v2, v2, Latj;->x:Ldny;

    .line 13
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbde;

    iput-object v2, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    .line 1
    iget-object v0, v0, Lass;->a:Latj;

    iget-object v0, v0, Latj;->t:Ldny;

    .line 14
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layf;

    iput-object v0, v1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->s:Layf;

    return-void

    .line 12
    :cond_1
    return-void
.end method
