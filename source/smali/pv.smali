.class public Lpv;
.super Landroid/view/ViewGroup;
.source "PG"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field public e:I

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:I

.field private h:I

.field private i:F

.field private j:Z

.field private k:[I

.field private l:[I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpv;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Lpv;->b:I

    const/4 v2, 0x0

    iput v2, p0, Lpv;->c:I

    const v3, 0x800033

    iput v3, p0, Lpv;->e:I

    .line 4
    sget-object v3, Lki;->m:[I

    invoke-static {p1, p2, v3, p3}, Lsm;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lsm;

    move-result-object v3

    sget-object v6, Lki;->m:[I

    iget-object v8, v3, Lsm;->b:Landroid/content/res/TypedArray;

    .line 5
    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lhs;->L(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 6
    invoke-virtual {v3, v0, v1}, Lsm;->c(II)I

    move-result p1

    if-ltz p1, :cond_0

    iget p2, p0, Lpv;->d:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lpv;->d:I

    .line 7
    invoke-virtual {p0}, Lpv;->requestLayout()V

    :cond_0
    nop

    .line 8
    invoke-virtual {v3, v2, v1}, Lsm;->c(II)I

    move-result p1

    if-ltz p1, :cond_3

    iget p2, p0, Lpv;->e:I

    if-eq p2, p1, :cond_3

    const p2, 0x800007

    and-int/2addr p2, p1

    if-nez p2, :cond_1

    const p2, 0x800003

    or-int/2addr p1, p2

    :cond_1
    and-int/lit8 p2, p1, 0x70

    if-nez p2, :cond_2

    or-int/lit8 p1, p1, 0x30

    :cond_2
    iput p1, p0, Lpv;->e:I

    .line 9
    invoke-virtual {p0}, Lpv;->requestLayout()V

    :cond_3
    const/4 p1, 0x2

    .line 10
    invoke-virtual {v3, p1, v0}, Lsm;->o(IZ)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lpv;->q()V

    :cond_4
    iget-object p1, v3, Lsm;->b:Landroid/content/res/TypedArray;

    const/4 p2, 0x4

    const/high16 p3, -0x40800000    # -1.0f

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lpv;->i:F

    const/4 p1, 0x3

    .line 13
    invoke-virtual {v3, p1, v1}, Lsm;->c(II)I

    move-result p1

    iput p1, p0, Lpv;->b:I

    const/4 p1, 0x7

    .line 14
    invoke-virtual {v3, p1, v2}, Lsm;->o(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lpv;->j:Z

    const/4 p1, 0x5

    .line 15
    invoke-virtual {v3, p1}, Lsm;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lpv;->f:Landroid/graphics/drawable/Drawable;

    if-ne p1, p2, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    iput-object p1, p0, Lpv;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lpv;->g:I

    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lpv;->m:I

    goto :goto_0

    .line 19
    :cond_6
    iput v2, p0, Lpv;->g:I

    iput v2, p0, Lpv;->m:I

    .line 17
    :goto_0
    if-nez p1, :cond_7

    goto :goto_1

    .line 19
    :cond_7
    const/4 v0, 0x0

    .line 18
    :goto_1
    invoke-virtual {p0, v0}, Lpv;->setWillNotDraw(Z)V

    .line 19
    invoke-virtual {p0}, Lpv;->requestLayout()V

    .line 15
    :goto_2
    const/16 p1, 0x8

    .line 20
    invoke-virtual {v3, p1, v2}, Lsm;->c(II)I

    move-result p1

    iput p1, p0, Lpv;->n:I

    const/4 p1, 0x6

    .line 21
    invoke-virtual {v3, p1, v2}, Lsm;->b(II)I

    move-result p1

    iput p1, p0, Lpv;->o:I

    .line 22
    invoke-virtual {v3}, Lsm;->n()V

    return-void
.end method

.method private static a(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lpu;

    return p1
.end method

.method protected d()Lpu;
    .locals 2

    .line 1
    iget v0, p0, Lpv;->d:I

    if-nez v0, :cond_0

    new-instance v0, Lpu;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lpu;-><init>(I)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lpu;

    const/4 v1, -0x1

    .line 2
    invoke-direct {v0, v1}, Lpu;-><init>(I)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Landroid/util/AttributeSet;)Lpu;
    .locals 2

    .line 1
    new-instance v0, Lpu;

    invoke-virtual {p0}, Lpv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lpu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected f(Landroid/view/ViewGroup$LayoutParams;)Lpu;
    .locals 1

    .line 1
    new-instance v0, Lpu;

    invoke-direct {v0, p1}, Lpu;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpv;->d()Lpu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lpv;->e(Landroid/util/AttributeSet;)Lpu;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lpv;->f(Landroid/view/ViewGroup$LayoutParams;)Lpu;

    move-result-object p1

    return-object p1
.end method

.method public final getBaseline()I
    .locals 5

    .line 1
    iget v0, p0, Lpv;->b:I

    if-gez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lpv;->getChildCount()I

    move-result v0

    iget v1, p0, Lpv;->b:I

    if-le v0, v1, :cond_5

    .line 4
    invoke-virtual {p0, v1}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v0, p0, Lpv;->b:I

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 6
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    iget v2, p0, Lpv;->c:I

    iget v3, p0, Lpv;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget v3, p0, Lpv;->e:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 7
    :sswitch_0
    invoke-virtual {p0}, Lpv;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lpv;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lpv;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lpv;->h:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 8
    :sswitch_1
    invoke-virtual {p0}, Lpv;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lpv;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lpv;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lpv;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lpv;->h:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_0

    .line 7
    :cond_3
    goto :goto_0

    .line 6
    :cond_4
    nop

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lpu;

    .line 10
    iget v0, v0, Lpu;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method final n(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lpv;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lpv;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lpv;->o:I

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Lpv;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lpv;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lpv;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Lpv;->m:I

    add-int/2addr v3, p2

    .line 1
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lpv;->f:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method final o(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lpv;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lpv;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lpv;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Lpv;->g:I

    add-int/2addr v2, p2

    .line 2
    invoke-virtual {p0}, Lpv;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lpv;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lpv;->o:I

    sub-int/2addr v3, v4

    .line 1
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lpv;->f:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 18
    iget-object v0, p0, Lpv;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lpv;->d:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lpv;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 19
    invoke-virtual {p0, v2}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 21
    invoke-virtual {p0, v2}, Lpv;->p(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lpu;

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v4, Lpu;->topMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lpv;->m:I

    sub-int/2addr v3, v4

    .line 24
    invoke-virtual {p0, p1, v3}, Lpv;->n(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0, v0}, Lpv;->p(I)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 26
    invoke-virtual {p0, v0}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 27
    invoke-virtual {p0}, Lpv;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lpv;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lpv;->m:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lpu;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Lpu;->bottomMargin:I

    add-int/2addr v0, v1

    .line 30
    :goto_1
    invoke-virtual {p0, p1, v0}, Lpv;->n(Landroid/graphics/Canvas;I)V

    return-void

    .line 1
    :cond_4
    invoke-virtual {p0}, Lpv;->getChildCount()I

    move-result v0

    .line 2
    invoke-static {p0}, Ltb;->b(Landroid/view/View;)Z

    move-result v3

    :goto_2
    if-ge v2, v0, :cond_7

    .line 3
    invoke-virtual {p0, v2}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_6

    .line 5
    invoke-virtual {p0, v2}, Lpv;->p(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lpu;

    if-eqz v3, :cond_5

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Lpu;->rightMargin:I

    add-int/2addr v4, v5

    goto :goto_3

    .line 8
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v5, Lpu;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lpv;->g:I

    sub-int/2addr v4, v5

    .line 9
    :goto_3
    invoke-virtual {p0, p1, v4}, Lpv;->o(Landroid/graphics/Canvas;I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 10
    :cond_7
    invoke-virtual {p0, v0}, Lpv;->p(I)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 11
    invoke-virtual {p0, v0}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    if-eqz v3, :cond_8

    .line 12
    invoke-virtual {p0}, Lpv;->getPaddingLeft()I

    move-result v0

    goto :goto_4

    .line 13
    :cond_8
    invoke-virtual {p0}, Lpv;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lpv;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lpv;->g:I

    sub-int/2addr v0, v1

    goto :goto_4

    .line 14
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lpu;

    if-eqz v3, :cond_a

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Lpu;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lpv;->g:I

    sub-int/2addr v0, v1

    goto :goto_4

    .line 16
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Lpu;->rightMargin:I

    add-int/2addr v0, v1

    .line 17
    :goto_4
    invoke-virtual {p0, p1, v0}, Lpv;->o(Landroid/graphics/Canvas;I)V

    return-void

    .line 29
    :cond_b
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-string v0, "android.support.v7.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-string v0, "android.support.v7.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    .line 29
    move-object/from16 v0, p0

    iget v1, v0, Lpv;->d:I

    const/16 v2, 0x8

    const v3, 0x800007

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingLeft()I

    move-result v1

    sub-int v6, p4, p2

    .line 30
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingRight()I

    move-result v7

    sub-int v7, v6, v7

    sub-int/2addr v6, v1

    .line 31
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingRight()I

    move-result v8

    sub-int/2addr v6, v8

    .line 32
    invoke-virtual/range {p0 .. p0}, Lpv;->getChildCount()I

    move-result v8

    iget v9, v0, Lpv;->e:I

    and-int/2addr v3, v9

    and-int/lit8 v9, v9, 0x70

    sparse-switch v9, :sswitch_data_0

    .line 35
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingTop()I

    move-result v9

    goto :goto_0

    .line 33
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingTop()I

    move-result v9

    add-int v9, v9, p5

    sub-int v9, v9, p3

    iget v10, v0, Lpv;->h:I

    sub-int/2addr v9, v10

    goto :goto_0

    .line 34
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingTop()I

    move-result v9

    sub-int v10, p5, p3

    iget v11, v0, Lpv;->h:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v5

    add-int/2addr v9, v10

    .line 35
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_e

    .line 36
    invoke-virtual {v0, v4}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 37
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v2, :cond_3

    .line 38
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 39
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 40
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lpu;

    .line 41
    iget v14, v13, Lpu;->gravity:I

    if-gez v14, :cond_1

    move v14, v3

    .line 42
    :cond_1
    invoke-static/range {p0 .. p0}, Lhs;->c(Landroid/view/View;)I

    move-result v15

    .line 43
    invoke-static {v14, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v14

    and-int/lit8 v14, v14, 0x7

    sparse-switch v14, :sswitch_data_1

    .line 46
    iget v14, v13, Lpu;->leftMargin:I

    add-int/2addr v14, v1

    goto :goto_2

    .line 50
    :sswitch_2
    sub-int v14, v7, v11

    .line 44
    iget v15, v13, Lpu;->rightMargin:I

    sub-int/2addr v14, v15

    goto :goto_2

    :sswitch_3
    sub-int v14, v6, v11

    div-int/2addr v14, v5

    add-int/2addr v14, v1

    .line 45
    iget v15, v13, Lpu;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v13, Lpu;->rightMargin:I

    sub-int/2addr v14, v15

    .line 47
    :goto_2
    invoke-virtual {v0, v4}, Lpv;->p(I)Z

    move-result v15

    if-eqz v15, :cond_2

    iget v15, v0, Lpv;->m:I

    add-int/2addr v9, v15

    .line 48
    :cond_2
    iget v15, v13, Lpu;->topMargin:I

    add-int/2addr v9, v15

    .line 49
    invoke-static {v10, v14, v9, v11, v12}, Lpv;->a(Landroid/view/View;IIII)V

    .line 50
    iget v10, v13, Lpu;->bottomMargin:I

    add-int/2addr v12, v10

    add-int/2addr v9, v12

    .line 36
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1
    :cond_4
    invoke-static/range {p0 .. p0}, Ltb;->b(Landroid/view/View;)Z

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingTop()I

    move-result v7

    sub-int v8, p5, p3

    .line 3
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingBottom()I

    move-result v9

    sub-int v9, v8, v9

    sub-int/2addr v8, v7

    .line 4
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v8, v10

    .line 5
    invoke-virtual/range {p0 .. p0}, Lpv;->getChildCount()I

    move-result v10

    iget v11, v0, Lpv;->e:I

    and-int/lit8 v12, v11, 0x70

    iget-boolean v13, v0, Lpv;->a:Z

    iget-object v14, v0, Lpv;->k:[I

    iget-object v15, v0, Lpv;->l:[I

    and-int/2addr v3, v11

    .line 6
    invoke-static/range {p0 .. p0}, Lhs;->c(Landroid/view/View;)I

    move-result v11

    .line 7
    invoke-static {v3, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingLeft()I

    move-result v3

    goto :goto_4

    .line 8
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p4

    sub-int v3, v3, p2

    iget v11, v0, Lpv;->h:I

    sub-int/2addr v3, v11

    goto :goto_4

    .line 9
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingLeft()I

    move-result v3

    sub-int v11, p4, p2

    iget v4, v0, Lpv;->h:I

    sub-int/2addr v11, v4

    div-int/2addr v11, v5

    add-int/2addr v3, v11

    .line 10
    :goto_4
    if-eqz v1, :cond_5

    add-int/lit8 v1, v10, -0x1

    const/4 v11, -0x1

    goto :goto_5

    .line 23
    :cond_5
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 10
    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v10, :cond_e

    mul-int v16, v11, v6

    add-int v5, v1, v16

    .line 11
    invoke-virtual {v0, v5}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    move/from16 p3, v1

    move/from16 v19, v9

    move/from16 p5, v10

    move/from16 p4, v11

    move/from16 v18, v12

    const/4 v12, 0x2

    const/16 v20, 0x1

    goto/16 :goto_b

    .line 12
    :cond_6
    move/from16 p3, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_d

    .line 13
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move/from16 p5, v10

    move-object/from16 v10, v18

    check-cast v10, Lpu;

    if-eqz v13, :cond_7

    .line 16
    move/from16 p4, v11

    iget v11, v10, Lpu;->height:I

    move/from16 v18, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v11

    move v12, v11

    goto :goto_7

    .line 23
    :cond_7
    move/from16 p4, v11

    move/from16 v18, v12

    :cond_8
    const/4 v12, -0x1

    .line 18
    :goto_7
    iget v11, v10, Lpu;->gravity:I

    if-gez v11, :cond_9

    move/from16 v11, v18

    :cond_9
    and-int/lit8 v11, v11, 0x70

    sparse-switch v11, :sswitch_data_3

    move/from16 v19, v9

    const/4 v12, 0x2

    const/16 v20, 0x1

    move v11, v7

    goto :goto_a

    .line 24
    :sswitch_6
    sub-int v11, v9, v2

    .line 19
    move/from16 v19, v9

    iget v9, v10, Lpu;->bottomMargin:I

    sub-int/2addr v11, v9

    const/4 v9, -0x1

    if-eq v12, v9, :cond_a

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 21
    const/16 v17, 0x2

    aget v20, v15, v17

    sub-int/2addr v9, v12

    sub-int v20, v20, v9

    sub-int v11, v11, v20

    goto :goto_8

    :cond_a
    nop

    :goto_8
    const/4 v12, 0x2

    const/16 v20, 0x1

    goto :goto_a

    .line 22
    :sswitch_7
    move/from16 v19, v9

    iget v9, v10, Lpu;->topMargin:I

    add-int v11, v7, v9

    const/4 v9, -0x1

    if-eq v12, v9, :cond_b

    .line 23
    const/16 v20, 0x1

    aget v21, v14, v20

    sub-int v21, v21, v12

    add-int v11, v11, v21

    goto :goto_9

    :cond_b
    const/16 v20, 0x1

    :goto_9
    const/4 v12, 0x2

    goto :goto_a

    .line 28
    :sswitch_8
    move/from16 v19, v9

    const/4 v9, -0x1

    const/16 v20, 0x1

    sub-int v11, v8, v2

    const/4 v12, 0x2

    div-int/2addr v11, v12

    add-int/2addr v11, v7

    .line 24
    iget v9, v10, Lpu;->topMargin:I

    add-int/2addr v11, v9

    iget v9, v10, Lpu;->bottomMargin:I

    sub-int/2addr v11, v9

    .line 25
    :goto_a
    invoke-virtual {v0, v5}, Lpv;->p(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, v0, Lpv;->g:I

    add-int/2addr v3, v5

    .line 26
    :cond_c
    iget v5, v10, Lpu;->leftMargin:I

    add-int/2addr v3, v5

    .line 27
    invoke-static {v4, v3, v11, v1, v2}, Lpv;->a(Landroid/view/View;IIII)V

    .line 28
    iget v2, v10, Lpu;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    goto :goto_b

    .line 12
    :cond_d
    move/from16 v19, v9

    move/from16 p5, v10

    move/from16 p4, v11

    move/from16 v18, v12

    const/4 v12, 0x2

    const/16 v20, 0x1

    .line 11
    :goto_b
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p3

    move/from16 v11, p4

    move/from16 v10, p5

    move/from16 v12, v18

    move/from16 v9, v19

    const/16 v2, 0x8

    const/4 v5, 0x2

    goto/16 :goto_6

    .line 45
    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_8
        0x30 -> :sswitch_7
        0x50 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 41

    .line 109
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    iget v0, v6, Lpv;->d:I

    const/4 v9, -0x2

    const/high16 v11, -0x80000000

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x1

    const/4 v4, 0x0

    if-ne v0, v15, :cond_2c

    iput v4, v6, Lpv;->h:I

    invoke-virtual/range {p0 .. p0}, Lpv;->getChildCount()I

    move-result v3

    .line 110
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 111
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget v0, v6, Lpv;->b:I

    iget-boolean v10, v6, Lpv;->j:Z

    const/4 v15, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_0
    if-ge v15, v3, :cond_11

    .line 112
    invoke-virtual {v6, v15}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    if-nez v27, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v12, :cond_1

    .line 112
    :goto_1
    move v9, v0

    move/from16 v30, v1

    move v0, v2

    move/from16 v32, v3

    goto/16 :goto_c

    .line 114
    :cond_1
    invoke-virtual {v6, v15}, Lpv;->p(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v6, Lpv;->h:I

    iget v5, v6, Lpv;->m:I

    add-int/2addr v4, v5

    iput v4, v6, Lpv;->h:I

    .line 115
    :cond_2
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lpu;

    .line 116
    iget v4, v5, Lpu;->weight:F

    add-float v24, v24, v4

    if-ne v1, v14, :cond_3

    .line 117
    iget v4, v5, Lpu;->height:I

    if-nez v4, :cond_3

    iget v4, v5, Lpu;->weight:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_3

    iget v4, v6, Lpv;->h:I

    .line 125
    iget v12, v5, Lpu;->topMargin:I

    add-int/2addr v12, v4

    iget v14, v5, Lpu;->bottomMargin:I

    add-int/2addr v12, v14

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Lpv;->h:I

    move v9, v0

    move/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move-object v4, v5

    const/4 v13, 0x0

    const/16 v20, 0x1

    goto :goto_5

    .line 118
    :cond_3
    iget v4, v5, Lpu;->height:I

    if-nez v4, :cond_4

    iget v4, v5, Lpu;->weight:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_4

    .line 119
    iput v9, v5, Lpu;->height:I

    const/4 v12, 0x0

    goto :goto_2

    .line 124
    :cond_4
    const/high16 v12, -0x80000000

    .line 119
    :goto_2
    cmpl-float v4, v24, v13

    if-nez v4, :cond_5

    iget v4, v6, Lpv;->h:I

    move v14, v4

    goto :goto_3

    .line 124
    :cond_5
    const/4 v14, 0x0

    .line 119
    :goto_3
    const/4 v4, 0x0

    .line 120
    move v9, v0

    move-object/from16 v0, p0

    move/from16 v30, v1

    move-object/from16 v1, v27

    move/from16 v31, v2

    move/from16 v2, p1

    move/from16 v32, v3

    move v3, v4

    const/4 v13, 0x0

    move/from16 v4, p2

    move-object/from16 v33, v5

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lpv;->measureChildWithMargins(Landroid/view/View;IIII)V

    if-eq v12, v11, :cond_6

    .line 121
    move-object/from16 v4, v33

    iput v13, v4, Lpu;->height:I

    goto :goto_4

    .line 120
    :cond_6
    move-object/from16 v4, v33

    .line 122
    :goto_4
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Lpv;->h:I

    add-int v2, v1, v0

    .line 123
    iget v3, v4, Lpu;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v4, Lpu;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lpv;->h:I

    if-eqz v10, :cond_7

    .line 124
    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    goto :goto_5

    :cond_7
    move/from16 v1, v25

    .line 125
    :goto_5
    if-ltz v9, :cond_8

    add-int/lit8 v0, v15, 0x1

    if-ne v9, v0, :cond_8

    iget v0, v6, Lpv;->h:I

    iput v0, v6, Lpv;->c:I

    :cond_8
    if-ge v15, v9, :cond_a

    .line 126
    iget v0, v4, Lpu;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_9

    goto :goto_6

    .line 59
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 137
    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_a
    :goto_6
    move/from16 v0, v31

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_b

    .line 127
    iget v1, v4, Lpu;->width:I

    const/4 v12, -0x1

    if-ne v1, v12, :cond_c

    const/4 v1, 0x1

    const/16 v19, 0x1

    goto :goto_7

    .line 135
    :cond_b
    const/4 v12, -0x1

    :cond_c
    const/4 v1, 0x0

    .line 128
    :goto_7
    iget v2, v4, Lpu;->leftMargin:I

    iget v3, v4, Lpu;->rightMargin:I

    add-int/2addr v2, v3

    .line 129
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 130
    move/from16 v5, v26

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 131
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    .line 132
    move/from16 v13, v21

    invoke-static {v13, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    if-eqz v18, :cond_d

    .line 133
    iget v14, v4, Lpu;->width:I

    if-ne v14, v12, :cond_d

    const/4 v14, 0x1

    goto :goto_8

    .line 135
    :cond_d
    const/4 v14, 0x0

    .line 134
    :goto_8
    iget v4, v4, Lpu;->weight:F

    const/16 v18, 0x0

    cmpl-float v4, v4, v18

    if-lez v4, :cond_f

    const/4 v4, 0x1

    if-eq v4, v1, :cond_e

    move v2, v3

    goto :goto_9

    .line 136
    :cond_e
    nop

    :goto_9
    move/from16 v1, v23

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    goto :goto_b

    :cond_f
    move/from16 v12, v23

    const/4 v4, 0x1

    if-eq v4, v1, :cond_10

    move v2, v3

    goto :goto_a

    .line 135
    :cond_10
    nop

    :goto_a
    move/from16 v4, v22

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v12

    .line 136
    :goto_b
    move/from16 v26, v5

    move/from16 v21, v13

    move/from16 v18, v14

    .line 112
    :goto_c
    add-int/lit8 v15, v15, 0x1

    move v2, v0

    move v0, v9

    move/from16 v1, v30

    move/from16 v3, v32

    const/4 v4, 0x0

    const/4 v9, -0x2

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_0

    .line 124
    :cond_11
    move/from16 v30, v1

    move v0, v2

    move/from16 v32, v3

    move/from16 v13, v21

    move/from16 v4, v22

    move/from16 v12, v23

    move/from16 v1, v25

    move/from16 v5, v26

    iget v2, v6, Lpv;->h:I

    if-lez v2, :cond_12

    .line 138
    move/from16 v9, v32

    invoke-virtual {v6, v9}, Lpv;->p(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, v6, Lpv;->h:I

    iget v3, v6, Lpv;->m:I

    add-int/2addr v2, v3

    iput v2, v6, Lpv;->h:I

    goto :goto_d

    .line 124
    :cond_12
    move/from16 v9, v32

    .line 138
    :cond_13
    :goto_d
    if-eqz v10, :cond_17

    move/from16 v2, v30

    if-eq v2, v11, :cond_14

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_e

    .line 153
    :cond_14
    nop

    .line 138
    :goto_e
    const/4 v3, 0x0

    iput v3, v6, Lpv;->h:I

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v9, :cond_19

    .line 139
    invoke-virtual {v6, v3}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_15

    goto :goto_10

    .line 140
    :cond_15
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_16

    .line 141
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lpu;

    iget v14, v6, Lpv;->h:I

    add-int v25, v14, v1

    .line 142
    iget v15, v11, Lpu;->topMargin:I

    add-int v25, v25, v15

    iget v11, v11, Lpu;->bottomMargin:I

    add-int v11, v25, v11

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v6, Lpv;->h:I

    .line 139
    :cond_16
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 153
    :cond_17
    move/from16 v2, v30

    :cond_18
    nop

    .line 142
    :cond_19
    iget v3, v6, Lpv;->h:I

    .line 143
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingBottom()I

    move-result v14

    add-int/2addr v11, v14

    add-int/2addr v3, v11

    iput v3, v6, Lpv;->h:I

    .line 144
    invoke-virtual/range {p0 .. p0}, Lpv;->getSuggestedMinimumHeight()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 145
    const/4 v11, 0x0

    invoke-static {v3, v8, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    const v11, 0xffffff

    and-int/2addr v11, v3

    iget v14, v6, Lpv;->h:I

    sub-int/2addr v11, v14

    if-nez v20, :cond_1e

    if-eqz v11, :cond_1a

    const/4 v14, 0x0

    cmpl-float v15, v24, v14

    if-lez v15, :cond_1a

    goto :goto_14

    .line 146
    :cond_1a
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v10, :cond_1d

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v2, v10, :cond_1d

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v9, :cond_1d

    .line 147
    invoke-virtual {v6, v2}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_1c

    .line 148
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1b

    goto :goto_12

    .line 149
    :cond_1b
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lpu;

    .line 150
    iget v11, v11, Lpu;->weight:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1c

    .line 151
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 152
    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 153
    invoke-virtual {v10, v11, v14}, Landroid/view/View;->measure(II)V

    .line 148
    :cond_1c
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 153
    :cond_1d
    nop

    .line 175
    :goto_13
    move/from16 v26, v5

    goto/16 :goto_1e

    .line 145
    :cond_1e
    :goto_14
    iget v1, v6, Lpv;->i:F

    const/4 v10, 0x0

    cmpl-float v12, v1, v10

    if-gtz v12, :cond_1f

    goto :goto_15

    :cond_1f
    move/from16 v24, v1

    :goto_15
    const/4 v1, 0x0

    iput v1, v6, Lpv;->h:I

    move v1, v4

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v9, :cond_29

    .line 154
    invoke-virtual {v6, v4}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 155
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v14, 0x8

    if-ne v12, v14, :cond_20

    move/from16 v16, v2

    goto/16 :goto_1d

    .line 156
    :cond_20
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lpu;

    .line 157
    iget v14, v12, Lpu;->weight:F

    const/4 v15, 0x0

    cmpl-float v16, v14, v15

    if-lez v16, :cond_25

    int-to-float v15, v11

    mul-float v15, v15, v14

    div-float v15, v15, v24

    float-to-int v15, v15

    sub-float v24, v24, v14

    sub-int/2addr v11, v15

    .line 158
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingRight()I

    move-result v16

    add-int v14, v14, v16

    move/from16 v16, v11

    iget v11, v12, Lpu;->leftMargin:I

    add-int/2addr v14, v11

    iget v11, v12, Lpu;->rightMargin:I

    add-int/2addr v14, v11

    iget v11, v12, Lpu;->width:I

    .line 159
    invoke-static {v7, v14, v11}, Lpv;->getChildMeasureSpec(III)I

    move-result v11

    .line 160
    iget v14, v12, Lpu;->height:I

    if-nez v14, :cond_23

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v2, v14, :cond_21

    goto :goto_18

    .line 174
    :cond_21
    if-lez v15, :cond_22

    goto :goto_17

    .line 165
    :cond_22
    const/4 v15, 0x0

    .line 174
    :goto_17
    nop

    .line 164
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 165
    invoke-virtual {v10, v11, v15}, Landroid/view/View;->measure(II)V

    goto :goto_19

    .line 161
    :cond_23
    :goto_18
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v15

    if-gez v14, :cond_24

    const/4 v14, 0x0

    .line 162
    :cond_24
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 163
    invoke-virtual {v10, v11, v14}, Landroid/view/View;->measure(II)V

    .line 166
    :goto_19
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    and-int/lit16 v11, v11, -0x100

    .line 167
    invoke-static {v13, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    move/from16 v11, v16

    goto :goto_1a

    .line 165
    :cond_25
    nop

    .line 168
    :goto_1a
    iget v14, v12, Lpu;->leftMargin:I

    iget v15, v12, Lpu;->rightMargin:I

    add-int/2addr v14, v15

    .line 169
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    .line 170
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v16, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_26

    .line 171
    iget v2, v12, Lpu;->width:I

    move/from16 v20, v5

    const/4 v5, -0x1

    if-ne v2, v5, :cond_27

    goto :goto_1b

    .line 174
    :cond_26
    move/from16 v20, v5

    :cond_27
    nop

    .line 172
    move v14, v15

    :goto_1b
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v18, :cond_28

    .line 173
    iget v2, v12, Lpu;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_28

    const/4 v2, 0x1

    goto :goto_1c

    .line 174
    :cond_28
    const/4 v2, 0x0

    .line 173
    :goto_1c
    iget v5, v6, Lpv;->h:I

    .line 174
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v5

    iget v14, v12, Lpu;->topMargin:I

    add-int/2addr v10, v14

    iget v12, v12, Lpu;->bottomMargin:I

    add-int/2addr v10, v12

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v6, Lpv;->h:I

    move/from16 v18, v2

    move/from16 v5, v20

    .line 155
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v16

    goto/16 :goto_16

    .line 165
    :cond_29
    iget v2, v6, Lpv;->h:I

    .line 175
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingBottom()I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v2, v4

    iput v2, v6, Lpv;->h:I

    move v4, v1

    goto/16 :goto_13

    :goto_1e
    if-nez v18, :cond_2a

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2a

    goto :goto_1f

    .line 176
    :cond_2a
    move/from16 v4, v26

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 177
    invoke-virtual/range {p0 .. p0}, Lpv;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 178
    invoke-static {v0, v7, v13}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v0, v3}, Lpv;->setMeasuredDimension(II)V

    if-eqz v19, :cond_69

    .line 179
    invoke-virtual/range {p0 .. p0}, Lpv;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v10, 0x0

    :goto_20
    if-ge v10, v9, :cond_69

    .line 180
    invoke-virtual {v6, v10}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2b

    .line 182
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lpu;

    .line 183
    iget v0, v11, Lpu;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2b

    .line 184
    iget v12, v11, Lpu;->height:I

    .line 185
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v11, Lpu;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 186
    move-object/from16 v0, p0

    move v2, v7

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lpv;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 187
    iput v12, v11, Lpu;->height:I

    :cond_2b
    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    .line 153
    :cond_2c
    const/4 v0, 0x0

    iput v0, v6, Lpv;->h:I

    .line 1
    invoke-virtual/range {p0 .. p0}, Lpv;->getChildCount()I

    move-result v9

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    iget-object v0, v6, Lpv;->k:[I

    const/4 v13, 0x4

    if-eqz v0, :cond_2d

    iget-object v0, v6, Lpv;->l:[I

    if-nez v0, :cond_2e

    :cond_2d
    new-array v0, v13, [I

    iput-object v0, v6, Lpv;->k:[I

    new-array v0, v13, [I

    iput-object v0, v6, Lpv;->l:[I

    :cond_2e
    iget-object v14, v6, Lpv;->k:[I

    iget-object v15, v6, Lpv;->l:[I

    .line 4
    const/16 v18, 0x3

    const/4 v0, -0x1

    aput v0, v14, v18

    const/16 v19, 0x2

    aput v0, v14, v19

    const/4 v1, 0x1

    aput v0, v14, v1

    const/4 v2, 0x0

    aput v0, v14, v2

    .line 5
    aput v0, v15, v18

    aput v0, v15, v19

    aput v0, v15, v1

    aput v0, v15, v2

    iget-boolean v5, v6, Lpv;->a:Z

    iget-boolean v4, v6, Lpv;->j:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_21
    if-ge v3, v9, :cond_44

    .line 6
    invoke-virtual {v6, v3}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_2f

    move/from16 v25, v0

    move/from16 v26, v2

    goto :goto_22

    .line 7
    :cond_2f
    move/from16 v25, v0

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    move/from16 v26, v2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_30

    .line 6
    :goto_22
    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v0, v25

    move/from16 v2, v26

    const/16 v25, -0x2

    move/from16 v26, v3

    goto/16 :goto_31

    .line 8
    :cond_30
    invoke-virtual {v6, v3}, Lpv;->p(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget v0, v6, Lpv;->h:I

    iget v2, v6, Lpv;->g:I

    add-int/2addr v0, v2

    iput v0, v6, Lpv;->h:I

    .line 9
    :cond_31
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lpu;

    .line 10
    iget v0, v2, Lpu;->weight:F

    add-float v27, v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v10, v0, :cond_35

    .line 11
    iget v0, v2, Lpu;->width:I

    if-nez v0, :cond_34

    iget v0, v2, Lpu;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    iget v0, v6, Lpv;->h:I

    .line 20
    iget v1, v2, Lpu;->leftMargin:I

    move/from16 v28, v3

    iget v3, v2, Lpu;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v6, Lpv;->h:I

    if-eqz v5, :cond_32

    .line 21
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 22
    invoke-virtual {v11, v1, v1}, Landroid/view/View;->measure(II)V

    move-object v0, v2

    move/from16 v29, v5

    move/from16 v37, v25

    move/from16 v38, v26

    move/from16 v26, v28

    const/16 v25, -0x2

    move/from16 v28, v4

    goto/16 :goto_29

    .line 28
    :cond_32
    move-object v0, v2

    move/from16 v29, v5

    move/from16 v37, v25

    move/from16 v38, v26

    move/from16 v26, v28

    const/16 v21, 0x1

    const/16 v25, -0x2

    move/from16 v28, v4

    goto/16 :goto_29

    :cond_33
    move/from16 v28, v3

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_23

    .line 18
    :cond_34
    move/from16 v28, v3

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_23

    :cond_35
    move/from16 v28, v3

    move v3, v10

    .line 12
    :goto_23
    iget v0, v2, Lpu;->width:I

    if-nez v0, :cond_37

    iget v0, v2, Lpu;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_36

    .line 13
    const/4 v0, -0x2

    iput v0, v2, Lpu;->width:I

    const/16 v36, 0x0

    goto :goto_25

    .line 18
    :cond_36
    const/4 v0, -0x2

    goto :goto_24

    :cond_37
    const/4 v0, -0x2

    const/4 v1, 0x0

    :goto_24
    const/high16 v36, -0x80000000

    .line 13
    :goto_25
    cmpl-float v29, v27, v1

    if-nez v29, :cond_38

    iget v1, v6, Lpv;->h:I

    move/from16 v29, v1

    goto :goto_26

    .line 18
    :cond_38
    const/16 v29, 0x0

    .line 13
    :goto_26
    const/16 v30, 0x0

    .line 14
    move/from16 v1, v25

    const/16 v25, -0x2

    move-object/from16 v0, p0

    move/from16 v37, v1

    move-object v1, v11

    move-object/from16 v39, v2

    move/from16 v38, v26

    move/from16 v2, p1

    move/from16 v40, v3

    move/from16 v26, v28

    move/from16 v3, v29

    move/from16 v28, v4

    move/from16 v4, p2

    move/from16 v29, v5

    move/from16 v5, v30

    invoke-virtual/range {v0 .. v5}, Lpv;->measureChildWithMargins(Landroid/view/View;IIII)V

    move/from16 v0, v36

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_39

    .line 15
    move-object/from16 v0, v39

    const/4 v1, 0x0

    iput v1, v0, Lpu;->width:I

    goto :goto_27

    .line 14
    :cond_39
    move-object/from16 v0, v39

    .line 16
    :goto_27
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move/from16 v2, v40

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_3a

    iget v2, v6, Lpv;->h:I

    .line 17
    iget v3, v0, Lpu;->leftMargin:I

    add-int/2addr v3, v1

    iget v4, v0, Lpu;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v6, Lpv;->h:I

    goto :goto_28

    .line 19
    :cond_3a
    iget v2, v6, Lpv;->h:I

    add-int v3, v2, v1

    .line 18
    iget v4, v0, Lpu;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lpu;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Lpv;->h:I

    .line 17
    :goto_28
    if-eqz v28, :cond_3b

    .line 19
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_29

    :cond_3b
    nop

    .line 22
    :goto_29
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_3c

    .line 23
    iget v1, v0, Lpu;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    const/4 v4, 0x1

    const/16 v20, 0x1

    goto :goto_2a

    .line 28
    :cond_3c
    const/4 v4, 0x0

    .line 24
    :goto_2a
    iget v1, v0, Lpu;->topMargin:I

    iget v2, v0, Lpu;->bottomMargin:I

    add-int/2addr v1, v2

    .line 25
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 26
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v5, v38

    invoke-static {v5, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    if-eqz v29, :cond_3f

    .line 27
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_3e

    .line 28
    iget v11, v0, Lpu;->gravity:I

    if-gez v11, :cond_3d

    iget v11, v6, Lpv;->e:I

    goto :goto_2b

    :cond_3d
    iget v11, v0, Lpu;->gravity:I

    :goto_2b
    and-int/lit8 v11, v11, 0x70

    const/16 v22, 0x4

    shr-int/lit8 v11, v11, 0x4

    const/16 v17, 0x1

    shr-int/lit8 v11, v11, 0x1

    .line 29
    move/from16 v30, v1

    aget v1, v14, v11

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v14, v11

    .line 30
    aget v1, v15, v11

    sub-int v5, v2, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v15, v11

    goto :goto_2c

    .line 27
    :cond_3e
    move/from16 v30, v1

    goto :goto_2c

    .line 26
    :cond_3f
    move/from16 v30, v1

    .line 31
    :goto_2c
    move/from16 v11, v35

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v23, :cond_40

    .line 32
    iget v5, v0, Lpu;->height:I

    const/4 v11, -0x1

    if-ne v5, v11, :cond_40

    const/4 v5, 0x1

    goto :goto_2d

    .line 34
    :cond_40
    const/4 v5, 0x0

    .line 33
    :goto_2d
    iget v0, v0, Lpu;->weight:F

    const/4 v11, 0x0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_42

    const/4 v0, 0x1

    if-eq v0, v4, :cond_41

    goto :goto_2e

    .line 35
    :cond_41
    move/from16 v2, v30

    :goto_2e
    move/from16 v11, v34

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v34

    move/from16 v0, v37

    goto :goto_30

    :cond_42
    move/from16 v11, v34

    const/4 v0, 0x1

    if-eq v0, v4, :cond_43

    goto :goto_2f

    .line 34
    :cond_43
    move/from16 v2, v30

    :goto_2f
    move/from16 v0, v37

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v34, v11

    .line 35
    :goto_30
    move/from16 v35, v1

    move v2, v3

    move/from16 v23, v5

    move/from16 v1, v27

    .line 6
    :goto_31
    add-int/lit8 v3, v26, 0x1

    move/from16 v4, v28

    move/from16 v5, v29

    const/high16 v11, -0x80000000

    goto/16 :goto_21

    .line 18
    :cond_44
    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v11, v35

    move v5, v2

    move/from16 v2, v34

    iget v3, v6, Lpv;->h:I

    if-lez v3, :cond_45

    .line 36
    invoke-virtual {v6, v9}, Lpv;->p(I)Z

    move-result v3

    if-eqz v3, :cond_45

    iget v3, v6, Lpv;->h:I

    iget v4, v6, Lpv;->g:I

    add-int/2addr v3, v4

    iput v3, v6, Lpv;->h:I

    :cond_45
    nop

    .line 37
    const/4 v3, 0x1

    aget v4, v14, v3

    const/4 v3, -0x1

    if-ne v4, v3, :cond_48

    move/from16 v38, v5

    const/4 v4, 0x0

    aget v5, v14, v4

    if-ne v5, v3, :cond_47

    aget v4, v14, v19

    if-ne v4, v3, :cond_47

    aget v4, v14, v18

    if-eq v4, v3, :cond_46

    const/4 v5, -0x1

    goto :goto_32

    :cond_46
    move/from16 v35, v11

    move/from16 v25, v12

    goto :goto_33

    .line 59
    :cond_47
    const/4 v5, -0x1

    goto :goto_32

    .line 37
    :cond_48
    move/from16 v38, v5

    move v5, v4

    :goto_32
    nop

    .line 38
    aget v3, v14, v18

    move/from16 v25, v12

    const/4 v4, 0x0

    aget v12, v14, v4

    aget v4, v14, v19

    .line 39
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 40
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 41
    aget v4, v15, v18

    const/4 v5, 0x0

    aget v12, v15, v5

    const/4 v5, 0x1

    aget v8, v15, v5

    aget v5, v15, v19

    .line 42
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 43
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 44
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    :goto_33
    if-eqz v28, :cond_4d

    const/high16 v3, -0x80000000

    if-eq v10, v3, :cond_49

    if-nez v10, :cond_4d

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_34

    .line 59
    :cond_49
    move v4, v10

    .line 44
    :goto_34
    const/4 v3, 0x0

    iput v3, v6, Lpv;->h:I

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v9, :cond_4c

    .line 45
    invoke-virtual {v6, v3}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4a

    goto :goto_36

    .line 46
    :cond_4a
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v11, 0x8

    if-eq v8, v11, :cond_4b

    .line 47
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lpu;

    iget v8, v6, Lpv;->h:I

    add-int v11, v8, v13

    .line 48
    iget v12, v5, Lpu;->leftMargin:I

    add-int/2addr v11, v12

    iget v5, v5, Lpu;->rightMargin:I

    add-int/2addr v11, v5

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v6, Lpv;->h:I

    .line 45
    :cond_4b
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 48
    :cond_4c
    move v3, v10

    move v10, v4

    goto :goto_37

    .line 59
    :cond_4d
    nop

    .line 48
    move v3, v10

    :goto_37
    iget v4, v6, Lpv;->h:I

    .line 49
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingRight()I

    move-result v8

    add-int/2addr v5, v8

    add-int/2addr v4, v5

    iput v4, v6, Lpv;->h:I

    .line 50
    invoke-virtual/range {p0 .. p0}, Lpv;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 51
    const/4 v5, 0x0

    invoke-static {v4, v7, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v5, v4

    iget v8, v6, Lpv;->h:I

    sub-int/2addr v5, v8

    if-nez v21, :cond_52

    if-eqz v5, :cond_4e

    const/4 v11, 0x0

    cmpl-float v12, v1, v11

    if-lez v12, :cond_4e

    goto :goto_3a

    .line 52
    :cond_4e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v28, :cond_51

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v10, v1, :cond_51

    const/4 v1, 0x0

    :goto_38
    if-ge v1, v9, :cond_51

    .line 53
    invoke-virtual {v6, v1}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_4f

    goto :goto_39

    .line 55
    :cond_4f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lpu;

    .line 56
    iget v3, v3, Lpu;->weight:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_50

    .line 57
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v13, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 59
    invoke-virtual {v2, v5, v10}, Landroid/view/View;->measure(II)V

    .line 54
    :cond_50
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 59
    :cond_51
    nop

    .line 95
    move/from16 v11, p2

    move/from16 v24, v9

    move/from16 v9, v25

    move/from16 v2, v38

    const/4 v3, 0x0

    goto/16 :goto_4a

    .line 51
    :cond_52
    :goto_3a
    iget v2, v6, Lpv;->i:F

    const/4 v11, 0x0

    cmpl-float v12, v2, v11

    if-gtz v12, :cond_53

    goto :goto_3b

    :cond_53
    move v1, v2

    .line 60
    :goto_3b
    const/4 v2, -0x1

    aput v2, v14, v18

    aput v2, v14, v19

    const/4 v11, 0x1

    aput v2, v14, v11

    const/4 v12, 0x0

    aput v2, v14, v12

    .line 61
    aput v2, v15, v18

    aput v2, v15, v19

    aput v2, v15, v11

    aput v2, v15, v12

    iput v12, v6, Lpv;->h:I

    move v11, v5

    move/from16 v2, v38

    const/4 v5, 0x0

    const/4 v12, -0x1

    :goto_3c
    if-ge v5, v9, :cond_62

    .line 62
    invoke-virtual {v6, v5}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_61

    .line 63
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v7, 0x8

    if-ne v8, v7, :cond_54

    move/from16 v24, v9

    move v8, v11

    move/from16 v9, v25

    const/16 v21, 0x0

    move/from16 v11, p2

    move/from16 v25, v3

    goto/16 :goto_47

    .line 64
    :cond_54
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lpu;

    .line 65
    iget v8, v7, Lpu;->weight:F

    const/16 v21, 0x0

    cmpl-float v24, v8, v21

    if-lez v24, :cond_59

    move/from16 v24, v9

    int-to-float v9, v11

    mul-float v9, v9, v8

    div-float/2addr v9, v1

    float-to-int v9, v9

    sub-float/2addr v1, v8

    sub-int/2addr v11, v9

    .line 66
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingBottom()I

    move-result v26

    add-int v8, v8, v26

    move/from16 v26, v1

    iget v1, v7, Lpu;->topMargin:I

    add-int/2addr v8, v1

    iget v1, v7, Lpu;->bottomMargin:I

    add-int/2addr v8, v1

    iget v1, v7, Lpu;->height:I

    .line 67
    move/from16 v27, v11

    move/from16 v11, p2

    invoke-static {v11, v8, v1}, Lpv;->getChildMeasureSpec(III)I

    move-result v1

    .line 68
    iget v8, v7, Lpu;->width:I

    if-nez v8, :cond_57

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v10, v8, :cond_55

    goto :goto_3e

    .line 76
    :cond_55
    if-lez v9, :cond_56

    goto :goto_3d

    .line 72
    :cond_56
    const/4 v9, 0x0

    .line 76
    :goto_3d
    nop

    .line 72
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v13, v9, v1}, Landroid/view/View;->measure(II)V

    goto :goto_3f

    .line 69
    :cond_57
    :goto_3e
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    if-gez v8, :cond_58

    const/4 v8, 0x0

    .line 70
    :cond_58
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 71
    invoke-virtual {v13, v8, v1}, Landroid/view/View;->measure(II)V

    .line 73
    :goto_3f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    const/high16 v8, -0x1000000

    and-int/2addr v1, v8

    .line 74
    invoke-static {v2, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move/from16 v1, v26

    move/from16 v8, v27

    goto :goto_40

    .line 72
    :cond_59
    move/from16 v24, v9

    move v8, v11

    move/from16 v11, p2

    .line 74
    :goto_40
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v3, v9, :cond_5a

    iget v9, v6, Lpv;->h:I

    .line 75
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v27, v1

    iget v1, v7, Lpu;->leftMargin:I

    add-int v26, v26, v1

    iget v1, v7, Lpu;->rightMargin:I

    add-int v26, v26, v1

    add-int v9, v9, v26

    iput v9, v6, Lpv;->h:I

    move/from16 v26, v2

    goto :goto_41

    .line 84
    :cond_5a
    move/from16 v27, v1

    iget v1, v6, Lpv;->h:I

    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v1

    move/from16 v26, v2

    iget v2, v7, Lpu;->leftMargin:I

    add-int/2addr v9, v2

    iget v2, v7, Lpu;->rightMargin:I

    add-int/2addr v9, v2

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lpv;->h:I

    .line 75
    :goto_41
    move/from16 v9, v25

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_5b

    .line 77
    iget v1, v7, Lpu;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5b

    const/4 v1, 0x1

    goto :goto_42

    .line 84
    :cond_5b
    const/4 v1, 0x0

    .line 78
    :goto_42
    iget v2, v7, Lpu;->topMargin:I

    move/from16 v25, v3

    iget v3, v7, Lpu;->bottomMargin:I

    add-int/2addr v2, v3

    .line 79
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 80
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    move/from16 v28, v2

    const/4 v2, 0x1

    if-eq v2, v1, :cond_5c

    move v2, v3

    goto :goto_43

    .line 84
    :cond_5c
    move/from16 v2, v28

    .line 81
    :goto_43
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v23, :cond_5d

    .line 82
    iget v1, v7, Lpu;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5e

    const/4 v1, 0x1

    goto :goto_44

    .line 84
    :cond_5d
    const/4 v2, -0x1

    :cond_5e
    const/4 v1, 0x0

    .line 82
    :goto_44
    if-eqz v29, :cond_60

    .line 83
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v13

    if-eq v13, v2, :cond_60

    .line 84
    iget v2, v7, Lpu;->gravity:I

    if-gez v2, :cond_5f

    iget v2, v6, Lpv;->e:I

    goto :goto_45

    :cond_5f
    iget v2, v7, Lpu;->gravity:I

    :goto_45
    and-int/lit8 v2, v2, 0x70

    const/4 v7, 0x4

    shr-int/2addr v2, v7

    const/16 v17, 0x1

    shr-int/lit8 v2, v2, 0x1

    .line 85
    aget v7, v14, v2

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v14, v2

    .line 86
    aget v7, v15, v2

    sub-int/2addr v3, v13

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v15, v2

    goto :goto_46

    .line 84
    :cond_60
    nop

    .line 63
    :goto_46
    move/from16 v23, v1

    move/from16 v2, v26

    move/from16 v1, v27

    goto :goto_47

    .line 72
    :cond_61
    move/from16 v24, v9

    move v8, v11

    move/from16 v9, v25

    const/16 v21, 0x0

    move/from16 v11, p2

    move/from16 v25, v3

    .line 63
    :goto_47
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, p1

    move v11, v8

    move/from16 v3, v25

    move/from16 v25, v9

    move/from16 v9, v24

    goto/16 :goto_3c

    .line 72
    :cond_62
    move/from16 v11, p2

    move/from16 v24, v9

    move/from16 v9, v25

    iget v1, v6, Lpv;->h:I

    .line 87
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    iput v1, v6, Lpv;->h:I

    .line 88
    const/4 v1, 0x1

    aget v5, v14, v1

    const/4 v1, -0x1

    if-ne v5, v1, :cond_65

    const/4 v3, 0x0

    aget v5, v14, v3

    if-ne v5, v1, :cond_64

    aget v3, v14, v19

    if-ne v3, v1, :cond_64

    aget v3, v14, v18

    if-eq v3, v1, :cond_63

    const/4 v5, -0x1

    goto :goto_48

    .line 108
    :cond_63
    move/from16 v35, v12

    const/4 v3, 0x0

    goto :goto_49

    :cond_64
    const/4 v5, -0x1

    .line 88
    :cond_65
    :goto_48
    nop

    .line 89
    aget v1, v14, v18

    const/4 v3, 0x0

    aget v7, v14, v3

    aget v8, v14, v19

    .line 90
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 91
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 89
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 92
    aget v5, v15, v18

    aget v7, v15, v3

    const/4 v8, 0x1

    aget v8, v15, v8

    aget v10, v15, v19

    .line 93
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 94
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 92
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v1, v5

    .line 95
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v35, v1

    :goto_49
    nop

    :goto_4a
    if-nez v23, :cond_66

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_66

    goto :goto_4b

    :cond_66
    move/from16 v0, v35

    :goto_4b
    const/high16 v1, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v1, v4

    .line 96
    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lpv;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 97
    invoke-virtual/range {p0 .. p0}, Lpv;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v2, 0x10

    .line 98
    invoke-static {v0, v11, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 99
    invoke-virtual {v6, v1, v0}, Lpv;->setMeasuredDimension(II)V

    if-eqz v20, :cond_69

    .line 100
    invoke-virtual/range {p0 .. p0}, Lpv;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_4c
    move/from16 v9, v24

    if-ge v8, v9, :cond_69

    .line 101
    invoke-virtual {v6, v8}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v10, 0x8

    if-eq v0, v10, :cond_67

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lpu;

    .line 104
    iget v0, v11, Lpu;->height:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_68

    .line 105
    iget v13, v11, Lpu;->width:I

    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v11, Lpu;->width:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 107
    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lpv;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 108
    iput v13, v11, Lpu;->width:I

    goto :goto_4d

    .line 102
    :cond_67
    const/4 v12, -0x1

    .line 108
    :cond_68
    :goto_4d
    add-int/lit8 v8, v8, 0x1

    move/from16 v24, v9

    goto :goto_4c

    .line 187
    :cond_69
    return-void
.end method

.method protected final p(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Lpv;->n:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lpv;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget p1, p0, Lpv;->n:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    iget v2, p0, Lpv;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_5

    .line 2
    invoke-virtual {p0, p1}, Lpv;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    nop

    :cond_6
    :goto_1
    return v0
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpv;->a:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
