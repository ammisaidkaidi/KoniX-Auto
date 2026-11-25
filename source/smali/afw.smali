.class final Lafw;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "PG"


# instance fields
.field a:I

.field b:Lafv;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lafw;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Lafy;->b:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lafw;->d:Landroid/graphics/PorterDuff$Mode;

    .line 2
    new-instance v0, Lafv;

    invoke-direct {v0}, Lafv;-><init>()V

    iput-object v0, p0, Lafw;->b:Lafv;

    return-void
.end method

.method public constructor <init>(Lafw;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lafw;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Lafy;->b:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lafw;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    iget v0, p1, Lafw;->a:I

    iput v0, p0, Lafw;->a:I

    .line 4
    new-instance v0, Lafv;

    iget-object v1, p1, Lafw;->b:Lafv;

    invoke-direct {v0, v1}, Lafv;-><init>(Lafv;)V

    iput-object v0, p0, Lafw;->b:Lafv;

    iget-object v0, p1, Lafw;->b:Lafv;

    .line 5
    iget-object v0, v0, Lafv;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lafw;->b:Lafv;

    new-instance v2, Landroid/graphics/Paint;

    .line 6
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Lafv;->c:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p1, Lafw;->b:Lafv;

    .line 7
    iget-object v0, v0, Lafv;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lafw;->b:Lafv;

    new-instance v2, Landroid/graphics/Paint;

    .line 8
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Lafv;->b:Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p1, Lafw;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lafw;->c:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lafw;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lafw;->d:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p1, p1, Lafw;->e:Z

    iput-boolean p1, p0, Lafw;->e:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lafw;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v0, p0, Lafw;->f:Landroid/graphics/Bitmap;

    .line 2
    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lafw;->b:Lafv;

    iget-object v3, v2, Lafv;->d:Laft;

    sget-object v4, Lafv;->a:Landroid/graphics/Matrix;

    .line 3
    move v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lafv;->a(Laft;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lafw;->b:Lafv;

    iget-object v1, v0, Lafv;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, v0, Lafv;->d:Laft;

    invoke-virtual {v1}, Laga;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lafv;->k:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, v0, Lafv;->k:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lafw;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Lafy;

    invoke-direct {v0, p0}, Lafy;-><init>(Lafw;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    new-instance p1, Lafy;

    invoke-direct {p1, p0}, Lafy;-><init>(Lafw;)V

    return-object p1
.end method
