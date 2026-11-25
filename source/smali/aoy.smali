.class public final Laoy;
.super Lrn;
.source "PG"


# instance fields
.field final m:F

.field final n:F

.field final o:F

.field final p:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lrn;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bd

    invoke-static {v0, v1}, Laro;->a(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Laoy;->m:F

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bb

    invoke-static {v1, v2}, Laro;->a(Landroid/content/res/Resources;I)F

    move-result v1

    iput v1, p0, Laoy;->n:F

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ba

    invoke-static {v2, v3}, Laro;->a(Landroid/content/res/Resources;I)F

    move-result v2

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Laoy;->p:Landroid/view/animation/Interpolator;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Laoy;->o:F

    return-void
.end method


# virtual methods
.method protected final e(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lrn;->f(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Laoy;->n:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected final f(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Laoy;->o:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected final g()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected final j(Landroid/view/View;Lrl;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lrn;->d(Landroid/view/View;I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lrn;->e(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    neg-int p1, p1

    iget-object v2, p0, Laoy;->p:Landroid/view/animation/Interpolator;

    .line 3
    invoke-virtual {p2, v1, p1, v0, v2}, Lrl;->b(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
