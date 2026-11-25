.class public final Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;


# instance fields
.field private final mAdapter:Lqq;

.field private mAdapterDataObserver:Lqs;

.field private mAdapterDataObservers:Ljava/util/List;

.field private final mAppContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapterDataObservers(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapterDataObservers:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lqq;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapterDataObservers:Ljava/util/List;

    new-instance v0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;-><init>(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapterDataObserver:Lqs;

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;

    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->bindViewHolder(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;I)V

    return-void
.end method

.method public bindViewHolder(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;->getViewHolder()Lrr;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lqq;->bindViewHolder(Lrr;I)V

    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;
    .locals 2

    .line 2
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {v1, p1, p2}, Lqq;->createViewHolder(Landroid/view/ViewGroup;I)Lrr;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;-><init>(Lrr;)V

    return-object v0
.end method

.method public getAdapter()Lqq;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {v0}, Lqq;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {v0, p1}, Lqq;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {v0, p1}, Lqq;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getStateRestorationPolicyInt()I
    .locals 1

    .line 1
    sget-object v0, Lqp;->a:Lqp;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {v0}, Lqq;->getStateRestorationPolicy()Lqp;

    move-result-object v0

    invoke-virtual {v0}, Lqp;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {v0}, Lqq;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqq;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapterDataObserver:Lqs;

    .line 2
    invoke-virtual {p1, v0}, Lqq;->registerAdapterDataObserver(Lqs;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapterDataObserver:Lqs;

    invoke-virtual {p1, v0}, Lqq;->unregisterAdapterDataObserver(Lqs;)V

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqq;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->onFailedToRecycleView(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;->getViewHolder()Lrr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lqq;->onFailedToRecycleView(Lrr;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->onViewAttachedToWindow(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;->getViewHolder()Lrr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lqq;->onViewAttachedToWindow(Lrr;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->onViewDetachedFromWindow(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;->getViewHolder()Lrr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lqq;->onViewDetachedFromWindow(Lrr;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->onViewRecycled(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapter:Lqq;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;->getViewHolder()Lrr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lqq;->onViewRecycled(Lrr;)V

    return-void
.end method

.method public registerAdapterDataObserver(Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapterDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterAdapterDataObserver(Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->mAdapterDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
