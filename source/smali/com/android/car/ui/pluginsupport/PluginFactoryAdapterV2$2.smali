.class Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;


# instance fields
.field final synthetic val$carUiRecyclerViewLayout:I

.field final synthetic val$orientation:I

.field final synthetic val$reversed:Z

.field final synthetic val$spanCount:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    iput p1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;->val$spanCount:I

    iput p2, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;->val$carUiRecyclerViewLayout:I

    iput p3, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;->val$orientation:I

    iput-boolean p4, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;->val$reversed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutType()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;->val$carUiRecyclerViewLayout:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;->val$orientation:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;->val$reversed:Z

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;->val$spanCount:I

    return v0
.end method
