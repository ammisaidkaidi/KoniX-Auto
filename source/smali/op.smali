.class public final Lop;
.super Landroid/widget/ToggleButton;
.source "PG"


# instance fields
.field private final a:Lnh;

.field private final b:Lom;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Lop;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lsh;->d(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lnh;

    .line 3
    invoke-direct {p1, p0}, Lnh;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lop;->a:Lnh;

    .line 4
    invoke-virtual {p1, p2, v0}, Lnh;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Lom;

    .line 5
    invoke-direct {p1, p0}, Lom;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lop;->b:Lom;

    .line 6
    invoke-virtual {p1, p2, v0}, Lom;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    iget-object v0, p0, Lop;->a:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnh;->a()V

    :cond_0
    iget-object v0, p0, Lop;->b:Lom;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lom;->a()V

    :cond_1
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lop;->a:Lnh;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lnh;->e()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lop;->a:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lnh;->c(I)V

    :cond_0
    return-void
.end method
