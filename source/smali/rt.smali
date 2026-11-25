.class public Lrt;
.super Lgh;
.source "PG"


# instance fields
.field final b:Landroid/support/v7/widget/RecyclerView;

.field public final c:Lrs;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgh;-><init>()V

    iput-object p1, p0, Lrt;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lrt;->k()Lgh;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Lrs;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lrs;

    iput-object p1, p0, Lrt;->c:Lrs;

    return-void

    :cond_0
    new-instance p1, Lrs;

    .line 3
    invoke-direct {p1, p0}, Lrs;-><init>(Lrt;)V

    iput-object p1, p0, Lrt;->c:Lrs;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lgh;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrt;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lra;->R(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;Lik;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lgh;->c(Landroid/view/View;Lik;)V

    .line 2
    invoke-virtual {p0}, Lrt;->l()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lrt;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 3
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 4
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 5
    invoke-virtual {p2, v0}, Lik;->a(I)V

    .line 6
    invoke-virtual {p2}, Lik;->d()V

    :cond_1
    iget-object v0, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 7
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 8
    invoke-virtual {p2, v0}, Lik;->a(I)V

    .line 9
    invoke-virtual {p2}, Lik;->d()V

    .line 10
    :cond_3
    invoke-virtual {p1, v1, v2}, Lra;->b(Lrh;Lro;)I

    move-result v0

    invoke-virtual {p1, v1, v2}, Lra;->a(Lrh;Lro;)I

    move-result p1

    .line 11
    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    iget-object p2, p2, Lik;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_4
    return-void
.end method

.method public final i(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lgh;->i(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lrt;->l()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-object p1, p0, Lrt;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz p1, :cond_7

    iget-object v1, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 3
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    if-nez v1, :cond_2

    :cond_1
    goto :goto_3

    :cond_2
    sparse-switch p2, :sswitch_data_0

    const/4 p2, 0x0

    const/4 v1, 0x0

    goto :goto_2

    .line 5
    :sswitch_0
    nop

    .line 4
    const/4 p2, -0x1

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Lra;->E:I

    .line 5
    invoke-virtual {p1}, Lra;->at()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lra;->aq()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 6
    invoke-virtual {v2, p2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p1, Lra;->D:I

    .line 5
    invoke-virtual {p1}, Lra;->ar()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Lra;->as()I

    move-result v2

    sub-int/2addr p2, v2

    neg-int p2, p2

    goto :goto_2

    .line 9
    :sswitch_1
    nop

    .line 7
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p1, Lra;->E:I

    .line 5
    invoke-virtual {p1}, Lra;->at()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Lra;->aq()I

    move-result v1

    sub-int/2addr p2, v1

    move v1, p2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-object p2, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p1, Lra;->D:I

    .line 5
    invoke-virtual {p1}, Lra;->ar()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Lra;->as()I

    move-result v2

    sub-int/2addr p2, v2

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    .line 3
    :goto_2
    if-nez v1, :cond_6

    if-eqz p2, :cond_1

    goto :goto_4

    :goto_3
    return v0

    :cond_6
    move v0, v1

    :goto_4
    iget-object p1, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 9
    invoke-virtual {p1, p2, v0, p3}, Landroid/support/v7/widget/RecyclerView;->an(IIZ)V

    return p3

    .line 5
    :cond_7
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public k()Lgh;
    .locals 1

    iget-object v0, p0, Lrt;->c:Lrs;

    return-object v0
.end method

.method final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrt;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ai()Z

    move-result v0

    return v0
.end method
