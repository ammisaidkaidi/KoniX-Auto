.class final Lnl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/widget/CompoundButton;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl;->a:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method final a(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lnl;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lki;->l:[I

    invoke-static {v0, p1, v1, p2}, Lsm;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lsm;

    move-result-object v0

    iget-object v1, p0, Lnl;->a:Landroid/widget/CompoundButton;

    .line 2
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lki;->l:[I

    iget-object v5, v0, Lsm;->b:Landroid/content/res/TypedArray;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lhs;->L(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 3
    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {v0, p1}, Lsm;->p(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v0, p1, v1}, Lsm;->f(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p2, p0, Lnl;->a:Landroid/widget/CompoundButton;

    .line 5
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lkj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 18
    :cond_0
    nop

    .line 7
    :try_start_2
    invoke-virtual {v0, v1}, Lsm;->p(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v0, v1, v1}, Lsm;->f(II)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lnl;->a:Landroid/widget/CompoundButton;

    .line 9
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lkj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_1
    :goto_0
    nop

    .line 11
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lsm;->p(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnl;->a:Landroid/widget/CompoundButton;

    .line 12
    invoke-virtual {v0, p1}, Lsm;->g(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    nop

    .line 14
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lsm;->p(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lnl;->a:Landroid/widget/CompoundButton;

    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, p1, v1}, Lsm;->c(II)I

    move-result p1

    const/4 v1, 0x0

    .line 16
    invoke-static {p1, v1}, Lpc;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :cond_3
    invoke-virtual {v0}, Lsm;->n()V

    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {v0}, Lsm;->n()V

    .line 19
    throw p1
.end method

.method final b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnl;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnl;->b:Z

    iget-object v0, p0, Lnl;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    return-void
.end method
