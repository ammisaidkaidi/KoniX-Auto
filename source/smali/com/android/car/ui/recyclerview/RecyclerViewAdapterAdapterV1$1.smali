.class Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;
.super Lqs;
.source "PG"


# instance fields
.field final synthetic this$0:Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;->this$0:Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;

    invoke-direct {p0}, Lqs;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;->this$0:Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->-$$Nest$fgetmAdapterDataObservers(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 2
    invoke-interface {v1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;->this$0:Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->-$$Nest$fgetmAdapterDataObservers(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemRangeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;->this$0:Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->-$$Nest$fgetmAdapterDataObservers(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 4
    invoke-interface {v1, p1, p2, p3}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;->this$0:Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->-$$Nest$fgetmAdapterDataObservers(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemRangeInserted(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;->this$0:Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->-$$Nest$fgetmAdapterDataObservers(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, p1, v2

    add-int v4, p2, v2

    .line 2
    invoke-interface {v1, v3, v4}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemMoved(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;->this$0:Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->-$$Nest$fgetmAdapterDataObservers(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemRangeRemoved(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$1;->this$0:Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;->-$$Nest$fgetmAdapterDataObservers(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 2
    invoke-interface {v1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onStateRestorationPolicyChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
