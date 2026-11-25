.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Lra;
.source "PG"

# interfaces
.implements Lrm;


# instance fields
.field private F:Lse;

.field private final G:Landroid/graphics/Rect;

.field private final H:Lsa;

.field private I:Z

.field private J:[I

.field private final K:Ljava/lang/Runnable;

.field a:[Lsf;

.field public b:Lqm;

.field c:Lqm;

.field public d:Z

.field e:Z

.field f:I

.field g:I

.field h:Lsd;

.field private i:I

.field private j:I

.field private k:I

.field private final l:Lpt;

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lra;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-instance v0, Lsd;

    invoke-direct {v0}, Lsd;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    new-instance v0, Lsa;

    .line 3
    invoke-direct {v0, p0}, Lsa;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lsa;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    new-instance v2, Lrz;

    invoke-direct {v2, p0}, Lrz;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K:Ljava/lang/Runnable;

    .line 4
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->au(Landroid/content/Context;Landroid/util/AttributeSet;II)Lqz;

    move-result-object p1

    iget p2, p1, Lqz;->a:I

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string p2, "invalid orientation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lra;->O(Ljava/lang/String;)V

    iget p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq p2, p4, :cond_2

    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    iput-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    iput-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 6
    invoke-virtual {p0}, Lra;->aO()V

    :cond_2
    iget p2, p1, Lqz;->b:I

    .line 7
    invoke-virtual {p0, p3}, Lra;->O(Ljava/lang/String;)V

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq p2, p3, :cond_4

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    .line 8
    invoke-virtual {p3}, Lsd;->a()V

    .line 9
    invoke-virtual {p0}, Lra;->aO()V

    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-instance p3, Ljava/util/BitSet;

    .line 10
    invoke-direct {p3, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 11
    new-array p2, p2, [Lsf;

    iput-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    :goto_1
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    new-instance p3, Lsf;

    .line 12
    invoke-direct {p3, p0, v1}, Lsf;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    aput-object p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lra;->aO()V

    .line 17
    :cond_4
    iget-boolean p1, p1, Lqz;->c:Z

    .line 14
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G(Z)V

    new-instance p1, Lpt;

    invoke-direct {p1}, Lpt;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 15
    invoke-static {p0, p1}, Lqm;->q(Lra;I)Lqm;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    sub-int/2addr v0, p1

    .line 16
    invoke-static {p0, v0}, Lqm;->q(Lra;I)Lqm;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    return-void
.end method

.method private final M(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v0

    if-lt p1, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private final P(Lro;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    .line 4
    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lho;->d(Lro;Lqm;Landroid/view/View;Landroid/view/View;Lra;Z)I

    move-result p1

    return p1
.end method

.method private final Q(Lro;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    .line 4
    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lho;->e(Lro;Lqm;Landroid/view/View;Landroid/view/View;Lra;ZZ)I

    move-result p1

    return p1
.end method

.method private final U(Lro;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    .line 4
    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lho;->f(Lro;Lqm;Landroid/view/View;Landroid/view/View;Lra;Z)I

    move-result p1

    return p1
.end method

.method private final V(Lrh;Lpt;Lro;)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 2
    iget-boolean v3, v3, Lpt;->i:Z

    if-eqz v3, :cond_1

    .line 3
    iget v3, v2, Lpt;->e:I

    if-ne v3, v6, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    .line 11
    :cond_0
    const/high16 v3, -0x80000000

    goto :goto_0

    .line 4
    :cond_1
    iget v3, v2, Lpt;->e:I

    if-ne v3, v6, :cond_2

    .line 5
    iget v3, v2, Lpt;->g:I

    iget v8, v2, Lpt;->b:I

    add-int/2addr v3, v8

    goto :goto_0

    .line 6
    :cond_2
    iget v3, v2, Lpt;->f:I

    iget v8, v2, Lpt;->b:I

    sub-int/2addr v3, v8

    .line 7
    :goto_0
    iget v8, v2, Lpt;->e:I

    const/4 v9, 0x0

    :goto_1
    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v9, v10, :cond_4

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 8
    aget-object v10, v10, v9

    iget-object v10, v10, Lsf;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 9
    aget-object v10, v10, v9

    invoke-direct {v0, v10, v8, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bv(Lsf;II)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 10
    invoke-virtual {v8}, Lqm;->f()I

    move-result v8

    goto :goto_2

    .line 88
    :cond_5
    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 11
    invoke-virtual {v8}, Lqm;->j()I

    move-result v8

    .line 10
    :goto_2
    const/4 v9, 0x0

    .line 12
    :goto_3
    invoke-virtual/range {p2 .. p3}, Lpt;->a(Lro;)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_21

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    iget-boolean v10, v10, Lpt;->i:Z

    if-nez v10, :cond_6

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 13
    invoke-virtual {v10}, Ljava/util/BitSet;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_21

    :cond_6
    iget v9, v2, Lpt;->c:I

    .line 14
    invoke-virtual {v1, v9}, Lrh;->c(I)Landroid/view/View;

    move-result-object v9

    iget v10, v2, Lpt;->c:I

    iget v12, v2, Lpt;->d:I

    add-int/2addr v10, v12

    iput v10, v2, Lpt;->c:I

    .line 15
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lsb;

    .line 16
    invoke-virtual {v10}, Lrb;->a()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    iget-object v13, v13, Lsd;->a:[I

    if-eqz v13, :cond_8

    array-length v14, v13

    if-lt v12, v14, :cond_7

    const/4 v13, -0x1

    goto :goto_4

    .line 17
    :cond_7
    aget v13, v13, v12

    goto :goto_4

    :cond_8
    const/4 v13, -0x1

    .line 16
    :goto_4
    if-ne v13, v11, :cond_11

    .line 18
    iget-boolean v14, v10, Lsb;->b:Z

    .line 19
    iget v14, v2, Lpt;->e:I

    invoke-direct {v0, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bw(I)Z

    move-result v14

    if-eqz v14, :cond_9

    iget v14, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/2addr v14, v11

    const/4 v15, -0x1

    const/16 v16, -0x1

    goto :goto_5

    .line 26
    :cond_9
    iget v14, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    move v15, v14

    const/4 v14, 0x0

    const/16 v16, 0x1

    .line 20
    :goto_5
    iget v4, v2, Lpt;->e:I

    const/16 v17, 0x0

    if-ne v4, v6, :cond_d

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 21
    invoke-virtual {v4}, Lqm;->j()I

    move-result v4

    const v7, 0x7fffffff

    :goto_6
    if-eq v14, v15, :cond_c

    iget-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 22
    aget-object v11, v11, v14

    .line 23
    invoke-virtual {v11, v4}, Lsf;->d(I)I

    move-result v5

    if-ge v5, v7, :cond_a

    move/from16 v18, v5

    goto :goto_7

    :cond_a
    move/from16 v18, v7

    :goto_7
    if-ge v5, v7, :cond_b

    move-object/from16 v17, v11

    :cond_b
    add-int v14, v14, v16

    move/from16 v7, v18

    const/4 v5, 0x0

    const/4 v11, -0x1

    goto :goto_6

    :cond_c
    move-object/from16 v4, v17

    goto :goto_a

    .line 33
    :cond_d
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 24
    invoke-virtual {v4}, Lqm;->f()I

    move-result v4

    const/high16 v5, -0x80000000

    :goto_8
    if-eq v14, v15, :cond_10

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 25
    aget-object v7, v7, v14

    .line 26
    invoke-virtual {v7, v4}, Lsf;->f(I)I

    move-result v11

    if-le v11, v5, :cond_e

    move/from16 v18, v11

    goto :goto_9

    :cond_e
    move/from16 v18, v5

    :goto_9
    if-le v11, v5, :cond_f

    move-object/from16 v17, v7

    :cond_f
    add-int v14, v14, v16

    move/from16 v5, v18

    goto :goto_8

    :cond_10
    move-object/from16 v4, v17

    .line 23
    :goto_a
    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    .line 27
    invoke-virtual {v5, v12}, Lsd;->b(I)V

    iget-object v5, v5, Lsd;->a:[I

    .line 28
    iget v7, v4, Lsf;->e:I

    aput v7, v5, v12

    goto :goto_b

    .line 26
    :cond_11
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 29
    aget-object v4, v4, v13

    .line 30
    :goto_b
    iput-object v4, v10, Lsb;->a:Lsf;

    .line 31
    iget v5, v2, Lpt;->e:I

    if-ne v5, v6, :cond_12

    .line 32
    invoke-virtual {v0, v9}, Lra;->aA(Landroid/view/View;)V

    goto :goto_c

    .line 39
    :cond_12
    nop

    .line 33
    const/4 v5, 0x0

    invoke-virtual {v0, v9, v5}, Lra;->aB(Landroid/view/View;I)V

    .line 34
    :goto_c
    iget-boolean v5, v10, Lsb;->b:Z

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v5, v6, :cond_13

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v7, v0, Lra;->B:I

    .line 40
    iget v11, v10, Lsb;->width:I

    .line 41
    const/4 v12, 0x0

    invoke-static {v5, v7, v12, v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->al(IIIIZ)I

    move-result v5

    iget v7, v0, Lra;->E:I

    iget v11, v0, Lra;->C:I

    .line 42
    invoke-virtual/range {p0 .. p0}, Lra;->at()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lra;->aq()I

    move-result v14

    add-int/2addr v12, v14

    iget v14, v10, Lsb;->height:I

    .line 43
    invoke-static {v7, v11, v12, v14, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->al(IIIIZ)I

    move-result v7

    .line 44
    invoke-direct {v0, v9, v5, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bx(Landroid/view/View;II)V

    goto :goto_d

    .line 53
    :cond_13
    iget v5, v0, Lra;->D:I

    iget v7, v0, Lra;->B:I

    .line 35
    invoke-virtual/range {p0 .. p0}, Lra;->ar()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lra;->as()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v10, Lsb;->width:I

    .line 36
    invoke-static {v5, v7, v11, v12, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->al(IIIIZ)I

    move-result v5

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v11, v0, Lra;->C:I

    .line 37
    iget v12, v10, Lsb;->height:I

    .line 38
    const/4 v14, 0x0

    invoke-static {v7, v11, v14, v12, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->al(IIIIZ)I

    move-result v7

    .line 39
    invoke-direct {v0, v9, v5, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bx(Landroid/view/View;II)V

    .line 45
    :goto_d
    iget v5, v2, Lpt;->e:I

    if-ne v5, v6, :cond_15

    .line 46
    iget-boolean v5, v10, Lsb;->b:Z

    .line 47
    invoke-virtual {v4, v8}, Lsf;->d(I)I

    move-result v5

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 48
    invoke-virtual {v7, v9}, Lqm;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v5

    const/4 v11, -0x1

    if-ne v13, v11, :cond_14

    .line 49
    iget-boolean v11, v10, Lsb;->b:Z

    goto :goto_e

    .line 67
    :cond_14
    goto :goto_e

    .line 50
    :cond_15
    iget-boolean v5, v10, Lsb;->b:Z

    .line 51
    invoke-virtual {v4, v8}, Lsf;->f(I)I

    move-result v7

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 52
    invoke-virtual {v5, v9}, Lqm;->b(Landroid/view/View;)I

    move-result v5

    sub-int v5, v7, v5

    const/4 v11, -0x1

    if-ne v13, v11, :cond_16

    .line 53
    iget-boolean v11, v10, Lsb;->b:Z

    goto :goto_e

    :cond_16
    nop

    .line 54
    :goto_e
    iget-boolean v11, v10, Lsb;->b:Z

    .line 55
    iget v11, v2, Lpt;->e:I

    if-ne v11, v6, :cond_1a

    .line 56
    iget-object v11, v10, Lsb;->a:Lsf;

    invoke-static {v9}, Lsf;->n(Landroid/view/View;)Lsb;

    move-result-object v12

    .line 57
    iput-object v11, v12, Lsb;->a:Lsf;

    iget-object v13, v11, Lsf;->a:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v13, -0x80000000

    iput v13, v11, Lsf;->c:I

    iget-object v14, v11, Lsf;->a:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v6, :cond_17

    iput v13, v11, Lsf;->b:I

    .line 60
    :cond_17
    invoke-virtual {v12}, Lrb;->c()Z

    move-result v13

    if-nez v13, :cond_19

    invoke-virtual {v12}, Lrb;->b()Z

    move-result v12

    if-eqz v12, :cond_18

    goto :goto_f

    :cond_18
    const/high16 v13, -0x80000000

    goto :goto_10

    :cond_19
    :goto_f
    iget v12, v11, Lsf;->d:I

    iget-object v13, v11, Lsf;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 61
    invoke-virtual {v13, v9}, Lqm;->b(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v11, Lsf;->d:I

    const/high16 v13, -0x80000000

    goto :goto_10

    .line 62
    :cond_1a
    iget-object v11, v10, Lsb;->a:Lsf;

    invoke-static {v9}, Lsf;->n(Landroid/view/View;)Lsb;

    move-result-object v12

    .line 63
    iput-object v11, v12, Lsb;->a:Lsf;

    iget-object v13, v11, Lsf;->a:Ljava/util/ArrayList;

    .line 64
    const/4 v14, 0x0

    invoke-virtual {v13, v14, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v13, -0x80000000

    iput v13, v11, Lsf;->b:I

    iget-object v14, v11, Lsf;->a:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v6, :cond_1b

    iput v13, v11, Lsf;->c:I

    .line 66
    :cond_1b
    invoke-virtual {v12}, Lrb;->c()Z

    move-result v14

    if-nez v14, :cond_1c

    invoke-virtual {v12}, Lrb;->b()Z

    move-result v12

    if-eqz v12, :cond_1d

    :cond_1c
    iget v12, v11, Lsf;->d:I

    iget-object v14, v11, Lsf;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v14, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 67
    invoke-virtual {v14, v9}, Lqm;->b(Landroid/view/View;)I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v11, Lsf;->d:I

    .line 68
    :cond_1d
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()Z

    move-result v11

    if-eqz v11, :cond_1e

    iget v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v11, v6, :cond_1e

    .line 72
    iget-boolean v11, v10, Lsb;->b:Z

    iget-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 73
    invoke-virtual {v11}, Lqm;->f()I

    move-result v11

    iget v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v14, -0x1

    add-int/2addr v12, v14

    iget v14, v4, Lsf;->e:I

    sub-int/2addr v12, v14

    iget v14, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int v12, v12, v14

    sub-int/2addr v11, v12

    iget-object v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 74
    invoke-virtual {v12, v9}, Lqm;->b(Landroid/view/View;)I

    move-result v12

    sub-int v12, v11, v12

    goto :goto_11

    .line 69
    :cond_1e
    iget-boolean v11, v10, Lsb;->b:Z

    .line 70
    iget v11, v4, Lsf;->e:I

    iget v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int v11, v11, v12

    iget-object v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    invoke-virtual {v12}, Lqm;->j()I

    move-result v12

    add-int/2addr v12, v11

    iget-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 71
    invoke-virtual {v11, v9}, Lqm;->b(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v12

    .line 74
    :goto_11
    iget v14, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v14, v6, :cond_1f

    .line 75
    invoke-static {v9, v12, v5, v11, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bj(Landroid/view/View;IIII)V

    goto :goto_12

    .line 76
    :cond_1f
    invoke-static {v9, v5, v12, v7, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bj(Landroid/view/View;IIII)V

    .line 77
    :goto_12
    iget-boolean v5, v10, Lsb;->b:Z

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 78
    iget v5, v5, Lpt;->e:I

    invoke-direct {v0, v4, v5, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bv(Lsf;II)V

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 79
    invoke-direct {v0, v1, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bp(Lrh;Lpt;)V

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 80
    iget-boolean v5, v5, Lpt;->h:Z

    if-eqz v5, :cond_20

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 81
    iget-boolean v5, v10, Lsb;->b:Z

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 82
    iget v4, v4, Lsf;->e:I

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_13

    :cond_20
    nop

    :goto_13
    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_3

    .line 17
    :cond_21
    if-nez v9, :cond_22

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 83
    invoke-direct {v0, v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bp(Lrh;Lpt;)V

    :cond_22
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 84
    iget v1, v1, Lpt;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_23

    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 85
    invoke-virtual {v1}, Lqm;->j()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aa(I)I

    move-result v1

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 86
    invoke-virtual {v3}, Lqm;->j()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_14

    .line 89
    :cond_23
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 87
    invoke-virtual {v1}, Lqm;->f()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Z(I)I

    move-result v1

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 88
    invoke-virtual {v3}, Lqm;->f()I

    move-result v3

    sub-int v3, v1, v3

    .line 86
    :goto_14
    if-lez v3, :cond_24

    .line 89
    iget v1, v2, Lpt;->b:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method private final Z(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lsf;->d(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lsf;->d(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final aa(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lsf;->f(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lsf;->f(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final ae(Lrh;Lro;Z)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Z(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 2
    invoke-virtual {v0}, Lqm;->f()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(ILrh;Lro;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 4
    invoke-virtual {p1, v0}, Lqm;->n(I)V

    :cond_1
    return-void
.end method

.method private final af(Lrh;Lro;Z)V
    .locals 2

    .line 1
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aa(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 2
    invoke-virtual {v0}, Lqm;->j()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(ILrh;Lro;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    neg-int p2, v1

    .line 4
    invoke-virtual {p1, p2}, Lqm;->n(I)V

    :cond_1
    return-void
.end method

.method private final ag(III)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v1, p2, 0x1

    move v2, p1

    goto :goto_1

    .line 11
    :cond_1
    add-int/lit8 v1, p1, 0x1

    move v2, p2

    goto :goto_1

    :cond_2
    add-int v1, p1, p2

    move v2, p1

    .line 1
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    iget-object v4, v3, Lsd;->a:[I

    const/4 v5, 0x1

    if-nez v4, :cond_3

    goto/16 :goto_6

    .line 19
    :cond_3
    array-length v4, v4

    if-ge v2, v4, :cond_c

    iget-object v4, v3, Lsd;->b:Ljava/util/List;

    const/4 v6, -0x1

    if-nez v4, :cond_4

    const/4 v4, -0x1

    goto :goto_5

    .line 2
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v6

    :goto_2
    if-ltz v4, :cond_6

    iget-object v7, v3, Lsd;->b:Ljava/util/List;

    .line 3
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsc;

    .line 4
    iget v8, v7, Lsc;->a:I

    if-ne v8, v2, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    .line 4
    :goto_3
    if-eqz v7, :cond_7

    iget-object v4, v3, Lsd;->b:Ljava/util/List;

    .line 5
    invoke-interface {v4, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    iget-object v4, v3, Lsd;->b:Ljava/util/List;

    .line 6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_8

    iget-object v8, v3, Lsd;->b:Ljava/util/List;

    .line 7
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsc;

    .line 8
    iget v8, v8, Lsc;->a:I

    if-ge v8, v2, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 11
    :cond_8
    const/4 v7, -0x1

    .line 8
    :cond_9
    if-eq v7, v6, :cond_a

    iget-object v4, v3, Lsd;->b:Ljava/util/List;

    .line 9
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsc;

    iget-object v8, v3, Lsd;->b:Ljava/util/List;

    .line 10
    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    iget v4, v4, Lsc;->a:I

    goto :goto_5

    :cond_a
    const/4 v4, -0x1

    .line 19
    :goto_5
    if-ne v4, v6, :cond_b

    iget-object v4, v3, Lsd;->a:[I

    .line 12
    array-length v7, v4

    invoke-static {v4, v2, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v3, v3, Lsd;->a:[I

    .line 13
    array-length v3, v3

    goto :goto_6

    :cond_b
    iget-object v7, v3, Lsd;->a:[I

    .line 14
    array-length v7, v7

    add-int/2addr v4, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v3, v3, Lsd;->a:[I

    .line 15
    invoke-static {v3, v2, v4, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 1
    :cond_c
    :goto_6
    sparse-switch p3, :sswitch_data_0

    goto :goto_7

    .line 20
    :sswitch_0
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    .line 16
    invoke-virtual {p3, p1, v5}, Lsd;->d(II)V

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    .line 17
    invoke-virtual {p1, p2, v5}, Lsd;->c(II)V

    goto :goto_7

    :sswitch_1
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    .line 18
    invoke-virtual {p3, p1, p2}, Lsd;->d(II)V

    goto :goto_7

    :sswitch_2
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    .line 19
    invoke-virtual {p3, p1, p2}, Lsd;->c(II)V

    .line 1
    :goto_7
    if-gt v1, v0, :cond_d

    return-void

    :cond_d
    iget-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p1, :cond_e

    .line 20
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result p1

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result p1

    :goto_8
    if-gt v2, p1, :cond_f

    .line 21
    invoke-virtual {p0}, Lra;->aO()V

    :cond_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private final bo(Lrh;Lro;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lsa;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Lro;->a()I

    move-result v1

    if-eqz v1, :cond_41

    .line 2
    :cond_1
    iget-boolean v1, v0, Lsa;->e:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 22
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 2
    :goto_0
    const/high16 v5, -0x80000000

    if-eqz v1, :cond_22

    .line 3
    invoke-virtual {v0}, Lsa;->a()V

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-eqz v6, :cond_9

    iget v7, v6, Lse;->c:I

    if-lez v7, :cond_7

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v7, v8, :cond_6

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 4
    aget-object v7, v7, v6

    invoke-virtual {v7}, Lsf;->j()V

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    .line 5
    iget-object v8, v7, Lse;->d:[I

    aget v8, v8, v6

    if-eq v8, v5, :cond_5

    .line 6
    iget-boolean v7, v7, Lse;->i:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 7
    invoke-virtual {v7}, Lqm;->f()I

    move-result v7

    add-int/2addr v8, v7

    goto :goto_2

    .line 9
    :cond_4
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 8
    invoke-virtual {v7}, Lqm;->j()I

    move-result v7

    add-int/2addr v8, v7

    goto :goto_2

    :cond_5
    nop

    .line 7
    :goto_2
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 9
    aget-object v7, v7, v6

    invoke-virtual {v7, v8}, Lsf;->l(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 10
    :cond_6
    invoke-virtual {v6}, Lse;->b()V

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    .line 11
    iget v7, v6, Lse;->b:I

    iput v7, v6, Lse;->a:I

    :cond_7
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    .line 12
    iget-boolean v7, v6, Lse;->j:Z

    iput-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    .line 13
    iget-boolean v6, v6, Lse;->h:Z

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G(Z)V

    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bs()V

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    .line 15
    iget v7, v6, Lse;->a:I

    if-eq v7, v2, :cond_8

    iput v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 16
    iget-boolean v7, v6, Lse;->i:Z

    iput-boolean v7, v0, Lsa;->c:Z

    goto :goto_3

    .line 62
    :cond_8
    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    .line 17
    iput-boolean v7, v0, Lsa;->c:Z

    .line 18
    :goto_3
    iget v7, v6, Lse;->e:I

    if-le v7, v4, :cond_a

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    .line 19
    iget-object v8, v6, Lse;->f:[I

    iput-object v8, v7, Lsd;->a:[I

    .line 20
    iget-object v6, v6, Lse;->g:Ljava/util/List;

    iput-object v6, v7, Lsd;->b:Ljava/util/List;

    goto :goto_4

    .line 21
    :cond_9
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bs()V

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    .line 22
    iput-boolean v6, v0, Lsa;->c:Z

    .line 20
    :cond_a
    :goto_4
    iget-boolean v6, p2, Lro;->g:Z

    if-nez v6, :cond_1c

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v6, v2, :cond_b

    goto/16 :goto_c

    .line 31
    :cond_b
    if-ltz v6, :cond_1b

    .line 23
    invoke-virtual {p2}, Lro;->a()I

    move-result v7

    if-lt v6, v7, :cond_c

    goto/16 :goto_b

    :cond_c
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-eqz v6, :cond_e

    iget v7, v6, Lse;->a:I

    if-eq v7, v2, :cond_e

    iget v6, v6, Lse;->c:I

    if-gtz v6, :cond_d

    goto :goto_5

    .line 59
    :cond_d
    nop

    .line 61
    iput v5, v0, Lsa;->b:I

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 62
    iput v6, v0, Lsa;->a:I

    goto/16 :goto_10

    .line 23
    :cond_e
    :goto_5
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 33
    invoke-virtual {p0, v6}, Lra;->N(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v7, :cond_f

    .line 34
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v7

    goto :goto_6

    .line 35
    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v7

    :goto_6
    iput v7, v0, Lsa;->a:I

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-eq v7, v5, :cond_11

    .line 36
    iget-boolean v7, v0, Lsa;->c:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 37
    invoke-virtual {v7}, Lqm;->f()I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 38
    invoke-virtual {v8, v6}, Lqm;->a(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    iput v7, v0, Lsa;->b:I

    goto/16 :goto_10

    :cond_10
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 39
    invoke-virtual {v7}, Lqm;->j()I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 40
    invoke-virtual {v8, v6}, Lqm;->d(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    iput v7, v0, Lsa;->b:I

    goto/16 :goto_10

    :cond_11
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 41
    invoke-virtual {v7, v6}, Lqm;->b(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 42
    invoke-virtual {v8}, Lqm;->k()I

    move-result v8

    if-le v7, v8, :cond_13

    .line 43
    iget-boolean v6, v0, Lsa;->c:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 44
    invoke-virtual {v6}, Lqm;->f()I

    move-result v6

    goto :goto_7

    .line 45
    :cond_12
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    invoke-virtual {v6}, Lqm;->j()I

    move-result v6

    :goto_7
    iput v6, v0, Lsa;->b:I

    goto/16 :goto_10

    :cond_13
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 46
    invoke-virtual {v7, v6}, Lqm;->d(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 47
    invoke-virtual {v8}, Lqm;->j()I

    move-result v8

    sub-int/2addr v7, v8

    if-gez v7, :cond_14

    neg-int v6, v7

    .line 48
    iput v6, v0, Lsa;->b:I

    goto/16 :goto_10

    :cond_14
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 49
    invoke-virtual {v7}, Lqm;->f()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 50
    invoke-virtual {v8, v6}, Lqm;->a(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    if-gez v7, :cond_15

    .line 51
    iput v7, v0, Lsa;->b:I

    goto/16 :goto_10

    :cond_15
    nop

    .line 52
    iput v5, v0, Lsa;->b:I

    goto/16 :goto_10

    .line 35
    :cond_16
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 53
    iput v6, v0, Lsa;->a:I

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne v7, v5, :cond_19

    .line 54
    invoke-direct {p0, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M(I)I

    move-result v6

    if-ne v6, v4, :cond_17

    const/4 v6, 0x1

    goto :goto_8

    .line 57
    :cond_17
    const/4 v6, 0x0

    .line 55
    :goto_8
    iput-boolean v6, v0, Lsa;->c:Z

    if-eqz v6, :cond_18

    iget-object v6, v0, Lsa;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 56
    invoke-virtual {v6}, Lqm;->f()I

    move-result v6

    goto :goto_9

    .line 60
    :cond_18
    iget-object v6, v0, Lsa;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 57
    invoke-virtual {v6}, Lqm;->j()I

    move-result v6

    .line 56
    :goto_9
    iput v6, v0, Lsa;->b:I

    goto :goto_a

    .line 57
    :cond_19
    iget-boolean v6, v0, Lsa;->c:Z

    if-eqz v6, :cond_1a

    iget-object v6, v0, Lsa;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 58
    invoke-virtual {v6}, Lqm;->f()I

    move-result v6

    sub-int/2addr v6, v7

    iput v6, v0, Lsa;->b:I

    goto :goto_a

    :cond_1a
    iget-object v6, v0, Lsa;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 59
    invoke-virtual {v6}, Lqm;->j()I

    move-result v6

    add-int/2addr v6, v7

    iput v6, v0, Lsa;->b:I

    .line 56
    :goto_a
    nop

    .line 60
    iput-boolean v4, v0, Lsa;->d:Z

    goto :goto_10

    .line 23
    :cond_1b
    :goto_b
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 20
    :cond_1c
    :goto_c
    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v6, :cond_1f

    .line 24
    invoke-virtual {p2}, Lro;->a()I

    move-result v6

    .line 25
    invoke-virtual {p0}, Lra;->ak()I

    move-result v7

    add-int/2addr v7, v2

    :goto_d
    if-ltz v7, :cond_1e

    .line 26
    invoke-virtual {p0, v7}, Lra;->aw(I)Landroid/view/View;

    move-result-object v8

    .line 27
    invoke-static {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bg(Landroid/view/View;)I

    move-result v8

    if-ltz v8, :cond_1d

    if-ge v8, v6, :cond_1d

    goto :goto_f

    .line 97
    :cond_1d
    add-int/lit8 v7, v7, -0x1

    goto :goto_d

    :cond_1e
    const/4 v8, 0x0

    goto :goto_f

    .line 28
    :cond_1f
    invoke-virtual {p2}, Lro;->a()I

    move-result v6

    .line 29
    invoke-virtual {p0}, Lra;->ak()I

    move-result v7

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v7, :cond_21

    .line 30
    invoke-virtual {p0, v8}, Lra;->aw(I)Landroid/view/View;

    move-result-object v9

    .line 31
    invoke-static {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bg(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_20

    if-ge v9, v6, :cond_20

    move v8, v9

    goto :goto_f

    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_21
    const/4 v8, 0x0

    .line 28
    :goto_f
    iput v8, v0, Lsa;->a:I

    .line 32
    iput v5, v0, Lsa;->b:I

    :goto_10
    nop

    .line 63
    iput-boolean v4, v0, Lsa;->e:Z

    :cond_22
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-nez v6, :cond_24

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v6, v2, :cond_24

    .line 64
    iget-boolean v6, v0, Lsa;->c:Z

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v6, v7, :cond_23

    .line 65
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()Z

    move-result v6

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    if-eq v6, v7, :cond_24

    :cond_23
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    .line 66
    invoke-virtual {v6}, Lsd;->a()V

    .line 67
    iput-boolean v4, v0, Lsa;->d:Z

    .line 68
    :cond_24
    invoke-virtual {p0}, Lra;->ak()I

    move-result v6

    if-lez v6, :cond_33

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-eqz v6, :cond_25

    iget v6, v6, Lse;->c:I

    if-gtz v6, :cond_33

    .line 69
    :cond_25
    iget-boolean v6, v0, Lsa;->d:Z

    if-eqz v6, :cond_27

    const/4 v1, 0x0

    :goto_11
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v6, :cond_33

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 70
    aget-object v6, v6, v1

    invoke-virtual {v6}, Lsf;->j()V

    .line 71
    iget v6, v0, Lsa;->b:I

    if-eq v6, v5, :cond_26

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 72
    aget-object v7, v7, v1

    invoke-virtual {v7, v6}, Lsf;->l(I)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    if-nez v1, :cond_29

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lsa;

    .line 73
    iget-object v1, v1, Lsa;->f:[I

    if-nez v1, :cond_28

    const/4 v1, 0x0

    goto :goto_13

    .line 82
    :cond_28
    const/4 v1, 0x0

    :goto_12
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v6, :cond_33

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 74
    aget-object v6, v6, v1

    .line 75
    invoke-virtual {v6}, Lsf;->j()V

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lsa;

    .line 76
    iget-object v7, v7, Lsa;->f:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Lsf;->l(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_29
    const/4 v1, 0x0

    .line 73
    :goto_13
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v6, :cond_30

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 77
    aget-object v6, v6, v1

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iget v8, v0, Lsa;->b:I

    if-eqz v7, :cond_2a

    invoke-virtual {v6, v5}, Lsf;->d(I)I

    move-result v9

    goto :goto_14

    .line 79
    :cond_2a
    nop

    .line 77
    invoke-virtual {v6, v5}, Lsf;->f(I)I

    move-result v9

    :goto_14
    invoke-virtual {v6}, Lsf;->j()V

    if-ne v9, v5, :cond_2b

    goto :goto_15

    :cond_2b
    if-eqz v7, :cond_2c

    iget-object v10, v6, Lsf;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 78
    invoke-virtual {v10}, Lqm;->f()I

    move-result v10

    if-lt v9, v10, :cond_2f

    :cond_2c
    if-nez v7, :cond_2d

    iget-object v7, v6, Lsf;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 79
    invoke-virtual {v7}, Lqm;->j()I

    move-result v7

    if-gt v9, v7, :cond_2f

    :cond_2d
    if-eq v8, v5, :cond_2e

    add-int/2addr v9, v8

    :cond_2e
    iput v9, v6, Lsf;->c:I

    iput v9, v6, Lsf;->b:I

    .line 77
    :cond_2f
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_30
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lsa;

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 80
    array-length v7, v6

    iget-object v8, v1, Lsa;->f:[I

    if-eqz v8, :cond_32

    array-length v8, v8

    if-ge v8, v7, :cond_31

    goto :goto_16

    .line 82
    :cond_31
    const/4 v8, 0x0

    goto :goto_17

    .line 80
    :cond_32
    :goto_16
    iget-object v8, v1, Lsa;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 81
    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, v1, Lsa;->f:[I

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v7, :cond_33

    iget-object v9, v1, Lsa;->f:[I

    .line 82
    aget-object v10, v6, v8

    invoke-virtual {v10, v5}, Lsf;->f(I)I

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 83
    :cond_33
    invoke-virtual {p0, p1}, Lra;->aD(Lrh;)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 84
    iput-boolean v3, v1, Lpt;->a:Z

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 85
    invoke-virtual {v1}, Lqm;->k()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H(I)V

    .line 86
    iget v1, v0, Lsa;->a:I

    invoke-direct {p0, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bu(ILro;)V

    .line 87
    iget-boolean v1, v0, Lsa;->c:Z

    if-eqz v1, :cond_34

    .line 88
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bt(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 89
    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->V(Lrh;Lpt;Lro;)I

    .line 90
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bt(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 91
    iget v6, v0, Lsa;->a:I

    iget v7, v1, Lpt;->d:I

    add-int/2addr v6, v7

    iput v6, v1, Lpt;->c:I

    .line 92
    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->V(Lrh;Lpt;Lro;)I

    goto :goto_18

    .line 114
    :cond_34
    nop

    .line 93
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bt(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 94
    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->V(Lrh;Lpt;Lro;)I

    .line 95
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bt(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 96
    iget v6, v0, Lsa;->a:I

    iget v7, v1, Lpt;->d:I

    add-int/2addr v6, v7

    iput v6, v1, Lpt;->c:I

    .line 97
    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->V(Lrh;Lpt;Lro;)I

    .line 92
    :goto_18
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 98
    invoke-virtual {v1}, Lqm;->h()I

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_35

    goto/16 :goto_1c

    .line 99
    :cond_35
    invoke-virtual {p0}, Lra;->ak()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v1, :cond_37

    .line 100
    invoke-virtual {p0, v7}, Lra;->aw(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 101
    invoke-virtual {v9, v8}, Lqm;->b(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v10, v9, v6

    if-ltz v10, :cond_36

    .line 102
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lsb;

    .line 103
    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_37
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v8, v8

    mul-float v6, v6, v8

    .line 104
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 105
    invoke-virtual {v8}, Lqm;->h()I

    move-result v8

    if-ne v8, v5, :cond_38

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 106
    invoke-virtual {v5}, Lqm;->k()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 107
    :cond_38
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H(I)V

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    if-eq v5, v7, :cond_3b

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v1, :cond_3b

    .line 108
    invoke-virtual {p0, v5}, Lra;->aw(I)Landroid/view/View;

    move-result-object v6

    .line 109
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lsb;

    .line 110
    iget-boolean v9, v8, Lsb;->b:Z

    .line 111
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()Z

    move-result v9

    if-eqz v9, :cond_39

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v9, v4, :cond_39

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/2addr v9, v2

    .line 115
    iget-object v8, v8, Lsb;->a:Lsf;

    iget v8, v8, Lsf;->e:I

    sub-int/2addr v9, v8

    neg-int v8, v9

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int v9, v9, v8

    mul-int v8, v8, v7

    sub-int/2addr v9, v8

    .line 116
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1b

    .line 112
    :cond_39
    iget-object v8, v8, Lsb;->a:Lsf;

    iget v8, v8, Lsf;->e:I

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int v9, v9, v8

    mul-int v8, v8, v7

    iget v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v10, v4, :cond_3a

    sub-int/2addr v9, v8

    .line 113
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1b

    :cond_3a
    sub-int/2addr v9, v8

    .line 114
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 116
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 117
    :cond_3b
    :goto_1c
    invoke-virtual {p0}, Lra;->ak()I

    move-result v1

    if-lez v1, :cond_3d

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_3c

    .line 118
    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ae(Lrh;Lro;Z)V

    .line 119
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->af(Lrh;Lro;Z)V

    goto :goto_1d

    .line 130
    :cond_3c
    nop

    .line 120
    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->af(Lrh;Lro;Z)V

    .line 121
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ae(Lrh;Lro;Z)V

    .line 119
    :cond_3d
    :goto_1d
    if-eqz p3, :cond_3e

    iget-boolean p3, p2, Lro;->g:Z

    if-nez p3, :cond_3e

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz p3, :cond_3e

    .line 122
    invoke-virtual {p0}, Lra;->ak()I

    move-result p3

    if-lez p3, :cond_3e

    .line 123
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3e

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K:Ljava/lang/Runnable;

    .line 124
    invoke-virtual {p0, p3}, Lra;->bm(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I()Z

    move-result p3

    if-eqz p3, :cond_3e

    goto :goto_1e

    .line 130
    :cond_3e
    const/4 v4, 0x0

    .line 125
    :goto_1e
    iget-boolean p3, p2, Lro;->g:Z

    if-eqz p3, :cond_3f

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lsa;

    .line 126
    invoke-virtual {p3}, Lsa;->a()V

    .line 127
    :cond_3f
    iget-boolean p3, v0, Lsa;->c:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    if-eqz v4, :cond_40

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lsa;

    .line 129
    invoke-virtual {p3}, Lsa;->a()V

    .line 130
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bo(Lrh;Lro;Z)V

    :cond_40
    return-void

    .line 131
    :cond_41
    invoke-virtual {p0, p1}, Lra;->aJ(Lrh;)V

    .line 132
    invoke-virtual {v0}, Lsa;->a()V

    return-void
.end method

.method private final bp(Lrh;Lpt;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Lpt;->a:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Lpt;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v0, p2, Lpt;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 3
    iget v0, p2, Lpt;->e:I

    if-ne v0, v1, :cond_1

    .line 4
    iget p2, p2, Lpt;->g:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bq(Lrh;I)V

    return-void

    .line 5
    :cond_1
    iget p2, p2, Lpt;->f:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->br(Lrh;I)V

    return-void

    .line 6
    :cond_2
    iget v0, p2, Lpt;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    .line 7
    iget v0, p2, Lpt;->f:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 8
    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lsf;->f(I)I

    move-result v1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v3, v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 9
    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lsf;->f(I)I

    move-result v2

    if-le v2, v1, :cond_3

    move v1, v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    .line 10
    iget p2, p2, Lpt;->g:I

    goto :goto_1

    .line 11
    :cond_5
    iget v1, p2, Lpt;->g:I

    iget p2, p2, Lpt;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    .line 12
    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bq(Lrh;I)V

    return-void

    .line 13
    :cond_6
    iget v0, p2, Lpt;->g:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 14
    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lsf;->d(I)I

    move-result v1

    :goto_2
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v3, v2, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 15
    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lsf;->d(I)I

    move-result v2

    if-ge v2, v1, :cond_7

    move v1, v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 13
    :cond_8
    iget v0, p2, Lpt;->g:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_9

    .line 16
    iget p2, p2, Lpt;->f:I

    goto :goto_3

    .line 17
    :cond_9
    iget v0, p2, Lpt;->f:I

    iget p2, p2, Lpt;->b:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    .line 18
    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->br(Lrh;I)V

    return-void

    .line 1
    :cond_a
    :goto_4
    return-void
.end method

.method private final bq(Lrh;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 2
    invoke-virtual {p0, v0}, Lra;->aw(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 3
    invoke-virtual {v2, v1}, Lqm;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, p2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 4
    invoke-virtual {v2, v1}, Lqm;->m(Landroid/view/View;)I

    move-result v2

    if-lt v2, p2, :cond_4

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lsb;

    .line 6
    iget-boolean v3, v2, Lsb;->b:Z

    .line 7
    iget-object v3, v2, Lsb;->a:Lsf;

    iget-object v3, v3, Lsf;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v2, v2, Lsb;->a:Lsf;

    iget-object v3, v2, Lsf;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, v2, Lsf;->a:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    .line 10
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 8
    invoke-static {v5}, Lsf;->n(Landroid/view/View;)Lsb;

    move-result-object v6

    const/4 v7, 0x0

    .line 11
    iput-object v7, v6, Lsb;->a:Lsf;

    .line 12
    invoke-virtual {v6}, Lrb;->c()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lrb;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget v6, v2, Lsf;->d:I

    iget-object v7, v2, Lsf;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 13
    invoke-virtual {v7, v5}, Lqm;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v6, v5

    iput v6, v2, Lsf;->d:I

    :cond_2
    const/high16 v5, -0x80000000

    if-ne v3, v4, :cond_3

    iput v5, v2, Lsf;->b:I

    :cond_3
    iput v5, v2, Lsf;->c:I

    .line 14
    invoke-virtual {p0, v1, p1}, Lra;->aL(Landroid/view/View;Lrh;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final br(Lrh;I)V
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lra;->aw(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 3
    invoke-virtual {v2, v1}, Lqm;->a(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 4
    invoke-virtual {v2, v1}, Lqm;->l(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_4

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lsb;

    .line 6
    iget-boolean v3, v2, Lsb;->b:Z

    .line 7
    iget-object v3, v2, Lsb;->a:Lsf;

    iget-object v3, v3, Lsf;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v2, v2, Lsb;->a:Lsf;

    iget-object v3, v2, Lsf;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 8
    invoke-static {v0}, Lsf;->n(Landroid/view/View;)Lsb;

    move-result-object v3

    const/4 v4, 0x0

    .line 10
    iput-object v4, v3, Lsb;->a:Lsf;

    iget-object v4, v2, Lsf;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/high16 v5, -0x80000000

    if-nez v4, :cond_1

    iput v5, v2, Lsf;->c:I

    .line 12
    :cond_1
    invoke-virtual {v3}, Lrb;->c()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lrb;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, v2, Lsf;->d:I

    iget-object v4, v2, Lsf;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 13
    invoke-virtual {v4, v0}, Lqm;->b(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v2, Lsf;->d:I

    :cond_3
    iput v5, v2, Lsf;->b:I

    .line 14
    invoke-virtual {p0, v1, p1}, Lra;->aL(Landroid/view/View;Lrh;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final bs()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    xor-int/2addr v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    return-void

    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    goto :goto_0
.end method

.method private final bt(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    iput p1, v0, Lpt;->e:I

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    const/4 p1, 0x1

    .line 1
    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    const/4 v2, -0x1

    :goto_1
    iput v2, v0, Lpt;->d:I

    return-void
.end method

.method private final bu(ILro;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    const/4 v1, 0x0

    iput v1, v0, Lpt;->b:I

    .line 2
    iput p1, v0, Lpt;->c:I

    invoke-virtual {p0}, Lra;->aW()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget p2, p2, Lro;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-lt p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 3
    invoke-virtual {p1}, Lqm;->k()I

    move-result p1

    const/4 p2, 0x0

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 4
    invoke-virtual {p1}, Lqm;->k()I

    move-result p1

    move p2, p1

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3
    :goto_1
    iget-object v0, p0, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 7
    invoke-virtual {v3}, Lqm;->j()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, Lpt;->f:I

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 8
    invoke-virtual {v0}, Lqm;->f()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, Lpt;->g:I

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 5
    invoke-virtual {v3}, Lqm;->e()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, Lpt;->g:I

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    neg-int p2, p2

    .line 6
    iput p2, p1, Lpt;->f:I

    .line 8
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 9
    iput-boolean v1, p1, Lpt;->h:Z

    .line 10
    iput-boolean v2, p1, Lpt;->a:Z

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 11
    invoke-virtual {p2}, Lqm;->h()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 12
    invoke-virtual {p2}, Lqm;->e()I

    move-result p2

    if-nez p2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    nop

    :goto_3
    iput-boolean v1, p1, Lpt;->i:Z

    return-void
.end method

.method private final bv(Lsf;II)V
    .locals 3

    .line 1
    iget v0, p1, Lsf;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Lsf;->e()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 2
    iget p1, p1, Lsf;->e:I

    invoke-virtual {p2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lsf;->c()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 4
    iget p1, p1, Lsf;->e:I

    invoke-virtual {p2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    return-void

    .line 2
    :cond_1
    return-void
.end method

.method private final bw(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()Z

    move-result v0

    if-ne p1, v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method private final bx(Landroid/view/View;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lra;->aC(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lsb;

    .line 3
    iget v1, v0, Lsb;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Lsb;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->by(III)I

    move-result p2

    .line 4
    iget v1, v0, Lsb;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Lsb;->bottomMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->by(III)I

    move-result p3

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lra;->aY(Landroid/view/View;IILrb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method private static final by(III)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    return p0

    .line 1
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    return p0

    .line 2
    :cond_3
    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 3
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Lro;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->P(Lro;)I

    move-result p1

    return p1
.end method

.method public final B(Lro;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Q(Lro;)I

    move-result p1

    return p1
.end method

.method public final C(Lro;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->U(Lro;)I

    move-result p1

    return p1
.end method

.method public final D(Lro;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->P(Lro;)I

    move-result p1

    return p1
.end method

.method public final E(Lro;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Q(Lro;)I

    move-result p1

    return p1
.end method

.method public final F(Lro;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->U(Lro;)I

    move-result p1

    return p1
.end method

.method public final G(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lra;->O(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lse;->h:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lse;->h:Z

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    .line 2
    invoke-virtual {p0}, Lra;->aO()V

    return-void
.end method

.method final H(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Lqm;

    .line 2
    invoke-virtual {v0}, Lqm;->h()I

    move-result v0

    .line 3
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    return-void
.end method

.method public final I()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lra;->w:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    .line 3
    :goto_0
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    .line 7
    invoke-virtual {v0}, Lsd;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lra;->v:Z

    .line 8
    invoke-virtual {p0}, Lra;->aO()V

    return v0

    :cond_2
    return v1

    .line 1
    :cond_3
    :goto_1
    return v1
.end method

.method final J()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lra;->an()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M(I)I

    move-result p1

    new-instance v0, Landroid/graphics/PointF;

    .line 2
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    int-to-float p1, p1

    .line 3
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 4
    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    nop

    .line 5
    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    .line 6
    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 4
    :goto_0
    return-object v0
.end method

.method public final L()Landroid/os/Parcelable;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-eqz v0, :cond_0

    new-instance v1, Lse;

    invoke-direct {v1, v0}, Lse;-><init>(Lse;)V

    return-object v1

    :cond_0
    new-instance v0, Lse;

    invoke-direct {v0}, Lse;-><init>()V

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v1, v0, Lse;->h:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v1, v0, Lse;->i:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    iput-boolean v1, v0, Lse;->j:Z

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Lsd;->a:[I

    if-eqz v3, :cond_1

    iput-object v3, v0, Lse;->f:[I

    iget-object v3, v0, Lse;->f:[I

    array-length v3, v3

    iput v3, v0, Lse;->e:I

    iget-object v1, v1, Lsd;->b:Ljava/util/List;

    iput-object v1, v0, Lse;->g:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_1
    iput v2, v0, Lse;->e:I

    .line 2
    :goto_0
    invoke-virtual {p0}, Lra;->ak()I

    move-result v1

    const/4 v3, -0x1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v1

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v1

    .line 3
    :goto_1
    iput v1, v0, Lse;->a:I

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 7
    :cond_3
    nop

    .line 6
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Z)Landroid/view/View;

    move-result-object v1

    .line 5
    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bg(Landroid/view/View;)I

    move-result v3

    .line 5
    :goto_3
    iput v3, v0, Lse;->b:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v1, v0, Lse;->c:I

    .line 8
    new-array v1, v1, [I

    iput-object v1, v0, Lse;->d:[I

    :goto_4
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 9
    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lsf;->d(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 10
    invoke-virtual {v3}, Lqm;->f()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_5

    .line 13
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 11
    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lsf;->f(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 12
    invoke-virtual {v3}, Lqm;->j()I

    move-result v3

    sub-int/2addr v1, v3

    .line 10
    :cond_6
    :goto_5
    iget-object v3, v0, Lse;->d:[I

    .line 13
    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4
    :cond_7
    iput v3, v0, Lse;->a:I

    iput v3, v0, Lse;->b:I

    iput v2, v0, Lse;->c:I

    .line 12
    :cond_8
    return-object v0
.end method

.method public final O(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lra;->O(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final R(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lra;->R(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Z)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bg(Landroid/view/View;)I

    move-result v1

    .line 6
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bg(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    return-void

    .line 4
    :cond_2
    :goto_0
    return-void

    .line 10
    :cond_3
    return-void
.end method

.method public final S(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lse;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lse;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lse;->a()V

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    .line 4
    invoke-virtual {p1}, Lse;->b()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lra;->aO()V

    :cond_1
    return-void
.end method

.method public final T(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-eqz v0, :cond_0

    iget v1, v0, Lse;->a:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Lse;->a()V

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 2
    invoke-virtual {p0}, Lra;->aO()V

    return-void
.end method

.method public final W()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Y()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aF(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lra;->aF(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lsf;->k(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final aG(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lra;->aG(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lsf;->k(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final aI(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I()Z

    :cond_0
    return-void
.end method

.method public final ac(IILro;Lpn;)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    move p1, p2

    :cond_0
    invoke-virtual {p0}, Lra;->ak()I

    move-result p2

    if-eqz p2, :cond_8

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u(ILro;)V

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    array-length p1, p1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_3
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 4
    iget v2, v1, Lpt;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 5
    iget v1, v1, Lpt;->f:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lsf;->f(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_2

    .line 7
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 6
    aget-object v2, v2, p1

    iget v1, v1, Lpt;->g:I

    invoke-virtual {v2, v1}, Lsf;->d(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    iget v2, v2, Lpt;->g:I

    sub-int/2addr v1, v2

    .line 5
    :goto_2
    if-ltz v1, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    .line 7
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 6
    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    .line 8
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_3
    if-ge p2, v0, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 9
    invoke-virtual {p1, p3}, Lpt;->a(Lro;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 10
    iget p1, p1, Lpt;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    aget v1, v1, p2

    invoke-virtual {p4, p1, v1}, Lpn;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 11
    iget v1, p1, Lpt;->c:I

    iget v2, p1, Lpt;->d:I

    add-int/2addr v1, v2

    iput v1, p1, Lpt;->c:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    return-void

    .line 1
    :cond_8
    :goto_4
    return-void
.end method

.method public final ah(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lra;->bm(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lsf;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final ai(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 1
    new-instance v0, Lrn;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lrn;-><init>(Landroid/content/Context;)V

    iput p2, v0, Lrn;->a:I

    .line 2
    invoke-virtual {p0, v0}, Lra;->aU(Lrn;)V

    return-void
.end method

.method public final bk()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lsf;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final c()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Lra;->aw(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bg(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final d(ILrh;Lro;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(ILrh;Lro;)I

    move-result p1

    return p1
.end method

.method public final e(ILrh;Lro;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(ILrh;Lro;)I

    move-result p1

    return p1
.end method

.method public final f()Lrb;
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Lsb;

    invoke-direct {v0, v1, v2}, Lsb;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lsb;

    .line 2
    invoke-direct {v0, v2, v1}, Lsb;-><init>(II)V

    return-object v0
.end method

.method public final g(Landroid/view/ViewGroup$LayoutParams;)Lrb;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lsb;

    .line 2
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lsb;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lsb;

    .line 3
    invoke-direct {v0, p1}, Lsb;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h(Landroid/content/Context;Landroid/util/AttributeSet;)Lrb;
    .locals 1

    .line 1
    new-instance v0, Lsb;

    invoke-direct {v0, p1, p2}, Lsb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method final i()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lra;->aw(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bg(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final j(Landroid/view/View;ILrh;Lro;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lra;->av(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bs()V

    const/high16 v0, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    const/high16 p2, -0x80000000

    goto :goto_2

    .line 5
    :sswitch_0
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_3

    goto :goto_1

    :sswitch_1
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez p2, :cond_3

    goto :goto_1

    :sswitch_2
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_3

    goto :goto_0

    :sswitch_3
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez p2, :cond_3

    :cond_2
    :goto_0
    const/4 p2, -0x1

    goto :goto_2

    :cond_3
    const/high16 p2, -0x80000000

    goto :goto_2

    :sswitch_4
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    .line 4
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, -0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x1

    goto :goto_2

    .line 10
    :sswitch_5
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_6

    const/4 p2, -0x1

    goto :goto_2

    .line 5
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 3
    :goto_2
    if-ne p2, v0, :cond_7

    return-object v1

    .line 6
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lsb;

    .line 7
    iget-boolean v4, v0, Lsb;->b:Z

    .line 8
    iget-object v0, v0, Lsb;->a:Lsf;

    if-ne p2, v3, :cond_8

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v4

    goto :goto_3

    .line 10
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v4

    .line 11
    :goto_3
    invoke-direct {p0, v4, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bu(ILro;)V

    .line 12
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bt(I)V

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 13
    iget v6, v5, Lpt;->d:I

    add-int/2addr v6, v4

    iput v6, v5, Lpt;->c:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 14
    invoke-virtual {v6}, Lqm;->k()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eaaaaab

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v5, Lpt;->b:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 15
    iput-boolean v3, v5, Lpt;->h:Z

    .line 16
    const/4 v6, 0x0

    iput-boolean v6, v5, Lpt;->a:Z

    .line 17
    invoke-direct {p0, p3, v5, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->V(Lrh;Lpt;Lro;)I

    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 18
    invoke-virtual {v0, v4, p2}, Lsf;->g(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_a

    if-ne p3, p1, :cond_9

    goto :goto_4

    .line 20
    :cond_9
    return-object p3

    .line 19
    :cond_a
    :goto_4
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bw(I)Z

    move-result p3

    if-eqz p3, :cond_d

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/2addr p3, v2

    :goto_5
    if-ltz p3, :cond_10

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 21
    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lsf;->g(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_c

    if-ne p4, p1, :cond_b

    goto :goto_6

    :cond_b
    return-object p4

    :cond_c
    :goto_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    .line 23
    :cond_d
    const/4 p3, 0x0

    :goto_7
    iget p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p3, p4, :cond_10

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 20
    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lsf;->g(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_f

    if-ne p4, p1, :cond_e

    goto :goto_8

    :cond_e
    return-object p4

    :cond_f
    :goto_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 21
    :cond_10
    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    xor-int/2addr p3, v3

    if-eq p2, v2, :cond_11

    const/4 v3, 0x0

    goto :goto_9

    .line 23
    :cond_11
    nop

    .line 21
    :goto_9
    if-ne p3, v3, :cond_12

    .line 22
    invoke-virtual {v0}, Lsf;->a()I

    move-result p4

    goto :goto_a

    .line 23
    :cond_12
    invoke-virtual {v0}, Lsf;->b()I

    move-result p4

    .line 24
    :goto_a
    invoke-virtual {p0, p4}, Lra;->N(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_14

    if-ne p4, p1, :cond_13

    goto :goto_b

    .line 27
    :cond_13
    return-object p4

    .line 25
    :cond_14
    :goto_b
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bw(I)Z

    move-result p2

    if-eqz p2, :cond_18

    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/2addr p2, v2

    :goto_c
    if-ltz p2, :cond_1c

    .line 29
    iget p4, v0, Lsf;->e:I

    if-ne p2, p4, :cond_15

    goto :goto_e

    :cond_15
    if-ne p3, v3, :cond_16

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 30
    aget-object p4, p4, p2

    invoke-virtual {p4}, Lsf;->a()I

    move-result p4

    goto :goto_d

    .line 32
    :cond_16
    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 31
    aget-object p4, p4, p2

    invoke-virtual {p4}, Lsf;->b()I

    move-result p4

    .line 32
    :goto_d
    invoke-virtual {p0, p4}, Lra;->N(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_17

    if-eq p4, p1, :cond_17

    return-object p4

    .line 29
    :cond_17
    :goto_e
    add-int/lit8 p2, p2, -0x1

    goto :goto_c

    .line 31
    :cond_18
    nop

    :goto_f
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v6, p2, :cond_1c

    if-ne p3, v3, :cond_19

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 26
    aget-object p2, p2, v6

    invoke-virtual {p2}, Lsf;->a()I

    move-result p2

    goto :goto_10

    .line 28
    :cond_19
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lsf;

    .line 27
    aget-object p2, p2, v6

    invoke-virtual {p2}, Lsf;->b()I

    move-result p2

    .line 28
    :goto_10
    invoke-virtual {p0, p2}, Lra;->N(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1b

    if-ne p2, p1, :cond_1a

    goto :goto_11

    :cond_1a
    return-object p2

    :cond_1b
    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 31
    :cond_1c
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method final k(ILrh;Lro;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u(ILro;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 3
    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->V(Lrh;Lpt;Lro;)I

    move-result p3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 4
    iget v0, v0, Lpt;->b:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    .line 4
    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    neg-int v0, p1

    .line 5
    invoke-virtual {p3, v0}, Lqm;->n(I)V

    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 6
    iput v1, p3, Lpt;->b:I

    .line 7
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bp(Lrh;Lpt;)V

    return p1

    .line 1
    :cond_3
    :goto_1
    return v1
.end method

.method final l(Z)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    invoke-virtual {v0}, Lqm;->j()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 2
    invoke-virtual {v1}, Lqm;->f()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lra;->ak()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    .line 4
    invoke-virtual {p0, v2}, Lra;->aw(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 5
    invoke-virtual {v5, v4}, Lqm;->d(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 6
    invoke-virtual {v6, v4}, Lqm;->a(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final n(Lrh;Lro;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bo(Lrh;Lro;Z)V

    return-void
.end method

.method public final o(Lro;)V
    .locals 0

    .line 1
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lsa;

    invoke-virtual {p1}, Lsa;->a()V

    return-void
.end method

.method public final p(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lra;->ar()I

    move-result v0

    invoke-virtual {p0}, Lra;->as()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lra;->at()I

    move-result v1

    invoke-virtual {p0}, Lra;->aq()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 4
    invoke-virtual {p0}, Lra;->ao()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aj(III)I

    move-result p1

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int p3, p3, v1

    add-int/2addr p3, v0

    .line 5
    invoke-virtual {p0}, Lra;->ap()I

    move-result v0

    .line 6
    invoke-static {p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aj(III)I

    move-result p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0}, Lra;->ap()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aj(III)I

    move-result p2

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int p1, p1, v0

    add-int/2addr p1, v1

    .line 9
    invoke-virtual {p0}, Lra;->ao()I

    move-result v0

    .line 10
    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aj(III)I

    move-result p1

    .line 11
    :goto_0
    invoke-virtual {p0, p2, p1}, Lra;->aR(II)V

    return-void
.end method

.method final q(Z)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    invoke-virtual {v0}, Lqm;->j()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 2
    invoke-virtual {v1}, Lqm;->f()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lra;->ak()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 4
    invoke-virtual {p0, v4}, Lra;->aw(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 5
    invoke-virtual {v6, v5}, Lqm;->d(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 6
    invoke-virtual {v7, v5}, Lqm;->a(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method final r()Landroid/view/View;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lra;->ak()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 2
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 3
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v3, v5, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 25
    :cond_0
    const/4 v3, -0x1

    .line 4
    :goto_0
    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    .line 25
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    const/4 v0, 0x0

    .line 4
    :goto_1
    if-ge v0, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    .line 25
    :cond_2
    const/4 v7, -0x1

    .line 4
    :goto_2
    if-eq v0, v6, :cond_f

    .line 5
    invoke-virtual {p0, v0}, Lra;->aw(I)Landroid/view/View;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lsb;

    .line 7
    iget-object v10, v9, Lsb;->a:Lsf;

    iget v10, v10, Lsf;->e:I

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 8
    iget-object v10, v9, Lsb;->a:Lsf;

    iget-boolean v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v11, :cond_3

    .line 9
    invoke-virtual {v10}, Lsf;->c()I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    invoke-virtual {v12}, Lqm;->f()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 20
    iget-object v0, v10, Lsf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 21
    invoke-static {v0}, Lsf;->n(Landroid/view/View;)Lsb;

    move-result-object v0

    .line 22
    iget-boolean v0, v0, Lsb;->b:Z

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {v10}, Lsf;->e()I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    invoke-virtual {v12}, Lqm;->j()I

    move-result v12

    if-le v11, v12, :cond_4

    .line 23
    iget-object v0, v10, Lsf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    invoke-static {v0}, Lsf;->n(Landroid/view/View;)Lsb;

    move-result-object v0

    .line 25
    iget-boolean v0, v0, Lsb;->b:Z

    .line 22
    :goto_3
    return-object v8

    .line 11
    :cond_4
    iget-object v10, v9, Lsb;->a:Lsf;

    iget v10, v10, Lsf;->e:I

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->clear(I)V

    .line 12
    :cond_5
    iget-boolean v10, v9, Lsb;->b:Z

    add-int/2addr v0, v7

    if-eq v0, v6, :cond_e

    .line 13
    invoke-virtual {p0, v0}, Lra;->aw(I)Landroid/view/View;

    move-result-object v10

    iget-boolean v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 14
    invoke-virtual {v11, v8}, Lqm;->a(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 15
    invoke-virtual {v12, v10}, Lqm;->a(Landroid/view/View;)I

    move-result v12

    if-ge v11, v12, :cond_6

    return-object v8

    :cond_6
    if-ne v11, v12, :cond_7

    goto :goto_5

    .line 19
    :cond_7
    :goto_4
    goto :goto_2

    :cond_8
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 16
    invoke-virtual {v11, v8}, Lqm;->d(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lqm;

    .line 17
    invoke-virtual {v12, v10}, Lqm;->d(Landroid/view/View;)I

    move-result v12

    if-le v11, v12, :cond_9

    return-object v8

    :cond_9
    if-eq v11, v12, :cond_a

    goto :goto_8

    .line 18
    :cond_a
    :goto_5
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lsb;

    .line 19
    iget-object v9, v9, Lsb;->a:Lsf;

    iget v9, v9, Lsf;->e:I

    iget-object v10, v10, Lsb;->a:Lsf;

    iget v10, v10, Lsf;->e:I

    sub-int/2addr v9, v10

    if-ltz v9, :cond_b

    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    const/4 v9, 0x1

    :goto_6
    if-ltz v3, :cond_c

    const/4 v10, 0x0

    goto :goto_7

    :cond_c
    const/4 v10, 0x1

    :goto_7
    if-ne v9, v10, :cond_d

    goto :goto_4

    :cond_d
    return-object v8

    .line 17
    :cond_e
    :goto_8
    goto/16 :goto_2

    .line 25
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final s(Lrb;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lsb;

    return p1
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lse;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final u(ILro;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v1

    const/4 v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v1

    const/4 v2, -0x1

    .line 1
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 3
    iput-boolean v0, v3, Lpt;->a:Z

    .line 4
    invoke-direct {p0, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bu(ILro;)V

    .line 5
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bt(I)V

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lpt;

    .line 6
    iget v0, p2, Lpt;->d:I

    add-int/2addr v1, v0

    iput v1, p2, Lpt;->c:I

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p2, Lpt;->b:I

    return-void
.end method

.method public final v(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ag(III)V

    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    .line 2
    invoke-virtual {p0}, Lra;->aO()V

    return-void
.end method

.method public final x(II)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ag(III)V

    return-void
.end method

.method public final y(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ag(III)V

    return-void
.end method

.method public final z(II)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ag(III)V

    return-void
.end method
