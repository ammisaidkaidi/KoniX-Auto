.class Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;
.super Lqs;
.source "PG"


# instance fields
.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$oemItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$oemItems:Ljava/util/List;

    iput-object p3, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Lqs;-><init>()V

    return-void
.end method

.method static synthetic lambda$onChanged$0(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->-$$Nest$smtoOemListItem(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$oemItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$oemItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$items:Ljava/util/List;

    .line 2
    sget-object v2, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1$$ExternalSyntheticLambda0;

    .line 3
    invoke-static {v1, v2}, Laro;->j(Ljava/util/List;Lj$/util/function/Function;)Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 3

    .line 1
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$oemItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoj;

    invoke-static {v2}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->-$$Nest$smtoOemListItem(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 2
    move p3, p1

    :goto_0
    add-int v0, p1, p2

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$oemItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$items:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoj;

    invoke-static {v1}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->-$$Nest$smtoOemListItem(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 3

    .line 1
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$oemItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoj;

    invoke-static {v2}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->-$$Nest$smtoOemListItem(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 3

    .line 1
    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$oemItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;

    iget-object v2, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$oemItems:Ljava/util/List;

    .line 2
    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;->val$oemItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
