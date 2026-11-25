.class Lcom/android/car/ui/toolbar/TabAdapterV1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final mClientTab:Laqu;

.field private final mPluginTab:Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1;


# direct methods
.method public constructor <init>(Laqu;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/TabAdapterV1;->mClientTab:Laqu;

    iget-object v0, p1, Laqu;->c:Lj$/util/function/Consumer;

    invoke-static {}, Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1;->builder()Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;

    move-result-object v1

    iget-object v2, p1, Laqu;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v1, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;

    move-result-object v1

    iget-object v2, p1, Laqu;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;->setTitle(Ljava/lang/String;)Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Lcom/android/car/ui/toolbar/TabAdapterV1$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v2, p0, v0}, Lcom/android/car/ui/toolbar/TabAdapterV1$$ExternalSyntheticLambda0;-><init>(Lcom/android/car/ui/toolbar/TabAdapterV1;Lj$/util/function/Consumer;)V

    move-object v0, v2

    .line 5
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;->setOnSelectedListener(Ljava/lang/Runnable;)Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;

    move-result-object v0

    iget-boolean p1, p1, Laqu;->d:Z

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;->setTinted(Z)Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1$Builder;->build()Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/toolbar/TabAdapterV1;->mPluginTab:Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1;

    return-void
.end method


# virtual methods
.method public getClientTab()Laqu;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/TabAdapterV1;->mClientTab:Laqu;

    return-object v0
.end method

.method public getPluginTab()Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/TabAdapterV1;->mPluginTab:Lcom/android/car/ui/plugin/oemapis/toolbar/TabOEMV1;

    return-object v0
.end method

.method public synthetic lambda$new$0$com-android-car-ui-toolbar-TabAdapterV1(Lj$/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/TabAdapterV1;->mClientTab:Laqu;

    invoke-interface {p1, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
