.class public final synthetic Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda4;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda4;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->lambda$new$1$com-android-car-ui-toolbar-ToolbarControllerAdapterV1(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
