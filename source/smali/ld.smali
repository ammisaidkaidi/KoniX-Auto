.class final Lld;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lli;


# direct methods
.method public constructor <init>(Lli;)V
    .locals 0

    iput-object p1, p0, Lld;->a:Lli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lld;->a:Lli;

    invoke-virtual {v0}, Lli;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lld;->a:Lli;

    iget-object v0, v0, Lli;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lld;->a:Lli;

    iget-object v0, v0, Lli;->b:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llh;

    iget-object v0, v0, Llh;->a:Lqi;

    iget-boolean v0, v0, Lqf;->o:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lld;->a:Lli;

    iget-object v0, v0, Lli;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lld;->a:Lli;

    iget-object v0, v0, Lli;->b:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llh;

    .line 6
    iget-object v1, v1, Llh;->a:Lqi;

    invoke-virtual {v1}, Lqf;->s()V

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iget-object v0, p0, Lld;->a:Lli;

    .line 4
    invoke-virtual {v0}, Lli;->k()V

    return-void

    .line 6
    :cond_2
    return-void
.end method
