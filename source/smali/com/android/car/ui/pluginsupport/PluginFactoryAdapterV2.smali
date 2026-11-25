.class public final Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lanh;


# instance fields
.field private final mFactoryStub:Lanl;

.field private final mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;


# direct methods
.method public static synthetic $r8$lambda$NiAuUnCui0OH6yI31NqOtINP2Jk(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;
    .locals 0

    invoke-static {p0}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->toOemListItem(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtoOemListItem(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;
    .locals 0

    invoke-static {p0}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->toOemListItem(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lanl;

    invoke-direct {v0}, Lanl;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mFactoryStub:Lanl;

    iput-object p1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;

    sget-object v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda4;

    sget-object v1, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda5;

    invoke-interface {p1, v0, v1}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;->setRotaryFactories(Lj$/util/function/Function;Lj$/util/function/Function;)V

    return-void
.end method

.method private adaptInsets(Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;)Lcom/android/car/ui/baselayout/Insets;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/car/ui/baselayout/Insets;

    invoke-virtual {p1}, Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;->getTop()I

    move-result v2

    .line 2
    invoke-virtual {p1}, Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;->getRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;->getBottom()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/car/ui/baselayout/Insets;-><init>(IIII)V

    return-object v0
.end method

.method private static from(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewAttributesOEMV1;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1

    sget-object v2, Lamu;->b:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v4, 0x4

    .line 2
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x5

    .line 3
    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v7, 0x7

    .line 4
    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 5
    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/4 v8, 0x6

    .line 6
    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/4 v10, 0x2

    .line 7
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 8
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 9
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 10
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const v11, 0x10100f4

    .line 11
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    const/4 v12, -0x1

    .line 12
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    const v11, 0x10100f5

    .line 13
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    const/4 v13, -0x2

    .line 14
    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v13

    const v11, 0x101013f

    .line 15
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 16
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v14

    const v11, 0x1010140

    .line 17
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 18
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v15

    const v11, 0x10100d6

    .line 19
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 20
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v16

    const v11, 0x10100d8

    .line 21
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 22
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v20

    const v11, 0x10103b3

    .line 23
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 24
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v18

    const v11, 0x10103b4

    .line 25
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 26
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v19

    const v11, 0x10100d7

    .line 27
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 28
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v21

    const v11, 0x10100d9

    .line 29
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 30
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v22

    const v11, 0x10100f7

    .line 31
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 32
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v23

    const v11, 0x10100f9

    .line 33
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 34
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v26

    const v11, 0x10103b5

    .line 35
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 36
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v24

    const v11, 0x10103b6

    .line 37
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 38
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v25

    const v11, 0x10100f8

    .line 39
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 40
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v27

    const v11, 0x10100fa

    .line 41
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 42
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v28

    const v11, 0x10100d4

    .line 43
    invoke-static {v2, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 45
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    new-instance v11, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;

    invoke-direct {v11, v5, v4, v7, v8}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$2;-><init>(IIIZ)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    .line 48
    :cond_0
    const/16 v17, 0x0

    :goto_0
    new-instance v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;

    move-object v8, v0

    invoke-direct/range {v8 .. v29}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$3;-><init>(ZILcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;IIIIIZIIIIIIIIIIILandroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x10100f4
        0x10100f5
        0x101013f
        0x1010140
        0x10103b3
        0x10100d6
        0x10103b4
        0x10100d8
        0x10100d7
        0x10100d9
        0x10103b5
        0x10100f7
        0x10103b6
        0x10100f9
        0x10100f8
        0x10100fa
        0x10100d4
    .end array-data
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Lcom/android/car/ui/plugin/oemapis/FocusParkingViewOEMV1;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/car/ui/FocusParkingViewAdapterV1;

    new-instance v1, Lcom/android/car/ui/FocusParkingView;

    invoke-direct {v1, p0}, Lcom/android/car/ui/FocusParkingView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/car/ui/FocusParkingViewAdapterV1;-><init>(Lcom/android/car/ui/FocusParkingView;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Lcom/android/car/ui/plugin/oemapis/FocusAreaOEMV1;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/car/ui/FocusAreaAdapterV1;

    new-instance v1, Lcom/android/car/ui/FocusArea;

    invoke-direct {v1, p0}, Lcom/android/car/ui/FocusArea;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/car/ui/FocusAreaAdapterV1;-><init>(Lcom/android/car/ui/FocusArea;)V

    return-object v0
.end method

.method static synthetic lambda$toOemListItem$3(Laoe;Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic lambda$toOemListItem$4(Laoe;Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Laoe;->i:Larh;

    invoke-virtual {p0}, Larh;->a()V

    return-void
.end method

.method static synthetic lambda$toOemListItem$5(Laoe;Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Laoe;->a(Z)V

    return-void
.end method

.method private static toOemListItem(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;
    .locals 4

    .line 1
    instance-of v0, p0, Laog;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 5
    instance-of v0, p0, Laoe;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Laoe;

    .line 7
    new-instance v0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    iget-object v2, p0, Laoe;->c:Laob;

    .line 8
    invoke-static {v2}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->toOemListItemAction(Laob;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;-><init>(Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;)V

    iget-object v2, p0, Laoe;->b:Lamo;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/text/SpannableString;

    .line 9
    invoke-virtual {v2}, Lamo;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v0, v3}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setTitle(Landroid/text/SpannableString;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    :cond_0
    iget-object v2, p0, Laoe;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Laoe;->d:Laoc;

    .line 11
    invoke-static {v3}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->toOemListItemIconType(Laoc;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$IconType;

    move-result-object v3

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setIcon(Landroid/graphics/drawable/Drawable;Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$IconType;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    iget-object v2, p0, Laoe;->c:Laob;

    .line 13
    sget-object v3, Laob;->e:Laob;

    if-ne v2, v3, :cond_1

    .line 14
    invoke-virtual {p0}, Laoe;->c()V

    invoke-virtual {v0, v1, v1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setSupplementalIcon(Landroid/graphics/drawable/Drawable;Lj$/util/function/Consumer;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    :cond_1
    iget-object v1, p0, Laoe;->i:Larh;

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda2;-><init>(Laoe;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setOnItemClickedListener(Lj$/util/function/Consumer;)V

    .line 17
    :cond_2
    new-instance v1, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda3;-><init>(Laoe;)V

    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setOnCheckedChangeListener(Lj$/util/function/Consumer;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    move-result-object v1

    .line 18
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setActionDividerVisible(Z)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    move-result-object v1

    iget-boolean v3, p0, Laoe;->f:Z

    .line 19
    invoke-virtual {v1, v3}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setEnabled(Z)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    move-result-object v1

    iget-boolean v3, p0, Laoe;->e:Z

    .line 20
    invoke-virtual {v1, v3}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setChecked(Z)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    move-result-object v1

    iget-boolean p0, p0, Laoe;->g:Z

    .line 21
    invoke-virtual {v1, p0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setActivated(Z)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    move-result-object p0

    .line 22
    invoke-virtual {p0, v2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->setSecure(Z)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;

    .line 23
    invoke-virtual {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Builder;->build()Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1;

    move-result-object p0

    return-object p0

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    const-string v0, "Unknown view type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_4
    check-cast p0, Laog;

    .line 3
    new-instance p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/HeaderListItemOEMV1$Builder;

    .line 4
    throw v1
.end method

.method private static toOemListItemAction(Laob;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;
    .locals 1

    .line 1
    sget-object v0, Laoc;->a:Laoc;

    sget-object v0, Laob;->a:Laob;

    invoke-virtual {p0}, Laob;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v0, "Unexpected list item action type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;->CHEVRON:Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;->ICON:Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;->RADIO_BUTTON:Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;->CHECK_BOX:Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;->SWITCH:Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;->NONE:Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$Action;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toOemListItemIconType(Laoc;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$IconType;
    .locals 1

    .line 1
    sget-object v0, Laoc;->a:Laoc;

    sget-object v0, Laob;->a:Laob;

    invoke-virtual {p0}, Laoc;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    const-string v0, "Unexpected list item icon type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$IconType;->AVATAR:Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$IconType;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$IconType;->STANDARD:Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$IconType;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$IconType;->CONTENT:Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1$IconType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createAppStyledView(Landroid/content/Context;)Lana;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;->createAppStyledView(Landroid/content/Context;)Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lanb;

    invoke-direct {p1}, Lanb;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;-><init>(Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;)V

    move-object p1, v0

    .line 1
    :goto_0
    return-object p1
.end method

.method public createListItemAdapter(Ljava/util/List;)Lqq;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda6;

    invoke-static {p1, v0}, Laro;->j(Ljava/util/List;Lj$/util/function/Function;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;

    .line 2
    invoke-interface {v1, v0}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;->createListItemAdapter(Ljava/util/List;)Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p1}, Lanl;->a(Ljava/util/List;)Laop;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v2, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;

    .line 4
    invoke-direct {v2, v1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1;-><init>(Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;)V

    new-instance v1, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$1;-><init>(Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;Ljava/util/List;Ljava/util/List;)V

    .line 5
    invoke-virtual {v2, v1}, Lqq;->registerAdapterDataObserver(Lqs;)V

    return-object v2
.end method

.method public createRecyclerView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->from(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewAttributesOEMV1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;

    .line 2
    invoke-interface {v1, p1, v0}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;->createRecyclerView(Landroid/content/Context;Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewAttributesOEMV1;)Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setRecyclerViewOEMV1(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mFactoryStub:Lanl;

    .line 5
    invoke-virtual {v0, p1, p2}, Lanl;->createRecyclerView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Lasl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mFactoryStub:Lanl;

    invoke-virtual {v0, p1, p2}, Lanl;->createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Lasl;

    move-result-object p1

    return-object p1
.end method

.method public installBaseLayoutAround(Landroid/view/View;Lanc;ZZ)Lare;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;->customizesBaseLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mFactoryStub:Lanl;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lanl;->installBaseLayoutAround(Landroid/view/View;Lanc;ZZ)Lare;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda0;-><init>(Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;Lanc;)V

    .line 4
    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;->installBaseLayoutAround(Landroid/content/Context;Landroid/view/View;Lj$/util/function/Consumer;ZZ)Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    new-instance p3, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;-><init>(Landroid/content/Context;Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;)V

    return-object p3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$installBaseLayoutAround$2$com-android-car-ui-pluginsupport-PluginFactoryAdapterV2(Lanc;Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->adaptInsets(Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;)Lcom/android/car/ui/baselayout/Insets;

    move-result-object p2

    invoke-interface {p1, p2}, Lanc;->a(Lcom/android/car/ui/baselayout/Insets;)V

    return-void
.end method
