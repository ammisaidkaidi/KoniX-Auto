.class public final synthetic Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public synthetic f$0:Laoe;


# direct methods
.method public synthetic constructor <init>(Laoe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda1;->f$0:Laoe;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda1;->f$0:Laoe;

    check-cast p1, Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1;

    invoke-static {v0, p1}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->lambda$toOemListItem$3(Laoe;Lcom/android/car/ui/plugin/oemapis/recyclerview/ContentListItemOEMV1;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
