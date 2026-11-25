.class public final Lqw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lrr;
    .locals 7

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v1}, Lor;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v5, v3}, Lor;->f(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3
    invoke-virtual {v5}, Lrr;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v5, Lrr;->mPosition:I

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iget-object v6, v5, Lrr;->itemView:Landroid/view/View;

    .line 4
    invoke-virtual {v4, v6}, Lor;->k(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_2

    .line 3
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_3
    nop

    .line 4
    :goto_2
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    iget-object p1, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iget-object v0, v4, Lrr;->itemView:Landroid/view/View;

    .line 5
    invoke-virtual {p1, v0}, Lor;->k(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v2

    :cond_5
    return-object v4
.end method

.method final b(Lne;)V
    .locals 3

    .line 1
    iget v0, p1, Lne;->a:I

    sparse-switch v0, :sswitch_data_0

    return-void

    :sswitch_0
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 2
    iget v1, p1, Lne;->b:I

    iget p1, p1, Lne;->d:I

    invoke-virtual {v0, v1, p1}, Lra;->x(II)V

    return-void

    :sswitch_1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 3
    iget v1, p1, Lne;->b:I

    iget v2, p1, Lne;->d:I

    iget-object p1, p1, Lne;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lra;->z(II)V

    return-void

    :sswitch_2
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 4
    iget v1, p1, Lne;->b:I

    iget p1, p1, Lne;->d:I

    invoke-virtual {v0, v1, p1}, Lra;->y(II)V

    return-void

    :sswitch_3
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 5
    iget v1, p1, Lne;->b:I

    iget p1, p1, Lne;->d:I

    invoke-virtual {v0, v1, p1}, Lra;->v(II)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(IILjava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v1}, Lor;->c()I

    move-result v1

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_3

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v5, v2}, Lor;->f(I)Landroid/view/View;

    move-result-object v5

    .line 3
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4
    invoke-virtual {v6}, Lrr;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    iget v7, v6, Lrr;->mPosition:I

    if-lt v7, p1, :cond_0

    if-ge v7, p2, :cond_0

    .line 5
    invoke-virtual {v6, v3}, Lrr;->addFlags(I)V

    .line 6
    invoke-virtual {v6, p3}, Lrr;->addChangePayload(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lrb;

    iput-boolean v4, v3, Lrb;->e:Z

    .line 4
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    iget-object p3, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v0, p3, Lrh;->c:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    iget-object v1, p3, Lrh;->c:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrr;

    if-nez v1, :cond_5

    :cond_4
    goto :goto_3

    :cond_5
    iget v2, v1, Lrr;->mPosition:I

    if-lt v2, p1, :cond_4

    if-ge v2, p2, :cond_4

    .line 10
    invoke-virtual {v1, v3}, Lrr;->addFlags(I)V

    .line 11
    invoke-virtual {p3, v0}, Lrh;->h(I)V

    .line 9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 11
    :cond_6
    iget-object p1, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v4, p1, Landroid/support/v7/widget/RecyclerView;->J:Z

    return-void
.end method

.method public final d(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v1}, Lor;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v5, v3}, Lor;->f(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v5}, Lrr;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lrr;->mPosition:I

    if-lt v6, p1, :cond_0

    .line 4
    invoke-virtual {v5, p2, v2}, Lrr;->offsetPosition(IZ)V

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 5
    iput-boolean v4, v5, Lro;->f:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v3, v1, Lrh;->c:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    iget-object v6, v1, Lrh;->c:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrr;

    if-eqz v6, :cond_2

    iget v7, v6, Lrr;->mPosition:I

    if-lt v7, p1, :cond_2

    .line 8
    invoke-virtual {v6, p2, v2}, Lrr;->offsetPosition(IZ)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    iget-object p1, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v4, p1, Landroid/support/v7/widget/RecyclerView;->I:Z

    return-void
.end method

.method public final e(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v1}, Lor;->c()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge p1, p2, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    .line 10
    :cond_0
    const/4 v4, 0x1

    .line 1
    :goto_0
    if-ge p1, p2, :cond_1

    move v5, p2

    goto :goto_1

    .line 10
    :cond_1
    move v5, p1

    .line 1
    :goto_1
    if-ge p1, p2, :cond_2

    move v6, p1

    goto :goto_2

    .line 10
    :cond_2
    move v6, p2

    .line 1
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_6

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v9, v8}, Lor;->f(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v9

    if-eqz v9, :cond_5

    iget v10, v9, Lrr;->mPosition:I

    if-lt v10, v6, :cond_5

    if-le v10, v5, :cond_3

    goto :goto_5

    :cond_3
    if-ne v10, p1, :cond_4

    sub-int v10, p2, p1

    .line 3
    invoke-virtual {v9, v10, v7}, Lrr;->offsetPosition(IZ)V

    goto :goto_4

    .line 5
    :cond_4
    nop

    .line 4
    invoke-virtual {v9, v4, v7}, Lrr;->offsetPosition(IZ)V

    .line 3
    :goto_4
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 5
    iput-boolean v3, v9, Lro;->f:Z

    .line 2
    :cond_5
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4
    :cond_6
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    if-ge p1, p2, :cond_7

    goto :goto_6

    .line 10
    :cond_7
    const/4 v2, 0x1

    .line 4
    :goto_6
    iget-object v4, v1, Lrh;->c:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v4, :cond_b

    iget-object v9, v1, Lrh;->c:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrr;

    if-eqz v9, :cond_a

    iget v10, v9, Lrr;->mPosition:I

    if-lt v10, v6, :cond_a

    if-le v10, v5, :cond_8

    goto :goto_8

    :cond_8
    if-ne v10, p1, :cond_9

    sub-int v10, p2, p1

    .line 8
    invoke-virtual {v9, v10, v7}, Lrr;->offsetPosition(IZ)V

    goto :goto_8

    :cond_9
    nop

    .line 9
    invoke-virtual {v9, v2, v7}, Lrr;->offsetPosition(IZ)V

    .line 7
    :cond_a
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 10
    :cond_b
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    iget-object p1, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v3, p1, Landroid/support/v7/widget/RecyclerView;->I:Z

    return-void
.end method

.method public final f(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->L(IIZ)V

    iget-object p1, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, p1, Landroid/support/v7/widget/RecyclerView;->I:Z

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 2
    iget v0, p1, Lro;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lro;->c:I

    return-void
.end method

.method public final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final h(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public final i(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final j(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 2
    invoke-virtual {p1, v0}, Lrr;->onLeftHiddenState(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public final k(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 2
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->x(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    return-void
.end method

.method public final l(Lrr;Lqu;Lqu;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lrr;->setIsRecyclable(Z)V

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz p2, :cond_2

    iget v4, p2, Lqu;->a:I

    .line 2
    iget v6, p3, Lqu;->a:I

    if-ne v4, v6, :cond_0

    iget v1, p2, Lqu;->b:I

    iget v3, p3, Lqu;->b:I

    if-eq v1, v3, :cond_2

    :cond_0
    iget v5, p2, Lqu;->b:I

    .line 6
    iget v7, p3, Lqu;->b:I

    .line 3
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lqv;->k(Lrr;IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    return-void

    .line 3
    :cond_2
    invoke-virtual {v2, p1}, Lqv;->j(Lrr;)V

    .line 4
    iget-object p2, p1, Lrr;->itemView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, v2, Lqv;->c:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->P()V

    return-void
.end method

.method public final m(Lrr;Lqu;Lqu;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    invoke-virtual {v0, p1}, Lrh;->l(Lrr;)V

    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->o(Lrr;)V

    .line 3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lrr;->setIsRecyclable(Z)V

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    .line 4
    iget v4, p2, Lqu;->a:I

    .line 5
    iget v5, p2, Lqu;->b:I

    .line 6
    iget-object p2, p1, Lrr;->itemView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    move v6, v1

    goto :goto_0

    .line 14
    :cond_0
    iget v1, p3, Lqu;->a:I

    move v6, v1

    .line 7
    :goto_0
    if-nez p3, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    move v7, p3

    goto :goto_1

    .line 14
    :cond_1
    iget p3, p3, Lqu;->b:I

    move v7, p3

    .line 9
    :goto_1
    invoke-virtual {p1}, Lrr;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_4

    if-ne v4, v6, :cond_2

    if-eq v5, v7, :cond_4

    .line 10
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    .line 12
    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lqv;->k(Lrr;IIII)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    return-void

    .line 13
    :cond_4
    invoke-virtual {v2, p1}, Lqv;->j(Lrr;)V

    iget-object p2, v2, Lqv;->b:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->P()V

    return-void
.end method

.method public final n(Lrr;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object p1, p1, Lrr;->itemView:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    invoke-virtual {v1, p1, v0}, Lra;->aL(Landroid/view/View;Lrh;)V

    return-void
.end method
