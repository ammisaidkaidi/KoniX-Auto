.class public final Lays;
.super Lazj;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Lcqk;

.field public static final synthetic b:I

.field private static final c:Lcsz;

.field private static final d:Lcpy;

.field private static final e:Lcqk;

.field private static final i:Lcqw;


# instance fields
.field private final j:Landroid/car/hardware/CarSensorManager;

.field private final k:Landroid/content/Context;

.field private final l:F

.field private volatile m:Z

.field private final n:Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;

.field private final o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/sensors/CarSensorsFeed"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lays;->c:Lcsz;

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

    .line 9
    invoke-virtual {v0, v7, v8}, Lcpw;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Lcpw;->a()Lcpy;

    move-result-object v0

    sput-object v0, Lays;->d:Lcpy;

    new-instance v0, Lcqi;

    .line 11
    invoke-direct {v0}, Lcqi;-><init>()V

    .line 12
    const-string v8, "android.car.permission.CAR_SPEED"

    invoke-virtual {v0, v1, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    const-string v8, "android.car.permission.CAR_ENGINE_DETAILED"

    invoke-virtual {v0, v2, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    const-string v8, "android.car.permission.CAR_MILEAGE"

    invoke-virtual {v0, v3, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    const-string v3, "android.car.permission.CAR_ENERGY"

    invoke-virtual {v0, v4, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    const-string v3, "android.car.permission.CAR_POWERTRAIN"

    invoke-virtual {v0, v5, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0, v6, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    const-string v3, "android.car.permission.CAR_EXTERIOR_ENVIRONMENT"

    invoke-virtual {v0, v7, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Lcqi;->c()Lcqk;

    move-result-object v0

    sput-object v0, Lays;->a:Lcqk;

    new-instance v0, Lcqi;

    .line 20
    invoke-direct {v0}, Lcqi;-><init>()V

    .line 21
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    const/16 v3, 0x2000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v0}, Lcqi;->c()Lcqk;

    move-result-object v0

    sput-object v0, Lays;->e:Lcqk;

    .line 36
    invoke-static {v1, v2}, Lcqw;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lays;->i:Lcqw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/hardware/CarSensorManager;Landroid/car/CarInfoManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lazj;-><init>()V

    .line 2
    new-instance v0, Layn;

    invoke-direct {v0, p0}, Layn;-><init>(Lays;)V

    iput-object v0, p0, Lays;->n:Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;

    iput-object p1, p0, Lays;->k:Landroid/content/Context;

    iput-object p2, p0, Lays;->j:Landroid/car/hardware/CarSensorManager;

    .line 3
    invoke-static {p3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getFuelCapacitySafe(Landroid/car/CarInfoManager;)F

    move-result p1

    iput p1, p0, Lays;->l:F

    new-instance p1, Layr;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Layr;-><init>(Lays;Landroid/os/Looper;)V

    iput-object p1, p0, Lays;->o:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Lcqw;
    .locals 8

    .line 1
    invoke-static {}, Lcqw;->k()Lcqu;

    move-result-object v0

    iget-object v1, p0, Lays;->j:Landroid/car/hardware/CarSensorManager;

    .line 2
    invoke-virtual {v1}, Landroid/car/hardware/CarSensorManager;->getSupportedSensors()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    sget-object v5, Lays;->d:Lcpy;

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcpy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lckw;

    if-eqz v5, :cond_0

    iget-object v6, p0, Lays;->k:Landroid/content/Context;

    sget-object v7, Lays;->a:Lcqk;

    .line 4
    invoke-virtual {v7, v4}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v0, v5}, Lcqu;->h(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcqu;->f()Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/car/hardware/CarSensorEvent;)V
    .locals 7

    .line 1
    sget-object v0, Lcsz;->b:Lcsy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    sget-object v0, Lays;->i:Lcqw;

    .line 2
    iget v1, p1, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lays;->o:Landroid/os/Handler;

    .line 3
    iget v1, p1, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lays;->o:Landroid/os/Handler;

    .line 4
    iget v1, p1, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lays;->o:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    .line 5
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6
    :cond_0
    iget v0, p1, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    const-string v1, "CarSensorsFeed.java"

    const-string v2, "handleSensorChanged"

    const-string v3, "com/google/android/apps/auto/aareceiver/sensors/CarSensorsFeed"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 18
    sget-object v0, Lays;->c:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v4, 0xf0

    .line 20
    invoke-interface {v0, v3, v2, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unhandled sensor event: %s"

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 7
    :sswitch_0
    sget-object v0, Lckw;->k:Lckw;

    new-instance v1, Layp;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Layp;-><init>(Landroid/car/hardware/CarSensorEvent;I)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    :sswitch_1
    iget v0, p0, Lays;->l:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 8
    iget-object v0, p1, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 9
    iget-object p1, p1, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    aget p1, p1, v5

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    iget v0, p0, Lays;->l:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    .line 10
    :cond_1
    nop

    :goto_0
    sget-object p1, Lckw;->f:Lckw;

    new-instance v0, Layo;

    invoke-direct {v0, v2, v5}, Layo;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    .line 11
    :sswitch_2
    sget-object v0, Lckw;->d:Lckw;

    new-instance v1, Layp;

    invoke-direct {v1, p1, v4}, Layp;-><init>(Landroid/car/hardware/CarSensorEvent;I)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    :sswitch_3
    iget-boolean v0, p0, Lays;->m:Z

    if-eqz v0, :cond_2

    .line 12
    iget-object p1, p1, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    aget p1, p1, v5

    neg-float p1, p1

    goto :goto_1

    :cond_2
    iget-object p1, p1, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    aget p1, p1, v5

    .line 13
    :goto_1
    sget-object v0, Lckw;->c:Lckw;

    new-instance v1, Layj;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Layj;-><init>(FI)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    .line 14
    :sswitch_4
    sget-object v0, Lckw;->e:Lckw;

    new-instance v1, Layp;

    invoke-direct {v1, p1, v5}, Layp;-><init>(Landroid/car/hardware/CarSensorEvent;I)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    :sswitch_5
    sget-object v0, Lays;->e:Lcqk;

    .line 15
    iget-object v6, p1, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x66

    if-ne p1, v1, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    const/4 v4, 0x0

    .line 16
    :goto_2
    iput-boolean v4, p0, Lays;->m:Z

    .line 17
    sget-object p1, Lckw;->h:Lckw;

    new-instance v1, Layq;

    invoke-direct {v1, v0, v5}, Layq;-><init>(Ljava/lang/Integer;I)V

    invoke-virtual {p0, p1, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    :cond_4
    sget-object v0, Lays;->c:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v4, 0xe0

    .line 18
    invoke-interface {v0, v3, v2, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    iget-object p1, p1, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    aget p1, p1, v5

    const-string v1, "Car in unknown gear: %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    return-void

    .line 19
    :sswitch_6
    sget-object v0, Lckw;->g:Lckw;

    new-instance v1, Layp;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Layp;-><init>(Landroid/car/hardware/CarSensorEvent;I)V

    invoke-virtual {p0, v0, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    nop

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

    sget-object v1, Lays;->d:Lcpy;

    check-cast v1, Lcry;

    iget-object v1, v1, Lcry;->c:Lcry;

    .line 2
    invoke-virtual {v1, v0}, Lcpy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lays;->j:Landroid/car/hardware/CarSensorManager;

    iget-object v2, p0, Lays;->n:Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;

    const/16 v3, 0xa

    .line 3
    invoke-virtual {v1, v2, v0, v3}, Landroid/car/hardware/CarSensorManager;->registerListener(Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    iget-object v1, p0, Lays;->j:Landroid/car/hardware/CarSensorManager;

    .line 4
    invoke-virtual {v1, v0}, Landroid/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/car/hardware/CarSensorEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lays;->b(Landroid/car/hardware/CarSensorEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final d(Lcqw;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lays;->j:Landroid/car/hardware/CarSensorManager;

    iget-object v0, p0, Lays;->n:Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;

    invoke-virtual {p1, v0}, Landroid/car/hardware/CarSensorManager;->unregisterListener(Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;)V

    sget-object p1, Lays;->i:Lcqw;

    .line 2
    invoke-virtual {p1}, Lcqw;->e()Lcst;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lays;->o:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
