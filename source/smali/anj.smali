.class public final synthetic Lanj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lank;


# direct methods
.method public synthetic constructor <init>(Lank;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanj;->a:Lank;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lanj;->a:Lank;

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_6

    :cond_0
    iget-object p2, p1, Lank;->b:Landroid/view/View;

    invoke-static {p2}, Lank;->d(Landroid/view/View;)I

    move-result p2

    iget-object p3, p1, Lank;->a:Landroid/view/View;

    invoke-static {p3}, Lank;->d(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p2, p3

    .line 2
    const/4 p3, 0x0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p4, p1, Lank;->b:Landroid/view/View;

    .line 3
    invoke-static {p4}, Lank;->b(Landroid/view/View;)I

    move-result p4

    iget-object p5, p1, Lank;->a:Landroid/view/View;

    invoke-static {p5}, Lank;->b(Landroid/view/View;)I

    move-result p5

    sub-int/2addr p4, p5

    .line 4
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget-object p5, p1, Lank;->a:Landroid/view/View;

    .line 5
    invoke-static {p5}, Lank;->c(Landroid/view/View;)I

    move-result p5

    iget-object p6, p1, Lank;->b:Landroid/view/View;

    invoke-static {p6}, Lank;->c(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    .line 6
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    iget-object p6, p1, Lank;->a:Landroid/view/View;

    .line 7
    invoke-static {p6}, Lank;->a(Landroid/view/View;)I

    move-result p6

    iget-object p7, p1, Lank;->b:Landroid/view/View;

    invoke-static {p7}, Lank;->a(Landroid/view/View;)I

    move-result p7

    sub-int/2addr p6, p7

    .line 8
    invoke-static {p3, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iget-object p7, p1, Lank;->e:Landroid/view/View;

    if-eqz p7, :cond_1

    .line 9
    invoke-static {p7}, Lank;->a(Landroid/view/View;)I

    move-result p7

    iget-object p8, p1, Lank;->b:Landroid/view/View;

    invoke-static {p8}, Lank;->d(Landroid/view/View;)I

    move-result p8

    sub-int/2addr p7, p8

    .line 10
    invoke-static {p3, p7}, Ljava/lang/Math;->max(II)I

    move-result p7

    add-int/2addr p2, p7

    :cond_1
    iget-object p7, p1, Lank;->f:Landroid/view/View;

    if-eqz p7, :cond_2

    iget-object p7, p1, Lank;->b:Landroid/view/View;

    .line 11
    invoke-static {p7}, Lank;->a(Landroid/view/View;)I

    move-result p7

    iget-object p8, p1, Lank;->f:Landroid/view/View;

    invoke-static {p8}, Lank;->d(Landroid/view/View;)I

    move-result p8

    sub-int/2addr p7, p8

    .line 12
    invoke-static {p3, p7}, Ljava/lang/Math;->max(II)I

    move-result p7

    add-int/2addr p6, p7

    :cond_2
    iget-object p7, p1, Lank;->c:Landroid/view/View;

    if-eqz p7, :cond_3

    .line 13
    invoke-static {p7}, Lank;->c(Landroid/view/View;)I

    move-result p7

    iget-object p8, p1, Lank;->b:Landroid/view/View;

    invoke-static {p8}, Lank;->b(Landroid/view/View;)I

    move-result p8

    sub-int/2addr p7, p8

    .line 14
    invoke-static {p3, p7}, Ljava/lang/Math;->max(II)I

    move-result p7

    add-int/2addr p4, p7

    :cond_3
    iget-object p7, p1, Lank;->d:Landroid/view/View;

    if-eqz p7, :cond_4

    iget-object p7, p1, Lank;->b:Landroid/view/View;

    .line 15
    invoke-static {p7}, Lank;->c(Landroid/view/View;)I

    move-result p7

    iget-object p8, p1, Lank;->d:Landroid/view/View;

    invoke-static {p8}, Lank;->b(Landroid/view/View;)I

    move-result p8

    sub-int/2addr p7, p8

    .line 16
    invoke-static {p3, p7}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p5, p3

    :cond_4
    new-instance p3, Lcom/android/car/ui/baselayout/Insets;

    invoke-direct {p3, p4, p2, p5, p6}, Lcom/android/car/ui/baselayout/Insets;-><init>(IIII)V

    iget-object p2, p1, Lank;->h:Lcom/android/car/ui/baselayout/Insets;

    .line 17
    invoke-virtual {p3, p2}, Lcom/android/car/ui/baselayout/Insets;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    iput-object p3, p1, Lank;->h:Lcom/android/car/ui/baselayout/Insets;

    iget-object p2, p1, Lank;->g:Lanc;

    if-eqz p2, :cond_5

    .line 18
    invoke-interface {p2, p3}, Lanc;->a(Lcom/android/car/ui/baselayout/Insets;)V

    return-void

    :cond_5
    iget-object p1, p1, Lank;->a:Landroid/view/View;

    invoke-virtual {p3}, Lcom/android/car/ui/baselayout/Insets;->getLeft()I

    move-result p2

    invoke-virtual {p3}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result p4

    invoke-virtual {p3}, Lcom/android/car/ui/baselayout/Insets;->getRight()I

    move-result p5

    invoke-virtual {p3}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result p3

    .line 19
    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    return-void
.end method
