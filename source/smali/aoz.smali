.class public final Laoz;
.super Lrc;
.source "PG"


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Landroid/support/v7/widget/RecyclerView;

.field private f:Lqm;

.field private g:Lqm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    iput-object p1, p0, Laoz;->d:Landroid/content/Context;

    return-void
.end method

.method public static h(Landroid/view/View;Lqm;)F
    .locals 5

    .line 1
    invoke-virtual {p1}, Lqm;->j()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lqm;->f()I

    move-result v1

    .line 3
    invoke-virtual {p1, p0}, Lqm;->d(Landroid/view/View;)I

    move-result v2

    .line 4
    invoke-virtual {p1, p0}, Lqm;->a(Landroid/view/View;)I

    move-result v3

    if-lt v2, v0, :cond_1

    if-le v3, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 4
    :cond_1
    :goto_0
    const/4 v4, 0x0

    if-gt v3, v0, :cond_2

    return v4

    :cond_2
    if-lt v2, v1, :cond_3

    return v4

    :cond_3
    if-gt v2, v0, :cond_5

    if-ge v3, v1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    int-to-float v1, v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 7
    invoke-virtual {p1, p0}, Lqm;->b(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1

    .line 4
    :cond_5
    :goto_1
    if-ge v2, v0, :cond_6

    int-to-float v1, v3

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 5
    invoke-virtual {p1, p0}, Lqm;->b(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1

    :cond_6
    int-to-float v0, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    .line 6
    invoke-virtual {p1, p0}, Lqm;->b(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private static l(III)I
    .locals 0

    .line 1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static m(Landroid/view/View;Lqm;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lqm;->d(Landroid/view/View;)I

    move-result p0

    .line 2
    invoke-virtual {p1}, Lqm;->j()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private final n(Lra;)Lqm;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lra;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Laoz;->j(Lra;)Lqm;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Laoz;->i(Lra;)Lqm;

    move-result-object p1

    .line 1
    :goto_0
    return-object p1
.end method

.method private static o(Landroid/view/View;Lqm;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lqm;->b(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Lqm;->k()I

    move-result p1

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(II)[I
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lrc;->b(II)[I

    move-result-object p1

    iget-object p2, p0, Laoz;->e:Landroid/support/v7/widget/RecyclerView;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p2}, Lra;->ak()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0, p2}, Laoz;->k(Lra;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lra;->ak()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4
    :goto_0
    invoke-direct {p0, p2}, Laoz;->n(Lra;)Lqm;

    move-result-object v2

    .line 5
    invoke-virtual {p2, v0}, Lra;->aw(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v0, v2}, Laoz;->h(Landroid/view/View;Lqm;)F

    move-result v2

    iget p2, p2, Lra;->E:I

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 8
    invoke-static {v0}, Lra;->bc(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_1

    .line 10
    :cond_3
    nop

    .line 8
    :goto_1
    neg-int v0, p2

    aget v2, p1, v1

    .line 9
    invoke-static {v2, v0, p2}, Laoz;->l(III)I

    move-result v2

    aput v2, p1, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    .line 10
    invoke-static {v2, v0, p2}, Laoz;->l(III)I

    move-result p2

    aput p2, p1, v1

    return-object p1

    .line 2
    :cond_4
    :goto_2
    return-object p1
.end method

.method public final d(Lra;)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lra;->ak()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p1}, Laoz;->n(Lra;)Lqm;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_2

    .line 3
    invoke-virtual {v1, v6}, Lra;->aw(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-static {v1, v4}, Laoz;->o(Landroid/view/View;Lqm;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    return-object v3

    :cond_2
    iget-object v5, v0, Laoz;->e:Landroid/support/v7/widget/RecyclerView;

    if-nez v5, :cond_3

    return-object v3

    .line 5
    :cond_3
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, v0, Laoz;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_5

    .line 7
    invoke-virtual {v4, v5}, Lqm;->d(Landroid/view/View;)I

    move-result v7

    if-gez v7, :cond_5

    .line 8
    invoke-virtual {v4, v5}, Lqm;->a(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Laoz;->e:Landroid/support/v7/widget/RecyclerView;

    .line 9
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e99999a    # 0.3f

    mul-float v7, v7, v8

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    return-object v3

    .line 9
    :cond_5
    :goto_0
    add-int/lit8 v5, v2, -0x1

    .line 10
    invoke-virtual {v1, v5}, Lra;->aw(I)Landroid/view/View;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v5}, Lra;->bg(Landroid/view/View;)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lra;->am()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_6

    .line 13
    invoke-static {v5, v4}, Laoz;->h(Landroid/view/View;Lqm;)F

    move-result v10

    goto :goto_1

    .line 18
    :cond_6
    const/4 v10, 0x0

    .line 13
    :goto_1
    const v11, 0x7fffffff

    move-object v12, v3

    :goto_2
    if-ge v6, v2, :cond_8

    .line 14
    invoke-virtual {v1, v6}, Lra;->aw(I)Landroid/view/View;

    move-result-object v13

    .line 15
    invoke-virtual {v4, v13}, Lqm;->d(Landroid/view/View;)I

    move-result v14

    .line 16
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-ge v15, v11, :cond_7

    .line 17
    invoke-static {v13, v4}, Laoz;->h(Landroid/view/View;Lqm;)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    cmpl-float v16, v15, v16

    if-lez v16, :cond_7

    cmpl-float v16, v15, v9

    if-lez v16, :cond_7

    move-object v12, v13

    move v11, v14

    move v9, v15

    goto :goto_3

    :cond_7
    nop

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    if-eqz v12, :cond_a

    if-ne v7, v8, :cond_9

    cmpl-float v1, v10, v9

    if-lez v1, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    move-object v5, v12

    goto :goto_4

    :cond_a
    nop

    :goto_4
    invoke-static {v5, v4}, Laoz;->o(Landroid/view/View;Lqm;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v5

    :cond_b
    return-object v3
.end method

.method public final e(Lra;Landroid/view/View;)[I
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Laoz;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lra;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Laoz;->i(Lra;)Lqm;

    move-result-object v2

    invoke-static {p2, v2}, Laoz;->m(Landroid/view/View;Lqm;)I

    move-result v2

    aput v2, v0, v1

    :cond_1
    invoke-virtual {p1}, Lra;->X()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Laoz;->j(Lra;)Lqm;

    move-result-object p1

    invoke-static {p2, p1}, Laoz;->m(Landroid/view/View;Lqm;)I

    move-result p1

    aput p1, v0, v1

    :cond_2
    return-object v0
.end method

.method public final i(Lra;)Lqm;
    .locals 1

    .line 1
    iget-object v0, p0, Laoz;->g:Lqm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqm;->a:Lra;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lqm;->p(Lra;)Lqm;

    move-result-object p1

    iput-object p1, p0, Laoz;->g:Lqm;

    :cond_1
    iget-object p1, p0, Laoz;->g:Lqm;

    return-object p1
.end method

.method public final j(Lra;)Lqm;
    .locals 1

    .line 1
    iget-object v0, p0, Laoz;->f:Lqm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqm;->a:Lra;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lqm;->r(Lra;)Lqm;

    move-result-object p1

    iput-object p1, p0, Laoz;->f:Lqm;

    :cond_1
    iget-object p1, p0, Laoz;->f:Lqm;

    return-object p1
.end method

.method public final k(Lra;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lra;->ak()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lra;->ak()I

    move-result v1

    invoke-virtual {p1}, Lra;->X()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Laoz;->j(Lra;)Lqm;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Laoz;->i(Lra;)Lqm;

    move-result-object v2

    .line 3
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 5
    invoke-virtual {p1, v1}, Lra;->aw(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v1}, Lra;->bg(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1}, Lra;->am()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v3, p1, :cond_2

    .line 8
    invoke-static {v1}, Lra;->ba(Landroid/view/View;)I

    move-result p1

    .line 9
    invoke-virtual {v2}, Lqm;->f()I

    move-result v1

    if-gt p1, v1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 1
    :cond_3
    :goto_1
    return v0
.end method
