.class public final Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lanh;


# instance fields
.field private final mFactoryStub:Lanl;

.field private final mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lanl;

    invoke-direct {v0}, Lanl;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->mFactoryStub:Lanl;

    iput-object p1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;

    sget-object v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda1;

    sget-object v1, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda2;

    invoke-interface {p1, v0, v1}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;->setRotaryFactories(Lj$/util/function/Function;Lj$/util/function/Function;)V

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


# virtual methods
.method public createAppStyledView(Landroid/content/Context;)Lana;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;->createAppStyledView(Landroid/content/Context;)Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;

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
    .locals 0

    .line 1
    invoke-static {p1}, Lanl;->a(Ljava/util/List;)Laop;

    move-result-object p1

    return-object p1
.end method

.method public createRecyclerView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->mFactoryStub:Lanl;

    invoke-virtual {v0, p1, p2}, Lanl;->createRecyclerView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Lasl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->mFactoryStub:Lanl;

    invoke-virtual {v0, p1, p2}, Lanl;->createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Lasl;

    move-result-object p1

    return-object p1
.end method

.method public installBaseLayoutAround(Landroid/view/View;Lanc;ZZ)Lare;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;->customizesBaseLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->mFactoryStub:Lanl;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lanl;->installBaseLayoutAround(Landroid/view/View;Lanc;ZZ)Lare;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->mOem:Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda0;-><init>(Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;Lanc;)V

    .line 4
    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;->installBaseLayoutAround(Landroid/content/Context;Landroid/view/View;Lj$/util/function/Consumer;ZZ)Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

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

.method public synthetic lambda$installBaseLayoutAround$2$com-android-car-ui-pluginsupport-PluginFactoryAdapterV1(Lanc;Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->adaptInsets(Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;)Lcom/android/car/ui/baselayout/Insets;

    move-result-object p2

    invoke-interface {p1, p2}, Lanc;->a(Lcom/android/car/ui/baselayout/Insets;)V

    return-void
.end method
