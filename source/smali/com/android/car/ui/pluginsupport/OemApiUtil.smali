.class public final Lcom/android/car/ui/pluginsupport/OemApiUtil;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final TAG:Ljava/lang/String; = "carui"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classExists(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    return v0
.end method

.method static getPluginFactory(Landroid/content/Context;Ljava/lang/String;)Lanh;
    .locals 5

    .line 1
    const-string v0, "carui"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.car.ui.plugin.PluginVersionProviderImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception v2

    .line 4
    const-string v3, "PluginVersionProviderImpl could not be instantiated!"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_0

    .line 7
    :catch_1
    move-exception v2

    move-object v2, v1

    .line 5
    :goto_0
    instance-of v3, v2, Lcom/android/car/ui/plugin/oemapis/PluginVersionProviderOEMV1;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/car/ui/pluginsupport/PluginVersionProviderAdapterV1;

    .line 6
    check-cast v2, Lcom/android/car/ui/plugin/oemapis/PluginVersionProviderOEMV1;

    invoke-direct {v3, v2}, Lcom/android/car/ui/pluginsupport/PluginVersionProviderAdapterV1;-><init>(Lcom/android/car/ui/plugin/oemapis/PluginVersionProviderOEMV1;)V

    goto :goto_1

    .line 12
    :cond_0
    nop

    .line 7
    const-string v2, "PluginVersionProviderImpl was not instanceof any known versions of PluginVersionProviderOEMV#."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    .line 6
    :goto_1
    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v3, v2, p0, p1}, Lcom/android/car/ui/pluginsupport/PluginVersionProviderAdapterV1;->getPluginFactory(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    instance-of p1, p0, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;

    .line 10
    check-cast p0, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;

    invoke-direct {v1, p0}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV1;-><init>(Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV1;)V

    goto :goto_2

    :cond_1
    nop

    .line 11
    const-string p1, "com.android.car.ui.plugin.oemapis.PluginFactoryOEMV2"

    invoke-static {p1}, Lcom/android/car/ui/pluginsupport/OemApiUtil;->classExists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p0, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;

    .line 13
    check-cast p0, Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;

    invoke-direct {v1, p0}, Lcom/android/car/ui/pluginsupport/PluginFactoryAdapterV2;-><init>(Lcom/android/car/ui/plugin/oemapis/PluginFactoryOEMV2;)V

    goto :goto_2

    :cond_2
    nop

    .line 12
    const-string p0, "PluginVersionProvider found, but did not provide a factory implementing any known interfaces!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    nop

    .line 10
    :goto_2
    return-object v1
.end method
