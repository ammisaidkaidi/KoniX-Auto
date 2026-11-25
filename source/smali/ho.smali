.class public Lho;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityHeading()Z

    move-result p0

    return p0
.end method

.method static c(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result p0

    return p0
.end method

.method public static d(Lro;Lqm;Landroid/view/View;Landroid/view/View;Lra;Z)I
    .locals 0

    .line 1
    invoke-virtual {p4}, Lra;->ak()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lro;->a()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 2
    invoke-static {p2}, Lra;->bg(Landroid/view/View;)I

    move-result p0

    invoke-static {p3}, Lra;->bg(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 3
    :cond_1
    invoke-virtual {p1, p3}, Lqm;->a(Landroid/view/View;)I

    move-result p0

    .line 4
    invoke-virtual {p1, p2}, Lqm;->d(Landroid/view/View;)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Lqm;->k()I

    move-result p1

    sub-int/2addr p0, p2

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 1
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Lro;Lqm;Landroid/view/View;Landroid/view/View;Lra;ZZ)I
    .locals 3

    .line 1
    invoke-virtual {p4}, Lra;->ak()I

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lro;->a()I

    move-result p4

    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p2}, Lra;->bg(Landroid/view/View;)I

    move-result p4

    .line 3
    invoke-static {p3}, Lra;->bg(Landroid/view/View;)I

    move-result v1

    .line 2
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 4
    invoke-static {p2}, Lra;->bg(Landroid/view/View;)I

    move-result v1

    .line 5
    invoke-static {p3}, Lra;->bg(Landroid/view/View;)I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p6, :cond_1

    .line 6
    invoke-virtual {p0}, Lro;->a()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 12
    :cond_1
    nop

    .line 7
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 6
    :goto_0
    if-nez p5, :cond_2

    return p0

    :cond_2
    int-to-float p0, p0

    .line 8
    invoke-virtual {p1, p3}, Lqm;->a(Landroid/view/View;)I

    move-result p4

    .line 9
    invoke-virtual {p1, p2}, Lqm;->d(Landroid/view/View;)I

    move-result p5

    sub-int/2addr p4, p5

    .line 8
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    int-to-float p4, p4

    .line 10
    invoke-static {p2}, Lra;->bg(Landroid/view/View;)I

    move-result p5

    .line 11
    invoke-static {p3}, Lra;->bg(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p5, p3

    .line 10
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p3, p3

    div-float/2addr p4, p3

    mul-float p0, p0, p4

    .line 12
    invoke-virtual {p1}, Lqm;->j()I

    move-result p3

    .line 13
    invoke-virtual {p1, p2}, Lqm;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    .line 12
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 1
    :cond_3
    :goto_1
    return v0
.end method

.method public static f(Lro;Lqm;Landroid/view/View;Landroid/view/View;Lra;Z)I
    .locals 0

    .line 1
    invoke-virtual {p4}, Lra;->ak()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lro;->a()I

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 2
    invoke-virtual {p0}, Lro;->a()I

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-virtual {p1, p3}, Lqm;->a(Landroid/view/View;)I

    move-result p4

    .line 4
    invoke-virtual {p1, p2}, Lqm;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p4, p1

    int-to-float p1, p4

    .line 5
    invoke-static {p2}, Lra;->bg(Landroid/view/View;)I

    move-result p2

    .line 6
    invoke-static {p3}, Lra;->bg(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p2, p3

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 7
    invoke-virtual {p0}, Lro;->a()I

    move-result p0

    int-to-float p0, p0

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0

    .line 1
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
