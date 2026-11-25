.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "PG"


# instance fields
.field a:Landroid/util/SparseArray;

.field public b:Ljava/util/ArrayList;

.field protected c:Lvy;

.field protected d:Z

.field public e:I

.field public f:Ljava/util/HashMap;

.field g:Lwz;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lxi;

.field private m:I

.field private n:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    .line 2
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    new-instance p1, Lvy;

    .line 4
    invoke-direct {p1}, Lvy;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lxi;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/HashMap;

    new-instance v1, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    new-instance v1, Lwz;

    invoke-direct {v1, p0, p0}, Lwz;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Lwz;

    .line 7
    invoke-direct {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    .line 9
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    .line 10
    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    new-instance p1, Lvy;

    .line 11
    invoke-direct {p1}, Lvy;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lxi;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    new-instance v0, Lwz;

    invoke-direct {v0, p0, p0}, Lwz;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Lwz;

    .line 14
    invoke-direct {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    .line 16
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    new-instance p1, Lvy;

    .line 18
    invoke-direct {p1}, Lvy;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lxi;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    new-instance v0, Ljava/util/HashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    new-instance v0, Lwz;

    invoke-direct {v0, p0, p0}, Lwz;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Lwz;

    .line 21
    invoke-direct {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/util/SparseArray;

    .line 23
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    .line 24
    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    new-instance p1, Lvy;

    .line 25
    invoke-direct {p1}, Lvy;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    const/16 p1, 0x101

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lxi;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    new-instance p1, Ljava/util/HashMap;

    .line 26
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/HashMap;

    new-instance p1, Landroid/util/SparseArray;

    .line 27
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    new-instance p1, Lwz;

    invoke-direct {p1, p0, p0}, Lwz;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Lwz;

    .line 28
    invoke-direct {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected static final d()Lwy;
    .locals 1

    .line 1
    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    return-object v0
.end method

.method private final e(Landroid/util/AttributeSet;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    iput-object p0, v0, Lvx;->af:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Lwz;

    iput-object v1, v0, Lvy;->aG:Lwz;

    iget-object v0, v0, Lvy;->b:Lwj;

    iput-object v1, v0, Lwj;->g:Lwz;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lxi;

    if-eqz p1, :cond_8

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lxm;->b:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_7

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 5
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto/16 :goto_2

    :cond_0
    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 6
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    :cond_1
    const/16 v3, 0xe

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 7
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    goto :goto_2

    :cond_2
    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 8
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    goto :goto_2

    :cond_3
    const/16 v3, 0x70

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 9
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    :cond_4
    const/16 v3, 0x37

    if-ne v2, v3, :cond_5

    .line 10
    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    new-instance v5, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 14
    invoke-static {v3, v2, v4, v5}, Lis;->c(Landroid/content/Context;ILandroid/util/SparseArray;Landroid/util/SparseArray;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 19
    :catch_0
    move-exception v2

    goto :goto_2

    .line 14
    :cond_5
    const/16 v3, 0x22

    if-ne v2, v3, :cond_6

    .line 15
    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 16
    :try_start_1
    new-instance v3, Lxi;

    invoke-direct {v3}, Lxi;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lxi;

    .line 17
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lxi;->c(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 19
    :catch_1
    move-exception v3

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lxi;

    .line 17
    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 5
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 18
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 19
    invoke-virtual {p1, p2}, Lvy;->U(I)V

    return-void
.end method

.method private final f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    return-void
.end method

.method private final g()V
    .locals 23

    .line 1
    move-object/from16 v7, p0

    const-string v1, "\" not found on "

    const-string v2, " Custom Attribute \""

    const-string v3, "TransitionLayout"

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v8

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_1

    .line 3
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lvx;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Lvx;->s()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v11, -0x1

    if-eqz v8, :cond_b

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_b

    .line 6
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 9
    instance-of v13, v6, Ljava/lang/String;

    if-eqz v13, :cond_4

    iget-object v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/HashMap;

    if-nez v13, :cond_2

    new-instance v13, Ljava/util/HashMap;

    .line 10
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iput-object v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/HashMap;

    :cond_2
    const-string v13, "/"

    .line 11
    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v11, :cond_3

    add-int/lit8 v13, v13, 0x1

    .line 12
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 22
    :cond_3
    move-object v13, v6

    .line 13
    :goto_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v14, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/HashMap;

    .line 14
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 v12, 0x2f

    .line 15
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v11, :cond_5

    add-int/lit8 v12, v12, 0x1

    .line 16
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 22
    :cond_5
    nop

    .line 17
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    goto :goto_5

    :cond_6
    iget-object v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-nez v12, :cond_7

    .line 19
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_8

    if-eq v12, v7, :cond_8

    .line 20
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, v7, :cond_8

    .line 21
    invoke-virtual {v7, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    goto :goto_4

    .line 22
    :cond_7
    nop

    .line 21
    :cond_8
    :goto_4
    if-ne v12, v7, :cond_9

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    goto :goto_5

    :cond_9
    if-nez v12, :cond_a

    move-object v0, v4

    goto :goto_5

    .line 22
    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lwy;

    iget-object v0, v0, Lwy;->aq:Lvx;

    .line 17
    :goto_5
    iput-object v6, v0, Lvx;->ah:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 177
    :catch_0
    move-exception v0

    .line 17
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 22
    :cond_b
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-eq v0, v11, :cond_e

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v9, :cond_e

    .line 23
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-ne v6, v12, :cond_d

    instance-of v6, v5, Lxj;

    if-nez v6, :cond_c

    goto :goto_8

    .line 254
    :cond_c
    check-cast v5, Lxj;

    .line 255
    throw v4

    .line 24
    :cond_d
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lxi;

    const/4 v12, 0x1

    if-eqz v5, :cond_26

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v6

    new-instance v13, Ljava/util/HashSet;

    iget-object v0, v5, Lxi;->b:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v6, :cond_1e

    .line 27
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 28
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v4, v5, Lxi;->b:Ljava/util/HashMap;

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 30
    :try_start_1
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 255
    :catch_1
    move-exception v0

    const-string v0, "UNKNOWN"

    .line 31
    :goto_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "id unknown "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v4, "ConstraintSet"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v22, v6

    move/from16 v19, v8

    move/from16 v21, v9

    goto/16 :goto_12

    :cond_f
    if-eq v0, v11, :cond_1d

    if-eq v0, v11, :cond_1b

    iget-object v4, v5, Lxi;->b:Ljava/util/HashMap;

    .line 33
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 34
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v4, v5, Lxi;->b:Ljava/util/HashMap;

    .line 35
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxd;

    if-eqz v4, :cond_19

    .line 36
    instance-of v10, v15, Lwu;

    if-eqz v10, :cond_11

    iget-object v10, v4, Lxd;->d:Lxe;

    iput v12, v10, Lxe;->ai:I

    .line 37
    move-object v10, v15

    check-cast v10, Lwu;

    .line 38
    invoke-virtual {v10, v0}, Lwu;->setId(I)V

    iget-object v0, v4, Lxd;->d:Lxe;

    iget v11, v0, Lxe;->ag:I

    iput v11, v10, Lwu;->a:I

    iget v0, v0, Lxe;->ah:I

    .line 39
    invoke-virtual {v10, v0}, Lwu;->b(I)V

    iget-object v0, v4, Lxd;->d:Lxe;

    iget-boolean v11, v0, Lxe;->ao:Z

    iget-object v12, v10, Lwu;->b:Lvu;

    iput-boolean v11, v12, Lvu;->b:Z

    iget-object v11, v0, Lxe;->aj:[I

    if-eqz v11, :cond_10

    .line 40
    invoke-virtual {v10, v11}, Lww;->e([I)V

    goto :goto_b

    .line 96
    :cond_10
    iget-object v11, v0, Lxe;->ak:Ljava/lang/String;

    if-eqz v11, :cond_11

    .line 41
    invoke-static {v10, v11}, Lxi;->g(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v11

    iput-object v11, v0, Lxe;->aj:[I

    iget-object v0, v4, Lxd;->d:Lxe;

    iget-object v0, v0, Lxe;->aj:[I

    .line 42
    invoke-virtual {v10, v0}, Lww;->e([I)V

    .line 43
    :cond_11
    :goto_b
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lwy;

    .line 44
    invoke-virtual {v10}, Lwy;->a()V

    .line 45
    invoke-virtual {v4, v10}, Lxd;->a(Lwy;)V

    iget-object v11, v4, Lxd;->f:Ljava/util/HashMap;

    .line 46
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 47
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move/from16 v19, v8

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 48
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwv;

    .line 49
    move-object/from16 v20, v11

    iget-boolean v11, v0, Lwv;->a:Z

    if-nez v11, :cond_12

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move/from16 v21, v9

    const-string v9, "set"

    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    .line 66
    :cond_12
    move/from16 v21, v9

    move-object v9, v8

    .line 50
    :goto_d
    :try_start_2
    iget v11, v0, Lwv;->h:I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    add-int/lit8 v22, v11, -0x1

    if-eqz v11, :cond_13

    packed-switch v22, :pswitch_data_0

    move/from16 v22, v6

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    goto :goto_c

    .line 56
    :pswitch_0
    move/from16 v22, v6

    const/4 v11, 0x1

    :try_start_3
    new-array v6, v11, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v11, v6, v17

    .line 67
    invoke-virtual {v12, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/Object;

    .line 68
    iget v0, v0, Lwv;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v7, v11

    invoke-virtual {v6, v15, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto :goto_c

    .line 60
    :pswitch_1
    move/from16 v22, v6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    .line 51
    invoke-virtual {v12, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    .line 52
    iget v0, v0, Lwv;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v11, v7

    invoke-virtual {v6, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    .line 64
    :pswitch_2
    move/from16 v22, v6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    .line 65
    invoke-virtual {v12, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    .line 66
    iget-boolean v0, v0, Lwv;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v11, v7

    invoke-virtual {v6, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    .line 62
    :pswitch_3
    move/from16 v22, v6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    .line 63
    invoke-virtual {v12, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    .line 64
    iget-object v0, v0, Lwv;->e:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v11, v7

    invoke-virtual {v6, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    .line 50
    :pswitch_4
    move/from16 v22, v6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    .line 57
    invoke-virtual {v12, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 58
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 59
    iget v0, v0, Lwv;->g:I

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v11, 0x1

    new-array v0, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v0, v11

    .line 60
    invoke-virtual {v6, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    .line 68
    :pswitch_5
    move/from16 v22, v6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    .line 61
    invoke-virtual {v12, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    .line 62
    iget v0, v0, Lwv;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v11, v7

    invoke-virtual {v6, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    .line 52
    :pswitch_6
    move/from16 v22, v6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    .line 53
    invoke-virtual {v12, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    .line 54
    iget v0, v0, Lwv;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v11, v7

    invoke-virtual {v6, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    :pswitch_7
    move/from16 v22, v6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    .line 55
    invoke-virtual {v12, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    .line 56
    iget v0, v0, Lwv;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v11, v7

    invoke-virtual {v6, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    .line 70
    :cond_13
    move/from16 v22, v6

    .line 50
    const/4 v6, 0x0

    throw v6
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    .line 72
    :catch_2
    move-exception v0

    goto :goto_e

    .line 75
    :catch_3
    move-exception v0

    goto :goto_f

    .line 101
    :catch_4
    move-exception v0

    goto :goto_10

    .line 72
    :catch_5
    move-exception v0

    move/from16 v22, v6

    :goto_e
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    .line 75
    :catch_6
    move-exception v0

    move/from16 v22, v6

    :goto_f
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    .line 101
    :catch_7
    move-exception v0

    move/from16 v22, v6

    .line 73
    :goto_10
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " must have a method "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, p0

    move/from16 v8, v19

    move-object/from16 v11, v20

    move/from16 v9, v21

    move/from16 v6, v22

    goto/16 :goto_c

    .line 76
    :cond_14
    move/from16 v22, v6

    move/from16 v19, v8

    move/from16 v21, v9

    invoke-virtual {v15, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v4, Lxd;->b:Lxg;

    iget v6, v0, Lxg;->c:I

    if-nez v6, :cond_15

    iget v0, v0, Lxg;->b:I

    .line 77
    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    iget-object v0, v4, Lxd;->b:Lxg;

    iget v0, v0, Lxg;->d:F

    .line 78
    invoke-virtual {v15, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->c:F

    .line 79
    invoke-virtual {v15, v0}, Landroid/view/View;->setRotation(F)V

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->d:F

    .line 80
    invoke-virtual {v15, v0}, Landroid/view/View;->setRotationX(F)V

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->e:F

    .line 81
    invoke-virtual {v15, v0}, Landroid/view/View;->setRotationY(F)V

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->f:F

    .line 82
    invoke-virtual {v15, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->g:F

    .line 83
    invoke-virtual {v15, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v6, v0, Lxh;->j:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_16

    .line 84
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v6, v4, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->j:I

    .line 85
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v8, v0

    int-to-float v0, v8

    div-float/2addr v0, v7

    .line 88
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_18

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_18

    .line 89
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 90
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v7, v7

    sub-float/2addr v0, v7

    .line 91
    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, v8

    sub-float/2addr v6, v0

    .line 92
    invoke-virtual {v15, v6}, Landroid/view/View;->setPivotY(F)V

    goto :goto_11

    .line 100
    :cond_16
    iget v0, v0, Lxh;->h:F

    .line 93
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->h:F

    .line 94
    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotX(F)V

    :cond_17
    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->i:F

    .line 95
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->i:F

    .line 96
    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotY(F)V

    .line 92
    :cond_18
    :goto_11
    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->k:F

    .line 97
    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->l:F

    .line 98
    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v4, Lxd;->e:Lxh;

    iget v0, v0, Lxh;->m:F

    .line 99
    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v0, v4, Lxd;->e:Lxh;

    iget-boolean v4, v0, Lxh;->n:Z

    if-eqz v4, :cond_1c

    iget v0, v0, Lxh;->o:F

    .line 100
    invoke-virtual {v15, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_12

    .line 35
    :cond_19
    move/from16 v22, v6

    move/from16 v19, v8

    move/from16 v21, v9

    goto :goto_12

    .line 33
    :cond_1a
    move/from16 v22, v6

    move/from16 v19, v8

    move/from16 v21, v9

    goto :goto_12

    .line 32
    :cond_1b
    move/from16 v22, v6

    move/from16 v19, v8

    move/from16 v21, v9

    :cond_1c
    :goto_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p0

    move/from16 v8, v19

    move/from16 v9, v21

    move/from16 v6, v22

    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    goto/16 :goto_9

    .line 255
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 101
    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1e
    move/from16 v22, v6

    move/from16 v19, v8

    move/from16 v21, v9

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, v5, Lxi;->b:Ljava/util/HashMap;

    .line 103
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxd;

    if-eqz v2, :cond_23

    iget-object v3, v2, Lxd;->d:Lxe;

    iget v3, v3, Lxe;->ai:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    new-instance v3, Lwu;

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lwu;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lwu;->setId(I)V

    iget-object v4, v2, Lxd;->d:Lxe;

    iget-object v6, v4, Lxe;->aj:[I

    if-eqz v6, :cond_20

    .line 106
    invoke-virtual {v3, v6}, Lww;->e([I)V

    goto :goto_14

    .line 117
    :cond_20
    iget-object v6, v4, Lxe;->ak:Ljava/lang/String;

    if-eqz v6, :cond_21

    .line 41
    invoke-static {v3, v6}, Lxi;->g(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v4, Lxe;->aj:[I

    iget-object v4, v2, Lxd;->d:Lxe;

    iget-object v4, v4, Lxe;->aj:[I

    .line 107
    invoke-virtual {v3, v4}, Lww;->e([I)V

    .line 106
    :cond_21
    :goto_14
    iget-object v4, v2, Lxd;->d:Lxe;

    iget v6, v4, Lxe;->ag:I

    iput v6, v3, Lwu;->a:I

    iget v4, v4, Lxe;->ah:I

    .line 108
    invoke-virtual {v3, v4}, Lwu;->b(I)V

    .line 109
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->d()Lwy;

    move-result-object v4

    .line 110
    invoke-virtual {v3}, Lww;->f()V

    .line 111
    invoke-virtual {v2, v4}, Lxd;->a(Lwy;)V

    .line 112
    move-object/from16 v7, p0

    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_15

    .line 103
    :cond_22
    move-object/from16 v7, p0

    .line 112
    :goto_15
    iget-object v3, v2, Lxd;->d:Lxe;

    iget-boolean v3, v3, Lxe;->b:Z

    if-eqz v3, :cond_1f

    new-instance v3, Landroidx/constraintlayout/widget/Guideline;

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/Guideline;->setId(I)V

    .line 115
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->d()Lwy;

    move-result-object v1

    .line 116
    invoke-virtual {v2, v1}, Lxd;->a(Lwy;)V

    .line 117
    invoke-virtual {v7, v3, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_13

    .line 103
    :cond_23
    move-object/from16 v7, p0

    goto/16 :goto_13

    .line 107
    :cond_24
    move-object/from16 v7, p0

    const/4 v0, 0x0

    :goto_16
    move/from16 v1, v22

    if-ge v0, v1, :cond_27

    .line 118
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 119
    instance-of v3, v2, Lww;

    if-eqz v3, :cond_25

    .line 120
    check-cast v2, Lww;

    :cond_25
    add-int/lit8 v0, v0, 0x1

    move/from16 v22, v1

    goto :goto_16

    .line 24
    :cond_26
    move/from16 v19, v8

    move/from16 v21, v9

    .line 120
    :cond_27
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    iget-object v0, v0, Lwe;->aH:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_30

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_2f

    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lww;

    .line 124
    invoke-virtual {v2}, Lww;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v2, Lww;->f:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v2, Lww;->f:Ljava/lang/String;

    :cond_28
    iget-object v3, v2, Lww;->h:Lwb;

    if-nez v3, :cond_29

    goto :goto_1b

    :cond_29
    const/4 v4, 0x0

    iput v4, v3, Lwb;->ar:I

    iget-object v3, v3, Lwb;->aq:[Lvx;

    .line 125
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_18
    iget v4, v2, Lww;->d:I

    if-ge v3, v4, :cond_2e

    iget-object v4, v2, Lww;->c:[I

    .line 126
    aget v4, v4, v3

    .line 127
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->aP(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2a

    iget-object v6, v2, Lww;->g:Ljava/util/HashMap;

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 124
    invoke-virtual {v2, v7, v4}, Lww;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2a

    iget-object v5, v2, Lww;->c:[I

    .line 129
    aput v6, v5, v3

    iget-object v5, v2, Lww;->g:Ljava/util/HashMap;

    .line 130
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->aP(I)Landroid/view/View;

    move-result-object v5

    goto :goto_19

    .line 135
    :cond_2a
    nop

    .line 131
    :goto_19
    if-eqz v5, :cond_2d

    iget-object v4, v2, Lww;->h:Lwb;

    .line 132
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lvx;

    move-result-object v5

    if-eq v5, v4, :cond_2d

    if-nez v5, :cond_2b

    goto :goto_1a

    :cond_2b
    iget v6, v4, Lwb;->ar:I

    iget-object v8, v4, Lwb;->aq:[Lvx;

    .line 133
    array-length v9, v8

    const/4 v10, 0x1

    add-int/2addr v6, v10

    if-le v6, v9, :cond_2c

    add-int/2addr v9, v9

    .line 134
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lvx;

    iput-object v6, v4, Lwb;->aq:[Lvx;

    :cond_2c
    iget-object v6, v4, Lwb;->aq:[Lvx;

    iget v8, v4, Lwb;->ar:I

    .line 135
    aput-object v5, v6, v8

    const/4 v5, 0x1

    add-int/2addr v8, v5

    iput v8, v4, Lwb;->ar:I

    .line 132
    :cond_2d
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 135
    :cond_2e
    iget-object v2, v2, Lww;->h:Lwb;

    .line 124
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    .line 135
    :cond_2f
    const/4 v0, 0x0

    goto :goto_1c

    .line 177
    :cond_30
    const/4 v0, 0x0

    .line 135
    :goto_1c
    move/from16 v8, v21

    if-ge v0, v8, :cond_32

    .line 136
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 137
    instance-of v2, v1, Lxk;

    if-nez v2, :cond_31

    add-int/lit8 v0, v0, 0x1

    move/from16 v21, v8

    goto :goto_1c

    .line 138
    :cond_31
    check-cast v1, Lxk;

    .line 139
    const/4 v1, 0x0

    throw v1

    .line 137
    :cond_32
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 140
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    .line 141
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v8, :cond_33

    .line 143
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lvx;

    move-result-object v2

    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_33
    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v8, :cond_65

    .line 146
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 147
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lvx;

    move-result-object v10

    if-nez v10, :cond_34

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/16 v17, 0x0

    goto/16 :goto_31

    .line 148
    :cond_34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lwy;

    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    iget-object v2, v1, Lwe;->aH:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v10, Lvx;->T:Lvx;

    if-eqz v2, :cond_35

    check-cast v2, Lwe;

    .line 150
    invoke-virtual {v2, v10}, Lwe;->Y(Lvx;)V

    :cond_35
    iput-object v1, v10, Lvx;->T:Lvx;

    iget-object v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 151
    invoke-virtual {v11}, Lwy;->a()V

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, v11, Lwy;->ar:Z

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, v10, Lvx;->ag:I

    .line 154
    iget-boolean v1, v11, Lwy;->ae:Z

    iput-object v0, v10, Lvx;->af:Ljava/lang/Object;

    .line 155
    instance-of v1, v0, Lww;

    if-eqz v1, :cond_36

    .line 156
    check-cast v0, Lww;

    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    iget-boolean v1, v1, Lvy;->d:Z

    .line 157
    invoke-virtual {v0, v10, v1}, Lww;->a(Lvx;Z)V

    .line 158
    :cond_36
    iget-boolean v0, v11, Lwy;->ac:Z

    if-eqz v0, :cond_3b

    .line 159
    check-cast v10, Lwa;

    .line 160
    iget v0, v11, Lwy;->an:I

    .line 161
    iget v1, v11, Lwy;->ao:I

    .line 162
    iget v2, v11, Lwy;->ap:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_39

    cmpl-float v0, v2, v3

    if-lez v0, :cond_37

    iput v2, v10, Lwa;->a:F

    const/4 v2, -0x1

    iput v2, v10, Lwa;->b:I

    :goto_1f
    iput v2, v10, Lwa;->c:I

    goto :goto_20

    :cond_37
    const/4 v2, -0x1

    :cond_38
    :goto_20
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/16 v17, 0x0

    goto/16 :goto_31

    :cond_39
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3a

    if-ltz v0, :cond_38

    iput v3, v10, Lwa;->a:F

    iput v0, v10, Lwa;->b:I

    goto :goto_1f

    :cond_3a
    if-eq v1, v2, :cond_38

    if-ltz v1, :cond_38

    iput v3, v10, Lwa;->a:F

    iput v2, v10, Lwa;->b:I

    iput v1, v10, Lwa;->c:I

    goto :goto_20

    .line 163
    :cond_3b
    iget v0, v11, Lwy;->ag:I

    .line 164
    iget v1, v11, Lwy;->ah:I

    .line 165
    iget v13, v11, Lwy;->ai:I

    .line 166
    iget v14, v11, Lwy;->aj:I

    .line 167
    iget v6, v11, Lwy;->ak:I

    .line 168
    iget v15, v11, Lwy;->al:I

    .line 169
    iget v5, v11, Lwy;->am:F

    .line 170
    iget v2, v11, Lwy;->o:I

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3d

    .line 171
    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lvx;

    if-eqz v3, :cond_3c

    .line 172
    iget v0, v11, Lwy;->q:F

    const/4 v2, 0x7

    const/4 v5, 0x7

    iget v6, v11, Lwy;->p:I

    const/4 v12, 0x0

    .line 173
    move-object v1, v10

    const/4 v13, 0x0

    move v4, v5

    move v5, v6

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lvx;->P(ILvx;III)V

    iput v0, v10, Lvx;->E:F

    const/4 v1, 0x0

    goto/16 :goto_26

    .line 171
    :cond_3c
    const/4 v13, 0x0

    const/4 v1, 0x0

    goto/16 :goto_26

    .line 215
    :cond_3d
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3f

    .line 174
    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lvx;

    if-eqz v3, :cond_3e

    const/4 v2, 0x2

    const/4 v0, 0x2

    .line 175
    iget v1, v11, Lwy;->leftMargin:I

    move/from16 v16, v1

    move-object v1, v10

    move v4, v0

    move v0, v5

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lvx;->P(ILvx;III)V

    goto :goto_21

    .line 174
    :cond_3e
    move v0, v5

    goto :goto_21

    .line 181
    :cond_3f
    move v0, v5

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    .line 176
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lvx;

    if-eqz v3, :cond_40

    const/4 v2, 0x2

    const/4 v4, 0x4

    .line 177
    iget v5, v11, Lwy;->leftMargin:I

    move-object v1, v10

    invoke-virtual/range {v1 .. v6}, Lvx;->P(ILvx;III)V

    .line 175
    :cond_40
    :goto_21
    const/4 v1, -0x1

    if-eq v13, v1, :cond_41

    .line 178
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lvx;

    if-eqz v3, :cond_42

    const/4 v2, 0x4

    const/4 v4, 0x2

    .line 179
    iget v5, v11, Lwy;->rightMargin:I

    move-object v1, v10

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lvx;->P(ILvx;III)V

    goto :goto_22

    .line 187
    :cond_41
    const/4 v1, -0x1

    if-eq v14, v1, :cond_42

    .line 180
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lvx;

    if-eqz v3, :cond_42

    const/4 v2, 0x4

    const/4 v4, 0x4

    .line 181
    iget v5, v11, Lwy;->rightMargin:I

    move-object v1, v10

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lvx;->P(ILvx;III)V

    .line 182
    :cond_42
    :goto_22
    iget v1, v11, Lwy;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_43

    .line 183
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lvx;

    if-eqz v3, :cond_44

    const/4 v2, 0x3

    const/4 v4, 0x3

    .line 184
    iget v5, v11, Lwy;->topMargin:I

    iget v6, v11, Lwy;->w:I

    move-object v1, v10

    invoke-virtual/range {v1 .. v6}, Lvx;->P(ILvx;III)V

    goto :goto_23

    .line 185
    :cond_43
    iget v1, v11, Lwy;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_44

    .line 186
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lvx;

    if-eqz v3, :cond_44

    const/4 v2, 0x3

    const/4 v4, 0x5

    .line 187
    iget v5, v11, Lwy;->topMargin:I

    iget v6, v11, Lwy;->w:I

    move-object v1, v10

    invoke-virtual/range {v1 .. v6}, Lvx;->P(ILvx;III)V

    .line 188
    :cond_44
    :goto_23
    iget v1, v11, Lwy;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_45

    .line 189
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lvx;

    if-eqz v3, :cond_46

    const/4 v2, 0x5

    const/4 v4, 0x3

    .line 190
    iget v5, v11, Lwy;->bottomMargin:I

    iget v6, v11, Lwy;->y:I

    move-object v1, v10

    invoke-virtual/range {v1 .. v6}, Lvx;->P(ILvx;III)V

    goto :goto_24

    .line 191
    :cond_45
    iget v1, v11, Lwy;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    .line 192
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lvx;

    if-eqz v3, :cond_46

    const/4 v2, 0x5

    const/4 v4, 0x5

    .line 193
    iget v5, v11, Lwy;->bottomMargin:I

    iget v6, v11, Lwy;->y:I

    move-object v1, v10

    invoke-virtual/range {v1 .. v6}, Lvx;->P(ILvx;III)V

    .line 194
    :cond_46
    :goto_24
    iget v5, v11, Lwy;->l:I

    const/4 v1, -0x1

    if-eq v5, v1, :cond_47

    const/4 v6, 0x6

    .line 195
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Lvx;Lwy;Landroid/util/SparseArray;II)V

    goto :goto_25

    .line 196
    :cond_47
    iget v5, v11, Lwy;->m:I

    const/4 v1, -0x1

    if-eq v5, v1, :cond_48

    const/4 v6, 0x3

    .line 197
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Lvx;Lwy;Landroid/util/SparseArray;II)V

    goto :goto_25

    .line 198
    :cond_48
    iget v5, v11, Lwy;->n:I

    const/4 v1, -0x1

    if-eq v5, v1, :cond_49

    const/4 v6, 0x5

    .line 199
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Lvx;Lwy;Landroid/util/SparseArray;II)V

    .line 195
    :cond_49
    :goto_25
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_4a

    iput v0, v10, Lvx;->ad:F

    .line 200
    :cond_4a
    iget v0, v11, Lwy;->E:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_4b

    iput v0, v10, Lvx;->ae:F

    .line 173
    :cond_4b
    :goto_26
    if-eqz v19, :cond_4d

    .line 201
    iget v0, v11, Lwy;->S:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4c

    iget v0, v11, Lwy;->T:I

    if-eq v0, v2, :cond_4d

    const/4 v0, -0x1

    .line 202
    :cond_4c
    iget v2, v11, Lwy;->T:I

    iput v0, v10, Lvx;->Y:I

    iput v2, v10, Lvx;->Z:I

    .line 203
    :cond_4d
    iget-boolean v0, v11, Lwy;->Z:Z

    const/4 v2, -0x2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-nez v0, :cond_50

    .line 204
    iget v0, v11, Lwy;->width:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4f

    .line 205
    iget-boolean v0, v11, Lwy;->V:Z

    if-eqz v0, :cond_4e

    .line 206
    invoke-virtual {v10, v5}, Lvx;->Q(I)V

    goto :goto_27

    .line 228
    :cond_4e
    nop

    .line 207
    invoke-virtual {v10, v3}, Lvx;->Q(I)V

    .line 206
    :goto_27
    invoke-virtual {v10, v4}, Lvx;->L(I)Lvw;

    move-result-object v0

    .line 208
    iget v6, v11, Lwy;->leftMargin:I

    iput v6, v0, Lvw;->f:I

    invoke-virtual {v10, v3}, Lvx;->L(I)Lvw;

    move-result-object v0

    .line 209
    iget v6, v11, Lwy;->rightMargin:I

    iput v6, v0, Lvw;->f:I

    goto :goto_28

    .line 207
    :cond_4f
    nop

    .line 210
    invoke-virtual {v10, v5}, Lvx;->Q(I)V

    .line 211
    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Lvx;->D(I)V

    goto :goto_28

    :cond_50
    nop

    .line 212
    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Lvx;->Q(I)V

    .line 213
    iget v0, v11, Lwy;->width:I

    invoke-virtual {v10, v0}, Lvx;->D(I)V

    .line 214
    iget v0, v11, Lwy;->width:I

    if-ne v0, v2, :cond_51

    .line 215
    invoke-virtual {v10, v4}, Lvx;->Q(I)V

    .line 216
    :cond_51
    :goto_28
    iget-boolean v0, v11, Lwy;->aa:Z

    if-nez v0, :cond_54

    .line 217
    iget v0, v11, Lwy;->height:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_53

    .line 218
    iget-boolean v0, v11, Lwy;->W:Z

    if-eqz v0, :cond_52

    .line 219
    invoke-virtual {v10, v5}, Lvx;->R(I)V

    goto :goto_29

    .line 233
    :cond_52
    nop

    .line 220
    invoke-virtual {v10, v3}, Lvx;->R(I)V

    .line 219
    :goto_29
    invoke-virtual {v10, v5}, Lvx;->L(I)Lvw;

    move-result-object v0

    .line 221
    iget v2, v11, Lwy;->topMargin:I

    iput v2, v0, Lvw;->f:I

    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Lvx;->L(I)Lvw;

    move-result-object v0

    .line 222
    iget v2, v11, Lwy;->bottomMargin:I

    iput v2, v0, Lvw;->f:I

    goto :goto_2a

    .line 220
    :cond_53
    nop

    .line 223
    invoke-virtual {v10, v5}, Lvx;->R(I)V

    .line 224
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lvx;->y(I)V

    goto :goto_2a

    :cond_54
    const/4 v6, -0x1

    .line 225
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lvx;->R(I)V

    .line 226
    iget v0, v11, Lwy;->height:I

    invoke-virtual {v10, v0}, Lvx;->y(I)V

    .line 227
    iget v0, v11, Lwy;->height:I

    if-ne v0, v2, :cond_55

    .line 228
    invoke-virtual {v10, v4}, Lvx;->R(I)V

    .line 229
    :cond_55
    :goto_2a
    iget-object v0, v11, Lwy;->F:Ljava/lang/String;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_56

    goto/16 :goto_2e

    .line 253
    :cond_56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_59

    add-int/lit8 v12, v2, -0x1

    if-ge v3, v12, :cond_59

    .line 231
    const/4 v12, 0x0

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 232
    const-string v12, "W"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_57

    const/4 v12, 0x0

    goto :goto_2b

    .line 237
    :cond_57
    nop

    .line 233
    const-string v12, "H"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_58

    const/4 v12, 0x1

    goto :goto_2b

    :cond_58
    const/4 v12, -0x1

    .line 232
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 233
    :cond_59
    const/4 v3, 0x0

    const/4 v12, -0x1

    .line 232
    :goto_2c
    const/16 v13, 0x3a

    .line 234
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_5c

    add-int/lit8 v2, v2, -0x1

    if-ge v13, v2, :cond_5c

    .line 238
    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v13, v13, 0x1

    .line 239
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5b

    .line 241
    :try_start_4
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 242
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v3, v2, v1

    if-lez v3, :cond_5b

    cmpl-float v3, v0, v1

    if-lez v3, :cond_5b

    const/4 v3, 0x1

    if-ne v12, v3, :cond_5a

    div-float/2addr v0, v2

    .line 243
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_2d

    :cond_5a
    div-float/2addr v2, v0

    .line 244
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_2d

    :cond_5b
    const/4 v0, 0x0

    goto :goto_2d

    .line 235
    :cond_5c
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5d

    .line 237
    :try_start_5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_2d

    .line 139
    :catch_8
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2d

    .line 237
    :cond_5d
    const/4 v0, 0x0

    .line 243
    :goto_2d
    cmpl-float v2, v0, v1

    if-lez v2, :cond_5f

    iput v0, v10, Lvx;->W:F

    iput v12, v10, Lvx;->X:I

    goto :goto_2f

    .line 229
    :cond_5e
    :goto_2e
    iput v1, v10, Lvx;->W:F

    .line 245
    :cond_5f
    :goto_2f
    iget v0, v11, Lwy;->G:F

    iget-object v2, v10, Lvx;->ak:[F

    .line 246
    const/16 v17, 0x0

    aput v0, v2, v17

    .line 247
    iget v0, v11, Lwy;->H:F

    .line 248
    const/4 v3, 0x1

    aput v0, v2, v3

    .line 249
    iget v0, v11, Lwy;->I:I

    iput v0, v10, Lvx;->ai:I

    .line 250
    iget v0, v11, Lwy;->J:I

    iput v0, v10, Lvx;->aj:I

    .line 251
    iget v0, v11, Lwy;->Y:I

    if-ltz v0, :cond_60

    if-gt v0, v5, :cond_60

    iput v0, v10, Lvx;->r:I

    .line 252
    :cond_60
    iget v0, v11, Lwy;->K:I

    iget v2, v11, Lwy;->M:I

    iget v5, v11, Lwy;->O:I

    iget v12, v11, Lwy;->Q:F

    iput v0, v10, Lvx;->s:I

    iput v2, v10, Lvx;->v:I

    const v2, 0x7fffffff

    if-ne v5, v2, :cond_61

    const/4 v5, 0x0

    goto :goto_30

    .line 253
    :cond_61
    nop

    .line 252
    :goto_30
    iput v5, v10, Lvx;->w:I

    iput v12, v10, Lvx;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v13, v12, v1

    if-lez v13, :cond_62

    cmpg-float v12, v12, v5

    if-gez v12, :cond_62

    if-nez v0, :cond_62

    iput v4, v10, Lvx;->s:I

    .line 253
    :cond_62
    iget v0, v11, Lwy;->L:I

    iget v12, v11, Lwy;->N:I

    iget v13, v11, Lwy;->P:I

    iget v11, v11, Lwy;->R:F

    iput v0, v10, Lvx;->t:I

    iput v12, v10, Lvx;->y:I

    if-ne v13, v2, :cond_63

    const/4 v13, 0x0

    :cond_63
    iput v13, v10, Lvx;->z:I

    iput v11, v10, Lvx;->A:F

    cmpl-float v1, v11, v1

    if-lez v1, :cond_64

    cmpg-float v1, v11, v5

    if-gez v1, :cond_64

    if-nez v0, :cond_64

    iput v4, v10, Lvx;->t:I

    .line 147
    :cond_64
    :goto_31
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1e

    .line 177
    :cond_65
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final h(Lvx;Lwy;Landroid/util/SparseArray;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvx;

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Lwy;

    if-eqz p4, :cond_1

    .line 4
    const/4 p4, 0x1

    iput-boolean p4, p2, Lwy;->ab:Z

    const/4 v1, 0x6

    if-ne p5, v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lwy;

    .line 6
    iput-boolean p4, v0, Lwy;->ab:Z

    .line 7
    iget-object v0, v0, Lwy;->aq:Lvx;

    iput-boolean p4, v0, Lvx;->F:Z

    :cond_0
    invoke-virtual {p1, v1}, Lvx;->L(I)Lvw;

    move-result-object v0

    invoke-virtual {p3, p5}, Lvx;->L(I)Lvw;

    move-result-object p3

    .line 8
    iget p5, p2, Lwy;->C:I

    iget p2, p2, Lwy;->B:I

    invoke-virtual {v0, p3, p5, p2}, Lvw;->j(Lvw;II)V

    iput-boolean p4, p1, Lvx;->F:Z

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lvx;->L(I)Lvw;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lvw;->d()V

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lvx;->L(I)Lvw;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lvw;->d()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final aP(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final b(Landroid/view/View;)Lvx;
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lwy;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lwy;

    iget-object p1, p1, Lwy;->aq:Lvx;

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lwy;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lwy;

    iget-object p1, p1, Lwy;->aq:Lvx;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lwy;

    return p1
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lww;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 8
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    .line 10
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 11
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 12
    check-cast v6, Ljava/lang/String;

    .line 13
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 14
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 15
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 16
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    .line 17
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    .line 18
    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float v7, v7, v1

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float v8, v8, v3

    float-to-int v8, v8

    new-instance v15, Landroid/graphics/Paint;

    .line 19
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 20
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float v9, v9, v1

    float-to-int v9, v9

    add-int/2addr v7, v9

    int-to-float v7, v7

    .line 21
    move-object/from16 v12, p1

    move v9, v13

    move v13, v14

    move v10, v14

    move v14, v9

    move-object/from16 v18, v15

    move v15, v7

    move/from16 v16, v9

    move-object/from16 v17, v18

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v8, v6

    int-to-float v6, v8

    .line 22
    move v13, v7

    move/from16 v16, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 23
    move v14, v6

    move v15, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 24
    move v13, v10

    move/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    .line 25
    move-object/from16 v11, v18

    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    move v14, v9

    move v15, v7

    move/from16 v16, v6

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 27
    move v14, v6

    move/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 9
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 27
    :cond_3
    return-void
.end method

.method public final forceLayout()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->f()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->d()Lwy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lwy;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lwy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lwy;

    invoke-direct {v0, p1}, Lwy;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_2

    .line 3
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lwy;

    .line 5
    iget-object v1, v0, Lwy;->aq:Lvx;

    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lwy;->ac:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lwy;->ad:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lwy;->af:Z

    if-nez p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-boolean v0, v0, Lwy;->ae:Z

    .line 8
    invoke-virtual {v1}, Lvx;->k()I

    move-result v0

    .line 9
    invoke-virtual {v1}, Lvx;->l()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Lvx;->j()I

    move-result v3

    add-int/2addr v3, v0

    .line 11
    invoke-virtual {v1}, Lvx;->h()I

    move-result v1

    add-int/2addr v1, v2

    .line 12
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    instance-of v0, p5, Lxk;

    if-nez v0, :cond_1

    .line 6
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 14
    :cond_1
    check-cast p5, Lxk;

    const/4 p1, 0x0

    .line 15
    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    :goto_2
    if-ge p3, p1, :cond_3

    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lww;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    .line 2
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3
    invoke-virtual {v7}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-eqz v7, :cond_0

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    goto :goto_1

    .line 129
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Z

    move-result v6

    iput-boolean v6, v3, Lvy;->d:Z

    iget-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    if-eqz v3, :cond_3

    iput-boolean v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_3

    .line 6
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()V

    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    iget-object v6, v3, Lvy;->a:Lwg;

    .line 9
    invoke-virtual {v6, v3}, Lwg;->a(Lvy;)V

    goto :goto_3

    .line 21
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 9
    :cond_3
    :goto_3
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 10
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 12
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v13, v11, v12

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v15

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/2addr v14, v15

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v15

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_4

    move v14, v15

    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Lwz;

    iput v11, v4, Lwz;->b:I

    iput v12, v4, Lwz;->c:I

    iput v14, v4, Lwz;->d:I

    iput v13, v4, Lwz;->e:I

    iput v1, v4, Lwz;->f:I

    iput v2, v4, Lwz;->g:I

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-gtz v4, :cond_6

    if-lez v12, :cond_5

    goto :goto_4

    .line 26
    :cond_5
    nop

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_5

    .line 20
    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Z

    move-result v15

    if-eqz v15, :cond_7

    move v4, v12

    :cond_7
    :goto_5
    sub-int/2addr v8, v14

    sub-int/2addr v10, v13

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Lwz;

    .line 22
    iget v13, v12, Lwz;->e:I

    .line 23
    iget v12, v12, Lwz;->d:I

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v14

    sparse-switch v7, :sswitch_data_0

    const/4 v15, 0x0

    const/16 v18, 0x1

    goto :goto_8

    .line 29
    :sswitch_0
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    sub-int/2addr v15, v12

    .line 25
    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/16 v18, 0x1

    goto :goto_8

    .line 27
    :sswitch_1
    if-nez v14, :cond_8

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 26
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/4 v14, 0x0

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    :goto_6
    const/16 v18, 0x2

    goto :goto_8

    .line 25
    :sswitch_2
    if-nez v14, :cond_9

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 27
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    move v15, v8

    :goto_7
    const/16 v18, 0x2

    .line 24
    :goto_8
    sparse-switch v9, :sswitch_data_1

    const/4 v14, 0x0

    const/16 v19, 0x1

    goto :goto_b

    .line 49
    :sswitch_3
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    sub-int/2addr v14, v13

    .line 28
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v19, 0x1

    goto :goto_b

    .line 30
    :sswitch_4
    if-nez v14, :cond_a

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 29
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_9

    :cond_a
    const/4 v14, 0x0

    :goto_9
    const/16 v19, 0x2

    goto :goto_b

    .line 28
    :sswitch_5
    if-nez v14, :cond_b

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 30
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_a

    :cond_b
    move v14, v10

    :goto_a
    const/16 v19, 0x2

    .line 31
    :goto_b
    invoke-virtual {v3}, Lvx;->j()I

    move-result v5

    if-ne v15, v5, :cond_d

    invoke-virtual {v3}, Lvx;->h()I

    move-result v5

    if-eq v14, v5, :cond_c

    goto :goto_c

    :cond_c
    const/4 v2, 0x1

    goto :goto_d

    :cond_d
    :goto_c
    iget-object v5, v3, Lvy;->b:Lwj;

    const/4 v2, 0x1

    iput-boolean v2, v5, Lwj;->c:Z

    :goto_d
    const/4 v5, 0x0

    iput v5, v3, Lvx;->Y:I

    iput v5, v3, Lvx;->Z:I

    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    iget-object v1, v3, Lvx;->D:[I

    sub-int/2addr v2, v12

    aput v2, v1, v5

    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    sub-int/2addr v2, v13

    const/16 v16, 0x1

    aput v2, v1, v16

    .line 32
    invoke-virtual {v3, v5}, Lvx;->C(I)V

    .line 33
    invoke-virtual {v3, v5}, Lvx;->B(I)V

    .line 34
    move/from16 v1, v18

    invoke-virtual {v3, v1}, Lvx;->Q(I)V

    .line 35
    invoke-virtual {v3, v15}, Lvx;->D(I)V

    .line 36
    move/from16 v1, v19

    invoke-virtual {v3, v1}, Lvx;->R(I)V

    .line 37
    invoke-virtual {v3, v14}, Lvx;->y(I)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr v1, v12

    .line 38
    invoke-virtual {v3, v1}, Lvx;->C(I)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    sub-int/2addr v1, v13

    .line 39
    invoke-virtual {v3, v1}, Lvx;->B(I)V

    iput v4, v3, Lvy;->ar:I

    iput v11, v3, Lvy;->as:I

    iget-object v1, v3, Lvy;->a:Lwg;

    iget-object v2, v3, Lvy;->aG:Lwz;

    iget-object v4, v3, Lvy;->aH:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 41
    invoke-virtual {v3}, Lvx;->j()I

    move-result v5

    invoke-virtual {v3}, Lvx;->h()I

    move-result v11

    const/16 v12, 0x80

    invoke-static {v6, v12}, Lwc;->b(II)Z

    move-result v12

    const/16 v13, 0x40

    if-nez v12, :cond_f

    invoke-static {v6, v13}, Lwc;->b(II)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_e

    .line 49
    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    :cond_f
    const/4 v6, 0x1

    .line 41
    :goto_e
    if-eqz v6, :cond_17

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v4, :cond_17

    iget-object v14, v3, Lvy;->aH:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lvx;

    .line 43
    invoke-virtual {v14}, Lvx;->N()I

    move-result v15

    .line 44
    move/from16 v22, v6

    invoke-virtual {v14}, Lvx;->O()I

    move-result v6

    const/4 v0, 0x3

    if-ne v15, v0, :cond_10

    if-ne v6, v0, :cond_10

    iget v0, v14, Lvx;->W:F

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    .line 49
    :cond_10
    const/4 v0, 0x0

    .line 45
    :goto_10
    invoke-virtual {v14}, Lvx;->I()Z

    move-result v6

    if-eqz v6, :cond_12

    if-eqz v0, :cond_11

    const/16 v22, 0x0

    goto :goto_12

    .line 41
    :cond_11
    const/4 v0, 0x0

    .line 46
    :cond_12
    invoke-virtual {v14}, Lvx;->J()Z

    move-result v6

    if-eqz v6, :cond_13

    if-eqz v0, :cond_13

    const/16 v22, 0x0

    goto :goto_12

    .line 47
    :cond_13
    instance-of v0, v14, Lwd;

    if-eqz v0, :cond_14

    const/16 v22, 0x0

    goto :goto_12

    .line 48
    :cond_14
    invoke-virtual {v14}, Lvx;->I()Z

    move-result v0

    if-nez v0, :cond_16

    .line 49
    invoke-virtual {v14}, Lvx;->J()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_11

    :cond_15
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v6, v22

    goto :goto_f

    :cond_16
    :goto_11
    const/16 v22, 0x0

    goto :goto_12

    .line 41
    :cond_17
    move/from16 v22, v6

    .line 45
    :goto_12
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v7, v0, :cond_19

    if-eq v9, v0, :cond_18

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_13

    .line 41
    :cond_18
    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_14

    :cond_19
    nop

    .line 45
    :goto_13
    if-eqz v12, :cond_1a

    const/4 v6, 0x1

    goto :goto_14

    .line 41
    :cond_1a
    const/4 v6, 0x0

    .line 45
    :goto_14
    and-int v6, v22, v6

    if-eqz v6, :cond_3d

    iget-object v14, v3, Lvx;->D:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    .line 50
    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v14, v3, Lvx;->D:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    .line 51
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ne v7, v0, :cond_1b

    const/4 v14, 0x0

    goto :goto_15

    .line 41
    :cond_1b
    const/4 v14, 0x1

    .line 51
    :goto_15
    if-ne v7, v0, :cond_1c

    .line 41
    invoke-virtual {v3}, Lvx;->j()I

    move-result v15

    if-eq v15, v8, :cond_1c

    invoke-virtual {v3, v8}, Lvx;->D(I)V

    invoke-virtual {v3}, Lvy;->c()V

    :cond_1c
    if-ne v9, v0, :cond_1d

    const/4 v8, 0x0

    goto :goto_16

    :cond_1d
    const/4 v8, 0x1

    :goto_16
    if-ne v9, v0, :cond_1e

    invoke-virtual {v3}, Lvx;->h()I

    move-result v15

    if-eq v15, v10, :cond_1e

    invoke-virtual {v3, v10}, Lvx;->y(I)V

    invoke-virtual {v3}, Lvy;->c()V

    :cond_1e
    if-ne v7, v0, :cond_37

    if-ne v9, v0, :cond_37

    iget-object v0, v3, Lvy;->b:Lwj;

    iget-boolean v7, v0, Lwj;->b:Z

    if-nez v7, :cond_20

    iget-boolean v7, v0, Lwj;->c:Z

    if-eqz v7, :cond_1f

    goto :goto_17

    :cond_1f
    const/4 v9, 0x0

    goto :goto_19

    :cond_20
    :goto_17
    iget-object v7, v0, Lwj;->a:Lvy;

    iget-object v7, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 72
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v9, :cond_21

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 73
    check-cast v15, Lvx;

    .line 74
    invoke-virtual {v15}, Lvx;->r()V

    .line 75
    const/4 v13, 0x0

    iput-boolean v13, v15, Lvx;->e:Z

    .line 76
    iget-object v13, v15, Lvx;->h:Lwp;

    invoke-virtual {v13}, Lwp;->g()V

    .line 77
    iget-object v13, v15, Lvx;->i:Lwr;

    invoke-virtual {v13}, Lwr;->g()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_21
    iget-object v7, v0, Lwj;->a:Lvy;

    .line 78
    invoke-virtual {v7}, Lvx;->r()V

    iget-object v7, v0, Lwj;->a:Lvy;

    const/4 v9, 0x0

    iput-boolean v9, v7, Lvy;->e:Z

    iget-object v7, v7, Lvy;->h:Lwp;

    .line 79
    invoke-virtual {v7}, Lwp;->g()V

    iget-object v7, v0, Lwj;->a:Lvy;

    iget-object v7, v7, Lvy;->i:Lwr;

    .line 80
    invoke-virtual {v7}, Lwr;->g()V

    iput-boolean v9, v0, Lwj;->c:Z

    :goto_19
    iget-object v7, v0, Lwj;->d:Lvy;

    .line 81
    invoke-virtual {v0, v7}, Lwj;->d(Lvy;)V

    iget-object v7, v0, Lwj;->a:Lvy;

    iput v9, v7, Lvx;->Y:I

    iput v9, v7, Lvx;->Z:I

    .line 82
    invoke-virtual {v7, v9}, Lvx;->M(I)I

    move-result v7

    iget-object v9, v0, Lwj;->a:Lvy;

    .line 83
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lvx;->M(I)I

    move-result v9

    iget-boolean v10, v0, Lwj;->b:Z

    if-eqz v10, :cond_22

    .line 81
    invoke-virtual {v0}, Lwj;->b()V

    :cond_22
    iget-object v10, v0, Lwj;->a:Lvy;

    invoke-virtual {v10}, Lvx;->k()I

    move-result v10

    iget-object v13, v0, Lwj;->a:Lvy;

    invoke-virtual {v13}, Lvx;->l()I

    move-result v13

    iget-object v15, v0, Lwj;->a:Lvy;

    iget-object v15, v15, Lvy;->h:Lwp;

    .line 84
    iget-object v15, v15, Lwp;->i:Lwk;

    invoke-virtual {v15, v10}, Lwk;->c(I)V

    iget-object v15, v0, Lwj;->a:Lvy;

    iget-object v15, v15, Lvy;->i:Lwr;

    .line 85
    iget-object v15, v15, Lwr;->i:Lwk;

    invoke-virtual {v15, v13}, Lwk;->c(I)V

    .line 81
    invoke-virtual {v0}, Lwj;->c()V

    const/4 v15, 0x2

    if-eq v7, v15, :cond_24

    if-ne v9, v15, :cond_23

    const/4 v9, 0x2

    goto :goto_1a

    .line 93
    :cond_23
    move/from16 v23, v6

    goto :goto_1d

    .line 81
    :cond_24
    :goto_1a
    if-eqz v12, :cond_28

    iget-object v12, v0, Lwj;->e:Ljava/util/ArrayList;

    .line 72
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v23, v6

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v15, :cond_26

    add-int/lit8 v24, v6, 0x1

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 86
    check-cast v6, Lwt;

    .line 87
    invoke-virtual {v6}, Lwt;->e()Z

    move-result v6

    if-nez v6, :cond_25

    goto :goto_1d

    .line 107
    :cond_25
    move/from16 v6, v24

    goto :goto_1b

    :cond_26
    const/4 v6, 0x2

    if-ne v7, v6, :cond_27

    iget-object v6, v0, Lwj;->a:Lvy;

    .line 88
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lvx;->Q(I)V

    iget-object v6, v0, Lwj;->a:Lvy;

    .line 81
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lwj;->a(Lvy;I)I

    move-result v12

    .line 89
    invoke-virtual {v6, v12}, Lvx;->D(I)V

    iget-object v6, v0, Lwj;->a:Lvy;

    iget-object v7, v6, Lvy;->h:Lwp;

    .line 90
    iget-object v7, v7, Lwp;->f:Lwl;

    invoke-virtual {v6}, Lvx;->j()I

    move-result v6

    invoke-virtual {v7, v6}, Lwk;->c(I)V

    const/4 v7, 0x2

    goto :goto_1c

    .line 93
    :cond_27
    nop

    .line 90
    :goto_1c
    const/4 v6, 0x2

    if-ne v9, v6, :cond_29

    iget-object v6, v0, Lwj;->a:Lvy;

    .line 91
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lvx;->R(I)V

    iget-object v6, v0, Lwj;->a:Lvy;

    .line 81
    invoke-virtual {v0, v6, v12}, Lwj;->a(Lvy;I)I

    move-result v15

    .line 92
    invoke-virtual {v6, v15}, Lvx;->y(I)V

    iget-object v6, v0, Lwj;->a:Lvy;

    iget-object v12, v6, Lvy;->i:Lwr;

    .line 93
    iget-object v12, v12, Lwr;->f:Lwl;

    invoke-virtual {v6}, Lvx;->h()I

    move-result v6

    invoke-virtual {v12, v6}, Lwk;->c(I)V

    goto :goto_1d

    :cond_28
    move/from16 v23, v6

    .line 87
    :cond_29
    :goto_1d
    iget-object v6, v0, Lwj;->a:Lvy;

    iget-object v12, v6, Lvy;->ap:[I

    .line 94
    const/4 v15, 0x0

    aget v12, v12, v15

    const/4 v15, 0x1

    if-eq v12, v15, :cond_2b

    const/4 v15, 0x4

    if-ne v12, v15, :cond_2a

    goto :goto_1e

    .line 107
    :cond_2a
    const/4 v6, 0x0

    goto :goto_1f

    .line 94
    :cond_2b
    :goto_1e
    invoke-virtual {v6}, Lvx;->j()I

    move-result v6

    add-int/2addr v6, v10

    iget-object v12, v0, Lwj;->a:Lvy;

    iget-object v12, v12, Lvy;->h:Lwp;

    .line 95
    iget-object v12, v12, Lwp;->j:Lwk;

    invoke-virtual {v12, v6}, Lwk;->c(I)V

    iget-object v12, v0, Lwj;->a:Lvy;

    iget-object v12, v12, Lvy;->h:Lwp;

    .line 96
    iget-object v12, v12, Lwp;->f:Lwl;

    sub-int/2addr v6, v10

    invoke-virtual {v12, v6}, Lwk;->c(I)V

    .line 81
    invoke-virtual {v0}, Lwj;->c()V

    iget-object v6, v0, Lwj;->a:Lvy;

    iget-object v10, v6, Lvy;->ap:[I

    .line 97
    const/4 v12, 0x1

    aget v10, v10, v12

    if-eq v10, v12, :cond_2c

    const/4 v12, 0x4

    if-ne v10, v12, :cond_2d

    :cond_2c
    invoke-virtual {v6}, Lvx;->h()I

    move-result v6

    add-int/2addr v6, v13

    iget-object v10, v0, Lwj;->a:Lvy;

    iget-object v10, v10, Lvy;->i:Lwr;

    .line 98
    iget-object v10, v10, Lwr;->j:Lwk;

    invoke-virtual {v10, v6}, Lwk;->c(I)V

    iget-object v10, v0, Lwj;->a:Lvy;

    iget-object v10, v10, Lvy;->i:Lwr;

    .line 99
    iget-object v10, v10, Lwr;->f:Lwl;

    sub-int/2addr v6, v13

    invoke-virtual {v10, v6}, Lwk;->c(I)V

    .line 81
    :cond_2d
    invoke-virtual {v0}, Lwj;->c()V

    const/4 v6, 0x1

    :goto_1f
    iget-object v10, v0, Lwj;->e:Ljava/util/ArrayList;

    .line 72
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_20
    if-ge v13, v12, :cond_30

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 100
    check-cast v15, Lwt;

    .line 101
    move-object/from16 v24, v10

    iget-object v10, v15, Lwt;->d:Lvx;

    move/from16 v25, v12

    iget-object v12, v0, Lwj;->a:Lvy;

    if-ne v10, v12, :cond_2e

    iget-boolean v10, v15, Lwt;->h:Z

    if-eqz v10, :cond_2f

    .line 102
    :cond_2e
    invoke-virtual {v15}, Lwt;->c()V

    :cond_2f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v24

    move/from16 v12, v25

    goto :goto_20

    :cond_30
    iget-object v10, v0, Lwj;->e:Ljava/util/ArrayList;

    .line 72
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_21
    if-ge v13, v12, :cond_36

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 103
    check-cast v15, Lwt;

    if-nez v6, :cond_31

    .line 104
    move/from16 v24, v6

    iget-object v6, v15, Lwt;->d:Lvx;

    move-object/from16 v25, v10

    iget-object v10, v0, Lwj;->a:Lvy;

    if-ne v6, v10, :cond_32

    goto :goto_22

    .line 103
    :cond_31
    move/from16 v24, v6

    move-object/from16 v25, v10

    .line 105
    :cond_32
    iget-object v6, v15, Lwt;->i:Lwk;

    iget-boolean v6, v6, Lwk;->i:Z

    if-nez v6, :cond_33

    const/4 v6, 0x0

    goto :goto_23

    .line 106
    :cond_33
    iget-object v6, v15, Lwt;->j:Lwk;

    iget-boolean v6, v6, Lwk;->i:Z

    if-nez v6, :cond_34

    instance-of v6, v15, Lwn;

    if-nez v6, :cond_34

    const/4 v6, 0x0

    goto :goto_23

    .line 107
    :cond_34
    iget-object v6, v15, Lwt;->f:Lwl;

    iget-boolean v6, v6, Lwl;->i:Z

    if-nez v6, :cond_35

    instance-of v6, v15, Lwh;

    if-nez v6, :cond_35

    instance-of v6, v15, Lwn;

    if-nez v6, :cond_35

    const/4 v6, 0x0

    goto :goto_23

    .line 104
    :cond_35
    :goto_22
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v24

    move-object/from16 v10, v25

    goto :goto_21

    .line 107
    :cond_36
    const/4 v6, 0x1

    .line 105
    :goto_23
    iget-object v10, v0, Lwj;->a:Lvy;

    .line 108
    invoke-virtual {v10, v7}, Lvx;->Q(I)V

    iget-object v0, v0, Lwj;->a:Lvy;

    .line 109
    invoke-virtual {v0, v9}, Lvx;->R(I)V

    move-object/from16 v26, v2

    const/4 v0, 0x1

    const/4 v2, 0x2

    goto/16 :goto_27

    .line 41
    :cond_37
    move/from16 v23, v6

    .line 93
    iget-object v6, v3, Lvy;->b:Lwj;

    iget-boolean v10, v6, Lwj;->b:Z

    if-eqz v10, :cond_39

    iget-object v10, v6, Lwj;->a:Lvy;

    iget-object v10, v10, Lvy;->aH:Ljava/util/ArrayList;

    .line 52
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_24
    if-ge v15, v13, :cond_38

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    .line 53
    move-object/from16 v0, v24

    check-cast v0, Lvx;

    .line 54
    invoke-virtual {v0}, Lvx;->r()V

    .line 55
    move-object/from16 v24, v10

    const/4 v10, 0x0

    iput-boolean v10, v0, Lvx;->e:Z

    .line 56
    move/from16 v20, v13

    iget-object v13, v0, Lvx;->h:Lwp;

    move-object/from16 v26, v2

    iget-object v2, v13, Lwp;->f:Lwl;

    iput-boolean v10, v2, Lwl;->i:Z

    .line 57
    iput-boolean v10, v13, Lwp;->h:Z

    .line 58
    invoke-virtual {v13}, Lwp;->g()V

    .line 59
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v2, v0, Lwr;->f:Lwl;

    iput-boolean v10, v2, Lwl;->i:Z

    .line 60
    iput-boolean v10, v0, Lwr;->h:Z

    .line 61
    invoke-virtual {v0}, Lwr;->g()V

    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v20

    move-object/from16 v10, v24

    move-object/from16 v2, v26

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_24

    :cond_38
    move-object/from16 v26, v2

    const/4 v10, 0x0

    iget-object v0, v6, Lwj;->a:Lvy;

    .line 62
    invoke-virtual {v0}, Lvx;->r()V

    iget-object v0, v6, Lwj;->a:Lvy;

    iput-boolean v10, v0, Lvy;->e:Z

    iget-object v0, v0, Lvy;->h:Lwp;

    .line 63
    iget-object v2, v0, Lwp;->f:Lwl;

    iput-boolean v10, v2, Lwl;->i:Z

    .line 64
    iput-boolean v10, v0, Lwp;->h:Z

    .line 65
    invoke-virtual {v0}, Lwp;->g()V

    iget-object v0, v6, Lwj;->a:Lvy;

    iget-object v0, v0, Lvy;->i:Lwr;

    .line 66
    iget-object v2, v0, Lwr;->f:Lwl;

    iput-boolean v10, v2, Lwl;->i:Z

    .line 67
    iput-boolean v10, v0, Lwr;->h:Z

    .line 68
    invoke-virtual {v0}, Lwr;->g()V

    .line 69
    invoke-virtual {v6}, Lwj;->b()V

    goto :goto_25

    .line 93
    :cond_39
    move-object/from16 v26, v2

    .line 69
    :goto_25
    iget-object v0, v6, Lwj;->d:Lvy;

    invoke-virtual {v6, v0}, Lwj;->d(Lvy;)V

    iget-object v0, v6, Lwj;->a:Lvy;

    const/4 v2, 0x0

    iput v2, v0, Lvx;->Y:I

    iput v2, v0, Lvx;->Z:I

    iget-object v0, v0, Lvy;->h:Lwp;

    .line 70
    iget-object v0, v0, Lwp;->i:Lwk;

    invoke-virtual {v0, v2}, Lwk;->c(I)V

    iget-object v0, v6, Lwj;->a:Lvy;

    iget-object v0, v0, Lvy;->i:Lwr;

    .line 71
    iget-object v0, v0, Lwr;->i:Lwk;

    invoke-virtual {v0, v2}, Lwk;->c(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v7, v0, :cond_3a

    .line 41
    invoke-virtual {v3, v12, v2}, Lvy;->V(ZI)Z

    move-result v6

    const/4 v2, 0x1

    goto :goto_26

    :cond_3a
    const/4 v2, 0x0

    const/4 v6, 0x1

    :goto_26
    if-ne v9, v0, :cond_3b

    const/4 v0, 0x1

    invoke-virtual {v3, v12, v0}, Lvy;->V(ZI)Z

    move-result v7

    and-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3b
    const/4 v0, 0x1

    .line 109
    :goto_27
    if-eqz v6, :cond_3c

    xor-int/lit8 v7, v14, 0x1

    xor-int/2addr v8, v0

    .line 41
    invoke-virtual {v3, v7, v8}, Lvx;->E(ZZ)V

    goto :goto_28

    .line 177
    :cond_3c
    goto :goto_28

    .line 41
    :cond_3d
    move-object/from16 v26, v2

    move/from16 v23, v6

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_28
    if-eqz v6, :cond_3e

    const/4 v0, 0x2

    if-eq v2, v0, :cond_69

    :cond_3e
    iget v0, v3, Lvy;->ax:I

    if-lez v4, :cond_51

    iget-object v2, v3, Lvy;->aH:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 41
    const/16 v6, 0x40

    invoke-virtual {v3, v6}, Lvy;->W(I)Z

    move-result v6

    iget-object v7, v3, Lvy;->aG:Lwz;

    const/4 v8, 0x0

    :goto_29
    if-ge v8, v2, :cond_4e

    iget-object v9, v3, Lvy;->aH:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvx;

    .line 112
    instance-of v10, v9, Lwa;

    if-eqz v10, :cond_3f

    const/4 v13, 0x0

    const/4 v14, 0x3

    goto/16 :goto_30

    .line 113
    :cond_3f
    instance-of v10, v9, Lvu;

    if-nez v10, :cond_4c

    iget-boolean v10, v9, Lvx;->G:Z

    if-eqz v6, :cond_41

    .line 114
    iget-object v10, v9, Lvx;->h:Lwp;

    if-eqz v10, :cond_41

    iget-object v12, v9, Lvx;->i:Lwr;

    if-eqz v12, :cond_41

    iget-object v10, v10, Lwp;->f:Lwl;

    iget-boolean v10, v10, Lwl;->i:Z

    if-eqz v10, :cond_41

    iget-object v10, v12, Lwr;->f:Lwl;

    iget-boolean v10, v10, Lwl;->i:Z

    if-nez v10, :cond_40

    goto :goto_2a

    :cond_40
    const/4 v13, 0x0

    const/4 v14, 0x3

    goto/16 :goto_30

    :cond_41
    :goto_2a
    nop

    .line 115
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lvx;->M(I)I

    move-result v12

    .line 116
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lvx;->M(I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v12, v14, :cond_44

    .line 117
    iget v12, v9, Lvx;->s:I

    if-eq v12, v10, :cond_43

    if-ne v13, v14, :cond_43

    iget v12, v9, Lvx;->t:I

    if-eq v12, v10, :cond_42

    const/4 v10, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x3

    goto :goto_2b

    .line 124
    :cond_42
    const/4 v10, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x3

    goto :goto_2b

    :cond_43
    const/4 v10, 0x0

    const/4 v12, 0x3

    goto :goto_2b

    :cond_44
    const/4 v10, 0x0

    .line 117
    :goto_2b
    if-nez v10, :cond_4b

    .line 41
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lvy;->W(I)Z

    move-result v14

    if-eqz v14, :cond_4a

    .line 118
    instance-of v10, v9, Lwd;

    if-nez v10, :cond_49

    const/4 v10, 0x3

    if-ne v12, v10, :cond_45

    .line 119
    iget v14, v9, Lvx;->s:I

    if-nez v14, :cond_45

    if-eq v13, v10, :cond_45

    .line 120
    invoke-virtual {v9}, Lvx;->I()Z

    move-result v10

    if-nez v10, :cond_45

    const/4 v10, 0x1

    goto :goto_2c

    .line 124
    :cond_45
    const/4 v10, 0x0

    .line 120
    :goto_2c
    const/4 v14, 0x3

    if-ne v13, v14, :cond_46

    .line 121
    iget v15, v9, Lvx;->t:I

    if-nez v15, :cond_46

    if-eq v12, v14, :cond_46

    .line 122
    invoke-virtual {v9}, Lvx;->I()Z

    move-result v14

    if-nez v14, :cond_46

    const/4 v10, 0x1

    :cond_46
    const/4 v14, 0x3

    if-eq v12, v14, :cond_48

    if-ne v13, v14, :cond_47

    goto :goto_2d

    :cond_47
    const/4 v13, 0x0

    goto :goto_2e

    .line 123
    :cond_48
    :goto_2d
    iget v12, v9, Lvx;->W:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_4d

    :goto_2e
    if-nez v10, :cond_4d

    goto :goto_2f

    .line 118
    :cond_49
    const/4 v13, 0x0

    const/4 v14, 0x3

    goto :goto_2f

    .line 41
    :cond_4a
    const/4 v13, 0x0

    const/4 v14, 0x3

    .line 123
    :goto_2f
    nop

    .line 124
    const/4 v10, 0x0

    invoke-virtual {v1, v7, v9, v10}, Lwg;->c(Lwz;Lvx;I)Z

    goto :goto_30

    .line 117
    :cond_4b
    const/4 v13, 0x0

    const/4 v14, 0x3

    goto :goto_30

    .line 113
    :cond_4c
    const/4 v13, 0x0

    const/4 v14, 0x3

    .line 112
    :cond_4d
    :goto_30
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_29

    .line 124
    :cond_4e
    iget-object v2, v7, Lwz;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 125
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v6, 0x0

    :goto_31
    if-ge v6, v2, :cond_50

    iget-object v8, v7, Lwz;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 126
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 127
    instance-of v9, v8, Lxk;

    if-nez v9, :cond_4f

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 128
    :cond_4f
    check-cast v8, Lxk;

    iget-object v0, v7, Lwz;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 129
    throw v0

    .line 127
    :cond_50
    iget-object v2, v7, Lwz;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_51

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v2, :cond_51

    iget-object v8, v7, Lwz;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lww;

    iget-object v8, v7, Lwz;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 124
    :cond_51
    invoke-virtual {v1, v3}, Lwg;->a(Lvy;)V

    iget-object v2, v1, Lwg;->a:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v4, :cond_52

    .line 124
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5, v11}, Lwg;->b(Lvy;III)V

    :cond_52
    if-lez v2, :cond_68

    .line 41
    invoke-virtual {v3}, Lvx;->N()I

    move-result v4

    invoke-virtual {v3}, Lvx;->O()I

    move-result v6

    invoke-virtual {v3}, Lvx;->j()I

    move-result v7

    iget-object v8, v1, Lwg;->b:Lvy;

    iget v8, v8, Lvx;->ab:I

    .line 133
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 41
    invoke-virtual {v3}, Lvx;->h()I

    move-result v8

    iget-object v9, v1, Lwg;->b:Lvy;

    iget v9, v9, Lvx;->ac:I

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v9, v7

    move v10, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_33
    if-ge v7, v2, :cond_58

    iget-object v13, v1, Lwg;->a:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvx;

    .line 136
    instance-of v14, v13, Lwd;

    if-nez v14, :cond_53

    move/from16 v19, v0

    move-object/from16 v12, v26

    goto/16 :goto_38

    .line 137
    :cond_53
    invoke-virtual {v13}, Lvx;->j()I

    move-result v14

    .line 138
    invoke-virtual {v13}, Lvx;->h()I

    move-result v15

    .line 124
    move/from16 v19, v0

    move-object/from16 v12, v26

    const/4 v0, 0x1

    invoke-virtual {v1, v12, v13, v0}, Lwg;->c(Lwz;Lvx;I)Z

    move-result v21

    or-int v0, v8, v21

    .line 139
    invoke-virtual {v13}, Lvx;->j()I

    move-result v8

    .line 140
    move/from16 v21, v0

    invoke-virtual {v13}, Lvx;->h()I

    move-result v0

    if-eq v8, v14, :cond_55

    .line 141
    invoke-virtual {v13, v8}, Lvx;->D(I)V

    const/4 v8, 0x2

    if-ne v4, v8, :cond_54

    .line 142
    invoke-virtual {v13}, Lvx;->i()I

    move-result v8

    if-le v8, v9, :cond_54

    .line 143
    invoke-virtual {v13}, Lvx;->i()I

    move-result v8

    .line 144
    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lvx;->L(I)Lvw;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lvw;->b()I

    move-result v14

    add-int/2addr v8, v14

    .line 145
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_34

    .line 151
    :cond_54
    nop

    .line 145
    :goto_34
    const/16 v21, 0x1

    goto :goto_35

    .line 151
    :cond_55
    nop

    .line 145
    :goto_35
    if-eq v0, v15, :cond_57

    .line 146
    invoke-virtual {v13, v0}, Lvx;->y(I)V

    const/4 v0, 0x2

    if-ne v6, v0, :cond_56

    .line 147
    invoke-virtual {v13}, Lvx;->g()I

    move-result v0

    if-le v0, v10, :cond_56

    .line 148
    invoke-virtual {v13}, Lvx;->g()I

    move-result v0

    .line 149
    const/4 v8, 0x5

    invoke-virtual {v13, v8}, Lvx;->L(I)Lvw;

    move-result-object v8

    invoke-virtual {v8}, Lvw;->b()I

    move-result v8

    add-int/2addr v0, v8

    .line 150
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    goto :goto_36

    .line 151
    :cond_56
    nop

    .line 150
    :goto_36
    const/16 v21, 0x1

    goto :goto_37

    .line 151
    :cond_57
    nop

    :goto_37
    check-cast v13, Lwd;

    move/from16 v8, v21

    .line 136
    :goto_38
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v26, v12

    move/from16 v0, v19

    goto/16 :goto_33

    .line 151
    :cond_58
    move/from16 v19, v0

    move-object/from16 v12, v26

    const/4 v0, 0x0

    :goto_39
    const/4 v7, 0x2

    if-ge v0, v7, :cond_67

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v2, :cond_65

    iget-object v13, v1, Lwg;->a:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvx;

    .line 153
    instance-of v14, v13, Lwb;

    if-eqz v14, :cond_5a

    instance-of v14, v13, Lwd;

    if-eqz v14, :cond_59

    goto :goto_3b

    .line 169
    :cond_59
    goto :goto_3d

    .line 153
    :cond_5a
    :goto_3b
    instance-of v14, v13, Lwa;

    if-eqz v14, :cond_5b

    :goto_3c
    goto :goto_3d

    :cond_5b
    iget v14, v13, Lvx;->ag:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5c

    goto :goto_3c

    :cond_5c
    if-eqz v23, :cond_5d

    .line 154
    iget-object v14, v13, Lvx;->h:Lwp;

    iget-object v14, v14, Lwp;->f:Lwl;

    iget-boolean v14, v14, Lwl;->i:Z

    if-eqz v14, :cond_5d

    iget-object v14, v13, Lvx;->i:Lwr;

    iget-object v14, v14, Lwr;->f:Lwl;

    iget-boolean v14, v14, Lwl;->i:Z

    if-eqz v14, :cond_5d

    goto :goto_3d

    .line 155
    :cond_5d
    instance-of v14, v13, Lwd;

    if-eqz v14, :cond_5e

    .line 153
    :goto_3d
    move/from16 v21, v2

    move-object/from16 v24, v3

    const/4 v3, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x5

    goto/16 :goto_43

    .line 156
    :cond_5e
    invoke-virtual {v13}, Lvx;->j()I

    move-result v14

    .line 157
    invoke-virtual {v13}, Lvx;->h()I

    move-result v15

    move/from16 v21, v2

    iget v2, v13, Lvx;->aa:I

    move-object/from16 v24, v3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5f

    const/4 v3, 0x2

    goto :goto_3e

    .line 169
    :cond_5f
    nop

    .line 124
    :goto_3e
    invoke-virtual {v1, v12, v13, v3}, Lwg;->c(Lwz;Lvx;I)Z

    move-result v3

    or-int/2addr v3, v8

    .line 158
    invoke-virtual {v13}, Lvx;->j()I

    move-result v8

    .line 159
    move/from16 v25, v3

    invoke-virtual {v13}, Lvx;->h()I

    move-result v3

    if-eq v8, v14, :cond_61

    .line 160
    invoke-virtual {v13, v8}, Lvx;->D(I)V

    const/4 v8, 0x2

    if-ne v4, v8, :cond_60

    .line 161
    invoke-virtual {v13}, Lvx;->i()I

    move-result v8

    if-le v8, v9, :cond_60

    .line 162
    invoke-virtual {v13}, Lvx;->i()I

    move-result v8

    .line 163
    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lvx;->L(I)Lvw;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lvw;->b()I

    move-result v22

    add-int v8, v8, v22

    .line 164
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3f

    .line 169
    :cond_60
    const/4 v14, 0x4

    .line 164
    :goto_3f
    const/16 v25, 0x1

    goto :goto_40

    .line 169
    :cond_61
    const/4 v14, 0x4

    .line 164
    :goto_40
    if-eq v3, v15, :cond_63

    .line 165
    invoke-virtual {v13, v3}, Lvx;->y(I)V

    const/4 v3, 0x2

    if-ne v6, v3, :cond_62

    .line 166
    invoke-virtual {v13}, Lvx;->g()I

    move-result v8

    if-le v8, v10, :cond_62

    .line 167
    invoke-virtual {v13}, Lvx;->g()I

    move-result v8

    .line 168
    const/4 v15, 0x5

    invoke-virtual {v13, v15}, Lvx;->L(I)Lvw;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lvw;->b()I

    move-result v17

    add-int v8, v8, v17

    .line 169
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v10, v8

    goto :goto_41

    :cond_62
    const/4 v15, 0x5

    :goto_41
    const/16 v25, 0x1

    goto :goto_42

    :cond_63
    const/4 v3, 0x2

    const/4 v15, 0x5

    :goto_42
    iget-boolean v8, v13, Lvx;->F:Z

    if-eqz v8, :cond_64

    iget v8, v13, Lvx;->aa:I

    if-eq v2, v8, :cond_64

    const/4 v8, 0x1

    goto :goto_43

    .line 153
    :cond_64
    move/from16 v8, v25

    :goto_43
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v21

    move-object/from16 v3, v24

    goto/16 :goto_3a

    .line 169
    :cond_65
    move/from16 v21, v2

    move-object/from16 v24, v3

    const/4 v3, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x5

    if-eqz v8, :cond_66

    add-int/lit8 v0, v0, 0x1

    .line 124
    move-object/from16 v2, v24

    invoke-virtual {v1, v2, v0, v5, v11}, Lwg;->b(Lvy;III)V

    move-object v3, v2

    move/from16 v2, v21

    const/4 v8, 0x0

    goto/16 :goto_39

    .line 169
    :cond_66
    move-object/from16 v2, v24

    goto :goto_44

    .line 151
    :cond_67
    move-object v2, v3

    goto :goto_44

    .line 124
    :cond_68
    move/from16 v19, v0

    move-object v2, v3

    .line 41
    :goto_44
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lvy;->U(I)V

    :cond_69
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    .line 170
    invoke-virtual {v1}, Lvx;->j()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    invoke-virtual {v2}, Lvx;->h()I

    move-result v2

    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    iget-boolean v4, v3, Lvy;->ay:Z

    iget-boolean v3, v3, Lvy;->az:Z

    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Lwz;

    .line 171
    iget v6, v5, Lwz;->e:I

    .line 172
    iget v5, v5, Lwz;->d:I

    add-int/2addr v1, v5

    .line 173
    move/from16 v5, p1

    const/4 v7, 0x0

    invoke-static {v1, v5, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v1

    add-int/2addr v2, v6

    .line 174
    move/from16 v5, p2

    invoke-static {v2, v5, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v2

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const v6, 0xffffff

    and-int/2addr v1, v6

    .line 175
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    and-int/2addr v2, v6

    .line 176
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x1000000

    if-eqz v4, :cond_6a

    or-int/2addr v1, v5

    :cond_6a
    if-eqz v3, :cond_6b

    or-int/2addr v2, v5

    .line 177
    :cond_6b
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lvx;

    move-result-object v0

    .line 3
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    instance-of v0, v0, Lwa;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lwy;

    new-instance v1, Lwa;

    .line 6
    invoke-direct {v1}, Lwa;-><init>()V

    iput-object v1, v0, Lwy;->aq:Lvx;

    .line 7
    iput-boolean v2, v0, Lwy;->ac:Z

    .line 8
    iget-object v1, v0, Lwy;->aq:Lvx;

    check-cast v1, Lwa;

    iget v0, v0, Lwy;->U:I

    invoke-virtual {v1, v0}, Lwa;->c(I)V

    .line 9
    :cond_0
    instance-of v0, p1, Lww;

    if-eqz v0, :cond_1

    .line 10
    move-object v0, p1

    check-cast v0, Lww;

    .line 11
    invoke-virtual {v0}, Lww;->f()V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lwy;

    .line 13
    iput-boolean v2, v1, Lwy;->ad:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lvx;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lvy;

    .line 4
    invoke-virtual {v1, v0}, Lwe;->Y(Lvx;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Z

    return-void
.end method

.method public final requestLayout()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->f()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final setId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
