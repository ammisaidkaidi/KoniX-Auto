.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "PG"


# instance fields
.field a:Z

.field public b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field public g:Lps;

.field final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v0, Lpq;

    .line 4
    invoke-direct {v0}, Lpq;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->q(I)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 7
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    const/4 p2, -0x1

    iput p2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-instance p2, Landroid/util/SparseIntArray;

    .line 8
    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance p2, Landroid/util/SparseIntArray;

    .line 9
    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance p2, Lpq;

    .line 10
    invoke-direct {p2}, Lpq;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    new-instance p2, Landroid/graphics/Rect;

    .line 11
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->q(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    .line 14
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    .line 15
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v0, Lpq;

    .line 16
    invoke-direct {v0}, Lpq;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    new-instance v0, Landroid/graphics/Rect;

    .line 17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 18
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->au(Landroid/content/Context;Landroid/util/AttributeSet;II)Lqz;

    move-result-object p1

    iget p1, p1, Lqz;->b:I

    .line 19
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->q(I)V

    return-void
.end method

.method private final bo(Lrh;Lro;I)I
    .locals 0

    .line 1
    iget-boolean p2, p2, Lro;->g:Z

    if-nez p2, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {p3, p1}, Lps;->e(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p3}, Lrh;->a(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {p1, p2}, Lps;->e(II)I

    move-result p1

    return p1
.end method

.method private final bp(Lrh;Lro;I)I
    .locals 1

    .line 1
    iget-boolean p2, p2, Lro;->g:Z

    if-nez p2, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {p1, p3, p2}, Lps;->a(II)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 2
    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 3
    :cond_1
    invoke-virtual {p1, p3}, Lrh;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    iget p3, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 5
    invoke-virtual {p2, p1, p3}, Lps;->a(II)I

    move-result p1

    return p1
.end method

.method private final bq(Lrh;Lro;I)I
    .locals 2

    .line 1
    iget-boolean p2, p2, Lro;->g:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    invoke-virtual {p1}, Lps;->b()V

    return v0

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 2
    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v1, :cond_1

    return p2

    .line 3
    :cond_1
    invoke-virtual {p1, p3}, Lrh;->a(I)I

    move-result p1

    if-ne p1, v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    .line 5
    invoke-virtual {p1}, Lps;->b()V

    return v0
.end method

.method private final br(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-eqz v0, :cond_0

    array-length v2, v0

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    aget v2, v0, v2

    if-eq v2, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 2
    new-array v0, v0, [I

    :cond_1
    nop

    .line 3
    const/4 v2, 0x0

    aput v2, v0, v2

    .line 4
    div-int v3, p1, v1

    .line 5
    rem-int/2addr p1, v1

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-gt v5, v1, :cond_3

    add-int/2addr v2, p1

    if-lez v2, :cond_2

    sub-int v6, v1, v2

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v2, v1

    goto :goto_1

    .line 6
    :cond_2
    nop

    .line 5
    move v6, v3

    :goto_1
    add-int/2addr v4, v6

    .line 6
    aput v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    return-void
.end method

.method private final bs()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    return-void
.end method

.method private final bt(Landroid/view/View;IZ)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lpr;

    .line 2
    iget-object v1, v0, Lpr;->d:Landroid/graphics/Rect;

    .line 3
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Lpr;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lpr;->bottomMargin:I

    add-int/2addr v2, v3

    .line 4
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Lpr;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lpr;->rightMargin:I

    add-int/2addr v3, v1

    .line 5
    iget v1, v0, Lpr;->a:I

    iget v4, v0, Lpr;->b:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(II)I

    move-result v1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 6
    iget v4, v0, Lpr;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->al(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 7
    invoke-virtual {v1}, Lqm;->k()I

    move-result v1

    iget v3, p0, Lra;->C:I

    iget v0, v0, Lpr;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroid/support/v7/widget/GridLayoutManager;->al(IIIIZ)I

    move-result v0

    goto :goto_0

    .line 8
    :cond_0
    iget v4, v0, Lpr;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->al(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 9
    invoke-virtual {v1}, Lqm;->k()I

    move-result v1

    iget v2, p0, Lra;->B:I

    iget v0, v0, Lpr;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroid/support/v7/widget/GridLayoutManager;->al(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    .line 10
    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->bu(Landroid/view/View;IIZ)V

    return-void
.end method

.method private final bu(Landroid/view/View;IIZ)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lra;->x:Z

    if-eqz p4, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget v2, v0, Lrb;->width:I

    invoke-static {p4, p2, v2}, Lra;->aV(III)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v0, v0, Lrb;->height:I

    invoke-static {p4, p3, v0}, Lra;->aV(III)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lra;->aY(Landroid/view/View;IILrb;)Z

    move-result v1

    .line 3
    :goto_0
    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_3
    return-void
.end method

.method private final bv()V
    .locals 2

    .line 2
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lra;->D:I

    invoke-virtual {p0}, Lra;->as()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lra;->ar()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lra;->E:I

    .line 1
    invoke-virtual {p0}, Lra;->aq()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lra;->at()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->br(I)V

    return-void
.end method


# virtual methods
.method public final a(Lrh;Lro;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    return p1

    :cond_0
    invoke-virtual {p2}, Lro;->a()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    invoke-virtual {p2}, Lro;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->bo(Lrh;Lro;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final b(Lrh;Lro;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    return p1

    :cond_0
    invoke-virtual {p2}, Lro;->a()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    invoke-virtual {p2}, Lro;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->bo(Lrh;Lro;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final c(II)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v1, p1

    .line 3
    aget p1, v0, v1

    sub-int/2addr v1, p2

    aget p2, v0, v1

    sub-int/2addr p1, p2

    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    add-int/2addr p2, p1

    .line 2
    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public final d(ILrh;Lro;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bv()V

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bs()V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILrh;Lro;)I

    move-result p1

    return p1
.end method

.method public final e(ILrh;Lro;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bv()V

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bs()V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->e(ILrh;Lro;)I

    move-result p1

    return p1
.end method

.method public final f()Lrb;
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Lpr;

    invoke-direct {v0, v1, v2}, Lpr;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lpr;

    .line 2
    invoke-direct {v0, v2, v1}, Lpr;-><init>(II)V

    return-object v0
.end method

.method public final g(Landroid/view/ViewGroup$LayoutParams;)Lrb;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lpr;

    .line 2
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lpr;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lpr;

    .line 3
    invoke-direct {v0, p1}, Lpr;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h(Landroid/content/Context;Landroid/util/AttributeSet;)Lrb;
    .locals 1

    .line 1
    new-instance v0, Lpr;

    invoke-direct {v0, p1, p2}, Lpr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final i(Lrh;Lro;ZZ)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result p3

    const/4 v0, -0x1

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p0}, Lra;->ak()I

    move-result p3

    add-int/2addr p3, v0

    const/4 p4, -0x1

    goto :goto_0

    .line 12
    :cond_0
    const/4 p4, 0x0

    const/4 v0, 0x1

    move v0, p3

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 3
    :goto_0
    invoke-virtual {p2}, Lro;->a()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Q()V

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 5
    invoke-virtual {v2}, Lqm;->j()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 6
    invoke-virtual {v3}, Lqm;->f()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eq p3, v0, :cond_8

    .line 7
    invoke-virtual {p0, p3}, Lra;->aw(I)Landroid/view/View;

    move-result-object v6

    .line 8
    invoke-static {v6}, Landroid/support/v7/widget/GridLayoutManager;->bg(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_6

    if-ge v7, v1, :cond_6

    .line 9
    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->bp(Lrh;Lro;I)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_4

    .line 10
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lrb;

    invoke-virtual {v7}, Lrb;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_7

    move-object v5, v6

    goto :goto_4

    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 11
    invoke-virtual {v7, v6}, Lqm;->d(Landroid/view/View;)I

    move-result v7

    if-ge v7, v3, :cond_4

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 12
    invoke-virtual {v7, v6}, Lqm;->a(Landroid/view/View;)I

    move-result v7

    if-ge v7, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v4, v6

    goto :goto_4

    :cond_6
    :goto_3
    nop

    .line 9
    :cond_7
    :goto_4
    add-int/2addr p3, p4

    goto :goto_1

    .line 12
    :cond_8
    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    return-object v5
.end method

.method public final j(Landroid/view/View;ILrh;Lro;)Landroid/view/View;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Lra;->av(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 2
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lpr;

    .line 3
    iget v6, v5, Lpr;->a:I

    .line 4
    iget v5, v5, Lpr;->b:I

    add-int/2addr v5, v6

    .line 5
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/view/View;ILrh;Lro;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v4

    .line 6
    :cond_1
    move/from16 v7, p2

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/LinearLayoutManager;->G(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    .line 8
    :cond_2
    const/4 v7, 0x1

    .line 6
    :goto_0
    iget-boolean v10, v0, Landroid/support/v7/widget/GridLayoutManager;->l:Z

    const/4 v11, -0x1

    if-eq v7, v10, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lra;->ak()I

    move-result v7

    add-int/2addr v7, v11

    const/4 v10, -0x1

    const/4 v12, -0x1

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lra;->ak()I

    move-result v7

    move v10, v7

    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 7
    :goto_1
    iget v13, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v13, v8, :cond_4

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->Z()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    .line 23
    :cond_4
    const/4 v13, 0x0

    .line 10
    :goto_2
    invoke-direct {v0, v1, v2, v7}, Landroid/support/v7/widget/GridLayoutManager;->bo(Lrh;Lro;I)I

    move-result v14

    move v11, v7

    move/from16 v16, v12

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    move-object v7, v4

    :goto_3
    if-eq v11, v10, :cond_13

    .line 11
    move/from16 v17, v10

    invoke-direct {v0, v1, v2, v11}, Landroid/support/v7/widget/GridLayoutManager;->bo(Lrh;Lro;I)I

    move-result v10

    .line 12
    invoke-virtual {v0, v11}, Lra;->aw(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto/16 :goto_b

    .line 13
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_6

    if-eq v10, v14, :cond_6

    if-nez v4, :cond_13

    move-object/from16 v18, v3

    move/from16 v21, v14

    goto/16 :goto_a

    .line 14
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lpr;

    .line 15
    iget v2, v10, Lpr;->a:I

    .line 16
    move-object/from16 v18, v3

    iget v3, v10, Lpr;->b:I

    add-int/2addr v3, v2

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_8

    if-ne v2, v6, :cond_8

    if-eq v3, v5, :cond_7

    goto :goto_4

    .line 23
    :cond_7
    return-object v1

    .line 18
    :cond_8
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v21, v14

    goto :goto_8

    .line 19
    :cond_a
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_b

    if-nez v7, :cond_b

    move/from16 v21, v14

    goto :goto_8

    .line 20
    :cond_b
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 21
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v21, v14

    sub-int v14, v20, v19

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_e

    if-gt v14, v9, :cond_10

    if-ne v14, v9, :cond_d

    if-gt v2, v15, :cond_c

    const/4 v14, 0x0

    goto :goto_6

    :cond_c
    const/4 v14, 0x1

    :goto_6
    if-eq v13, v14, :cond_10

    :cond_d
    goto :goto_a

    :cond_e
    if-nez v4, :cond_12

    .line 23
    invoke-virtual {v0, v1}, Lra;->bi(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_12

    if-gt v14, v12, :cond_10

    if-ne v14, v12, :cond_12

    if-gt v2, v8, :cond_f

    const/4 v14, 0x0

    goto :goto_7

    :cond_f
    const/4 v14, 0x1

    :goto_7
    if-eq v13, v14, :cond_10

    goto :goto_9

    .line 24
    :cond_10
    :goto_8
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 25
    iget v4, v10, Lpr;->a:I

    .line 26
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 27
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v9, v3, v2

    move v15, v4

    move-object v4, v1

    goto :goto_a

    .line 28
    :cond_11
    iget v7, v10, Lpr;->a:I

    .line 29
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 30
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v12, v3, v2

    move v8, v7

    move-object v7, v1

    goto :goto_a

    .line 23
    :cond_12
    :goto_9
    nop

    .line 13
    :goto_a
    add-int v11, v11, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v10, v17

    move-object/from16 v3, v18

    move/from16 v14, v21

    goto/16 :goto_3

    .line 12
    :cond_13
    :goto_b
    if-eqz v4, :cond_14

    return-object v4

    :cond_14
    return-object v7
.end method

.method public final k(Lrh;Lro;Lpy;Lpx;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    invoke-virtual {v5}, Lqm;->i()I

    move-result v5

    .line 2
    invoke-virtual/range {p0 .. p0}, Lra;->ak()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v8, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    aget v6, v6, v8

    goto :goto_0

    .line 11
    :cond_0
    const/4 v6, 0x0

    .line 2
    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_1

    .line 3
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->bv()V

    .line 4
    :cond_1
    iget v9, v3, Lpy;->e:I

    iget v10, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    .line 5
    iget v10, v3, Lpy;->d:I

    invoke-direct {v0, v1, v2, v10}, Landroid/support/v7/widget/GridLayoutManager;->bp(Lrh;Lro;I)I

    move-result v10

    .line 6
    iget v12, v3, Lpy;->d:I

    invoke-direct {v0, v1, v2, v12}, Landroid/support/v7/widget/GridLayoutManager;->bq(Lrh;Lro;I)I

    move-result v12

    add-int/2addr v10, v12

    const/4 v12, 0x0

    goto :goto_1

    .line 11
    :cond_2
    const/4 v12, 0x0

    .line 6
    :goto_1
    iget v13, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v12, v13, :cond_5

    .line 7
    invoke-virtual {v3, v2}, Lpy;->d(Lro;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-lez v10, :cond_5

    .line 8
    iget v13, v3, Lpy;->d:I

    .line 9
    invoke-direct {v0, v1, v2, v13}, Landroid/support/v7/widget/GridLayoutManager;->bq(Lrh;Lro;I)I

    move-result v14

    iget v15, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-gt v14, v15, :cond_4

    .line 12
    sub-int/2addr v10, v14

    if-gez v10, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v3, v1}, Lpy;->a(Lrh;)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_5

    iget-object v14, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 11
    aput-object v13, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 9
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    if-eqz v12, :cond_1b

    if-ne v9, v11, :cond_6

    move v14, v12

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto :goto_3

    .line 51
    :cond_6
    add-int/lit8 v13, v12, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 12
    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-eq v13, v14, :cond_7

    iget-object v8, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 13
    aget-object v8, v8, v13

    .line 14
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lpr;

    .line 15
    invoke-static {v8}, Landroid/support/v7/widget/GridLayoutManager;->bg(Landroid/view/View;)I

    move-result v8

    invoke-direct {v0, v1, v2, v8}, Landroid/support/v7/widget/GridLayoutManager;->bq(Lrh;Lro;I)I

    move-result v8

    iput v8, v7, Lpr;->b:I

    .line 16
    iput v10, v7, Lpr;->a:I

    add-int/2addr v10, v8

    add-int/2addr v13, v15

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v2, v12, :cond_d

    iget-object v8, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 17
    aget-object v8, v8, v2

    .line 18
    iget-object v10, v3, Lpy;->l:Ljava/util/List;

    if-nez v10, :cond_9

    if-ne v9, v11, :cond_8

    .line 19
    invoke-virtual {v0, v8}, Lra;->aA(Landroid/view/View;)V

    const/4 v10, 0x0

    goto :goto_6

    .line 27
    :cond_8
    nop

    .line 20
    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Lra;->aB(Landroid/view/View;I)V

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    if-ne v9, v11, :cond_a

    .line 21
    invoke-virtual {v0, v8}, Lra;->ay(Landroid/view/View;)V

    goto :goto_6

    :cond_a
    nop

    .line 22
    invoke-virtual {v0, v8, v10}, Lra;->az(Landroid/view/View;I)V

    .line 19
    :goto_6
    iget-object v13, v0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 23
    invoke-virtual {v0, v8, v13}, Lra;->aC(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 24
    invoke-direct {v0, v8, v5, v10}, Landroid/support/v7/widget/GridLayoutManager;->bt(Landroid/view/View;IZ)V

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 25
    invoke-virtual {v10, v8}, Lqm;->b(Landroid/view/View;)I

    move-result v10

    if-le v10, v7, :cond_b

    move v7, v10

    .line 26
    :cond_b
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lpr;

    iget-object v13, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 27
    invoke-virtual {v13, v8}, Lqm;->c(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    iget v10, v10, Lpr;->b:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    cmpl-float v10, v8, v1

    if-lez v10, :cond_c

    move v1, v8

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 22
    :cond_d
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v5, v2, :cond_f

    iget v2, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 28
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 29
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->br(I)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v12, :cond_f

    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 30
    aget-object v1, v1, v10

    .line 31
    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v11}, Landroid/support/v7/widget/GridLayoutManager;->bt(Landroid/view/View;IZ)V

    iget-object v2, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 32
    invoke-virtual {v2, v1}, Lqm;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, v7, :cond_e

    move v7, v1

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_f
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v12, :cond_12

    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 33
    aget-object v1, v1, v10

    iget-object v2, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 34
    invoke-virtual {v2, v1}, Lqm;->b(Landroid/view/View;)I

    move-result v2

    if-eq v2, v7, :cond_11

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lpr;

    .line 36
    iget-object v5, v2, Lpr;->d:Landroid/graphics/Rect;

    .line 37
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v8

    iget v8, v2, Lpr;->topMargin:I

    add-int/2addr v6, v8

    iget v8, v2, Lpr;->bottomMargin:I

    add-int/2addr v6, v8

    .line 38
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v5

    iget v5, v2, Lpr;->leftMargin:I

    add-int/2addr v8, v5

    iget v5, v2, Lpr;->rightMargin:I

    add-int/2addr v8, v5

    .line 39
    iget v5, v2, Lpr;->a:I

    iget v9, v2, Lpr;->b:I

    invoke-virtual {v0, v5, v9}, Landroid/support/v7/widget/GridLayoutManager;->c(II)I

    move-result v5

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v9, v11, :cond_10

    .line 40
    iget v2, v2, Lpr;->width:I

    const/4 v9, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v5, v13, v8, v2, v9}, Landroid/support/v7/widget/GridLayoutManager;->al(IIIIZ)I

    move-result v2

    sub-int v5, v7, v6

    .line 41
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_9

    .line 44
    :cond_10
    const/4 v9, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    sub-int v8, v7, v8

    .line 42
    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 43
    iget v2, v2, Lpr;->height:I

    invoke-static {v5, v13, v6, v2, v9}, Landroid/support/v7/widget/GridLayoutManager;->al(IIIIZ)I

    move-result v5

    move v2, v8

    .line 41
    :goto_9
    nop

    .line 44
    invoke-direct {v0, v1, v2, v5, v11}, Landroid/support/v7/widget/GridLayoutManager;->bu(Landroid/view/View;IIZ)V

    goto :goto_a

    .line 34
    :cond_11
    const/4 v9, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    .line 44
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 45
    :cond_12
    const/4 v9, 0x0

    iput v7, v4, Lpx;->a:I

    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v1, v11, :cond_14

    .line 46
    iget v1, v3, Lpy;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 47
    iget v10, v3, Lpy;->b:I

    sub-int v1, v10, v7

    move v2, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto :goto_b

    .line 48
    :cond_13
    iget v10, v3, Lpy;->b:I

    add-int v1, v10, v7

    move v2, v1

    move v1, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto :goto_b

    .line 49
    :cond_14
    const/4 v2, -0x1

    iget v1, v3, Lpy;->f:I

    if-ne v1, v2, :cond_15

    .line 50
    iget v10, v3, Lpy;->b:I

    sub-int v1, v10, v7

    move v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_b

    .line 51
    :cond_15
    iget v10, v3, Lpy;->b:I

    add-int v1, v10, v7

    move v3, v10

    const/4 v2, 0x0

    move v10, v1

    const/4 v1, 0x0

    .line 47
    :goto_b
    const/4 v7, 0x0

    :goto_c
    if-ge v7, v12, :cond_1a

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 52
    aget-object v5, v5, v7

    .line 53
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lpr;

    iget v8, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v8, v11, :cond_17

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->Z()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 55
    invoke-virtual/range {p0 .. p0}, Lra;->ar()I

    move-result v3

    iget-object v8, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    iget v10, v6, Lpr;->a:I

    sub-int/2addr v9, v10

    aget v8, v8, v9

    add-int/2addr v3, v8

    iget-object v8, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 56
    invoke-virtual {v8, v5}, Lqm;->c(Landroid/view/View;)I

    move-result v8

    sub-int v8, v3, v8

    move v10, v3

    move v3, v8

    goto :goto_d

    .line 57
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lra;->ar()I

    move-result v3

    iget-object v8, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v9, v6, Lpr;->a:I

    aget v8, v8, v9

    add-int/2addr v3, v8

    iget-object v8, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 58
    invoke-virtual {v8, v5}, Lqm;->c(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v3

    move v10, v8

    goto :goto_d

    .line 59
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lra;->at()I

    move-result v1

    iget-object v2, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v8, v6, Lpr;->a:I

    aget v2, v2, v8

    add-int/2addr v1, v2

    iget-object v2, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Lqm;

    .line 60
    invoke-virtual {v2, v5}, Lqm;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 61
    :goto_d
    invoke-static {v5, v3, v1, v10, v2}, Landroid/support/v7/widget/GridLayoutManager;->bj(Landroid/view/View;IIII)V

    .line 62
    invoke-virtual {v6}, Lrb;->c()Z

    move-result v8

    if-nez v8, :cond_18

    invoke-virtual {v6}, Lrb;->b()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 63
    :cond_18
    iput-boolean v11, v4, Lpx;->c:Z

    .line 64
    :cond_19
    iget-boolean v6, v4, Lpx;->d:Z

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    or-int/2addr v5, v6

    iput-boolean v5, v4, Lpx;->d:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 60
    :cond_1a
    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v2, 0x0

    .line 65
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_1b
    nop

    .line 66
    iput-boolean v11, v4, Lpx;->b:Z

    return-void
.end method

.method public final l(Lrh;Lro;Lpw;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bv()V

    .line 2
    invoke-virtual {p2}, Lro;->a()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p2, Lro;->g:Z

    if-nez v0, :cond_2

    .line 3
    iget v0, p3, Lpw;->b:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->bp(Lrh;Lro;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    :goto_0
    if-lez v0, :cond_2

    .line 4
    iget p4, p3, Lpw;->b:I

    if-lez p4, :cond_2

    add-int/lit8 p4, p4, -0x1

    .line 5
    iput p4, p3, Lpw;->b:I

    .line 6
    invoke-direct {p0, p1, p2, p4}, Landroid/support/v7/widget/GridLayoutManager;->bp(Lrh;Lro;I)I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lro;->a()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    .line 8
    iget v1, p3, Lpw;->b:I

    :goto_1
    if-ge v1, p4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 9
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->bp(Lrh;Lro;I)I

    move-result v3

    if-le v3, v0, :cond_1

    move v1, v2

    move v0, v3

    goto :goto_1

    .line 10
    :cond_1
    iput v1, p3, Lpw;->b:I

    .line 11
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bs()V

    return-void
.end method

.method public final m(Lrh;Lro;Landroid/view/View;Lik;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lpr;

    if-nez v1, :cond_0

    .line 3
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->aH(Landroid/view/View;Lik;)V

    return-void

    .line 4
    :cond_0
    check-cast v0, Lpr;

    .line 5
    invoke-virtual {v0}, Lrb;->a()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;->bo(Lrh;Lro;I)I

    move-result p1

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 p3, 0x1

    if-nez p2, :cond_1

    iget p2, v0, Lpr;->a:I

    iget v0, v0, Lpr;->b:I

    .line 7
    invoke-static {p2, v0, p1, p3}, Lczd;->a(IIII)Lczd;

    move-result-object p1

    invoke-virtual {p4, p1}, Lik;->c(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget p2, v0, Lpr;->a:I

    iget v0, v0, Lpr;->b:I

    .line 6
    invoke-static {p1, p3, p2, v0}, Lczd;->a(IIII)Lczd;

    move-result-object p1

    invoke-virtual {p4, p1}, Lik;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Lrh;Lro;)V
    .locals 6

    .line 1
    iget-boolean v0, p2, Lro;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lra;->aw(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lpr;

    .line 3
    invoke-virtual {v2}, Lrb;->a()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    iget v5, v2, Lpr;->b:I

    .line 4
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    iget v2, v2, Lpr;->a:I

    .line 5
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->n(Lrh;Lro;)V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 7
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public o(Lro;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->o(Lro;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    return-void
.end method

.method public final p(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->p(Landroid/graphics/Rect;II)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lra;->ar()I

    move-result v0

    invoke-virtual {p0}, Lra;->as()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lra;->at()I

    move-result v1

    invoke-virtual {p0}, Lra;->aq()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 5
    invoke-virtual {p0}, Lra;->ao()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroid/support/v7/widget/GridLayoutManager;->aj(III)I

    move-result p1

    iget-object p3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    .line 6
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget p3, p3, v1

    add-int/2addr p3, v0

    .line 7
    invoke-virtual {p0}, Lra;->ap()I

    move-result v0

    .line 6
    invoke-static {p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->aj(III)I

    move-result p2

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 9
    invoke-virtual {p0}, Lra;->ap()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->aj(III)I

    move-result p2

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    .line 10
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    add-int/2addr p1, v1

    .line 11
    invoke-virtual {p0}, Lra;->ao()I

    move-result v0

    .line 10
    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->aj(III)I

    move-result p1

    .line 12
    :goto_0
    invoke-virtual {p0, p2, p1}, Lra;->aR(II)V

    return-void
.end method

.method public final q(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    if-lez p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    .line 2
    invoke-virtual {p1}, Lps;->d()V

    .line 3
    invoke-virtual {p0}, Lra;->aO()V

    return-void

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->r(Z)V

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Lrb;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lpr;

    return p1
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->o:Lpz;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u(Lro;Lpy;Lpn;)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, p1}, Lpy;->d(Lro;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 2
    iget v3, p2, Lpy;->d:I

    .line 3
    iget v4, p2, Lpy;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Lpn;->a(II)V

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    .line 4
    invoke-virtual {v3}, Lps;->b()V

    add-int/lit8 v0, v0, -0x1

    .line 5
    iget v3, p2, Lpy;->d:I

    iget v4, p2, Lpy;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Lpy;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    invoke-virtual {p1}, Lps;->d()V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    .line 2
    invoke-virtual {p1}, Lps;->c()V

    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    invoke-virtual {v0}, Lps;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    .line 2
    invoke-virtual {v0}, Lps;->c()V

    return-void
.end method

.method public final x(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    invoke-virtual {p1}, Lps;->d()V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    .line 2
    invoke-virtual {p1}, Lps;->c()V

    return-void
.end method

.method public final y(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    invoke-virtual {p1}, Lps;->d()V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    .line 2
    invoke-virtual {p1}, Lps;->c()V

    return-void
.end method

.method public final z(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    invoke-virtual {p1}, Lps;->d()V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    .line 2
    invoke-virtual {p1}, Lps;->c()V

    return-void
.end method
