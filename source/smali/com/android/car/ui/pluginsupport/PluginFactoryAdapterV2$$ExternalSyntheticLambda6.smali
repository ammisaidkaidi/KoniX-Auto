.class public final synthetic Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2$$ExternalSyntheticLambda6;

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

    check-cast p1, Laoj;

    invoke-static {p1}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;->$r8$lambda$NiAuUnCui0OH6yI31NqOtINP2Jk(Laoj;)Lcom/android/car/ui/plugin/oemapis/recyclerview/ListItemOEMV1;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
