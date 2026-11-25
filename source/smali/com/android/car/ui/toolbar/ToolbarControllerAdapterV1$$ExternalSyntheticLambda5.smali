.class public final synthetic Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

.field public synthetic f$1:Laqw;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;Laqw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda5;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda5;->f$1:Laqw;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda5;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda5;->f$1:Laqw;

    check-cast p1, Laqu;

    invoke-virtual {v0, v1, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->lambda$addTab$3$com-android-car-ui-toolbar-ToolbarControllerAdapterV1(Laqw;Laqu;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
