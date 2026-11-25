.class public final synthetic Lcom/android/car/ui/toolbar/TabAdapterV1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Lcom/android/car/ui/toolbar/TabAdapterV1;

.field public synthetic f$1:Lj$/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/TabAdapterV1;Lj$/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/TabAdapterV1$$ExternalSyntheticLambda0;->f$0:Lcom/android/car/ui/toolbar/TabAdapterV1;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/TabAdapterV1$$ExternalSyntheticLambda0;->f$1:Lj$/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/ui/toolbar/TabAdapterV1$$ExternalSyntheticLambda0;->f$0:Lcom/android/car/ui/toolbar/TabAdapterV1;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/TabAdapterV1$$ExternalSyntheticLambda0;->f$1:Lj$/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/car/ui/toolbar/TabAdapterV1;->lambda$new$0$com-android-car-ui-toolbar-TabAdapterV1(Lj$/util/function/Consumer;)V

    return-void
.end method
