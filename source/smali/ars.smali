.class public final Lars;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static d:Lars;


# instance fields
.field public a:Landroid/car/drivingstate/CarUxRestrictions;

.field public final b:Ljava/util/Set;

.field public final c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lars;->d:Lars;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lars;->a()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    iput-object v0, p0, Lars;->a:Landroid/car/drivingstate/CarUxRestrictions;

    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lars;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Larq;

    invoke-direct {v0, p0}, Larq;-><init>(Lars;)V

    iput-object v0, p0, Lars;->c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    const-wide/16 v1, 0x0

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Larp;

    invoke-direct {v0, p0}, Larp;-><init>(Lars;)V

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object p1

    .line 7
    invoke-static {p1, v0}, Lars;->d(Landroid/car/Car;Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    const-string v0, "CarUxRestrictionsUtil"

    const-string v3, "Unable to connect to car service, assuming unrestricted"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lars;->c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    .line 9
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    .line 10
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method public static a()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 5

    .line 1
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    const/4 v1, 0x1

    const/16 v2, 0x1ff

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    .line 2
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lars;
    .locals 1

    .line 1
    sget-object v0, Lars;->d:Lars;

    if-nez v0, :cond_0

    new-instance v0, Lars;

    invoke-direct {v0, p0}, Lars;-><init>(Landroid/content/Context;)V

    sput-object v0, Lars;->d:Lars;

    :cond_0
    sget-object p0, Lars;->d:Lars;

    return-object p0
.end method

.method public static d(Landroid/car/Car;Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "uxrestriction"

    invoke-virtual {p0, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 2
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    .line 3
    invoke-virtual {p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    .line 4
    invoke-interface {p1, p0}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    const-string p1, "CarUxRestrictionsUtil"

    const-string v0, "Car not connected"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final c(Larr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lars;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lars;->a:Landroid/car/drivingstate/CarUxRestrictions;

    .line 2
    invoke-interface {p1, v0}, Larr;->a(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method public final e(Larr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lars;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
