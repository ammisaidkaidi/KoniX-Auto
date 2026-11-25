.class public Lrc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView;

.field public b:Landroid/widget/Scroller;

.field public final c:Lre;

.field private d:Lqm;

.field private e:Lqm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lry;

    invoke-direct {v0, p0}, Lry;-><init>(Lrc;)V

    iput-object v0, p0, Lrc;->c:Lre;

    return-void
.end method

.method private static h(Landroid/view/View;Lqm;)I
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Lqm;->d(Landroid/view/View;)I

    move-result v0

    .line 2
    invoke-virtual {p1, p0}, Lqm;->b(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    .line 3
    invoke-virtual {p1}, Lqm;->j()I

    move-result p0

    invoke-virtual {p1}, Lqm;->k()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method private static i(Lra;Lqm;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lqm;->j()I

    move-result v2

    invoke-virtual {p1}, Lqm;->k()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 3
    invoke-virtual {p0, v4}, Lra;->aw(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {p1, v5}, Lqm;->d(Landroid/view/View;)I

    move-result v6

    .line 5
    invoke-virtual {p1, v5}, Lqm;->b(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    .line 6
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    if-ge v6, v3, :cond_2

    move-object v1, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrc;->a:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lrc;->d(Lra;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p0, v0, v1}, Lrc;->e(Lra;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_4

    aget v2, v0, v3

    if-eqz v2, :cond_3

    goto :goto_0

    .line 3
    :cond_3
    return-void

    .line 2
    :cond_4
    move v1, v2

    :goto_0
    iget-object v2, p0, Lrc;->a:Landroid/support/v7/widget/RecyclerView;

    aget v0, v0, v3

    .line 3
    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView;->ab(II)V

    return-void
.end method

.method public b(II)[I
    .locals 10

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lrc;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p1, p0, Lrc;->b:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    const/4 p2, 0x0

    aput p1, v0, p2

    iget-object p1, p0, Lrc;->b:Landroid/widget/Scroller;

    .line 3
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    const/4 p2, 0x1

    aput p1, v0, p2

    return-object v0
.end method

.method public final c(Lra;Lqm;II)I
    .locals 11

    .line 1
    invoke-virtual {p0, p3, p4}, Lrc;->b(II)[I

    move-result-object p3

    .line 2
    invoke-virtual {p1}, Lra;->ak()I

    move-result p4

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p4, :cond_0

    goto :goto_5

    .line 10
    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p4, :cond_5

    .line 3
    invoke-virtual {p1, v7}, Lra;->aw(I)Landroid/view/View;

    move-result-object v8

    .line 4
    invoke-static {v8}, Lra;->bg(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto :goto_3

    :cond_1
    if-ge v9, v3, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    move v10, v3

    :goto_1
    if-ge v9, v3, :cond_3

    move-object v5, v8

    :cond_3
    if-gt v9, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v8

    move v4, v9

    :goto_2
    move v3, v10

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_8

    if-nez v6, :cond_6

    goto :goto_5

    .line 5
    :cond_6
    invoke-virtual {p2, v5}, Lqm;->d(Landroid/view/View;)I

    move-result p1

    .line 6
    invoke-virtual {p2, v6}, Lqm;->d(Landroid/view/View;)I

    move-result p4

    .line 5
    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    invoke-virtual {p2, v5}, Lqm;->a(Landroid/view/View;)I

    move-result p4

    .line 8
    invoke-virtual {p2, v6}, Lqm;->a(Landroid/view/View;)I

    move-result p2

    .line 7
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    int-to-float p1, p2

    sub-int/2addr v4, v3

    add-int/2addr v4, v0

    int-to-float p2, v4

    div-float v1, p1, p2

    goto :goto_5

    :cond_8
    :goto_4
    nop

    .line 2
    :goto_5
    const/4 p1, 0x0

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_9

    return v2

    :cond_9
    aget p1, p3, v2

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p2, p3, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_a

    aget p1, p3, v2

    goto :goto_6

    .line 10
    :cond_a
    aget p1, p3, v0

    .line 9
    :goto_6
    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public d(Lra;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lra;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lrc;->g(Lra;)Lqm;

    move-result-object v0

    invoke-static {p1, v0}, Lrc;->i(Lra;Lqm;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lra;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lrc;->f(Lra;)Lqm;

    move-result-object v0

    invoke-static {p1, v0}, Lrc;->i(Lra;Lqm;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lra;Landroid/view/View;)[I
    .locals 4

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Lra;->W()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lrc;->f(Lra;)Lqm;

    move-result-object v1

    .line 2
    invoke-static {p2, v1}, Lrc;->h(Landroid/view/View;Lqm;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    .line 4
    :cond_0
    aput v2, v0, v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lra;->X()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lrc;->g(Lra;)Lqm;

    move-result-object p1

    .line 4
    invoke-static {p2, p1}, Lrc;->h(Landroid/view/View;Lqm;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method public final f(Lra;)Lqm;
    .locals 1

    .line 1
    iget-object v0, p0, Lrc;->e:Lqm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqm;->a:Lra;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lqm;->p(Lra;)Lqm;

    move-result-object p1

    iput-object p1, p0, Lrc;->e:Lqm;

    :cond_1
    iget-object p1, p0, Lrc;->e:Lqm;

    return-object p1
.end method

.method public final g(Lra;)Lqm;
    .locals 1

    .line 1
    iget-object v0, p0, Lrc;->d:Lqm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqm;->a:Lra;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lqm;->r(Lra;)Lqm;

    move-result-object p1

    iput-object p1, p0, Lrc;->d:Lqm;

    :cond_1
    iget-object p1, p0, Lrc;->d:Lqm;

    return-object p1
.end method
