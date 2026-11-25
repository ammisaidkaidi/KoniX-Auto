.class public final Lhl;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ldfg;I[BIILddr;Ldca;)I
    .locals 2

    .line 1
    invoke-static {p0, p2, p3, p4, p6}, Lhl;->z(Ldfg;[BIILdca;)I

    move-result p3

    iget-object v0, p6, Ldca;->c:Ljava/lang/Object;

    .line 2
    invoke-interface {p5, v0}, Lddr;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    .line 3
    invoke-static {p2, p3, p6}, Lhl;->F([BILdca;)I

    move-result v0

    iget v1, p6, Ldca;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lhl;->z(Ldfg;[BIILdca;)I

    move-result p3

    iget-object v0, p6, Ldca;->c:Ljava/lang/Object;

    .line 5
    invoke-interface {p5, v0}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    return p3
.end method

.method public static B([BILddr;Ldca;)I
    .locals 2

    .line 1
    check-cast p2, Lddl;

    .line 2
    invoke-static {p0, p1, p3}, Lhl;->F([BILdca;)I

    move-result p1

    iget v0, p3, Ldca;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 3
    invoke-static {p0, p1, p3}, Lhl;->F([BILdca;)I

    move-result p1

    iget v1, p3, Ldca;->a:I

    .line 4
    invoke-virtual {p2, v1}, Lddl;->g(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 5
    return p1

    :cond_1
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static C([BILdca;)I
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lhl;->F([BILdca;)I

    move-result p1

    iget v0, p2, Ldca;->a:I

    if-ltz v0, :cond_1

    .line 2
    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Ldca;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 3
    sget-object v2, Ldds;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Ldca;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 2
    :cond_1
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object p0

    throw p0
.end method

.method public static D([BILdca;)I
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lhl;->F([BILdca;)I

    move-result p1

    iget v0, p2, Ldca;->a:I

    if-ltz v0, :cond_1

    .line 2
    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Ldca;->c:Ljava/lang/Object;

    return p1

    .line 3
    :cond_0
    invoke-static {p0, p1, v0}, Ldgb;->f([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Ldca;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 2
    :cond_1
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object p0

    throw p0
.end method

.method public static E(I[BIILdfr;Ldca;)I
    .locals 9

    .line 1
    invoke-static {p0}, Ldge;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Ldge;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 16
    :pswitch_0
    invoke-static {}, Lddu;->c()Lddu;

    move-result-object p0

    throw p0

    .line 2
    :pswitch_1
    invoke-static {p1, p2}, Lhl;->x([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Ldfr;->d(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1
    :pswitch_2
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    invoke-static {}, Ldfr;->b()Ldfr;

    move-result-object v7

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 3
    invoke-static {p1, p2, p5}, Lhl;->F([BILdca;)I

    move-result v3

    iget p2, p5, Ldca;->a:I

    if-ne p2, v0, :cond_0

    move v1, p2

    move p2, v3

    goto :goto_1

    .line 4
    :cond_0
    move v1, p2

    move-object v2, p1

    move v4, p3

    move-object v5, v7

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lhl;->E(I[BIILdfr;Ldca;)I

    move-result v1

    move v8, v1

    move v1, p2

    move p2, v8

    goto :goto_0

    :cond_1
    nop

    .line 3
    :goto_1
    if-gt p2, p3, :cond_2

    if-ne v1, v0, :cond_2

    .line 6
    invoke-virtual {p4, p0, v7}, Ldfr;->d(ILjava/lang/Object;)V

    return p2

    .line 5
    :cond_2
    invoke-static {}, Lddu;->g()Lddu;

    move-result-object p0

    throw p0

    .line 7
    :pswitch_3
    invoke-static {p1, p2, p5}, Lhl;->F([BILdca;)I

    move-result p2

    iget p3, p5, Ldca;->a:I

    if-ltz p3, :cond_5

    .line 9
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_4

    .line 10
    if-nez p3, :cond_3

    .line 11
    sget-object p1, Ldcl;->b:Ldcl;

    invoke-virtual {p4, p0, p1}, Ldfr;->d(ILjava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {p1, p2, p3}, Ldcl;->u([BII)Ldcl;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Ldfr;->d(ILjava/lang/Object;)V

    .line 11
    :goto_2
    add-int/2addr p2, p3

    return p2

    .line 10
    :cond_4
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object p0

    throw p0

    .line 8
    :cond_5
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object p0

    throw p0

    .line 13
    :pswitch_4
    invoke-static {p1, p2}, Lhl;->K([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Ldfr;->d(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 14
    :pswitch_5
    invoke-static {p1, p2, p5}, Lhl;->I([BILdca;)I

    move-result p1

    iget-wide p2, p5, Ldca;->b:J

    .line 15
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Ldfr;->d(ILjava/lang/Object;)V

    return p1

    .line 1
    :cond_6
    invoke-static {}, Lddu;->c()Lddu;

    move-result-object p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static F([BILdca;)I
    .locals 1

    .line 1
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Ldca;->a:I

    return v0

    .line 2
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lhl;->G(I[BILdca;)I

    move-result p0

    return p0
.end method

.method public static G(I[BILdca;)I
    .locals 1

    .line 1
    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Ldca;->a:I

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 2
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Ldca;->a:I

    return p2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 3
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Ldca;->a:I

    return v0

    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 4
    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Ldca;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 5
    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    iput p0, p3, Ldca;->a:I

    return v0
.end method

.method public static H(I[BIILddr;Ldca;)I
    .locals 2

    .line 1
    check-cast p4, Lddl;

    .line 2
    invoke-static {p1, p2, p5}, Lhl;->F([BILdca;)I

    move-result p2

    iget v0, p5, Ldca;->a:I

    .line 3
    invoke-virtual {p4, v0}, Lddl;->g(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    invoke-static {p1, p2, p5}, Lhl;->F([BILdca;)I

    move-result v0

    iget v1, p5, Ldca;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p1, v0, p5}, Lhl;->F([BILdca;)I

    move-result p2

    iget v0, p5, Ldca;->a:I

    .line 6
    invoke-virtual {p4, v0}, Lddl;->g(I)V

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    return p2
.end method

.method public static I([BILdca;)I
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 2
    aget-byte v0, p0, v0

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_0
    if-gez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 3
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    :cond_0
    iput-wide v1, p2, Ldca;->b:J

    return p1

    :cond_1
    iput-wide v1, p2, Ldca;->b:J

    return v0
.end method

.method public static J(I[BIILdca;)I
    .locals 1

    .line 1
    invoke-static {p0}, Ldge;->a(I)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Ldge;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 7
    :pswitch_0
    invoke-static {}, Lddu;->c()Lddu;

    move-result-object p0

    throw p0

    .line 3
    :pswitch_1
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1
    :pswitch_2
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2
    invoke-static {p1, p2, p4}, Lhl;->F([BILdca;)I

    move-result p2

    iget v0, p4, Ldca;->a:I

    if-ne v0, p0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v0, p1, p2, p3, p4}, Lhl;->J(I[BIILdca;)I

    move-result p2

    goto :goto_0

    :cond_1
    nop

    .line 2
    :goto_1
    if-gt p2, p3, :cond_2

    if-ne v0, p0, :cond_2

    .line 4
    return p2

    :cond_2
    invoke-static {}, Lddu;->g()Lddu;

    move-result-object p0

    throw p0

    .line 5
    :pswitch_3
    invoke-static {p1, p2, p4}, Lhl;->F([BILdca;)I

    move-result p0

    iget p1, p4, Ldca;->a:I

    add-int/2addr p0, p1

    return p0

    :pswitch_4
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 6
    :pswitch_5
    invoke-static {p1, p2, p4}, Lhl;->I([BILdca;)I

    move-result p0

    return p0

    .line 1
    :cond_3
    invoke-static {}, Lddu;->c()Lddu;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static K([BI)J
    .locals 7

    .line 1
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static L(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/view/View;Lih;Landroid/graphics/Rect;)Lih;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lih;->m()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3
    invoke-static {p1, p0}, Lih;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lih;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method

.method static d(Landroid/view/WindowInsets;Landroid/view/View;)V
    .locals 1

    .line 1
    const v0, 0x7f0901c0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p0}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method static e(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static f(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method static g(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method static h(Landroid/view/View;Lgx;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const v0, 0x7f0901b8

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    :cond_0
    new-instance v0, Lhk;

    invoke-direct {v0, p0, p1}, Lhk;-><init>(Landroid/view/View;Lgx;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static i(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    return-void
.end method

.method public static final j(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 2
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 4
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-gt p0, v2, :cond_3

    if-gt v0, v2, :cond_3

    const/16 p0, 0x1f4

    if-ge v0, p0, :cond_2

    const/16 p0, 0x1e0

    if-le v0, p0, :cond_0

    const/16 p0, 0x280

    if-gt v1, p0, :cond_2

    :cond_0
    const/16 p0, 0x168

    if-lt v0, p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static final k(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/nio/ByteBuffer;[BI)I
    .locals 4

    .line 1
    const/4 v0, 0x5

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, v1, p2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 6
    :cond_1
    nop

    .line 1
    :goto_1
    add-int v1, v0, p2

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    aput-byte v1, p1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-lt v1, v2, :cond_5

    :goto_2
    add-int v1, v0, p2

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_5

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    aput-byte v1, p1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method public static final m(Ljava/lang/String;)Lbdx;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lbdx;

    invoke-direct {v0, p0}, Lbdx;-><init>(Ljava/net/NetworkInterface;)V

    return-object v0
.end method

.method public static n(Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lddj;

    return-void
.end method

.method public static o(Ljava/lang/Object;)Lddb;
    .locals 0

    .line 1
    check-cast p0, Lddi;

    iget-object p0, p0, Lddi;->d:Lddb;

    return-object p0
.end method

.method public static p(Ljava/lang/Object;)Lddb;
    .locals 0

    .line 1
    check-cast p0, Lddi;

    invoke-virtual {p0}, Lddi;->c()Lddb;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ldfc;Ljava/lang/Object;Ldcz;Lddb;)V
    .locals 1

    .line 1
    check-cast p1, Ldcx;

    iget-object v0, p1, Ldcx;->c:Lder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ldfc;->t(Ljava/lang/Class;Ldcz;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Ldcx;->d:Lddj;

    .line 2
    invoke-virtual {p3, p1, p0}, Lddb;->l(Lddj;Ljava/lang/Object;)V

    return-void
.end method

.method public static r(Ldcv;Ljava/util/Map$Entry;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddj;

    .line 2
    sget-object v1, Ldgc;->a:Ldgc;

    iget-object v0, v0, Lddj;->c:Ldgc;

    invoke-virtual {v0}, Ldgc;->ordinal()I

    move-result v0

    const v1, 0x13f38d82

    packed-switch v0, :pswitch_data_0

    return-void

    .line 14
    :pswitch_0
    nop

    .line 15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ldcv;->p(IJ)V

    return-void

    .line 13
    :pswitch_1
    nop

    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ldcv;->o(II)V

    return-void

    .line 12
    :pswitch_2
    nop

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ldcv;->n(IJ)V

    return-void

    .line 11
    :pswitch_3
    nop

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ldcv;->m(II)V

    return-void

    .line 15
    :pswitch_4
    nop

    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ldcv;->i(II)V

    return-void

    .line 10
    :pswitch_5
    nop

    .line 11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ldcv;->r(II)V

    return-void

    .line 16
    :pswitch_6
    nop

    .line 17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldcl;

    invoke-virtual {p0, v1, p1}, Ldcv;->b(ILdcl;)V

    return-void

    .line 21
    :pswitch_7
    nop

    .line 22
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 23
    sget-object v2, Ldez;->a:Ldez;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object p1

    .line 24
    invoke-virtual {p0, v1, v0, p1}, Ldcv;->k(ILjava/lang/Object;Ldfg;)V

    return-void

    .line 18
    :pswitch_8
    nop

    .line 19
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 20
    sget-object v2, Ldez;->a:Ldez;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object p1

    .line 21
    invoke-virtual {p0, v1, v0, p1}, Ldcv;->h(ILjava/lang/Object;Ldfg;)V

    return-void

    .line 17
    :pswitch_9
    nop

    .line 18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Ldcv;->q(ILjava/lang/String;)V

    return-void

    .line 9
    :pswitch_a
    nop

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Ldcv;->a(IZ)V

    return-void

    .line 8
    :pswitch_b
    nop

    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ldcv;->e(II)V

    return-void

    .line 7
    :pswitch_c
    nop

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ldcv;->f(IJ)V

    return-void

    .line 6
    :pswitch_d
    nop

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ldcv;->i(II)V

    return-void

    .line 5
    :pswitch_e
    nop

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ldcv;->s(IJ)V

    return-void

    .line 4
    :pswitch_f
    nop

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ldcv;->j(IJ)V

    return-void

    .line 3
    :pswitch_10
    nop

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Ldcv;->g(IF)V

    return-void

    .line 3
    :pswitch_11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ldcv;->c(ID)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static final s(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p0

    invoke-virtual {p0}, Lddb;->e()V

    return-void
.end method

.method public static final t(Ldcu;[B)Ldcl;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldcu;->ak()V

    .line 2
    new-instance p0, Ldck;

    invoke-direct {p0, p1}, Ldck;-><init>([B)V

    return-object p0
.end method

.method public static u([BI)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhl;->K([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static v([BI)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhl;->x([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static w([BILdca;)I
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lhl;->F([BILdca;)I

    move-result p1

    iget v0, p2, Ldca;->a:I

    if-ltz v0, :cond_2

    .line 3
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    .line 4
    if-nez v0, :cond_0

    .line 5
    sget-object p0, Ldcl;->b:Ldcl;

    iput-object p0, p2, Ldca;->c:Ljava/lang/Object;

    return p1

    .line 6
    :cond_0
    invoke-static {p0, p1, v0}, Ldcl;->u([BII)Ldcl;

    move-result-object p0

    iput-object p0, p2, Ldca;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 4
    :cond_1
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object p0

    throw p0

    .line 2
    :cond_2
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object p0

    throw p0
.end method

.method public static x([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static y(Ldfg;[BIIILdca;)I
    .locals 8

    .line 1
    check-cast p0, Ldet;

    .line 2
    invoke-virtual {p0}, Ldet;->e()Ljava/lang/Object;

    move-result-object v7

    .line 3
    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Ldet;->c(Ljava/lang/Object;[BIIILdca;)I

    move-result p1

    .line 4
    invoke-virtual {p0, v7}, Ldet;->f(Ljava/lang/Object;)V

    iput-object v7, p5, Ldca;->c:Ljava/lang/Object;

    return p1
.end method

.method public static z(Ldfg;[BIILdca;)I
    .locals 6

    .line 1
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    .line 2
    invoke-static {p2, p1, v0, p4}, Lhl;->G(I[BILdca;)I

    move-result v0

    iget p2, p4, Ldca;->a:I

    move v3, v0

    goto :goto_0

    .line 6
    :cond_0
    move v3, v0

    .line 2
    :goto_0
    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 4
    invoke-interface {p0}, Ldfg;->e()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    .line 5
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ldfg;->i(Ljava/lang/Object;[BIILdca;)V

    .line 6
    invoke-interface {p0, p3}, Ldfg;->f(Ljava/lang/Object;)V

    iput-object p3, p4, Ldca;->c:Ljava/lang/Object;

    return p2

    .line 3
    :cond_1
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object p0

    throw p0
.end method
