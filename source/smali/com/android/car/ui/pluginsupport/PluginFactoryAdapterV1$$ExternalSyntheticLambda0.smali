.class public final synthetic Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;

.field public synthetic f$1:Lanc;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;Lanc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda0;->f$0:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;

    iput-object p2, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda0;->f$1:Lanc;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda0;->f$0:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;

    iget-object v1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1$$ExternalSyntheticLambda0;->f$1:Lanc;

    check-cast p1, Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;

    invoke-virtual {v0, v1, p1}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;->lambda$installBaseLayoutAround$2$com-android-car-ui-pluginsupport-PluginFactoryAdapterV1(Lanc;Lcom/android/car/ui/plugin/oemapis/InsetsOEMV1;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
