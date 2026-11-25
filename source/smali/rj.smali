.class public final Lrj;
.super Lqs;
.source "PG"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lqs;-><init>()V

    return-void
.end method


# virtual methods
.method final c()V
    .locals 2

    .line 1
    sget v0, Landroid/support/v7/widget/RecyclerView;->O:I

    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lro;->f:Z

    .line 3
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->Q(Z)V

    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 4
    invoke-virtual {v0}, Lnf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 2
    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, p2, p3}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object p1

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lnf;->d:I

    or-int/2addr p1, v2

    iput p1, v0, Lnf;->d:I

    iget-object p1, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lrj;->c()V

    return-void

    .line 1
    :cond_1
    :goto_0
    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 2
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1, p2, v1}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object p1

    .line 3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lnf;->d:I

    or-int/2addr p1, v3

    iput p1, v0, Lnf;->d:I

    iget-object p1, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 5
    invoke-virtual {p0}, Lrj;->c()V

    return-void

    .line 1
    :cond_1
    :goto_0
    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 2
    iget-object p3, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 3
    const/16 v3, 0x8

    invoke-virtual {v0, v3, p1, p2, v1}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object p1

    .line 4
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lnf;->d:I

    or-int/2addr p1, v3

    iput p1, v0, Lnf;->d:I

    iget-object p1, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lrj;->c()V

    return-void

    .line 1
    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onItemRangeRemoved(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 2
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1, p2, v1}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object p1

    .line 3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lnf;->d:I

    or-int/2addr p1, v3

    iput p1, v0, Lnf;->d:I

    iget-object p1, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lrj;->c()V

    return-void

    .line 1
    :cond_1
    :goto_0
    return-void
.end method

.method public final onStateRestorationPolicyChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->d:Lrk;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lqq;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrj;->a:Landroid/support/v7/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method
