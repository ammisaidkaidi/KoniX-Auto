.class public Lrn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Landroid/support/v7/widget/RecyclerView;

.field public c:Lra;

.field public d:Z

.field public e:Z

.field public f:Landroid/view/View;

.field public g:Z

.field protected final h:Landroid/view/animation/LinearInterpolator;

.field protected final i:Landroid/view/animation/DecelerateInterpolator;

.field protected j:Landroid/graphics/PointF;

.field protected k:I

.field protected l:I

.field private final m:Lrl;

.field private final n:Landroid/util/DisplayMetrics;

.field private o:Z

.field private p:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lrn;->a:I

    new-instance v0, Lrl;

    invoke-direct {v0}, Lrl;-><init>()V

    iput-object v0, p0, Lrn;->m:Lrl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lrn;->a:I

    new-instance v0, Lrl;

    invoke-direct {v0}, Lrl;-><init>()V

    iput-object v0, p0, Lrn;->m:Lrl;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lrn;->h:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lrn;->i:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrn;->o:Z

    iput v0, p0, Lrn;->k:I

    iput v0, p0, Lrn;->l:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lrn;->n:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static h(IIIII)I
    .locals 0

    packed-switch p4, :pswitch_data_0

    sub-int/2addr p3, p1

    return p3

    :pswitch_0
    sub-int/2addr p2, p0

    if-lez p2, :cond_0

    return p2

    :cond_0
    sub-int/2addr p3, p1

    if-gez p3, :cond_1

    return p3

    :cond_1
    const/4 p0, 0x0

    return p0

    :pswitch_1
    sub-int/2addr p2, p0

    return p2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final i(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lrr;->getLayoutPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static k(II)I
    .locals 0

    sub-int p1, p0, p1

    mul-int p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public final a(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object v0, p0, Lrn;->c:Lra;

    instance-of v1, v0, Lrm;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lrm;

    .line 3
    invoke-interface {v0, p1}, Lrm;->K(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    const-class p1, Lrm;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method final b(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lrn;->b:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lrn;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lrn;->c()V

    :cond_1
    iget-boolean v1, p0, Lrn;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lrn;->f:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lrn;->c:Lra;

    if-eqz v1, :cond_3

    iget v1, p0, Lrn;->a:I

    .line 2
    invoke-virtual {p0, v1}, Lrn;->a(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_2

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_3

    .line 4
    :cond_2
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 5
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 4
    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v7/widget/RecyclerView;->V(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrn;->d:Z

    iget-object v1, p0, Lrn;->f:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 7
    invoke-static {v1}, Lrn;->i(Landroid/view/View;)I

    move-result v1

    iget v4, p0, Lrn;->a:I

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lrn;->f:Landroid/view/View;

    .line 8
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-object v2, p0, Lrn;->m:Lrl;

    invoke-virtual {p0, v1, v2}, Lrn;->j(Landroid/view/View;Lrl;)V

    iget-object v1, p0, Lrn;->m:Lrl;

    .line 9
    invoke-virtual {v1, v0}, Lrl;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 10
    invoke-virtual {p0}, Lrn;->c()V

    goto :goto_0

    .line 23
    :cond_4
    nop

    .line 11
    const-string v1, "RecyclerView"

    const-string v4, "Passed over target position while smooth scrolling."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lrn;->f:Landroid/view/View;

    .line 10
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lrn;->e:Z

    if-eqz v1, :cond_a

    .line 12
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-object v1, p0, Lrn;->m:Lrl;

    iget-object v2, p0, Lrn;->b:Landroid/support/v7/widget/RecyclerView;

    .line 13
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    invoke-virtual {v2}, Lra;->ak()I

    move-result v2

    if-nez v2, :cond_6

    .line 14
    invoke-virtual {p0}, Lrn;->c()V

    goto/16 :goto_2

    .line 26
    :cond_6
    iget v2, p0, Lrn;->k:I

    invoke-static {v2, p1}, Lrn;->k(II)I

    move-result p1

    iput p1, p0, Lrn;->k:I

    iget p1, p0, Lrn;->l:I

    invoke-static {p1, p2}, Lrn;->k(II)I

    move-result p1

    iput p1, p0, Lrn;->l:I

    iget p2, p0, Lrn;->k:I

    if-nez p2, :cond_9

    if-nez p1, :cond_9

    iget p1, p0, Lrn;->a:I

    .line 15
    invoke-virtual {p0, p1}, Lrn;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 16
    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p2, v3

    if-nez p2, :cond_7

    iget p2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, v3

    if-nez p2, :cond_7

    goto :goto_1

    .line 17
    :cond_7
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float p2, p2, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    add-float/2addr p2, v2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 18
    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 19
    iget v2, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, p2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    iput-object p1, p0, Lrn;->j:Landroid/graphics/PointF;

    .line 20
    iget p2, p1, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float p2, p2, v2

    float-to-int p2, p2

    iput p2, p0, Lrn;->k:I

    .line 21
    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    iput p1, p0, Lrn;->l:I

    const/16 p1, 0x2710

    .line 22
    invoke-virtual {p0, p1}, Lrn;->f(I)I

    move-result p1

    iget p2, p0, Lrn;->k:I

    int-to-float p2, p2

    const v2, 0x3f99999a    # 1.2f

    mul-float p2, p2, v2

    float-to-int p2, p2

    iget v3, p0, Lrn;->l:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    int-to-float p1, p1

    mul-float p1, p1, v2

    float-to-int p1, p1

    iget-object v2, p0, Lrn;->h:Landroid/view/animation/LinearInterpolator;

    .line 23
    invoke-virtual {v1, p2, v3, p1, v2}, Lrl;->b(IIILandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 16
    :cond_8
    :goto_1
    iget p1, p0, Lrn;->a:I

    iput p1, v1, Lrl;->a:I

    .line 24
    invoke-virtual {p0}, Lrn;->c()V

    .line 14
    :cond_9
    :goto_2
    iget-object p1, p0, Lrn;->m:Lrl;

    iget p2, p1, Lrl;->a:I

    .line 25
    invoke-virtual {p1, v0}, Lrl;->a(Landroid/support/v7/widget/RecyclerView;)V

    if-ltz p2, :cond_a

    iget-boolean p1, p0, Lrn;->e:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lrn;->d:Z

    .line 26
    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView;->E:Lrq;

    invoke-virtual {p1}, Lrq;->a()V

    return-void

    .line 23
    :cond_a
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lrn;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrn;->e:Z

    iput v0, p0, Lrn;->l:I

    iput v0, p0, Lrn;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lrn;->j:Landroid/graphics/PointF;

    iget-object v2, p0, Lrn;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    const/4 v3, -0x1

    iput v3, v2, Lro;->a:I

    iput-object v1, p0, Lrn;->f:Landroid/view/View;

    iput v3, p0, Lrn;->a:I

    iput-boolean v0, p0, Lrn;->d:Z

    iget-object v0, p0, Lrn;->c:Lra;

    iget-object v2, v0, Lra;->u:Lrn;

    if-ne v2, p0, :cond_1

    iput-object v1, v0, Lra;->u:Lrn;

    :cond_1
    iput-object v1, p0, Lrn;->c:Lra;

    iput-object v1, p0, Lrn;->b:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public final d(Landroid/view/View;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lrn;->c:Lra;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lra;->X()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lrb;

    .line 2
    invoke-static {p1}, Lra;->bf(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lrb;->topMargin:I

    sub-int/2addr v2, v3

    .line 3
    invoke-static {p1}, Lra;->ba(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Lrb;->bottomMargin:I

    add-int/2addr p1, v1

    .line 4
    invoke-virtual {v0}, Lra;->at()I

    move-result v1

    iget v3, v0, Lra;->E:I

    .line 5
    invoke-virtual {v0}, Lra;->aq()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v2, p1, v1, v3, p2}, Lrn;->h(IIIII)I

    move-result p1

    return p1

    .line 1
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected e(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lrn;->f(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected f(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Lrn;->o:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x41c80000    # 25.0f

    iget-object v1, p0, Lrn;->n:Landroid/util/DisplayMetrics;

    .line 2
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lrn;->p:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrn;->o:Z

    :cond_0
    iget v0, p0, Lrn;->p:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected g()I
    .locals 3

    .line 1
    iget-object v0, p0, Lrn;->j:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrn;->j:Landroid/graphics/PointF;

    .line 2
    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    nop

    .line 1
    :goto_0
    return v1
.end method

.method protected j(Landroid/view/View;Lrl;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lrn;->j:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lrn;->j:Landroid/graphics/PointF;

    .line 2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lrn;->c:Lra;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lra;->W()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lrb;

    .line 4
    invoke-static {p1}, Lra;->bb(Landroid/view/View;)I

    move-result v3

    iget v4, v1, Lrb;->leftMargin:I

    sub-int/2addr v3, v4

    .line 5
    invoke-static {p1}, Lra;->be(Landroid/view/View;)I

    move-result v4

    iget v1, v1, Lrb;->rightMargin:I

    add-int/2addr v4, v1

    .line 6
    invoke-virtual {v2}, Lra;->ar()I

    move-result v1

    iget v5, v2, Lra;->D:I

    .line 7
    invoke-virtual {v2}, Lra;->as()I

    move-result v2

    sub-int/2addr v5, v2

    invoke-static {v3, v4, v1, v5, v0}, Lrn;->h(IIIII)I

    move-result v1

    goto :goto_1

    :cond_4
    nop

    .line 8
    :goto_1
    invoke-virtual {p0}, Lrn;->g()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lrn;->d(Landroid/view/View;I)I

    move-result p1

    mul-int v0, v1, v1

    mul-int v2, p1, p1

    add-int/2addr v0, v2

    int-to-double v2, v0

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 10
    invoke-virtual {p0, v0}, Lrn;->e(I)I

    move-result v0

    if-lez v0, :cond_5

    neg-int v1, v1

    neg-int p1, p1

    iget-object v2, p0, Lrn;->i:Landroid/view/animation/DecelerateInterpolator;

    .line 11
    invoke-virtual {p2, v1, p1, v0, v2}, Lrl;->b(IIILandroid/view/animation/Interpolator;)V

    :cond_5
    return-void
.end method
