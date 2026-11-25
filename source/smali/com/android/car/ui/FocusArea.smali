.class public Lcom/android/car/ui/FocusArea;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements Lamt;


# instance fields
.field public final a:Lamq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/FocusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/FocusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/FocusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Lamq;

    invoke-direct {p1, p0, p2}, Lamq;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iget-object v0, v0, Lamq;->s:Landroid/view/View;

    return-object v0
.end method

.method public final b()Lamq;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    return-object v0
.end method

.method public final c(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iput p1, v0, Lamq;->m:I

    iput p2, v0, Lamq;->o:I

    iput p3, v0, Lamq;->n:I

    iput p4, v0, Lamq;->p:I

    return-void
.end method

.method public final d(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iget v1, v0, Lamq;->i:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lamq;->k:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Lamq;->j:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Lamq;->l:I

    if-ne v1, p4, :cond_0

    return-void

    :cond_0
    iput p1, v0, Lamq;->i:I

    iput p2, v0, Lamq;->k:I

    iput p3, v0, Lamq;->j:I

    iput p4, v0, Lamq;->l:I

    iget-object p1, v0, Lamq;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iget-boolean v1, v0, Lamq;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lamq;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lamq;->g:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lamq;->i:I

    iget-object v3, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lamq;->k:I

    iget-object v4, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    iget-object v5, v0, Lamq;->c:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lamq;->j:I

    sub-int/2addr v4, v5

    iget-object v5, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    iget-object v6, v0, Lamq;->c:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Lamq;->l:I

    sub-int/2addr v5, v6

    .line 7
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v0, Lamq;->g:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iget-boolean v0, v0, Lamq;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "com.android.car.ui.FocusArea"

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iget-object v1, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Lamq;->B:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iget-object v1, v0, Lamq;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Lamq;->B:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 2
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iget-boolean v1, v0, Lamq;->f:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lamq;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lamq;->h:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lamq;->i:I

    iget-object v3, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lamq;->k:I

    iget-object v4, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    iget-object v5, v0, Lamq;->c:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lamq;->j:I

    sub-int/2addr v4, v5

    iget-object v5, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    iget-object v6, v0, Lamq;->c:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Lamq;->l:I

    sub-int/2addr v5, v6

    .line 7
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v0, Lamq;->h:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iget v1, v0, Lamq;->r:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lamq;->s:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    .line 2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget v1, v0, Lamq;->m:I

    .line 3
    const-string v2, "com.android.car.ui.utils.FOCUS_AREA_LEFT_BOUND_OFFSET"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, v0, Lamq;->n:I

    .line 4
    const-string v2, "com.android.car.ui.utils.FOCUS_AREA_RIGHT_BOUND_OFFSET"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, v0, Lamq;->o:I

    .line 5
    const-string v2, "com.android.car.ui.utils.FOCUS_AREA_TOP_BOUND_OFFSET"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, v0, Lamq;->p:I

    .line 6
    const-string v1, "com.android.car.ui.utils.FOCUS_AREA_BOTTOM_BOUND_OFFSET"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iget-object p2, p1, Lamq;->c:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-boolean p2, p1, Lamq;->q:Z

    if-eq p2, p3, :cond_1

    iput-boolean p3, p1, Lamq;->q:Z

    iget p2, p1, Lamq;->i:I

    iget p3, p1, Lamq;->j:I

    iput p3, p1, Lamq;->i:I

    iput p2, p1, Lamq;->j:I

    iget p2, p1, Lamq;->m:I

    iget p3, p1, Lamq;->n:I

    iput p3, p1, Lamq;->m:I

    iput p2, p1, Lamq;->n:I

    :cond_1
    return-void
.end method

.method protected final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/FocusArea;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    .line 3
    invoke-virtual {p1}, Lamq;->d()Z

    move-result p1

    return p1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    invoke-virtual {p0}, Lcom/android/car/ui/FocusArea;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lhf;->j(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v0, v1, v2}, Lhf;->o(Landroid/view/View;ILandroid/view/View;Z)Z

    return-void

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 10

    .line 1
    sget-object v0, Lamq;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_4

    .line 7
    :sswitch_0
    invoke-static {p2}, Lamq;->a(Landroid/os/Bundle;)I

    move-result p1

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object p2, v0, Lamq;->v:Landroid/util/SparseArray;

    if-eqz p2, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    iget-object p2, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p2

    new-instance v6, Landroid/util/SparseArray;

    .line 10
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v0, Lamq;->v:Landroid/util/SparseArray;

    sget-object v6, Lamq;->a:Ljava/util/List;

    .line 11
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lamq;->u:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {v8, v7, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    iget-object v9, v0, Lamq;->v:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lamt;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget-object p2, v0, Lamq;->v:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lamt;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lamt;->b()Lamq;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lamq;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    .line 17
    :cond_2
    const/4 p2, 0x0

    .line 15
    :goto_2
    if-nez p2, :cond_4

    iget-object p2, v0, Lamq;->x:Lamz;

    .line 16
    invoke-virtual {p2, p1, v4, v5}, Lamz;->a(IJ)Lamt;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lamt;->b()Lamq;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lamq;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 15
    :cond_4
    move v2, p2

    goto/16 :goto_4

    .line 2
    :sswitch_1
    invoke-static {p2}, Lamq;->a(Landroid/os/Bundle;)I

    move-result p1

    .line 3
    invoke-virtual {v0}, Lamq;->b()V

    iget-object p2, v0, Lamq;->t:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    .line 5
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    .line 6
    :cond_6
    invoke-static {p1}, Lhf;->t(Landroid/view/View;)Z

    move-result v2

    goto :goto_4

    .line 3
    :sswitch_2
    invoke-virtual {v0}, Lamq;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object v3, v0, Lamq;->z:Lamt;

    if-eqz v3, :cond_9

    .line 18
    invoke-static {p2}, Lamq;->a(Landroid/os/Bundle;)I

    move-result p2

    if-eq p2, v1, :cond_9

    iget-object p1, v0, Lamq;->z:Lamt;

    iget-object v0, v0, Lamq;->c:Landroid/view/ViewGroup;

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 20
    invoke-interface {p1}, Lamt;->b()Lamq;

    move-result-object v1

    iget-object v1, v1, Lamq;->x:Lamz;

    .line 21
    invoke-virtual {v1, p2, v3, v4}, Lamz;->a(IJ)Lamt;

    move-result-object v1

    if-nez v1, :cond_8

    sparse-switch p2, :sswitch_data_1

    .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p2, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :sswitch_3
    const/16 p2, 0x21

    goto :goto_3

    :sswitch_4
    const/16 p2, 0x11

    goto :goto_3

    :sswitch_5
    const/16 p2, 0x82

    goto :goto_3

    .line 21
    :sswitch_6
    const/16 p2, 0x42

    :goto_3
    invoke-interface {v0}, Lamt;->b()Lamq;

    move-result-object v0

    iget-object v0, v0, Lamq;->x:Lamz;

    iget-object v0, v0, Lamz;->b:Lamv;

    iget v1, v0, Lamv;->a:I

    if-ne v1, v2, :cond_7

    goto :goto_4

    .line 22
    :cond_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lamw;

    invoke-direct {v1, p1, v3, v4}, Lamw;-><init>(Lamt;J)V

    invoke-virtual {v0, p2, v1}, Lamv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_8
    goto :goto_4

    .line 1
    :cond_9
    move v2, p1

    :goto_4
    return v2

    .line 24
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_6
        0x21 -> :sswitch_5
        0x42 -> :sswitch_4
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final restoreDefaultFocus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    invoke-virtual {v0}, Lamq;->d()Z

    move-result v0

    return v0
.end method
