.class public final synthetic Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->getPluginMenuItem()Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
