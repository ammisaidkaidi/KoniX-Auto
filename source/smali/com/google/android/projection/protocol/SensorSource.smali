.class public Lcom/google/android/projection/protocol/SensorSource;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lclk;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:[I

.field private final i:[I

.field private final j:[I

.field private final k:[I

.field private mNativeSensorSource:J


# direct methods
.method public constructor <init>([I[Lckd;[Lckc;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->e:I

    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->a:I

    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->b:I

    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->c:I

    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->f:I

    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->g:I

    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->d:I

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->i:[I

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->h:[I

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/protocol/SensorSource;->h:[I

    .line 1
    :goto_0
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/projection/protocol/SensorSource;->j:[I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->j:[I

    .line 3
    aget-object v2, p2, v0

    iget v2, v2, Lckd;->n:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4
    :cond_1
    array-length p2, p3

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/projection/protocol/SensorSource;->k:[I

    .line 5
    :goto_2
    array-length p2, p3

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lcom/google/android/projection/protocol/SensorSource;->k:[I

    .line 6
    aget-object v0, p3, p1

    iget v0, v0, Lckc;->l:I

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x2
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xb
        0xc
        0xd
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public static e([F)[I
    .locals 4

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private native nativeInit(IJI[I[I)I
.end method

.method private native nativeRegisterSensor(I)V
.end method

.method private native nativeReportEnvironmentData(ZIZIZI)I
.end method

.method private native nativeReportFuelData(ZIZIZZ)I
.end method

.method private native nativeReportOdometerData(IZI)I
.end method

.method private native nativeReportRpmData(I)I
.end method

.method private native nativeReportSpeedData(IZZZI)I
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mNativeSensorSource:J

    return-wide v0
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/SensorSource;->nativeShutdown()V

    return-void
.end method

.method public final c(IJ)Z
    .locals 7

    .line 1
    iget-object v5, p0, Lcom/google/android/projection/protocol/SensorSource;->j:[I

    iget-object v6, p0, Lcom/google/android/projection/protocol/SensorSource;->k:[I

    const/16 v4, 0x100

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->nativeInit(IJI[I[I)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/projection/protocol/SensorSource;->h:[I

    array-length p3, p1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 2
    aget v0, p1, p2

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/projection/protocol/SensorSource;->nativeRegisterSensor(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return p2
.end method

.method public final d(D)V
    .locals 2

    .line 1
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    iget v0, p0, Lcom/google/android/projection/protocol/SensorSource;->f:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    int-to-double p1, v0

    :cond_0
    double-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportRpmData(I)I

    return-void
.end method

.method public final f(F)V
    .locals 9

    .line 1
    float-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v4, v0

    .line 2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v6, v0

    .line 3
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportEnvironmentData(ZIZIZI)I

    return-void
.end method

.method public final g(I)V
    .locals 7

    .line 1
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportFuelData(ZIZIZZ)I

    return-void
.end method

.method public final h(D)V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v0

    iget v0, p0, Lcom/google/android/projection/protocol/SensorSource;->g:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    int-to-double p1, v0

    :cond_0
    double-to-int p1, p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportOdometerData(IZI)I

    return-void
.end method

.method public final i(F)V
    .locals 6

    .line 1
    float-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    iget v0, p0, Lcom/google/android/projection/protocol/SensorSource;->e:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    int-to-float p1, v0

    :cond_0
    float-to-int v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportSpeedData(IZZZI)I

    return-void
.end method

.method public native nativeReportAccelerometerData(ZIZIZI)I
.end method

.method public native nativeReportCompassData(IZIZI)I
.end method

.method public native nativeReportDrivingStatusData(I)I
.end method

.method public native nativeReportGearData(I)I
.end method

.method public native nativeReportGpsSatelliteData(IZI[I[I[Z[I[I)I
.end method

.method public native nativeReportGyroscopeData(ZIZIZI)I
.end method

.method public native nativeReportLocation(JIIZIZIZIZI)I
.end method

.method public native nativeReportNightModeData(Z)I
.end method

.method public native nativeReportParkingBrakeData(Z)I
.end method
