.class final Lcom/android/car/ui/pluginsupport/PluginVersionProviderAdapterV1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private mOemProvider:Lcom/android/car/ui/plugin/oemapis/PluginVersionProviderOEMV1;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/plugin/oemapis/PluginVersionProviderOEMV1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/pluginsupport/PluginVersionProviderAdapterV1;->mOemProvider:Lcom/android/car/ui/plugin/oemapis/PluginVersionProviderOEMV1;

    return-void
.end method


# virtual methods
.method public getPluginFactory(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/pluginsupport/PluginVersionProviderAdapterV1;->mOemProvider:Lcom/android/car/ui/plugin/oemapis/PluginVersionProviderOEMV1;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/car/ui/plugin/oemapis/PluginVersionProviderOEMV1;->getPluginFactory(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
