.class final Lank;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public g:Lanc;

.field public h:Lcom/android/car/ui/baselayout/Insets;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/car/ui/baselayout/Insets;

    invoke-direct {v0}, Lcom/android/car/ui/baselayout/Insets;-><init>()V

    iput-object v0, p0, Lank;->h:Lcom/android/car/ui/baselayout/Insets;

    iput-object p2, p0, Lank;->a:Landroid/view/View;

    const v0, 0x7f090081

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lank;->b:Landroid/view/View;

    .line 2
    const-string v1, "car_ui_left_inset"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lank;->c:Landroid/view/View;

    .line 3
    const-string v2, "car_ui_right_inset"

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lank;->d:Landroid/view/View;

    .line 4
    const-string v3, "car_ui_top_inset"

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lank;->e:Landroid/view/View;

    .line 5
    const-string v4, "car_ui_bottom_inset"

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lank;->f:Landroid/view/View;

    new-instance v4, Lanj;

    invoke-direct {v4, p0}, Lanj;-><init>(Lank;)V

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    invoke-virtual {v0, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 2

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method public static c(Landroid/view/View;)I
    .locals 2

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x1

    aget p0, v0, p0

    return p0
.end method
