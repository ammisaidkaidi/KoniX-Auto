.class public final Lnj;
.super Landroid/widget/CheckBox;
.source "PG"


# instance fields
.field private final a:Lnl;

.field private final b:Lnh;

.field private final c:Lom;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lsj;->a(Landroid/content/Context;)V

    const v0, 0x7f04007b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Lnj;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lsh;->d(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lnl;

    invoke-direct {p1, p0}, Lnl;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lnj;->a:Lnl;

    .line 3
    invoke-virtual {p1, p2, v0}, Lnl;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Lnh;

    .line 4
    invoke-direct {p1, p0}, Lnh;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lnj;->b:Lnh;

    .line 5
    invoke-virtual {p1, p2, v0}, Lnh;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Lom;

    .line 6
    invoke-direct {p1, p0}, Lom;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lnj;->c:Lom;

    .line 7
    invoke-virtual {p1, p2, v0}, Lom;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    iget-object v0, p0, Lnj;->b:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnh;->a()V

    :cond_0
    iget-object v0, p0, Lnj;->c:Lom;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lom;->a()V

    :cond_1
    return-void
.end method

.method public final getCompoundPaddingLeft()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnj;->b:Lnh;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lnh;->e()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lnj;->b:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lnh;->c(I)V

    :cond_0
    return-void
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lkj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnj;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnj;->a:Lnl;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lnl;->b()V

    :cond_0
    return-void
.end method
