.class final Lnh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lnn;

.field private c:I

.field private d:Lsk;

.field private e:Lsk;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnh;->c:I

    iput-object p1, p0, Lnh;->a:Landroid/view/View;

    invoke-static {}, Lnn;->d()Lnn;

    move-result-object p1

    iput-object p1, p0, Lnh;->b:Lnn;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnh;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lnh;->d:Lsk;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnh;->e:Lsk;

    if-nez v1, :cond_0

    new-instance v1, Lsk;

    invoke-direct {v1}, Lsk;-><init>()V

    iput-object v1, p0, Lnh;->e:Lsk;

    :cond_0
    iget-object v1, p0, Lnh;->e:Lsk;

    const/4 v2, 0x0

    iput-object v2, v1, Lsk;->a:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lsk;->d:Z

    iput-object v2, v1, Lsk;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v3, v1, Lsk;->c:Z

    iget-object v2, p0, Lnh;->a:Landroid/view/View;

    .line 2
    invoke-static {v2}, Lhs;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    iput-boolean v3, v1, Lsk;->d:Z

    .line 4
    iput-object v2, v1, Lsk;->a:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v2, p0, Lnh;->a:Landroid/view/View;

    .line 5
    invoke-static {v2}, Lhs;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    iput-boolean v3, v1, Lsk;->c:Z

    .line 7
    iput-object v2, v1, Lsk;->b:Landroid/graphics/PorterDuff$Mode;

    .line 8
    :cond_2
    iget-boolean v2, v1, Lsk;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lsk;->c:Z

    if-nez v2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v2, p0, Lnh;->a:Landroid/view/View;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Lrv;->h(Landroid/graphics/drawable/Drawable;Lsk;[I)V

    return-void

    .line 8
    :cond_4
    :goto_0
    iget-object v1, p0, Lnh;->d:Lsk;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lnh;->a:Landroid/view/View;

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 10
    invoke-static {v0, v1, v2}, Lrv;->h(Landroid/graphics/drawable/Drawable;Lsk;[I)V

    return-void

    .line 12
    :cond_5
    return-void
.end method

.method final b(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lnh;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lki;->y:[I

    invoke-static {v0, p1, v1, p2}, Lsm;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lsm;

    move-result-object v0

    iget-object v1, p0, Lnh;->a:Landroid/view/View;

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lki;->y:[I

    iget-object v5, v0, Lsm;->b:Landroid/content/res/TypedArray;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lhs;->L(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 3
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lsm;->p(I)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v0, p1, v1}, Lsm;->f(II)I

    move-result p1

    iput p1, p0, Lnh;->c:I

    iget-object p1, p0, Lnh;->b:Lnn;

    iget-object p2, p0, Lnh;->a:Landroid/view/View;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p0, Lnh;->c:I

    invoke-virtual {p1, p2, v2}, Lnn;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lnh;->d(Landroid/content/res/ColorStateList;)V

    :cond_0
    nop

    .line 7
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lsm;->p(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnh;->a:Landroid/view/View;

    .line 8
    invoke-virtual {v0, p1}, Lsm;->g(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 9
    invoke-static {p2, p1}, Lhs;->w(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    nop

    .line 10
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lsm;->p(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnh;->a:Landroid/view/View;

    .line 11
    invoke-virtual {v0, p1, v1}, Lsm;->c(II)I

    move-result p1

    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v1}, Lpc;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 13
    invoke-static {p2, p1}, Lhs;->x(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Lsm;->n()V

    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {v0}, Lsm;->n()V

    .line 15
    throw p1
.end method

.method final c(I)V
    .locals 2

    .line 1
    iput p1, p0, Lnh;->c:I

    iget-object v0, p0, Lnh;->b:Lnn;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnh;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnn;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lnh;->d(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, Lnh;->a()V

    return-void
.end method

.method final d(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lnh;->d:Lsk;

    if-nez v0, :cond_0

    new-instance v0, Lsk;

    invoke-direct {v0}, Lsk;-><init>()V

    iput-object v0, p0, Lnh;->d:Lsk;

    :cond_0
    iget-object v0, p0, Lnh;->d:Lsk;

    iput-object p1, v0, Lsk;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, v0, Lsk;->d:Z

    goto :goto_0

    .line 3
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lnh;->d:Lsk;

    :goto_0
    invoke-virtual {p0}, Lnh;->a()V

    return-void
.end method

.method final e()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    iput v0, p0, Lnh;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnh;->d(Landroid/content/res/ColorStateList;)V

    .line 2
    invoke-virtual {p0}, Lnh;->a()V

    return-void
.end method
