.class public final Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
.implements Lcom/android/car/ui/plugin/oemapis/recyclerview/OnScrollListenerOEMV1;


# instance fields
.field private mHeight:I

.field private mLayoutStyle:Laoh;

.field private mOEMAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

.field private mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

.field private mRecyclerView:Lapi;

.field private final mScrollListeners:Ljava/util/List;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    .line 5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setPadding(IIII)V

    return-void
.end method

.method static synthetic lambda$setLayoutStyle$0(Laoh;I)I
    .locals 0

    .line 1
    check-cast p0, Laof;

    iget-object p0, p0, Laof;->a:Lps;

    .line 2
    invoke-virtual {p0}, Lps;->b()V

    const/4 p0, 0x1

    return p0
.end method

.method private static toInternalScrollState(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addItemDecoration(Lqx;)V
    .locals 0

    return-void
.end method

.method public addItemDecoration(Lqx;I)V
    .locals 0

    return-void
.end method

.method public addOnScrollListener(Laor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    .line 2
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->clearOnScrollListeners()V

    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findFirstVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findLastVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public findViewHolderForAdapterPosition(I)Lrr;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewHolderForLayoutPosition(I)Lrr;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdapter()Lqq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemDecorationAt(I)Lqx;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemDecorationCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutManager()Lra;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutStyle()Laoh;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mLayoutStyle:Laoh;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mRecyclerView:Lapi;

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getScrollState()I

    move-result v0

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->toInternalScrollState(I)I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public hasFixedSize()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->hasFixedSize()Z

    move-result v0

    return v0
.end method

.method public invalidateItemDecorations()V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laor;

    .line 2
    invoke-interface {p2}, Laor;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScrolled(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laor;

    .line 2
    invoke-interface {p2}, Laor;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeItemDecoration(Lqx;)V
    .locals 0

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 0

    return-void
.end method

.method public removeOnScrollListener(Laor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Lqq;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setAdapter(Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;-><init>(Landroid/content/Context;Lqq;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    .line 3
    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setAdapter(Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    .line 2
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setHasFixedSize(Z)V

    return-void
.end method

.method public setItemAnimator(Lqv;)V
    .locals 0

    return-void
.end method

.method public setLayoutManager(Lra;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Laof;->d(Lra;)Laof;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setLayoutStyle(Laoh;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Laoi;->d(Lra;)Laoi;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setLayoutStyle(Laoh;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    .line 3
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 10
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v1, :cond_3

    .line 12
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    .line 13
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 15
    :cond_3
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mWidth:I

    .line 16
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mHeight:I

    .line 17
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLayoutStyle(Laoh;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mLayoutStyle:Laoh;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setLayoutStyle(Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;)V

    .line 2
    :cond_0
    new-instance v0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;-><init>(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;Laoh;)V

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v1, :cond_2

    .line 3
    instance-of v2, p1, Laof;

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$$ExternalSyntheticLambda0;-><init>(Laoh;)V

    invoke-interface {v1, v2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setSpanSizeLookup(Lcom/android/car/ui/plugin/oemapis/recyclerview/SpanSizeLookupOEMV1;)V

    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    .line 5
    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setLayoutStyle(Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;)V

    :cond_2
    return-void
.end method

.method public setOnFlingListener(Lrc;)V
    .locals 0

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public setRecyclerViewOEMV1(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lapi;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lapi;-><init>(Landroid/content/Context;Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mRecyclerView:Lapi;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    .line 4
    invoke-interface {p1, p0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->addOnScrollListener(Lcom/android/car/ui/plugin/oemapis/recyclerview/OnScrollListenerOEMV1;)V

    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mWidth:I

    iget v1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mHeight:I

    .line 5
    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    .line 6
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSpanSizeLookup(Lps;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mLayoutStyle:Laoh;

    instance-of v1, v0, Laof;

    if-eqz v1, :cond_0

    .line 2
    move-object v1, v0

    check-cast v1, Laof;

    iput-object p1, v1, Laof;->a:Lps;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setLayoutStyle(Laoh;)V

    :cond_0
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->smoothScrollBy(II)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->smoothScrollToPosition(I)V

    return-void
.end method
