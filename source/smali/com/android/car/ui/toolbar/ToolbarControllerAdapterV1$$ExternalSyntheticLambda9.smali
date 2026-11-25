.class public final synthetic Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;-><init>()V

    sput-object v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;

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
    .locals 1

    new-instance v0, Lcom/android/car/ui/toolbar/TabAdapterV1;

    check-cast p1, Laqu;

    invoke-direct {v0, p1}, Lcom/android/car/ui/toolbar/TabAdapterV1;-><init>(Laqu;)V

    return-object v0
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
