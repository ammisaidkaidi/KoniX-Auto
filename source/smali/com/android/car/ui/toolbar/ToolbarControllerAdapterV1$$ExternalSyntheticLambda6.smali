.class public final synthetic Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Function;


# instance fields
.field public synthetic f$0:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda6;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

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

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda6;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

    check-cast p1, Lapu;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->lambda$setMenuItems$4$com-android-car-ui-toolbar-ToolbarControllerAdapterV1(Lapu;)Lcom/android/car/ui/toolbar/MenuItemAdapterV1;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
