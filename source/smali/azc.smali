.class public final Lazc;
.super Lazj;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:[F

.field public c:Z

.field public final d:[F

.field public e:Z

.field private final i:Landroid/location/LocationManager;

.field private final j:Landroid/hardware/SensorManager;

.field private final k:Landroid/hardware/Sensor;

.field private final l:Landroid/hardware/Sensor;

.field private final m:Landroid/hardware/Sensor;

.field private final n:Landroid/hardware/Sensor;

.field private final o:[F

.field private final p:[F

.field private final q:Landroid/location/GnssStatus$Callback;

.field private final r:Landroid/location/LocationListener;

.field private final s:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lazj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lazc;->a:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lazc;->b:[F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lazc;->c:Z

    new-array v2, v0, [F

    iput-object v2, p0, Lazc;->d:[F

    iput-boolean v1, p0, Lazc;->e:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Lazc;->o:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lazc;->p:[F

    .line 2
    new-instance v0, Layx;

    invoke-direct {v0, p0}, Layx;-><init>(Lazc;)V

    iput-object v0, p0, Lazc;->q:Landroid/location/GnssStatus$Callback;

    .line 3
    new-instance v0, Layz;

    invoke-direct {v0, p0}, Layz;-><init>(Lazc;)V

    iput-object v0, p0, Lazc;->r:Landroid/location/LocationListener;

    .line 4
    new-instance v0, Lazb;

    invoke-direct {v0, p0}, Lazb;-><init>(Lazc;)V

    iput-object v0, p0, Lazc;->s:Landroid/hardware/SensorEventListener;

    .line 5
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lazc;->i:Landroid/location/LocationManager;

    .line 6
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lazc;->j:Landroid/hardware/SensorManager;

    .line 7
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lazc;->k:Landroid/hardware/Sensor;

    .line 8
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lazc;->l:Landroid/hardware/Sensor;

    .line 9
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lazc;->m:Landroid/hardware/Sensor;

    .line 10
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lazc;->n:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final a()Lcqw;
    .locals 3

    .line 1
    invoke-static {}, Lcqw;->k()Lcqu;

    move-result-object v0

    iget-object v1, p0, Lazc;->i:Landroid/location/LocationManager;

    .line 2
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lckw;->a:Lckw;

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    sget-object v1, Lckw;->u:Lckw;

    .line 4
    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lazc;->k:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lckw;->s:Lckw;

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lazc;->m:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    .line 6
    sget-object v1, Lckw;->t:Lckw;

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lazc;->l:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lazc;->n:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3

    .line 7
    sget-object v1, Lckw;->b:Lckw;

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    .line 8
    :cond_3
    invoke-virtual {v0}, Lcqu;->f()Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lazc;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lazc;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lazc;->e:Z

    iput-boolean v0, p0, Lazc;->c:Z

    iget-object v1, p0, Lazc;->o:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lazc;->b:[F

    iget-object v4, p0, Lazc;->d:[F

    invoke-static {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v1, p0, Lazc;->o:[F

    iget-object v2, p0, Lazc;->p:[F

    .line 2
    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v1, p0, Lazc;->p:[F

    aget v0, v1, v0

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit16 v1, v1, 0x168

    if-gez v1, :cond_1

    add-int/lit16 v1, v1, 0x168

    :cond_1
    iget-object v0, p0, Lazc;->p:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    float-to-double v2, v0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iget-object v0, p0, Lazc;->p:[F

    const/4 v4, 0x2

    aget v0, v0, v4

    float-to-double v4, v0

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 6
    sget-object v0, Lckw;->b:Lckw;

    new-instance v6, Layv;

    long-to-int v3, v2

    long-to-int v2, v4

    invoke-direct {v6, v1, v3, v2}, Layv;-><init>(III)V

    invoke-virtual {p0, v0, v6}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void

    .line 1
    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Lcqw;)V
    .locals 7

    .line 1
    sget-object v0, Lckw;->u:Lckw;

    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazc;->i:Landroid/location/LocationManager;

    iget-object v1, p0, Lazc;->q:Landroid/location/GnssStatus$Callback;

    .line 2
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z

    :cond_0
    sget-object v0, Lckw;->a:Lckw;

    .line 3
    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lazc;->i:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lazc;->r:Landroid/location/LocationListener;

    .line 4
    const-string v2, "gps"

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    sget-object v0, Lckw;->s:Lckw;

    .line 5
    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x186a0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazc;->j:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lazc;->s:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lazc;->k:Landroid/hardware/Sensor;

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    sget-object v0, Lckw;->b:Lckw;

    .line 7
    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lazc;->j:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lazc;->s:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lazc;->l:Landroid/hardware/Sensor;

    .line 8
    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lazc;->j:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lazc;->s:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lazc;->n:Landroid/hardware/Sensor;

    .line 9
    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    sget-object v0, Lckw;->t:Lckw;

    .line 10
    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lazc;->j:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lazc;->s:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lazc;->m:Landroid/hardware/Sensor;

    .line 11
    invoke-virtual {p1, v0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_4
    return-void
.end method

.method protected final d(Lcqw;)V
    .locals 3

    .line 1
    sget-object v0, Lckw;->u:Lckw;

    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazc;->i:Landroid/location/LocationManager;

    iget-object v1, p0, Lazc;->q:Landroid/location/GnssStatus$Callback;

    .line 2
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    :cond_0
    sget-object v0, Lckw;->a:Lckw;

    .line 3
    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazc;->i:Landroid/location/LocationManager;

    iget-object v1, p0, Lazc;->r:Landroid/location/LocationListener;

    .line 4
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    sget-object v0, Lckw;->b:Lckw;

    .line 5
    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazc;->j:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lazc;->s:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lazc;->l:Landroid/hardware/Sensor;

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lazc;->j:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lazc;->s:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lazc;->n:Landroid/hardware/Sensor;

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_2
    sget-object v0, Lckw;->s:Lckw;

    .line 8
    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lazc;->j:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lazc;->s:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lazc;->k:Landroid/hardware/Sensor;

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_3
    sget-object v0, Lckw;->t:Lckw;

    .line 10
    invoke-virtual {p1, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lazc;->j:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lazc;->s:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lazc;->m:Landroid/hardware/Sensor;

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_4
    return-void
.end method
