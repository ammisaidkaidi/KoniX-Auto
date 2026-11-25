.class public final Lor;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Loq;

.field public final b:Ljava/util/List;

.field public final c:Lqw;


# direct methods
.method public constructor <init>(Lqw;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lor;->c:Lqw;

    new-instance p1, Loq;

    invoke-direct {p1}, Loq;-><init>()V

    iput-object p1, p0, Lor;->a:Loq;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lor;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lor;->c:Lqw;

    invoke-virtual {v0}, Lqw;->g()I

    move-result v0

    iget-object v1, p0, Lor;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lor;->c:Lqw;

    invoke-virtual {v1}, Lqw;->g()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lor;->a:Loq;

    .line 2
    invoke-virtual {v3, v2}, Loq;->a(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    :goto_1
    iget-object p1, p0, Lor;->a:Loq;

    .line 3
    invoke-virtual {p1, v2}, Loq;->f(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lor;->c:Lqw;

    invoke-virtual {v0}, Lqw;->g()I

    move-result v0

    return v0
.end method

.method final d(Landroid/view/View;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lor;->c:Lqw;

    invoke-virtual {v0, p1}, Lqw;->h(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lor;->a:Loq;

    .line 2
    invoke-virtual {v1, p1}, Loq;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lor;->a:Loq;

    .line 3
    invoke-virtual {v0, p1}, Loq;->a(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public final e(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lor;->b(I)I

    move-result p1

    iget-object v0, p0, Lor;->c:Lqw;

    .line 2
    invoke-virtual {v0, p1}, Lqw;->i(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final f(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lor;->c:Lqw;

    invoke-virtual {v0, p1}, Lqw;->i(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g(Landroid/view/View;IZ)V
    .locals 1

    .line 1
    if-gez p2, :cond_0

    iget-object p2, p0, Lor;->c:Lqw;

    invoke-virtual {p2}, Lqw;->g()I

    move-result p2

    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p2}, Lor;->b(I)I

    move-result p2

    .line 1
    :goto_0
    iget-object v0, p0, Lor;->a:Loq;

    .line 3
    invoke-virtual {v0, p2, p3}, Loq;->c(IZ)V

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lor;->j(Landroid/view/View;)V

    :cond_1
    iget-object p3, p0, Lor;->c:Lqw;

    iget-object v0, p3, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    iget-object p2, p3, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 6
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object p1

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p2, p1}, Lqq;->onViewAttachedToWindow(Lrr;)V

    :cond_2
    return-void
.end method

.method public final h(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 1
    if-gez p2, :cond_0

    iget-object p2, p0, Lor;->c:Lqw;

    invoke-virtual {p2}, Lqw;->g()I

    move-result p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lor;->b(I)I

    move-result p2

    .line 1
    :goto_0
    iget-object v0, p0, Lor;->a:Loq;

    .line 3
    invoke-virtual {v0, p2, p4}, Loq;->c(IZ)V

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lor;->j(Landroid/view/View;)V

    :cond_1
    iget-object p4, p0, Lor;->c:Lqw;

    .line 5
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Lrr;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lrr;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Called attach on a child which is not detached: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 10
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lrr;->clearTmpDetachFlag()V

    :cond_4
    iget-object p4, p4, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 8
    invoke-static {p4, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method final i(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lor;->b(I)I

    move-result p1

    iget-object v0, p0, Lor;->a:Loq;

    .line 2
    invoke-virtual {v0, p1}, Loq;->g(I)Z

    iget-object v0, p0, Lor;->c:Lqw;

    .line 3
    invoke-virtual {v0, p1}, Lqw;->i(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lrr;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lrr;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called detach on an already detached child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 9
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    const/16 v2, 0x100

    .line 6
    invoke-virtual {v1, v2}, Lrr;->addFlags(I)V

    .line 9
    :cond_2
    iget-object v0, v0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 7
    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lor;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lor;->c:Lqw;

    .line 2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, v0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 3
    invoke-virtual {p1, v0}, Lrr;->onEnteredHiddenState(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public final k(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lor;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final l(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lor;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lor;->c:Lqw;

    .line 2
    invoke-virtual {v0, p1}, Lqw;->j(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lor;->a:Loq;

    invoke-virtual {v1}, Loq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lor;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
