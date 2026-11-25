.class public final Lbhi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Lcsz;


# instance fields
.field public final a:Landroid/net/wifi/WifiManager;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/car/CarProjectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbhi;->b:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/CarProjectionManager;Landroid/net/wifi/WifiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhi;->c:Landroid/content/Context;

    iput-object p2, p0, Lbhi;->d:Landroid/car/CarProjectionManager;

    iput-object p3, p0, Lbhi;->a:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static b(Landroid/net/wifi/WifiConfiguration;)Lj$/util/Optional;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/net/wifi/WifiConfiguration;

    const-string v1, "apBand"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lbhi;->b:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const/16 v0, 0x87

    const-string v1, "com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils"

    const-string v2, "getApBandReflective"

    const-string v3, "WifiUtils.java"

    invoke-interface {p0, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string v0, "Failed to get apBand"

    invoke-interface {p0, v0}, Lcsx;->n(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbhi;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcoe;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ""

    :try_start_0
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    sget-object v2, Lbhi;->b:Lcsz;

    invoke-virtual {v2}, Lcsv;->b()Lctq;

    move-result-object v2

    .line 2
    invoke-interface {v2, v1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const/16 v2, 0x59

    const-string v3, "com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils"

    const-string v4, "getPropertySafe"

    const-string v5, "WifiUtils.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Unable to read property %s."

    invoke-interface {v1, v2, p0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lcqh;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lbhi;->d:Landroid/car/CarProjectionManager;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getAvailableWifiChannels(Landroid/car/CarProjectionManager;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcqh;->n(Ljava/util/Collection;)Lcqh;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    sget-object v0, Lcsz;->b:Lcsy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-interface {v0, v1}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    .line 3
    invoke-static {}, Lcqh;->p()Lcqh;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lasn;->c:Lasn;

    .line 5
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 6
    sget-object v1, Lcoz;->a:Lj$/util/stream/Collector;

    .line 7
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqh;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbhi;->a()Lcqh;

    move-result-object v0

    invoke-virtual {v0}, Lcqh;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 3

    const/4 v0, 0x1

    return v0

    .line 1
    invoke-virtual {p0}, Lbhi;->c()Z

    move-result v0

    iget-object v1, p0, Lbhi;->a:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    iget-object v1, p0, Lbhi;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lbhi;->a:Landroid/net/wifi/WifiManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbhi;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final e()Z
    .locals 1

    .line 1
    const-string v0, "ro.boot.setupwizard_mode"

    invoke-static {v0}, Lbhi;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lew;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    const-string v0, "ro.setupwizard.mode"

    invoke-static {v0}, Lbhi;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lew;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final f(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lbhi;->c:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lbhi;->b:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 v0, 0x3f

    .line 2
    const-string v1, "com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils"

    const-string v2, "setWifiEnabled"

    const-string v3, "WifiUtils.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Missing permission to start WiFi."

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lbhi;->a:Landroid/net/wifi/WifiManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p1

    return p1
.end method
