.class Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewAttributesOEMV1;


# instance fields
.field final synthetic val$background:Landroid/graphics/drawable/Drawable;

.field final synthetic val$height:I

.field final synthetic val$isLtr:Z

.field final synthetic val$layoutStyle:Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;

.field final synthetic val$marginBottom:I

.field final synthetic val$marginEnd:I

.field final synthetic val$marginLeft:I

.field final synthetic val$marginRight:I

.field final synthetic val$marginStart:I

.field final synthetic val$marginTop:I

.field final synthetic val$minHeight:I

.field final synthetic val$minWidth:I

.field final synthetic val$paddingBottom:I

.field final synthetic val$paddingEnd:I

.field final synthetic val$paddingLeft:I

.field final synthetic val$paddingRight:I

.field final synthetic val$paddingStart:I

.field final synthetic val$paddingTop:I

.field final synthetic val$rotaryScrollEnabled:Z

.field final synthetic val$size:I

.field final synthetic val$width:I


# direct methods
.method public constructor <init>(ZILcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;IIIIIZIIIIIIIIIIILandroid/graphics/drawable/Drawable;)V
    .locals 2

    move-object v0, p0

    move v1, p1

    iput-boolean v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$rotaryScrollEnabled:Z

    move v1, p2

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$size:I

    move-object v1, p3

    iput-object v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$layoutStyle:Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;

    move v1, p4

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$width:I

    move v1, p5

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$height:I

    move v1, p6

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$minWidth:I

    move v1, p7

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$minHeight:I

    move v1, p8

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingLeft:I

    move v1, p9

    iput-boolean v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$isLtr:Z

    move v1, p10

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingStart:I

    move v1, p11

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingEnd:I

    move v1, p12

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingRight:I

    move v1, p13

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingTop:I

    move/from16 v1, p14

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingBottom:I

    move/from16 v1, p15

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginLeft:I

    move/from16 v1, p16

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginStart:I

    move/from16 v1, p17

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginEnd:I

    move/from16 v1, p18

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginRight:I

    move/from16 v1, p19

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginTop:I

    move/from16 v1, p20

    iput v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginBottom:I

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$background:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public geMinWidth()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$minWidth:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLayoutHeight()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$height:I

    return v0
.end method

.method public getLayoutStyle()Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$layoutStyle:Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;

    return-object v0
.end method

.method public getLayoutWidth()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$width:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginBottom:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginLeft:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$isLtr:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginStart:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginEnd:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginRight:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$isLtr:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginEnd:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginStart:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$marginTop:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$minHeight:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingLeft:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$isLtr:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingStart:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingEnd:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingRight:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$isLtr:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingEnd:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingStart:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$paddingTop:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$size:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isRotaryScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;->val$rotaryScrollEnabled:Z

    return v0
.end method
