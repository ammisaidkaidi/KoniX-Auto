.class public Lcom/android/car/ui/FocusParkingView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field a:Landroid/view/ViewGroup;

.field public b:Z

.field private c:Landroid/view/View;

.field private d:Lamx;

.field private e:Z

.field private final f:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->b:Z

    .line 2
    new-instance v0, Lamr;

    invoke-direct {v0, p0}, Lamr;-><init>(Lcom/android/car/ui/FocusParkingView;)V

    iput-object v0, p0, Lcom/android/car/ui/FocusParkingView;->f:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/FocusParkingView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->b:Z

    .line 5
    new-instance v0, Lamr;

    invoke-direct {v0, p0}, Lamr;-><init>(Lcom/android/car/ui/FocusParkingView;)V

    iput-object v0, p0, Lcom/android/car/ui/FocusParkingView;->f:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusParkingView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/car/ui/FocusParkingView;->b:Z

    .line 8
    new-instance p3, Lamr;

    invoke-direct {p3, p0}, Lamr;-><init>(Lcom/android/car/ui/FocusParkingView;)V

    iput-object p3, p0, Lcom/android/car/ui/FocusParkingView;->f:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusParkingView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/car/ui/FocusParkingView;->b:Z

    .line 11
    new-instance p3, Lamr;

    invoke-direct {p3, p0}, Lamr;-><init>(Lcom/android/car/ui/FocusParkingView;)V

    iput-object p3, p0, Lcom/android/car/ui/FocusParkingView;->f:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusParkingView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lamu;->h:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/car/ui/FocusParkingView;->b:Z

    :cond_0
    nop

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/car/ui/FocusParkingView;->setFocusable(I)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/car/ui/FocusParkingView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/car/ui/FocusParkingView;->setEnabled(Z)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/car/ui/FocusParkingView;->setClickable(Z)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/car/ui/FocusParkingView;->setAlpha(F)V

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/car/ui/FocusParkingView;->setDefaultFocusHighlightEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0006

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const v0, 0x7f0a0007

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Lamx;

    int-to-long v2, v0

    .line 12
    invoke-direct {v1, p2, v2, v3}, Lamx;-><init>(IJ)V

    iput-object v1, p0, Lcom/android/car/ui/FocusParkingView;->d:Lamx;

    const p2, 0x7f050007

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    return-void
.end method

.method private final c(Z)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    return v0

    .line 2
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->a:Landroid/view/ViewGroup;

    .line 6
    instance-of v2, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_4

    .line 7
    move-object v2, p1

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    goto :goto_2

    .line 13
    :cond_4
    move-object v2, v1

    .line 8
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->ak()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lams;

    invoke-direct {v1, p0, v2}, Lams;-><init>(Lcom/android/car/ui/FocusParkingView;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    return v0

    :cond_6
    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->d:Lamx;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lamx;->a(J)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    .line 11
    invoke-static {v2, p1, v3}, Lhf;->n(Landroid/view/View;Landroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_7
    const/16 p1, 0x82

    .line 12
    invoke-super {p0, p1, v1}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/car/ui/FocusParkingView;->d:Lamx;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lamx;->b(Landroid/view/View;J)V

    :cond_0
    iput-object p1, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lamt;

    if-nez v1, :cond_3

    .line 4
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 5
    invoke-static {v1}, Lhf;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    nop

    .line 1
    :goto_1
    iput-object v0, p0, Lcom/android/car/ui/FocusParkingView;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Lcom/android/car/ui/FocusParkingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusParkingView;->f:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusParkingView;->f:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/car/ui/FocusParkingView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/car/ui/FocusParkingView;->a(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/android/car/ui/FocusParkingView;->c(Z)Z

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 6
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2
    :sswitch_0
    return v0

    .line 1
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p1

    return p1

    .line 5
    :sswitch_2
    nop

    .line 3
    invoke-direct {p0, v0}, Lcom/android/car/ui/FocusParkingView;->c(Z)Z

    move-result p1

    return p1

    .line 4
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x82

    const/4 p2, 0x0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4000000 -> :sswitch_2
        0x8000000 -> :sswitch_1
        0x10000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/car/ui/FocusParkingView;->c(Z)Z

    move-result p1

    return p1
.end method

.method public final restoreDefaultFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/car/ui/FocusParkingView;->c(Z)Z

    move-result v0

    return v0
.end method
