.class public final Lapk;
.super Lqx;
.source "PG"


# instance fields
.field public a:I

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0}, Lqx;-><init>()V

    iput-object p1, p0, Lapk;->b:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lapk;->c:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lapk;->a:I

    return-void
.end method


# virtual methods
.method public final f(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 12

    .line 1
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Lra;->ak()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lapk;->a:I

    int-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    int-to-double v5, v4

    cmpg-double v7, v5, v1

    if-gtz v7, :cond_2

    if-ne v4, v3, :cond_0

    goto :goto_2

    :cond_0
    cmpl-double v7, v5, v1

    if-nez v7, :cond_1

    add-int/lit8 v5, v4, -0x1

    iget v6, p0, Lapk;->a:I

    mul-int v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 12
    :cond_1
    iget v5, p0, Lapk;->a:I

    mul-int v5, v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 3
    :goto_1
    iget v6, p0, Lapk;->a:I

    add-int/lit8 v7, v4, -0x1

    mul-int v6, v6, v7

    .line 4
    invoke-virtual {v0, v6}, Lra;->aw(I)Landroid/view/View;

    move-result-object v6

    .line 5
    invoke-virtual {v0, v5}, Lra;->aw(I)Landroid/view/View;

    move-result-object v5

    .line 6
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700b4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 7
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v9, p0, Lapk;->c:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 9
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    .line 10
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0700b2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    iget-object v11, p0, Lapk;->c:Landroid/graphics/drawable/Drawable;

    float-to-int v8, v8

    add-int/2addr v7, v8

    sub-int v8, v6, v9

    float-to-int v9, v10

    sub-int/2addr v5, v9

    .line 11
    invoke-virtual {v11, v7, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lapk;->c:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {v0}, Lra;->ak()I

    move-result v1

    iget v2, p0, Lapk;->a:I

    .line 15
    div-int v4, v1, v2

    .line 16
    rem-int v5, v1, v2

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_4

    if-ge v3, v5, :cond_3

    iget v2, p0, Lapk;->a:I

    mul-int v2, v2, v4

    add-int/2addr v2, v3

    goto :goto_4

    .line 26
    :cond_3
    add-int/lit8 v2, v4, -0x1

    iget v6, p0, Lapk;->a:I

    mul-int v2, v2, v6

    add-int/2addr v2, v3

    .line 18
    :goto_4
    invoke-virtual {v0, v3}, Lra;->aw(I)Landroid/view/View;

    move-result-object v6

    .line 19
    invoke-virtual {v0, v2}, Lra;->aw(I)Landroid/view/View;

    move-result-object v2

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700b5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v9, p0, Lapk;->b:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 24
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0700b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    iget-object v11, p0, Lapk;->b:Landroid/graphics/drawable/Drawable;

    sub-int v9, v6, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    float-to-int v8, v10

    sub-int/2addr v2, v8

    .line 25
    invoke-virtual {v11, v9, v7, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lapk;->b:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final j(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lro;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lapk;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lapk;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 3
    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
