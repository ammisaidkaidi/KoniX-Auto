.class public Lnr;
.super Landroid/widget/ImageView;
.source "PG"


# instance fields
.field private final a:Lnh;

.field private final b:Lnq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lsj;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Lnr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lsh;->d(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lnh;

    .line 4
    invoke-direct {p1, p0}, Lnh;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lnr;->a:Lnh;

    .line 5
    invoke-virtual {p1, p2, p3}, Lnh;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Lnq;

    invoke-direct {p1, p0}, Lnq;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lnr;->b:Lnq;

    .line 6
    invoke-virtual {p1, p2, p3}, Lnq;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lnr;->a:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnh;->a()V

    :cond_0
    iget-object v0, p0, Lnr;->b:Lnq;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lnq;->a()V

    :cond_1
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnr;->b:Lnq;

    invoke-virtual {v0}, Lnq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnr;->a:Lnh;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lnh;->e()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lnr;->a:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lnh;->c(I)V

    :cond_0
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lnr;->b:Lnq;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lnq;->a()V

    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnr;->b:Lnq;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lnq;->a()V

    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnr;->b:Lnq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnq;->c(I)V

    :cond_0
    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lnr;->b:Lnq;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lnq;->a()V

    :cond_0
    return-void
.end method
