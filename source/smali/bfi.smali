.class public abstract Lbfi;
.super Lbfq;
.source "PG"


# instance fields
.field private a:Lgy;

.field private final b:Lbfh;

.field public v:Lazy;

.field protected w:Lbgz;

.field protected x:Landroid/view/View;

.field protected y:Landroid/view/SurfaceView;

.field protected z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbfq;-><init>()V

    sget-object v0, Lcaa;->a:Lcaa;

    .line 2
    invoke-virtual {v0}, Lcaa;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbfi;->z:Z

    new-instance v0, Lbfh;

    invoke-direct {v0, p0}, Lbfh;-><init>(Lbfi;)V

    iput-object v0, p0, Lbfi;->b:Lbfh;

    return-void
.end method


# virtual methods
.method protected abstract l()Landroid/view/SurfaceView;
.end method

.method protected abstract m()Landroid/view/View;
.end method

.method protected abstract n()Lbhd;
.end method

.method public abstract o()Lckb;
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lbfq;->onDestroy()V

    iget-object v0, p0, Lbfi;->a:Lgy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lgy;->b()V

    .line 3
    :cond_0
    sget-object v0, Ldiz;->a:Ldiz;

    .line 4
    invoke-virtual {v0}, Ldiz;->b()Ldja;

    move-result-object v0

    invoke-interface {v0}, Ldja;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbfi;->v:Lazy;

    iget-object v1, v0, Lazy;->i:Lbah;

    iget-object v1, v1, Lbah;->h:Lbbl;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lbbl;->f()Ldag;

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lazy;->f:Z

    .line 6
    :cond_2
    invoke-static {}, Ldkj;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbfi;->w:Lbgz;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lbgz;->e()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lbfi;->s()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbfq;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbfi;->z:Z

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lbfq;->onResume()V

    iget-boolean v0, p0, Lbfi;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfi;->w:Lbgz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfi;->v:Lazy;

    .line 2
    invoke-virtual {p0}, Lbfi;->o()Lckb;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lazy;->g(Lckb;I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfi;->z:Z

    return-void
.end method

.method protected final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lbfq;->onStop()V

    iget-object v0, p0, Lbfi;->w:Lbgz;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbgz;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfi;->v:Lazy;

    .line 3
    invoke-virtual {p0}, Lbfi;->o()Lckb;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lazy;->g(Lckb;I)V

    :cond_0
    return-void
.end method

.method protected abstract s()V
.end method

.method protected abstract u()Lbey;
.end method

.method protected final v()V
    .locals 3

    .line 1
    invoke-static {}, Ldju;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbfi;->m()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbfi;->m()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbfg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbfg;-><init>(Lbfi;I)V

    .line 2
    invoke-static {v0, v1}, Lgy;->a(Landroid/view/View;Ljava/lang/Runnable;)Lgy;

    move-result-object v0

    iput-object v0, p0, Lbfi;->a:Lgy;

    :cond_0
    return-void
.end method

.method protected final w()V
    .locals 9

    .line 1
    iget-object v0, p0, Lbfi;->w:Lbgz;

    if-nez v0, :cond_0

    new-instance v0, Lbgz;

    iget-object v2, p0, Lbfi;->v:Lazy;

    iget-object v3, p0, Lbfi;->b:Lbfh;

    invoke-virtual {p0}, Lbfi;->m()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lbfi;->l()Landroid/view/SurfaceView;

    move-result-object v5

    invoke-virtual {p0}, Lbfi;->u()Lbey;

    move-result-object v6

    .line 2
    invoke-virtual {p0}, Lbfi;->n()Lbhd;

    move-result-object v7

    .line 3
    invoke-virtual {p0}, Lbfi;->o()Lckb;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lbgz;-><init>(Lazy;Lbfh;Landroid/view/View;Landroid/view/SurfaceView;Lbey;Lbhd;Lckb;)V

    iput-object v0, p0, Lbfi;->w:Lbgz;

    :cond_0
    return-void
.end method

.method final x()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbfi;->s()V

    iget-object v0, p0, Lbfi;->w:Lbgz;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbgz;->e()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lbfi;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lbfi;->finish()V

    :cond_1
    return-void
.end method
