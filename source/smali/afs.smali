.class final Lafs;
.super Lafu;
.source "PG"


# instance fields
.field public a:[I

.field b:Ldu;

.field c:F

.field d:Ldu;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Paint$Cap;

.field k:Landroid/graphics/Paint$Join;

.field l:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lafu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lafs;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lafs;->e:F

    iput v1, p0, Lafs;->f:F

    iput v0, p0, Lafs;->g:F

    iput v1, p0, Lafs;->h:F

    iput v0, p0, Lafs;->i:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lafs;->j:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lafs;->k:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lafs;->l:F

    return-void
.end method

.method public constructor <init>(Lafs;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lafu;-><init>(Lafu;)V

    const/4 v0, 0x0

    iput v0, p0, Lafs;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lafs;->e:F

    iput v1, p0, Lafs;->f:F

    iput v0, p0, Lafs;->g:F

    iput v1, p0, Lafs;->h:F

    iput v0, p0, Lafs;->i:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lafs;->j:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lafs;->k:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lafs;->l:F

    .line 3
    iget-object v0, p1, Lafs;->a:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lafs;->a:[I

    .line 4
    iget-object v0, p1, Lafs;->b:Ldu;

    iput-object v0, p0, Lafs;->b:Ldu;

    .line 5
    iget v0, p1, Lafs;->c:F

    iput v0, p0, Lafs;->c:F

    .line 6
    iget v0, p1, Lafs;->e:F

    iput v0, p0, Lafs;->e:F

    .line 7
    iget-object v0, p1, Lafs;->d:Ldu;

    iput-object v0, p0, Lafs;->d:Ldu;

    .line 8
    iget v0, p1, Lafs;->o:I

    iput v0, p0, Lafs;->o:I

    .line 9
    iget v0, p1, Lafs;->f:F

    iput v0, p0, Lafs;->f:F

    .line 10
    iget v0, p1, Lafs;->g:F

    iput v0, p0, Lafs;->g:F

    .line 11
    iget v0, p1, Lafs;->h:F

    iput v0, p0, Lafs;->h:F

    .line 12
    iget v0, p1, Lafs;->i:F

    iput v0, p0, Lafs;->i:F

    .line 13
    iget-object v0, p1, Lafs;->j:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lafs;->j:Landroid/graphics/Paint$Cap;

    .line 14
    iget-object v0, p1, Lafs;->k:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lafs;->k:Landroid/graphics/Paint$Join;

    .line 15
    iget p1, p1, Lafs;->l:F

    iput p1, p0, Lafs;->l:F

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lafs;->d:Ldu;

    invoke-virtual {v0}, Ldu;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lafs;->b:Ldu;

    invoke-virtual {v0}, Ldu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lafs;->d:Ldu;

    invoke-virtual {v0, p1}, Ldu;->d([I)Z

    move-result v0

    iget-object v1, p0, Lafs;->b:Ldu;

    .line 2
    invoke-virtual {v1, p1}, Ldu;->d([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method getFillAlpha()F
    .locals 1

    iget v0, p0, Lafs;->f:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    iget-object v0, p0, Lafs;->d:Ldu;

    iget v0, v0, Ldu;->b:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    iget v0, p0, Lafs;->e:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    iget-object v0, p0, Lafs;->b:Ldu;

    iget v0, v0, Ldu;->b:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    iget v0, p0, Lafs;->c:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    iget v0, p0, Lafs;->h:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    iget v0, p0, Lafs;->i:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    iget v0, p0, Lafs;->g:F

    return v0
.end method

.method setFillAlpha(F)V
    .locals 0

    iput p1, p0, Lafs;->f:F

    return-void
.end method

.method setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lafs;->d:Ldu;

    iput p1, v0, Ldu;->b:I

    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Lafs;->e:F

    return-void
.end method

.method setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lafs;->b:Ldu;

    iput p1, v0, Ldu;->b:I

    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lafs;->c:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Lafs;->h:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Lafs;->i:F

    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Lafs;->g:F

    return-void
.end method
