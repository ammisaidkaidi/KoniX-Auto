.class public final Laym;
.super Lazj;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field static final b:Lcqk;

.field static final c:Lcqw;

.field private static final e:Lcpy;

.field private static final i:Lcqk;


# instance fields
.field final d:Ljava/util/Set;

.field private final j:Landroid/car/hardware/property/CarPropertyManager;

.field private final k:Landroid/content/Context;

.field private final l:F

.field private final m:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

.field private final n:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Laym;->a:Lcsz;

    new-instance v0, Lcpw;

    invoke-direct {v0}, Lcpw;-><init>()V

    .line 2
    const v1, 0x11600207

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lckw;->c:Lckw;

    invoke-virtual {v0, v1, v2}, Lcpw;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    const v2, 0x11600305

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lckw;->d:Lckw;

    invoke-virtual {v0, v2, v3}, Lcpw;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    const v3, 0x11600204

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lckw;->e:Lckw;

    invoke-virtual {v0, v3, v4}, Lcpw;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    const v4, 0x11600307

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lckw;->f:Lckw;

    invoke-virtual {v0, v4, v5}, Lcpw;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    const v5, 0x11200402

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lckw;->g:Lckw;

    invoke-virtual {v0, v5, v6}, Lcpw;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    const v6, 0x11400400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lckw;->h:Lckw;

    invoke-virtual {v0, v6, v7}, Lcpw;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    const v7, 0x11600703

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lckw;->k:Lckw;

    invoke-virtual {v0, v7, v8}, Lcpw;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcpw;->a()Lcpy;

    move-result-object v0

    sput-object v0, Laym;->e:Lcpy;

    new-instance v0, Lcqi;

    .line 10
    invoke-direct {v0}, Lcqi;-><init>()V

    .line 11
    const-string v8, "android.car.permission.CAR_SPEED"

    invoke-virtual {v0, v1, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    const-string v8, "android.car.permission.CAR_ENGINE_DETAILED"

    invoke-virtual {v0, v2, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    const-string v8, "android.car.permission.CAR_MILEAGE"

    invoke-virtual {v0, v3, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    const-string v3, "android.car.permission.CAR_ENERGY"

    invoke-virtual {v0, v4, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    const-string v3, "android.car.permission.CAR_POWERTRAIN"

    invoke-virtual {v0, v5, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v6, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    const-string v3, "android.car.permission.CAR_EXTERIOR_ENVIRONMENT"

    invoke-virtual {v0, v7, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0}, Lcqi;->c()Lcqk;

    move-result-object v0

    sput-object v0, Laym;->b:Lcqk;

    new-instance v0, Lcqi;

    .line 19
    invoke-direct {v0}, Lcqi;-><init>()V

    .line 20
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v0}, Lcqi;->c()Lcqk;

    move-result-object v0

    sput-object v0, Laym;->i:Lcqk;

    .line 34
    invoke-static {v1, v2}, Lcqw;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Laym;->c:Lcqw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;Landroid/car/CarInfoManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lazj;-><init>()V

    .line 2
    new-instance v0, Layk;

    invoke-direct {v0, p0}, Layk;-><init>(Laym;)V

    iput-object v0, p0, Laym;->m:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laym;->d:Ljava/util/Set;

    iput-object p1, p0, Laym;->k:Landroid/content/Context;

    iput-object p2, p0, Laym;->j:Landroid/car/hardware/property/CarPropertyManager;

    .line 4
    invoke-static {p3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getFuelCapacitySafe(Landroid/car/CarInfoManager;)F

    move-result p1

    iput p1, p0, Laym;->l:F

    new-instance p1, Layl;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Layl;-><init>(Laym;Landroid/os/Looper;)V

    iput-object p1, p0, Laym;->n:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Lcqw;
    .locals 7

    .line 1
    invoke-static {}, Lcqw;->k()Lcqu;

    move-result-object v0

    iget-object v1, p0, Laym;->j:Landroid/car/hardware/property/CarPropertyManager;

    .line 2
    invoke-static {v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getPropertyListSafe(Landroid/car/hardware/property/CarPropertyManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    sget-object v3, Laym;->e:Lcpy;

    .line 3
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcpy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lckw;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v4

    iget-object v5, p0, Laym;->k:Landroid/content/Context;

    sget-object v6, Laym;->b:Lcqk;

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v3}, Lckw;->name()Ljava/lang/String;

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getChangeMode()I

    .line 7
    invoke-virtual {v0, v3}, Lcqu;->h(Ljava/lang/Object;)V

    sget-object v4, Laym;->c:Lcqw;

    .line 8
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getChangeMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 10
    invoke-virtual {v3}, Lckw;->name()Ljava/lang/String;

    iget-object v3, p0, Laym;->d:Ljava/util/Set;

    .line 11
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcqu;->f()Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    iget-object v1, p0, Laym;->d:Ljava/util/Set;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laym;->n:Landroid/os/Handler;

    .line 3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Laym;->n:Landroid/os/Handler;

    .line 4
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Laym;->n:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    .line 5
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const-string v1, "CarPropertiesFeed.java"

    const-string v2, "handlePropertyChanged"

    const-string v3, "com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed"

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 25
    sget-object v0, Laym;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v4, 0x10f

    .line 28
    invoke-interface {v0, v3, v2, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unhandled sensor event: %s"

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 6
    :sswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcsz;->b:Lcsy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {v0, v1}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    .line 8
    sget-object v0, Lckw;->k:Lckw;

    new-instance v1, Layj;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Layj;-><init>(FI)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    .line 9
    :sswitch_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Laym;->l:F

    const/4 v1, -0x1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 12
    :cond_1
    nop

    .line 10
    :goto_0
    sget-object p1, Lcsz;->b:Lcsy;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-interface {p1, v0}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    .line 12
    sget-object p1, Lckw;->f:Lckw;

    new-instance v0, Layo;

    invoke-direct {v0, v1, v4}, Layo;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    .line 13
    :sswitch_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcsz;->b:Lcsy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-interface {v0, v1}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    .line 15
    sget-object v0, Lckw;->d:Lckw;

    new-instance v1, Layj;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Layj;-><init>(FI)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    .line 16
    :sswitch_3
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcsz;->b:Lcsy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-interface {v0, v1}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    .line 18
    sget-object v0, Lckw;->c:Lckw;

    new-instance v1, Layj;

    invoke-direct {v1, p1, v4}, Layj;-><init>(FI)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    .line 19
    :sswitch_4
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcsz;->b:Lcsy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-interface {v0, v1}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    .line 21
    sget-object v0, Lckw;->e:Lckw;

    new-instance v1, Layj;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Layj;-><init>(FI)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    .line 22
    :sswitch_5
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Laym;->i:Lcqk;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 24
    sget-object p1, Lckw;->h:Lckw;

    new-instance v1, Layq;

    invoke-direct {v1, v0, v4}, Layq;-><init>(Ljava/lang/Integer;I)V

    invoke-virtual {p0, p1, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    :cond_2
    sget-object v0, Laym;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v4, 0xfd

    .line 25
    invoke-interface {v0, v3, v2, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Car in unknown gear: %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    return-void

    .line 26
    :sswitch_6
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 27
    sget-object v0, Lckw;->g:Lckw;

    new-instance v1, Lazd;

    invoke-direct {v1, p1, v4}, Lazd;-><init>(ZI)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x11200402 -> :sswitch_6
        0x11400400 -> :sswitch_5
        0x11600204 -> :sswitch_4
        0x11600207 -> :sswitch_3
        0x11600305 -> :sswitch_2
        0x11600307 -> :sswitch_1
        0x11600703 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Lcqw;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcqw;->e()Lcst;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckw;

    sget-object v1, Laym;->e:Lcpy;

    check-cast v1, Lcry;

    iget-object v1, v1, Lcry;->c:Lcry;

    .line 2
    invoke-virtual {v1, v0}, Lcpy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lckw;->name()Ljava/lang/String;

    iget-object v0, p0, Laym;->j:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, p0, Laym;->m:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    const/high16 v3, 0x41200000    # 10.0f

    .line 4
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->registerPropertyCallback(Landroid/car/hardware/property/CarPropertyManager;Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iget-object v0, p0, Laym;->j:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getPropertySafe(Landroid/car/hardware/property/CarPropertyManager;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Laym;->b(Landroid/car/hardware/CarPropertyValue;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final d(Lcqw;)V
    .locals 2

    .line 1
    iget-object p1, p0, Laym;->j:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v0, p0, Laym;->m:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    invoke-static {p1, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->unregisterPropertyCallback(Landroid/car/hardware/property/CarPropertyManager;Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    iget-object p1, p0, Laym;->d:Ljava/util/Set;

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Laym;->n:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
