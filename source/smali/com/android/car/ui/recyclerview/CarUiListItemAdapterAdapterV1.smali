.class public final Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;
.super Lqq;
.source "PG"


# instance fields
.field private mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqq;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    .line 2
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->hasStableIds()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->access$001(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;Z)V

    return-void
.end method

.method static synthetic access$001(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lqq;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->onAttachedToRecyclerView(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;->getViewHolder()Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->bindViewHolder(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lrr;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->onBindViewHolder(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-interface {v1, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;-><init>(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lrr;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->onDetachedFromRecyclerView(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;)V

    return-void
.end method

.method public onFailedToRecycleView(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;->getViewHolder()Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->onFailedToRecycleView(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onFailedToRecycleView(Lrr;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->onFailedToRecycleView(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;->getViewHolder()Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->onViewAttachedToWindow(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Lrr;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->onViewAttachedToWindow(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;->getViewHolder()Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->onViewDetachedFromWindow(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Lrr;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->onViewDetachedFromWindow(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->mAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;->getViewHolder()Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;->onViewRecycled(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Lrr;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;->onViewRecycled(Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;)V

    return-void
.end method
