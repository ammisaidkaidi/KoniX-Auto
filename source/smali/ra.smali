.class public abstract Lra;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field private final a:Lsx;

.field private final b:Lsx;

.field q:Lor;

.field public r:Landroid/support/v7/widget/RecyclerView;

.field public final s:Lsy;

.field public final t:Lsy;

.field public u:Lrn;

.field public v:Z

.field public w:Z

.field public final x:Z

.field public final y:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqy;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lqy;-><init>(Lra;I)V

    iput-object v0, p0, Lra;->a:Lsx;

    new-instance v2, Lqy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lqy;-><init>(Lra;I)V

    iput-object v2, p0, Lra;->b:Lsx;

    new-instance v4, Lsy;

    invoke-direct {v4, v0}, Lsy;-><init>(Lsx;)V

    iput-object v4, p0, Lra;->s:Lsy;

    new-instance v0, Lsy;

    invoke-direct {v0, v2}, Lsy;-><init>(Lsx;)V

    iput-object v0, p0, Lra;->t:Lsy;

    iput-boolean v3, p0, Lra;->v:Z

    iput-boolean v3, p0, Lra;->w:Z

    iput-boolean v1, p0, Lra;->x:Z

    iput-boolean v1, p0, Lra;->y:Z

    return-void
.end method

.method public static aV(III)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    if-ne p1, p0, :cond_2

    return p2

    :cond_2
    return v1

    :sswitch_1
    return p2

    :sswitch_2
    if-lt p1, p0, :cond_3

    return p2

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static aj(III)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sparse-switch v0, :sswitch_data_0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :sswitch_0
    return p0

    .line 3
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static al(IIIIZ)I
    .locals 3

    .line 1
    sub-int/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    if-ltz p3, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_3

    .line 2
    :cond_0
    if-ne p3, v0, :cond_6

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :cond_1
    if-ltz p3, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_3

    :cond_2
    if-ne p3, v0, :cond_3

    :goto_0
    :sswitch_0
    move p3, p0

    goto :goto_3

    :cond_3
    const/4 p4, -0x2

    if-ne p3, p4, :cond_6

    if-eq p1, v1, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    :goto_1
    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_6
    :goto_2
    :sswitch_1
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_3
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static au(Landroid/content/Context;Landroid/util/AttributeSet;II)Lqz;
    .locals 2

    .line 1
    new-instance v0, Lqz;

    invoke-direct {v0}, Lqz;-><init>()V

    sget-object v1, Lkl;->a:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 2
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, Lqz;->a:I

    .line 3
    const/16 p3, 0xa

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Lqz;->b:I

    .line 4
    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Lqz;->c:Z

    .line 5
    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lqz;->d:Z

    .line 6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static final ba(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lrb;

    iget-object p0, p0, Lrb;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static final bb(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lrb;

    iget-object p0, p0, Lrb;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static final bc(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    iget-object v0, v0, Lrb;->d:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static final bd(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    iget-object v0, v0, Lrb;->d:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static final be(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lrb;

    iget-object p0, p0, Lrb;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static final bf(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lrb;

    iget-object p0, p0, Lrb;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static final bg(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lrb;

    invoke-virtual {p0}, Lrb;->a()I

    move-result p0

    return p0
.end method

.method public static final bj(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    .line 2
    iget-object v1, v0, Lrb;->d:Landroid/graphics/Rect;

    .line 3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Lrb;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Lrb;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Lrb;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Lrb;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private final c(Landroid/view/View;IZ)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v0

    if-nez p3, :cond_1

    .line 2
    invoke-virtual {v0}, Lrr;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object p3, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 4
    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    invoke-virtual {p3, v0}, Lta;->g(Lrr;)V

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object p3, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 3
    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    invoke-virtual {p3, v0}, Lta;->b(Lrr;)V

    .line 5
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lrb;

    .line 6
    invoke-virtual {v0}, Lrr;->wasReturnedFromScrap()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lrr;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lra;->q:Lor;

    .line 12
    invoke-virtual {v1, p1}, Lor;->d(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    iget-object p2, p0, Lra;->q:Lor;

    .line 13
    invoke-virtual {p2}, Lor;->a()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_6

    .line 15
    if-eq v1, p2, :cond_a

    iget-object p1, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 16
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    invoke-virtual {p1, v1}, Lra;->aw(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Lra;->aE(I)V

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lrb;

    .line 20
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lrr;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 22
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    invoke-virtual {v5, v4}, Lta;->b(Lrr;)V

    goto :goto_2

    .line 24
    :cond_4
    iget-object v5, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 23
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    invoke-virtual {v5, v4}, Lta;->g(Lrr;)V

    .line 22
    :goto_2
    iget-object p1, p1, Lra;->q:Lor;

    .line 24
    invoke-virtual {v4}, Lrr;->isRemoved()Z

    move-result v4

    invoke-virtual {p1, v3, p2, v1, v4}, Lor;->h(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_5

    .line 16
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 18
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 15
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_7
    iget-object v1, p0, Lra;->q:Lor;

    .line 25
    invoke-virtual {v1, p1, p2, v2}, Lor;->g(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p3, Lrb;->e:Z

    iget-object p2, p0, Lra;->u:Lrn;

    if-eqz p2, :cond_a

    iget-boolean v1, p2, Lrn;->e:Z

    if-eqz v1, :cond_a

    .line 27
    invoke-static {p1}, Lrn;->i(Landroid/view/View;)I

    move-result v1

    iget v3, p2, Lrn;->a:I

    if-ne v1, v3, :cond_a

    iput-object p1, p2, Lrn;->f:Landroid/view/View;

    goto :goto_5

    .line 7
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lrr;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8
    invoke-virtual {v0}, Lrr;->unScrap()V

    goto :goto_4

    .line 9
    :cond_9
    invoke-virtual {v0}, Lrr;->clearReturnedFromScrapFlag()V

    .line 8
    :goto_4
    iget-object v1, p0, Lra;->q:Lor;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Lor;->h(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 28
    :cond_a
    :goto_5
    iget-boolean p1, p3, Lrb;->f:Z

    if-eqz p1, :cond_b

    .line 29
    iget-object p1, v0, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 30
    iput-boolean v2, p3, Lrb;->f:Z

    :cond_b
    return-void
.end method


# virtual methods
.method public A(Lro;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public B(Lro;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public C(Lro;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public D(Lro;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public E(Lro;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public F(Lro;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public L()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public N(I)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    invoke-virtual {p0, v1}, Lra;->aw(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lrr;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 4
    invoke-virtual {v3}, Lrr;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v4, v4, Lro;->g:Z

    if-nez v4, :cond_2

    .line 5
    invoke-virtual {v3}, Lrr;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    return-object v2

    .line 3
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public O(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->r(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public R(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 3
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 4
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 5
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    nop

    .line 2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 6
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lqq;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void

    .line 1
    :cond_3
    :goto_1
    return-void
.end method

.method public S(Landroid/os/Parcelable;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public T(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public X()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public Y()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Lrh;Lro;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final aA(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lra;->aB(Landroid/view/View;I)V

    return-void
.end method

.method public final aB(Landroid/view/View;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lra;->c(Landroid/view/View;IZ)V

    return-void
.end method

.method public final aC(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final aD(Lrh;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Lra;->aw(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lrr;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Lrr;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lrr;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 6
    invoke-virtual {v3}, Lqq;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lra;->aN(I)V

    .line 11
    invoke-virtual {p1, v2}, Lrh;->j(Lrr;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lra;->aE(I)V

    .line 8
    invoke-virtual {p1, v1}, Lrh;->k(Landroid/view/View;)V

    iget-object v1, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 9
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    invoke-virtual {v1, v2}, Lta;->g(Lrr;)V

    .line 4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9
    :cond_2
    return-void
.end method

.method public final aE(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lra;->aw(I)Landroid/view/View;

    iget-object v0, p0, Lra;->q:Lor;

    .line 2
    invoke-virtual {v0, p1}, Lor;->i(I)V

    return-void
.end method

.method public aF(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v1}, Lor;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v3, v2}, Lor;->e(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aG(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v1}, Lor;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v3, v2}, Lor;->e(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final aH(Landroid/view/View;Lik;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lrr;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lra;->q:Lor;

    iget-object v0, v0, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lor;->k(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 3
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {p0, v1, v0, p1, p2}, Lra;->m(Lrh;Lro;Landroid/view/View;Lik;)V

    :cond_0
    return-void
.end method

.method public aI(I)V
    .locals 0

    return-void
.end method

.method public final aJ(Lrh;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lra;->aw(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v1

    invoke-virtual {v1}, Lrr;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0, p1}, Lra;->aM(ILrh;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final aK(Lrh;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lrh;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p1, Lrh;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrr;

    iget-object v2, v2, Lrr;->itemView:Landroid/view/View;

    .line 3
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lrr;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lrr;->setIsRecyclable(Z)V

    .line 6
    invoke-virtual {v3}, Lrr;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 7
    invoke-virtual {v5, v2, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v4, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 8
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v4, v3}, Lqv;->h(Lrr;)V

    :cond_2
    const/4 v4, 0x1

    .line 10
    invoke-virtual {v3, v4}, Lrr;->setIsRecyclable(Z)V

    .line 11
    invoke-virtual {p1, v2}, Lrh;->f(Landroid/view/View;)V

    .line 4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p1, Lrh;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Lrh;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    iget-object p1, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 14
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_5
    return-void
.end method

.method public final aL(Landroid/view/View;Lrh;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lra;->q:Lor;

    iget-object v1, v0, Lor;->c:Lqw;

    invoke-virtual {v1, p1}, Lqw;->h(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Lor;->a:Loq;

    .line 2
    invoke-virtual {v2, v1}, Loq;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lor;->l(Landroid/view/View;)V

    :cond_1
    iget-object v0, v0, Lor;->c:Lqw;

    .line 4
    invoke-virtual {v0, v1}, Lqw;->k(I)V

    .line 5
    :goto_0
    invoke-virtual {p2, p1}, Lrh;->i(Landroid/view/View;)V

    return-void
.end method

.method public final aM(ILrh;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lra;->aw(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lra;->aN(I)V

    .line 3
    invoke-virtual {p2, v0}, Lrh;->i(Landroid/view/View;)V

    return-void
.end method

.method public final aN(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lra;->aw(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lra;->q:Lor;

    .line 2
    invoke-virtual {v0, p1}, Lor;->b(I)I

    move-result p1

    iget-object v1, v0, Lor;->c:Lqw;

    .line 3
    invoke-virtual {v1, p1}, Lqw;->i(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lor;->a:Loq;

    .line 4
    invoke-virtual {v2, p1}, Loq;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {v0, v1}, Lor;->l(Landroid/view/View;)V

    :cond_1
    iget-object v0, v0, Lor;->c:Lqw;

    .line 5
    invoke-virtual {v0, p1}, Lqw;->k(I)V

    return-void

    .line 3
    :cond_2
    :goto_0
    return-void
.end method

.method public final aO()V
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final aP(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3
    invoke-virtual {p0, v0, p1}, Lra;->aQ(II)V

    return-void
.end method

.method public final aQ(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lra;->D:I

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lra;->B:I

    if-nez p1, :cond_0

    .line 3
    sget p1, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lra;->E:I

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lra;->C:I

    if-nez p1, :cond_1

    .line 6
    sget p1, Landroid/support/v7/widget/RecyclerView;->O:I

    :cond_1
    return-void
.end method

.method public final aR(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public final aS(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    invoke-virtual {p0, v1}, Lra;->aw(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 3
    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 4
    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView;->G(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v4, :cond_0

    .line 6
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 7
    :cond_0
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v2, :cond_1

    .line 8
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 9
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v5, :cond_2

    .line 10
    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 11
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_3

    .line 12
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 13
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 14
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lra;->p(Landroid/graphics/Rect;II)V

    return-void

    :cond_5
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->w(II)V

    return-void
.end method

.method public final aT(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lra;->q:Lor;

    const/4 p1, 0x0

    iput p1, p0, Lra;->D:I

    iput p1, p0, Lra;->E:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iput-object v0, p0, Lra;->q:Lor;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lra;->D:I

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lra;->E:I

    .line 1
    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lra;->B:I

    iput p1, p0, Lra;->C:I

    return-void
.end method

.method public final aU(Lrn;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lra;->u:Lrn;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    iget-boolean v1, v0, Lrn;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lrn;->c()V

    :cond_0
    iput-object p1, p0, Lra;->u:Lrn;

    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->E:Lrq;

    invoke-virtual {v1}, Lrq;->c()V

    iget-boolean v1, p1, Lrn;->g:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p1, Lrn;->b:Landroid/support/v7/widget/RecyclerView;

    iput-object p0, p1, Lrn;->c:Lra;

    iget v0, p1, Lrn;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v1, p1, Lrn;->b:Landroid/support/v7/widget/RecyclerView;

    .line 7
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iput v0, v2, Lro;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lrn;->e:Z

    iput-boolean v0, p1, Lrn;->d:Z

    iget v2, p1, Lrn;->a:I

    .line 8
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    invoke-virtual {v1, v2}, Lra;->N(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lrn;->f:Landroid/view/View;

    iget-object v1, p1, Lrn;->b:Landroid/support/v7/widget/RecyclerView;

    .line 9
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->E:Lrq;

    invoke-virtual {v1}, Lrq;->a()V

    iput-boolean v0, p1, Lrn;->g:Z

    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string v0, "Invalid target position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final aW()Z
    .locals 1

    iget-object v0, p0, Lra;->u:Lrn;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lrn;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aX(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual/range {p0 .. p0}, Lra;->ar()I

    move-result v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Lra;->at()I

    move-result v5

    iget v6, v0, Lra;->D:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Lra;->as()I

    move-result v7

    iget v8, v0, Lra;->E:I

    .line 4
    invoke-virtual/range {p0 .. p0}, Lra;->aq()I

    move-result v9

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v11

    sub-int/2addr v10, v11

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v11, v12

    .line 7
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v4, v10, v4

    .line 9
    const/4 v13, 0x0

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int v5, v11, v5

    .line 10
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int/2addr v10, v12

    sub-int/2addr v6, v7

    sub-int/2addr v10, v6

    .line 11
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v11, v2

    sub-int/2addr v8, v9

    sub-int/2addr v11, v8

    .line 12
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 13
    invoke-virtual/range {p0 .. p0}, Lra;->an()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    if-eqz v6, :cond_0

    move v14, v6

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_0

    :cond_1
    if-eqz v14, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 13
    :goto_0
    if-eqz v15, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 13
    :goto_1
    aput v14, v3, v13

    aput v15, v3, v8

    aget v2, v3, v13

    aget v3, v3, v8

    if-eqz p5, :cond_5

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lra;->ar()I

    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Lra;->at()I

    move-result v6

    iget v7, v0, Lra;->D:I

    .line 20
    invoke-virtual/range {p0 .. p0}, Lra;->as()I

    move-result v9

    iget v10, v0, Lra;->E:I

    .line 21
    invoke-virtual/range {p0 .. p0}, Lra;->aq()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, v0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 22
    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 23
    invoke-static {v4, v11}, Landroid/support/v7/widget/RecyclerView;->G(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 24
    iget v4, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v2

    sub-int/2addr v7, v9

    if-ge v4, v7, :cond_6

    iget v4, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    if-le v4, v5, :cond_6

    iget v4, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    if-ge v4, v10, :cond_6

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    if-le v4, v6, :cond_6

    :cond_5
    if-nez v2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    :goto_2
    return v13

    .line 26
    :cond_7
    move v13, v2

    .line 24
    :goto_3
    if-eqz p4, :cond_8

    .line 25
    invoke-virtual {v1, v13, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_4

    .line 26
    :cond_8
    invoke-virtual {v1, v13, v3}, Landroid/support/v7/widget/RecyclerView;->ab(II)V

    .line 25
    :goto_4
    return v8
.end method

.method public final aY(Landroid/view/View;IILrb;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lra;->x:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lrb;->width:I

    invoke-static {v0, p2, v1}, Lra;->aV(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Lrb;->height:I

    invoke-static {p1, p3, p2}, Lra;->aV(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final aZ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lra;->w:Z

    return-void
.end method

.method public ab()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ac(IILro;Lpn;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ad(ILpn;)V
    .locals 0

    return-void
.end method

.method public ah(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public ai(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final ak()I
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->q:Lor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lor;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final am()I
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->e()Lqq;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lqq;->getItemCount()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final an()I
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lhs;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ao()I
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lhs;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ap()I
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lhs;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final aq()I
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ar()I
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final as()I
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final at()I
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final av(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lra;->q:Lor;

    .line 2
    invoke-virtual {v0, p1}, Lor;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public final aw(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->q:Lor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lor;->e(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ax()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lra;->q:Lor;

    .line 2
    invoke-virtual {v2, v0}, Lor;->k(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final ay(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lra;->az(Landroid/view/View;I)V

    return-void
.end method

.method public final az(Landroid/view/View;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lra;->c(Landroid/view/View;IZ)V

    return-void
.end method

.method public b(Lrh;Lro;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final bh(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    iget-object v0, v0, Lrb;->d:Landroid/graphics/Rect;

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    .line 2
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 6
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->j:Landroid/graphics/RectF;

    .line 7
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 9
    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final bi(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->s:Lsy;

    invoke-virtual {v0, p1}, Lsy;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lra;->t:Lsy;

    .line 2
    invoke-virtual {v0, p1}, Lsy;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bk()V
    .locals 0

    return-void
.end method

.method public final bl(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->w(II)V

    return-void
.end method

.method public final bm(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final bn(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lra;->w:Z

    invoke-virtual {p0, p1}, Lra;->ah(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public d(ILrh;Lro;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public e(ILrh;Lro;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract f()Lrb;
.end method

.method public g(Landroid/view/ViewGroup$LayoutParams;)Lrb;
    .locals 1

    .line 1
    instance-of v0, p1, Lrb;

    if-eqz v0, :cond_0

    new-instance v0, Lrb;

    .line 2
    check-cast p1, Lrb;

    invoke-direct {v0, p1}, Lrb;-><init>(Lrb;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lrb;

    .line 4
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lrb;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lrb;

    .line 5
    invoke-direct {v0, p1}, Lrb;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public h(Landroid/content/Context;Landroid/util/AttributeSet;)Lrb;
    .locals 1

    .line 1
    new-instance v0, Lrb;

    invoke-direct {v0, p1, p2}, Lrb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public j(Landroid/view/View;ILrh;Lro;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public m(Lrh;Lro;Landroid/view/View;Lik;)V
    .locals 0

    return-void
.end method

.method public n(Lrh;Lro;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public o(Lro;)V
    .locals 0

    return-void
.end method

.method public p(Landroid/graphics/Rect;II)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lra;->ar()I

    move-result v1

    invoke-virtual {p0}, Lra;->as()I

    move-result v2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lra;->at()I

    move-result v3

    invoke-virtual {p0}, Lra;->aq()I

    move-result v4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lra;->ap()I

    move-result v1

    invoke-static {p2, v0, v1}, Lra;->aj(III)I

    move-result p2

    add-int/2addr p1, v3

    add-int/2addr p1, v4

    .line 4
    invoke-virtual {p0}, Lra;->ao()I

    move-result v0

    invoke-static {p3, p1, v0}, Lra;->aj(III)I

    move-result p1

    .line 5
    invoke-virtual {p0, p2, p1}, Lra;->aR(II)V

    return-void
.end method

.method public s(Lrb;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public v(II)V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public x(II)V
    .locals 0

    return-void
.end method

.method public y(II)V
    .locals 0

    return-void
.end method

.method public z(II)V
    .locals 0

    return-void
.end method
