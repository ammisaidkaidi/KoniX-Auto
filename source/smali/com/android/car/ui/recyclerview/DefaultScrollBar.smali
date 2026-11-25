.class public Lcom/android/car/ui/recyclerview/DefaultScrollBar;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lapj;


# instance fields
.field private final mAdapterChangeObserver:Lqs;

.field private mButtonDisabledAlpha:F

.field private final mChildHeightByAdapterPosition:Landroid/util/SparseArray;

.field private mContext:Landroid/content/Context;

.field private mDownButton:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mOrientationHelper:Lqm;

.field private mPageDownOnContinuousScrollListener:Laph;

.field private mPageUpOnContinuousScrollListener:Laph;

.field private final mPaginationInterpolator:Landroid/view/animation/Interpolator;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mRecyclerViewOnScrollListener:Lre;

.field private mScrollThumb:Landroid/view/View;

.field private mScrollTrack:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mScrollbarThumbMinHeight:I

.field private mSnapHelper:Laoz;

.field private mUpButton:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$Ukrr5HKF67JZyc19OTW0irZqniM(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->updatePaginationButtons()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcacheChildrenHeight(Lcom/android/car/ui/recyclerview/DefaultScrollBar;Lra;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->cacheChildrenHeight(Lra;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearCachedHeights(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->clearCachedHeights()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePaginationButtons(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->updatePaginationButtons()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lapd;

    invoke-direct {v0, p0}, Lapd;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mAdapterChangeObserver:Lqs;

    new-instance v0, Lape;

    invoke-direct {v0, p0}, Lape;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerViewOnScrollListener:Lre;

    return-void
.end method

.method private cacheChildrenHeight(Lra;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lra;->ak()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lra;->aw(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lra;->bg(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateScrollThumbLength(II)I
    .locals 1

    .line 1
    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollbarThumbMinHeight:I

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private calculateScrollThumbOffset(III)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->isDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    .line 3
    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method private clearCachedHeights()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getLayoutManager()Lra;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->cacheChildrenHeight(Lra;)V

    return-void
.end method

.method private estimateNextPositionScrollUp(IILqm;)I
    .locals 12

    .line 1
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_c

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_a

    neg-int p1, p2

    iget-object p2, p3, Lqm;->a:Lra;

    .line 4
    invoke-virtual {p2}, Lra;->ak()I

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    goto :goto_5

    .line 11
    :cond_0
    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_5

    .line 5
    invoke-virtual {p2, v8}, Lra;->aw(I)Landroid/view/View;

    move-result-object v9

    .line 6
    invoke-static {v9}, Lra;->bg(Landroid/view/View;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    goto :goto_4

    :cond_1
    if-ge v10, v4, :cond_2

    move v11, v10

    goto :goto_2

    :cond_2
    move v11, v4

    :goto_2
    if-ge v10, v4, :cond_3

    move-object v6, v9

    :cond_3
    if-gt v10, v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v7, v9

    move v5, v10

    :goto_3
    move v4, v11

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_8

    if-nez v7, :cond_6

    goto :goto_5

    .line 7
    :cond_6
    invoke-virtual {p3, v6}, Lqm;->d(Landroid/view/View;)I

    move-result p2

    .line 8
    invoke-virtual {p3, v7}, Lqm;->d(Landroid/view/View;)I

    move-result v0

    .line 7
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 9
    invoke-virtual {p3, v6}, Lqm;->a(Landroid/view/View;)I

    move-result v0

    .line 10
    invoke-virtual {p3, v7}, Lqm;->a(Landroid/view/View;)I

    move-result p3

    .line 9
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    sub-int/2addr p3, p2

    if-nez p3, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    int-to-float p2, p3

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    int-to-float p3, v5

    div-float v3, p2, p3

    goto :goto_5

    :cond_8
    nop

    .line 4
    :goto_5
    cmpg-float p2, v3, v2

    if-gtz p2, :cond_9

    goto :goto_6

    :cond_9
    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_6

    .line 9
    :cond_a
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_b

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x1

    goto :goto_6

    :cond_b
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_c
    nop

    .line 4
    :goto_6
    return v1
.end method

.method private getFirstMostVisibleChild(Lqm;)Landroid/view/View;
    .locals 6

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getLayoutManager()Lra;

    move-result-object v3

    invoke-virtual {v3}, Lra;->ak()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getLayoutManager()Lra;

    move-result-object v3

    invoke-virtual {v3, v2}, Lra;->aw(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-static {v3, p1}, Laoz;->h(Landroid/view/View;Lqm;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    cmpl-float v5, v4, v0

    if-lez v5, :cond_1

    move-object v1, v3

    :cond_1
    cmpl-float v3, v4, v0

    if-lez v3, :cond_2

    move v0, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    :goto_1
    return-object v1
.end method

.method private getOrientationHelper(Lra;)Lqm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mOrientationHelper:Lqm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqm;->a:Lra;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lqm;->r(Lra;)Lqm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mOrientationHelper:Lqm;

    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mOrientationHelper:Lqm;

    return-object p1
.end method

.method private isDownEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private moveY(Landroid/view/View;F)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setDownEnabled(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPageDownOnContinuousScrollListener:Laph;

    invoke-virtual {v0}, Laph;->a()V

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mButtonDisabledAlpha:F

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setParameters(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->calculateScrollThumbLength(II)I

    move-result p3

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->calculateScrollThumbOffset(III)I

    move-result p1

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 6
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, p3, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 7
    :cond_2
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_3
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    int-to-float p1, p1

    .line 9
    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->moveY(Landroid/view/View;F)V

    return-void

    .line 2
    :cond_4
    :goto_0
    return-void
.end method

.method private setUpEnabled(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPageUpOnContinuousScrollListener:Laph;

    invoke-virtual {v0}, Laph;->a()V

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mButtonDisabledAlpha:F

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updatePaginationButtons()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getLayoutManager()Lra;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->isAtStart()Z

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->isAtEnd()Z

    move-result v3

    xor-int/lit8 v4, v2, 0x1

    .line 5
    invoke-direct {p0, v4}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setUpEnabled(Z)V

    xor-int/lit8 v4, v3, 0x1

    .line 6
    invoke-direct {p0, v4}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setDownEnabled(Z)V

    iget-object v4, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 8
    :cond_1
    invoke-virtual {v0}, Lra;->am()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 10
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getOrientationHelper(Lra;)Lqm;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lqm;->k()I

    move-result v2

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0700e4

    .line 13
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    .line 14
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v9, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    .line 16
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/2addr v8, v7

    .line 17
    iget v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v9

    add-int/2addr v8, v7

    add-int v7, v3, v3

    add-int v9, v7, v8

    if-ge v2, v9, :cond_5

    if-nez v4, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    .line 18
    :cond_4
    nop

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 18
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v10, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollbarThumbMinHeight:I

    .line 21
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v7, v3

    add-int/2addr v9, v1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    if-ge v2, v7, :cond_6

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    .line 22
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    .line 24
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    .line 25
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :goto_1
    if-eqz v4, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    .line 26
    :cond_7
    const/4 v1, 0x0

    .line 23
    :goto_2
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 26
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    move v6, v1

    .line 9
    :goto_3
    invoke-virtual {v0}, Lra;->X()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->computeVerticalScrollRange()I

    move-result v0

    .line 28
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->computeVerticalScrollOffset()I

    move-result v1

    .line 29
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->computeVerticalScrollExtent()I

    move-result v2

    .line 30
    invoke-direct {p0, v0, v1, v2}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setParameters(III)V

    goto :goto_4

    .line 31
    :cond_8
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->computeHorizontalScrollRange()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->computeHorizontalScrollOffset()I

    move-result v1

    .line 33
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->computeHorizontalScrollExtent()I

    move-result v2

    .line 34
    invoke-direct {p0, v0, v1, v2}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setParameters(III)V

    .line 30
    :goto_4
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz v6, :cond_9

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    new-instance v1, Lapc;

    invoke-direct {v1, p0, v5}, Lapc;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public adapterChanged(Lqq;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->e()Lqq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->e()Lqq;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mAdapterChangeObserver:Lqs;

    invoke-virtual {v0, v1}, Lqq;->unregisterAdapterDataObserver(Lqs;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    move-exception v0

    .line 2
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mAdapterChangeObserver:Lqs;

    .line 3
    invoke-virtual {p1, v0}, Lqq;->registerAdapterDataObserver(Lqs;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    :cond_1
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lra;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 2
    const p3, 0x7f07005a

    invoke-static {p2, p3}, Laro;->a(Landroid/content/res/Resources;I)F

    move-result p3

    iput p3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mButtonDisabledAlpha:F

    .line 3
    const p3, 0x7f0700be

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollbarThumbMinHeight:I

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 4
    const p3, 0x7f0900a4

    invoke-static {p2, p3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    new-instance p2, Lapa;

    .line 5
    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lapa;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;I)V

    iget-object p3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    .line 6
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Laph;

    .line 7
    invoke-direct {p3, p1, p2}, Laph;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPageUpOnContinuousScrollListener:Laph;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 9
    const p3, 0x7f0900a3

    invoke-static {p2, p3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    new-instance p2, Lapa;

    .line 10
    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lapa;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;I)V

    iget-object p3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    .line 11
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Laph;

    .line 12
    invoke-direct {p3, p1, p2}, Laph;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPageDownOnContinuousScrollListener:Laph;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 14
    const p3, 0x7f0900a6

    invoke-static {p2, p3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 15
    const p3, 0x7f0900a5

    invoke-static {p2, p3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    new-instance p2, Laoz;

    invoke-direct {p2, p1}, Laoz;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Laoz;

    .line 16
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView;->C:Lrc;

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Laoz;

    .line 17
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p3

    iget-object v0, p1, Lrc;->a:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p3, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p1, Lrc;->c:Lre;

    .line 18
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->U(Lre;)V

    iget-object v0, p1, Lrc;->a:Landroid/support/v7/widget/RecyclerView;

    iput-object p2, v0, Landroid/support/v7/widget/RecyclerView;->C:Lrc;

    :cond_1
    iput-object p3, p1, Lrc;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p1, Lrc;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_3

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView;->C:Lrc;

    if-nez v0, :cond_2

    .line 19
    iget-object v0, p1, Lrc;->c:Lre;

    .line 20
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->q(Lre;)V

    iget-object p2, p1, Lrc;->a:Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView;->C:Lrc;

    new-instance v0, Landroid/widget/Scroller;

    .line 21
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p1, Lrc;->b:Landroid/widget/Scroller;

    .line 17
    invoke-virtual {p1}, Lrc;->a()V

    goto :goto_0

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    const-string p2, "An instance of OnFlingListener already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    :goto_0
    iput-object p3, p1, Laoz;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance p1, Lapf;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 22
    invoke-direct {p1, p2, p3, v0}, Lapf;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)V

    iget-object p2, p1, Lapf;->a:Landroid/view/View;

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerViewOnScrollListener:Lre;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->q(Lre;)V

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    const/16 p2, 0x8

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    new-instance p2, Lapb;

    invoke-direct {p2, p0}, Lapb;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 27
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->e()Lqq;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 28
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->e()Lqq;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->adapterChanged(Lqq;)V

    :cond_4
    return-void
.end method

.method public isAtEnd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Laoz;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getLayoutManager()Lra;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoz;->k(Lra;)Z

    move-result v0

    return v0
.end method

.method public isAtStart()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Laoz;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getLayoutManager()Lra;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v1}, Lra;->ak()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1, v2}, Lra;->aw(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lra;->X()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1
    invoke-virtual {v0, v1}, Laoz;->j(Lra;)Lqm;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Laoz;->i(Lra;)Lqm;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {v0, v4}, Lqm;->d(Landroid/view/View;)I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lqm;->j()I

    move-result v0

    if-lt v1, v0, :cond_4

    invoke-static {v4}, Lra;->bg(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v3

    .line 1
    :cond_3
    const/4 v2, 0x1

    .line 2
    :cond_4
    :goto_1
    return v2
.end method

.method public synthetic lambda$initialize$0$com-android-car-ui-recyclerview-DefaultScrollBar(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->pageUp()V

    return-void
.end method

.method public synthetic lambda$initialize$1$com-android-car-ui-recyclerview-DefaultScrollBar(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->pageDown()V

    return-void
.end method

.method public synthetic lambda$initialize$2$com-android-car-ui-recyclerview-DefaultScrollBar(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mHandler:Landroid/os/Handler;

    new-instance p2, Lapc;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lapc;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$updatePaginationButtons$3$com-android-car-ui-recyclerview-DefaultScrollBar()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public pageDown()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getLayoutManager()Lra;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lra;->ak()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getOrientationHelper(Lra;)Lqm;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lqm;->k()I

    move-result v2

    .line 5
    invoke-direct {p0, v1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getFirstMostVisibleChild(Lqm;)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v3}, Lra;->bi(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Lqm;->a(Landroid/view/View;)I

    move-result v4

    .line 8
    invoke-virtual {v1}, Lqm;->f()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 9
    invoke-virtual {v1, v3}, Lqm;->a(Landroid/view/View;)I

    move-result v4

    .line 10
    invoke-virtual {v1}, Lqm;->f()I

    move-result v5

    sub-int/2addr v4, v5

    .line 11
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 23
    :cond_1
    nop

    .line 12
    move v4, v2

    :goto_0
    invoke-virtual {v0}, Lra;->ak()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_4

    .line 13
    invoke-virtual {v0, v5}, Lra;->aw(I)Landroid/view/View;

    move-result-object v6

    .line 14
    invoke-virtual {v1, v6}, Lqm;->d(Landroid/view/View;)I

    move-result v7

    .line 15
    invoke-virtual {v1, v3}, Lqm;->d(Landroid/view/View;)I

    move-result v8

    if-le v7, v8, :cond_4

    .line 16
    invoke-virtual {v1, v6}, Lqm;->d(Landroid/view/View;)I

    move-result v7

    .line 17
    invoke-virtual {v1}, Lqm;->j()I

    move-result v8

    sub-int/2addr v7, v8

    if-gt v7, v2, :cond_3

    .line 18
    invoke-virtual {v1, v6}, Lqm;->a(Landroid/view/View;)I

    move-result v0

    .line 19
    invoke-virtual {v1}, Lqm;->f()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 20
    invoke-virtual {v1, v6}, Lqm;->a(Landroid/view/View;)I

    move-result v0

    .line 21
    invoke-virtual {v1}, Lqm;->j()I

    move-result v1

    sub-int v4, v0, v1

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v1, v6}, Lqm;->d(Landroid/view/View;)I

    move-result v0

    .line 23
    invoke-virtual {v1}, Lqm;->j()I

    move-result v1

    sub-int v4, v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 21
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0, v4}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->smoothScrollBy(II)V

    return-void

    .line 2
    :cond_5
    :goto_3
    return-void
.end method

.method public pageUp()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->computeVerticalScrollOffset()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getLayoutManager()Lra;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1}, Lra;->ak()I

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getOrientationHelper(Lra;)Lqm;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lqm;->k()I

    move-result v1

    .line 6
    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getFirstMostVisibleChild(Lqm;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getLayoutManager()Lra;

    invoke-static {v2}, Lra;->bg(Landroid/view/View;)I

    move-result v4

    goto :goto_0

    .line 12
    :cond_1
    const/4 v4, 0x0

    .line 7
    :goto_0
    nop

    .line 8
    invoke-virtual {v0}, Lqm;->j()I

    move-result v5

    .line 9
    invoke-virtual {v0, v2}, Lqm;->d(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v5, v2

    .line 8
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v1, v2

    .line 10
    invoke-direct {p0, v4, v2, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->estimateNextPositionScrollUp(IILqm;)I

    move-result v0

    if-nez v0, :cond_2

    neg-int v0, v1

    .line 11
    invoke-virtual {p0, v3, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->smoothScrollBy(II)V

    return-void

    :cond_2
    add-int/2addr v4, v0

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->smoothScrollToPosition(I)V

    return-void

    .line 3
    :cond_3
    :goto_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHighlightThumb(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public setPadding(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 2
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 1
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->ab(II)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v1, :cond_1

    .line 2
    const-string p1, "RecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 3
    invoke-virtual {v1, v0, p1}, Lra;->ai(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method
