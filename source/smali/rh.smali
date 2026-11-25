.class public final Lrh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field e:I

.field f:Lrg;

.field public final synthetic g:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lrh;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lrh;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrh;->c:Ljava/util/ArrayList;

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrh;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lrh;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    iget-object v0, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {v0}, Lro;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v1, v1, Lro;->g:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 4
    invoke-virtual {v0, p1}, Lnf;->a(I)I

    move-result p1

    return p1

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 3
    invoke-virtual {p1}, Lro;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lrg;
    .locals 1

    .line 1
    iget-object v0, p0, Lrh;->f:Lrg;

    if-nez v0, :cond_0

    new-instance v0, Lrg;

    invoke-direct {v0}, Lrg;-><init>()V

    iput-object v0, p0, Lrh;->f:Lrg;

    :cond_0
    iget-object v0, p0, Lrh;->f:Lrg;

    return-object v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Lrh;->n(IJ)Lrr;

    move-result-object p1

    iget-object p1, p1, Lrr;->itemView:Landroid/view/View;

    return-object p1
.end method

.method final d(Lrr;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->s(Lrr;)V

    .line 2
    iget-object v0, p1, Lrr;->itemView:Landroid/view/View;

    iget-object v1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->L:Lrt;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrt;->k()Lgh;

    move-result-object v1

    .line 3
    instance-of v3, v1, Lrs;

    if-eqz v3, :cond_0

    .line 4
    check-cast v1, Lrs;

    iget-object v1, v1, Lrs;->c:Ljava/util/Map;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgh;

    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 6
    :goto_0
    invoke-static {v0, v1}, Lhs;->u(Landroid/view/View;Lgh;)V

    :cond_1
    if-eqz p2, :cond_4

    iget-object p2, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/List;

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/List;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lri;

    invoke-interface {v1}, Lri;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p2, p1}, Lqq;->onViewRecycled(Lrr;)V

    :cond_3
    iget-object p2, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    if-eqz v0, :cond_4

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 10
    invoke-virtual {p2, p1}, Lta;->h(Lrr;)V

    :cond_4
    nop

    .line 11
    iput-object v2, p1, Lrr;->mBindingAdapter:Lqq;

    .line 12
    iput-object v2, p1, Lrr;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 13
    invoke-virtual {p0}, Lrh;->b()Lrg;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lrr;->getItemViewType()I

    move-result v0

    .line 13
    invoke-virtual {p2, v0}, Lrg;->a(I)Lrf;

    move-result-object v1

    iget-object v1, v1, Lrf;->a:Ljava/util/ArrayList;

    iget-object p2, p2, Lrg;->a:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lrf;

    iget p2, p2, Lrf;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x5

    if-lt p2, v0, :cond_5

    return-void

    .line 16
    :cond_5
    invoke-virtual {p1}, Lrr;->resetInternal()V

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrh;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, Lrh;->g()V

    return-void
.end method

.method final f(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object p1

    .line 2
    const/4 v0, 0x0

    iput-object v0, p1, Lrr;->mScrapContainer:Lrh;

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p1, Lrr;->mInChangeScrap:Z

    .line 4
    invoke-virtual {p1}, Lrr;->clearReturnedFromScrapFlag()V

    .line 5
    invoke-virtual {p0, p1}, Lrh;->j(Lrr;)V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lrh;->h(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrh;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget v0, Landroid/support/v7/widget/RecyclerView;->O:I

    iget-object v0, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Lpn;

    .line 5
    invoke-virtual {v0}, Lpn;->b()V

    return-void
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrr;

    .line 2
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrh;->d(Lrr;Z)V

    iget-object v0, p0, Lrh;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lrr;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lrr;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Lrr;->unScrap()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lrr;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0}, Lrr;->clearReturnedFromScrapFlag()V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lrh;->j(Lrr;)V

    iget-object p1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {v0}, Lrr;->isRecyclable()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    .line 10
    invoke-virtual {p1, v0}, Lqv;->h(Lrr;)V

    :cond_3
    return-void
.end method

.method final j(Lrr;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lrr;->isScrap()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    iget-object v0, p1, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    invoke-virtual {p1}, Lrr;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_b

    .line 8
    invoke-virtual {p1}, Lrr;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_a

    .line 10
    invoke-virtual {p1}, Lrr;->doesTransientStatePreventRecycling()Z

    move-result v0

    iget-object v3, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v3, p1}, Lqq;->onFailedToRecycleView(Lrr;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lrr;->isRecyclable()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_4

    .line 11
    :cond_2
    :goto_0
    iget v3, p0, Lrh;->e:I

    if-lez v3, :cond_7

    const/16 v3, 0x20e

    .line 13
    invoke-virtual {p1, v3}, Lrr;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lrh;->c:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lrh;->e:I

    if-lt v3, v4, :cond_3

    if-lez v3, :cond_3

    .line 15
    invoke-virtual {p0, v2}, Lrh;->h(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_3
    if-lez v3, :cond_6

    iget-object v4, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->G:Lpn;

    .line 16
    iget v5, p1, Lrr;->mPosition:I

    .line 17
    invoke-virtual {v4, v5}, Lpn;->d(I)Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    iget-object v4, p0, Lrh;->c:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrr;

    iget v4, v4, Lrr;->mPosition:I

    iget-object v5, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->G:Lpn;

    .line 19
    invoke-virtual {v5, v4}, Lpn;->d(I)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 24
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 19
    :cond_5
    :goto_2
    add-int/2addr v3, v1

    :cond_6
    iget-object v4, p0, Lrh;->c:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_3

    .line 24
    :cond_7
    const/4 v3, 0x0

    .line 20
    :goto_3
    if-nez v3, :cond_8

    .line 21
    invoke-virtual {p0, p1, v1}, Lrh;->d(Lrr;Z)V

    move v2, v3

    goto :goto_4

    .line 24
    :cond_8
    move v2, v3

    const/4 v1, 0x0

    .line 21
    :goto_4
    iget-object v3, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 22
    invoke-virtual {v3, p1}, Lta;->h(Lrr;)V

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    .line 23
    const/4 v0, 0x0

    iput-object v0, p1, Lrr;->mBindingAdapter:Lqq;

    .line 24
    iput-object v0, p1, Lrr;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    :cond_9
    return-void

    .line 8
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 9
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 7
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_c
    :goto_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lrr;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lrr;->itemView:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_6

    .line 12
    :cond_d
    const/4 v1, 0x0

    .line 4
    :goto_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method final k(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object p1

    .line 2
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lrr;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lrr;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lrr;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lrr;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lrh;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrh;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, p0, v0}, Lrr;->setScrapContainer(Lrh;Z)V

    iget-object v0, p0, Lrh;->b:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lrr;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lrr;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    invoke-virtual {v0}, Lqq;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 10
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p0, v0}, Lrr;->setScrapContainer(Lrh;Z)V

    iget-object v0, p0, Lrh;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l(Lrr;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lrr;->mInChangeScrap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrh;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lrh;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lrr;->mScrapContainer:Lrh;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lrr;->mInChangeScrap:Z

    .line 6
    invoke-virtual {p1}, Lrr;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    iget v0, v0, Lra;->z:I

    goto :goto_0

    .line 3
    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lrh;->e:I

    iget-object v0, p0, Lrh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lrh;->c:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lrh;->e:I

    if-le v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lrh;->h(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final n(IJ)Lrr;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_3c

    iget-object v2, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {v2}, Lro;->a()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 4
    iget-object v2, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v2, v2, Lro;->g:Z

    const/16 v3, 0x20

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v0, Lrh;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    .line 31
    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    iget-object v8, v0, Lrh;->b:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrr;

    .line 7
    invoke-virtual {v8}, Lrr;->wasReturnedFromScrap()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lrr;->getLayoutPosition()I

    move-result v9

    if-ne v9, v1, :cond_1

    .line 8
    invoke-virtual {v8, v3}, Lrr;->addFlags(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 9
    invoke-virtual {v7}, Lqq;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 10
    invoke-virtual {v7, v1}, Lnf;->a(I)I

    move-result v7

    if-lez v7, :cond_4

    iget-object v8, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 11
    invoke-virtual {v8}, Lqq;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 12
    invoke-virtual {v8, v7}, Lqq;->getItemId(I)J

    move-result-wide v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_4

    iget-object v10, v0, Lrh;->b:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrr;

    .line 14
    invoke-virtual {v10}, Lrr;->wasReturnedFromScrap()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v10}, Lrr;->getItemId()J

    move-result-wide v11

    cmp-long v13, v11, v7

    if-nez v13, :cond_3

    .line 15
    invoke-virtual {v10, v3}, Lrr;->addFlags(I)V

    move-object v8, v10

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 5
    :goto_2
    if-eqz v8, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    .line 31
    :cond_5
    const/4 v2, 0x0

    .line 5
    :goto_3
    goto :goto_4

    .line 15
    :cond_6
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 5
    :goto_4
    const/4 v7, -0x1

    if-nez v8, :cond_1b

    iget-object v8, v0, Lrh;->a:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_9

    iget-object v10, v0, Lrh;->a:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrr;

    .line 18
    invoke-virtual {v10}, Lrr;->wasReturnedFromScrap()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v10}, Lrr;->getLayoutPosition()I

    move-result v11

    if-ne v11, v1, :cond_8

    .line 19
    invoke-virtual {v10}, Lrr;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v11, v11, Lro;->g:Z

    if-nez v11, :cond_7

    invoke-virtual {v10}, Lrr;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_8

    .line 20
    :cond_7
    invoke-virtual {v10, v3}, Lrr;->addFlags(I)V

    move-object v8, v10

    goto/16 :goto_9

    .line 52
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    iget-object v8, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iget-object v9, v8, Lor;->b:Ljava/util/List;

    .line 21
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_b

    iget-object v11, v8, Lor;->b:Ljava/util/List;

    .line 22
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    iget-object v12, v8, Lor;->c:Lqw;

    .line 23
    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v12

    .line 24
    invoke-virtual {v12}, Lrr;->getLayoutPosition()I

    move-result v13

    if-ne v13, v1, :cond_a

    .line 25
    invoke-virtual {v12}, Lrr;->isInvalid()Z

    move-result v13

    if-nez v13, :cond_a

    .line 26
    invoke-virtual {v12}, Lrr;->isRemoved()Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_7

    .line 31
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    .line 26
    :goto_7
    if-eqz v11, :cond_f

    .line 32
    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v8

    iget-object v9, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iget-object v10, v9, Lor;->c:Lqw;

    .line 33
    invoke-virtual {v10, v11}, Lqw;->h(Landroid/view/View;)I

    move-result v10

    if-ltz v10, :cond_e

    .line 34
    iget-object v12, v9, Lor;->a:Loq;

    .line 36
    invoke-virtual {v12, v10}, Loq;->f(I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 37
    iget-object v12, v9, Lor;->a:Loq;

    .line 38
    invoke-virtual {v12, v10}, Loq;->b(I)V

    .line 39
    invoke-virtual {v9, v11}, Lor;->l(Landroid/view/View;)V

    iget-object v9, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 40
    invoke-virtual {v9, v11}, Lor;->d(Landroid/view/View;)I

    move-result v9

    if-eq v9, v7, :cond_c

    .line 42
    iget-object v10, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 43
    invoke-virtual {v10, v9}, Lor;->i(I)V

    .line 44
    invoke-virtual {v0, v11}, Lrh;->k(Landroid/view/View;)V

    const/16 v9, 0x2020

    .line 45
    invoke-virtual {v8, v9}, Lrr;->addFlags(I)V

    goto/16 :goto_9

    .line 40
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 42
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_f
    iget-object v8, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_11

    iget-object v10, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrr;

    .line 29
    invoke-virtual {v10}, Lrr;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v10}, Lrr;->getLayoutPosition()I

    move-result v11

    if-ne v11, v1, :cond_10

    .line 30
    invoke-virtual {v10}, Lrr;->isAttachedToTransitionOverlay()Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v8, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v8, v10

    goto :goto_9

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    .line 20
    :goto_9
    if-eqz v8, :cond_1a

    .line 46
    invoke-virtual {v8}, Lrr;->isRemoved()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v9, v9, Lro;->g:Z

    if-nez v9, :cond_12

    goto :goto_a

    .line 58
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_d

    :cond_13
    iget v9, v8, Lrr;->mPosition:I

    if-ltz v9, :cond_19

    iget-object v10, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 47
    invoke-virtual {v10}, Lqq;->getItemCount()I

    move-result v10

    if-ge v9, v10, :cond_19

    .line 49
    iget-object v9, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v9, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v10, v10, Lro;->g:Z

    if-nez v10, :cond_14

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    iget v10, v8, Lrr;->mPosition:I

    .line 50
    invoke-virtual {v9, v10}, Lqq;->getItemViewType(I)I

    move-result v9

    invoke-virtual {v8}, Lrr;->getItemViewType()I

    move-result v10

    if-ne v9, v10, :cond_15

    :cond_14
    iget-object v9, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 51
    invoke-virtual {v9}, Lqq;->hasStableIds()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual {v8}, Lrr;->getItemId()J

    move-result-wide v9

    iget-object v11, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    iget v12, v8, Lrr;->mPosition:I

    .line 52
    invoke-virtual {v11, v12}, Lqq;->getItemId(I)J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-nez v13, :cond_15

    goto :goto_c

    .line 46
    :cond_15
    :goto_a
    const/4 v9, 0x4

    .line 53
    invoke-virtual {v8, v9}, Lrr;->addFlags(I)V

    .line 54
    invoke-virtual {v8}, Lrr;->isScrap()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v8, Lrr;->itemView:Landroid/view/View;

    .line 55
    invoke-virtual {v9, v10, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 56
    invoke-virtual {v8}, Lrr;->unScrap()V

    goto :goto_b

    .line 57
    :cond_16
    invoke-virtual {v8}, Lrr;->wasReturnedFromScrap()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 58
    invoke-virtual {v8}, Lrr;->clearReturnedFromScrapFlag()V

    .line 59
    :cond_17
    :goto_b
    invoke-virtual {v0, v8}, Lrh;->j(Lrr;)V

    const/4 v8, 0x0

    goto :goto_d

    .line 52
    :cond_18
    :goto_c
    const/4 v2, 0x1

    goto :goto_d

    .line 47
    :cond_19
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 49
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1a
    goto :goto_d

    .line 31
    :cond_1b
    nop

    .line 59
    :goto_d
    const-wide/16 v9, 0x0

    const-wide v11, 0x7fffffffffffffffL

    if-nez v8, :cond_2e

    iget-object v13, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 60
    invoke-virtual {v13, v1}, Lnf;->a(I)I

    move-result v13

    if-ltz v13, :cond_2d

    iget-object v14, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 61
    invoke-virtual {v14}, Lqq;->getItemCount()I

    move-result v14

    if-ge v13, v14, :cond_2d

    .line 63
    iget-object v14, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 64
    invoke-virtual {v14, v13}, Lqq;->getItemViewType(I)I

    move-result v14

    iget-object v15, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 65
    invoke-virtual {v15}, Lqq;->hasStableIds()Z

    move-result v15

    if-eqz v15, :cond_24

    iget-object v8, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 66
    invoke-virtual {v8, v13}, Lqq;->getItemId(I)J

    move-result-wide v15

    iget-object v8, v0, Lrh;->a:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v7

    :goto_e
    if-ltz v8, :cond_1f

    iget-object v4, v0, Lrh;->a:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrr;

    .line 69
    invoke-virtual {v4}, Lrr;->getItemId()J

    move-result-wide v17

    cmp-long v19, v17, v15

    if-nez v19, :cond_1e

    invoke-virtual {v4}, Lrr;->wasReturnedFromScrap()Z

    move-result v17

    if-nez v17, :cond_1e

    .line 70
    invoke-virtual {v4}, Lrr;->getItemViewType()I

    move-result v6

    if-ne v14, v6, :cond_1d

    .line 74
    invoke-virtual {v4, v3}, Lrr;->addFlags(I)V

    .line 75
    invoke-virtual {v4}, Lrr;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v3, v3, Lro;->g:Z

    if-nez v3, :cond_1c

    const/4 v3, 0x2

    const/16 v6, 0xe

    .line 76
    invoke-virtual {v4, v3, v6}, Lrr;->setFlags(II)V

    goto :goto_f

    .line 123
    :cond_1c
    nop

    .line 76
    :goto_f
    move-object v8, v4

    goto :goto_12

    .line 123
    :cond_1d
    iget-object v6, v0, Lrh;->a:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 72
    iget-object v3, v4, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v6, v3, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 73
    iget-object v3, v4, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lrh;->f(Landroid/view/View;)V

    :cond_1e
    add-int/lit8 v8, v8, -0x1

    const/16 v3, 0x20

    goto :goto_e

    :cond_1f
    iget-object v3, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v7

    :goto_10
    if-ltz v3, :cond_22

    iget-object v4, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrr;

    .line 79
    invoke-virtual {v4}, Lrr;->getItemId()J

    move-result-wide v18

    cmp-long v6, v18, v15

    if-nez v6, :cond_21

    invoke-virtual {v4}, Lrr;->isAttachedToTransitionOverlay()Z

    move-result v6

    if-nez v6, :cond_21

    .line 80
    invoke-virtual {v4}, Lrr;->getItemViewType()I

    move-result v6

    if-ne v14, v6, :cond_20

    iget-object v6, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v8, v4

    goto :goto_12

    .line 82
    :cond_20
    invoke-virtual {v0, v3}, Lrh;->h(I)V

    goto :goto_11

    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_22
    nop

    :goto_11
    const/4 v8, 0x0

    .line 76
    :goto_12
    if-eqz v8, :cond_23

    iput v13, v8, Lrr;->mPosition:I

    const/4 v2, 0x1

    goto :goto_13

    .line 123
    :cond_23
    goto :goto_13

    .line 82
    :cond_24
    nop

    .line 76
    :goto_13
    if-nez v8, :cond_28

    .line 83
    invoke-virtual/range {p0 .. p0}, Lrh;->b()Lrg;

    move-result-object v3

    iget-object v3, v3, Lrg;->a:Landroid/util/SparseArray;

    .line 84
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrf;

    if-eqz v3, :cond_26

    iget-object v4, v3, Lrf;->a:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v3, v3, Lrf;->a:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v7

    :goto_14
    if-ltz v4, :cond_26

    .line 87
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrr;

    invoke-virtual {v6}, Lrr;->isAttachedToTransitionOverlay()Z

    move-result v6

    if-nez v6, :cond_25

    .line 88
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrr;

    goto :goto_15

    .line 123
    :cond_25
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    :cond_26
    const/4 v3, 0x0

    .line 88
    :goto_15
    if-eqz v3, :cond_27

    .line 89
    invoke-virtual {v3}, Lrr;->resetInternal()V

    :cond_27
    move-object v8, v3

    :cond_28
    if-nez v8, :cond_2c

    .line 90
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    cmp-long v6, p2, v11

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lrh;->f:Lrg;

    .line 91
    invoke-virtual {v6, v14}, Lrg;->a(I)Lrf;

    move-result-object v6

    iget-wide v6, v6, Lrf;->c:J

    cmp-long v8, v6, v9

    if-eqz v8, :cond_2a

    add-long/2addr v6, v3

    cmp-long v8, v6, p2

    if-gez v8, :cond_29

    goto :goto_16

    .line 123
    :cond_29
    const/4 v1, 0x0

    return-object v1

    .line 91
    :cond_2a
    :goto_16
    iget-object v6, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v6, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 92
    invoke-virtual {v7, v6, v14}, Lqq;->createViewHolder(Landroid/view/ViewGroup;I)Lrr;

    move-result-object v8

    .line 93
    iget-object v6, v8, Lrr;->itemView:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    if-eqz v6, :cond_2b

    new-instance v7, Ljava/lang/ref/WeakReference;

    .line 94
    invoke-direct {v7, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, v8, Lrr;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 95
    :cond_2b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v13, v0, Lrh;->f:Lrg;

    .line 96
    invoke-virtual {v13, v14}, Lrg;->a(I)Lrf;

    move-result-object v13

    iget-wide v14, v13, Lrf;->c:J

    sub-long/2addr v6, v3

    invoke-static {v14, v15, v6, v7}, Lrg;->b(JJ)J

    move-result-wide v3

    iput-wide v3, v13, Lrf;->c:J

    goto :goto_17

    .line 123
    :cond_2c
    goto :goto_17

    .line 61
    :cond_2d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(offset:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").state:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 63
    invoke-virtual {v1}, Lro;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_2e
    nop

    .line 96
    :goto_17
    if-eqz v2, :cond_2f

    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v3, v3, Lro;->g:Z

    if-nez v3, :cond_2f

    .line 97
    const/16 v3, 0x2000

    invoke-virtual {v8, v3}, Lrr;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 98
    invoke-virtual {v8, v5, v3}, Lrr;->setFlags(II)V

    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 99
    iget-boolean v3, v3, Lro;->j:Z

    if-eqz v3, :cond_2f

    .line 100
    invoke-static {v8}, Lqv;->d(Lrr;)V

    .line 101
    invoke-virtual {v8}, Lrr;->getUnmodifiedPayloads()Ljava/util/List;

    .line 102
    invoke-static {v8}, Lqv;->e(Lrr;)Lqu;

    move-result-object v3

    iget-object v4, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 103
    invoke-virtual {v4, v8, v3}, Landroid/support/v7/widget/RecyclerView;->R(Lrr;Lqu;)V

    :cond_2f
    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v3, v3, Lro;->g:Z

    if-eqz v3, :cond_30

    .line 104
    invoke-virtual {v8}, Lrr;->isBound()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 125
    iput v1, v8, Lrr;->mPreLayoutPosition:I

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1c

    .line 105
    :cond_30
    invoke-virtual {v8}, Lrr;->isBound()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v8}, Lrr;->needsUpdate()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v8}, Lrr;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_18

    .line 123
    :cond_31
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1c

    .line 105
    :cond_32
    :goto_18
    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 106
    invoke-virtual {v3, v1}, Lnf;->a(I)I

    move-result v3

    .line 107
    const/4 v4, 0x0

    iput-object v4, v8, Lrr;->mBindingAdapter:Lqq;

    iget-object v4, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 108
    iput-object v4, v8, Lrr;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 109
    invoke-virtual {v8}, Lrr;->getItemViewType()I

    move-result v4

    .line 110
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    cmp-long v13, p2, v11

    if-eqz v13, :cond_33

    iget-object v11, v0, Lrh;->f:Lrg;

    .line 111
    invoke-virtual {v11, v4}, Lrg;->a(I)Lrf;

    move-result-object v4

    iget-wide v11, v4, Lrf;->d:J

    cmp-long v4, v11, v9

    if-eqz v4, :cond_33

    add-long/2addr v11, v6

    cmp-long v4, v11, p2

    if-gez v4, :cond_31

    :cond_33
    iget-object v4, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 112
    invoke-virtual {v4, v8, v3}, Lqq;->bindViewHolder(Lrr;I)V

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-object v9, v0, Lrh;->f:Lrg;

    .line 114
    invoke-virtual {v8}, Lrr;->getItemViewType()I

    move-result v10

    invoke-virtual {v9, v10}, Lrg;->a(I)Lrf;

    move-result-object v9

    iget-wide v10, v9, Lrf;->d:J

    sub-long/2addr v3, v6

    invoke-static {v10, v11, v3, v4}, Lrg;->b(JJ)J

    move-result-wide v3

    iput-wide v3, v9, Lrf;->d:J

    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 115
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->aj()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 116
    iget-object v3, v8, Lrr;->itemView:Landroid/view/View;

    .line 117
    invoke-static {v3}, Lhs;->a(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_34

    .line 118
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lhs;->z(Landroid/view/View;I)V

    goto :goto_19

    .line 117
    :cond_34
    const/4 v4, 0x1

    .line 118
    :goto_19
    iget-object v6, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->L:Lrt;

    if-nez v6, :cond_35

    goto :goto_1a

    .line 124
    :cond_35
    invoke-virtual {v6}, Lrt;->k()Lgh;

    move-result-object v6

    .line 119
    instance-of v7, v6, Lrs;

    if-eqz v7, :cond_36

    .line 120
    move-object v7, v6

    check-cast v7, Lrs;

    .line 121
    invoke-static {v3}, Lhs;->i(Landroid/view/View;)Lgh;

    move-result-object v9

    if-eqz v9, :cond_36

    if-eq v9, v7, :cond_36

    iget-object v7, v7, Lrs;->c:Ljava/util/Map;

    .line 122
    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_36
    invoke-static {v3, v6}, Lhs;->u(Landroid/view/View;Lgh;)V

    goto :goto_1a

    .line 115
    :cond_37
    const/4 v4, 0x1

    .line 118
    :goto_1a
    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v3, v3, Lro;->g:Z

    if-eqz v3, :cond_38

    .line 124
    iput v1, v8, Lrr;->mPreLayoutPosition:I

    goto :goto_1b

    :cond_38
    nop

    :goto_1b
    const/4 v1, 0x1

    .line 126
    :goto_1c
    iget-object v3, v8, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_39

    iget-object v3, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 127
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 128
    iget-object v6, v8, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1d

    :cond_39
    iget-object v6, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 129
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_3a

    iget-object v6, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 130
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 131
    iget-object v6, v8, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1d

    .line 132
    :cond_3a
    check-cast v3, Lrb;

    .line 128
    :goto_1d
    check-cast v3, Lrb;

    iput-object v8, v3, Lrb;->c:Lrr;

    if-eqz v2, :cond_3b

    if-eqz v1, :cond_3b

    goto :goto_1e

    :cond_3b
    const/4 v4, 0x0

    :goto_1e
    iput-boolean v4, v3, Lrb;->f:Z

    return-object v8

    .line 1
    :cond_3c
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). Item count:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 3
    invoke-virtual {v1}, Lro;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    .line 4
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_20

    :goto_1f
    throw v2

    :goto_20
    goto :goto_1f
.end method
