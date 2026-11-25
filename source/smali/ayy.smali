.class public final synthetic Layy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layy;->a:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    .line 2
    move-object/from16 v0, p0

    iget-object v1, v0, Layy;->a:Landroid/location/Location;

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/projection/protocol/SensorSource;

    sget v3, Layz;->b:I

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-wide v7, 0x416312d000000000L    # 1.0E7

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    .line 3
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    mul-double v9, v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 4
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v7

    .line 5
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    .line 6
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v9

    .line 7
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v13, v12

    .line 8
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v12

    .line 9
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v14, v10

    .line 10
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    .line 11
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-double v10, v1

    const-wide v16, 0x412e848000000000L    # 1000000.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v1, v10

    .line 12
    move v10, v13

    move v11, v12

    move v12, v14

    move v13, v15

    move v14, v1

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportLocation(JIIZIZIZIZI)I

    return-void

    :cond_0
    nop

    .line 1
    const-string v1, "AHU.SENSOR"

    const-string v2, "Location and mGpsOverride are both null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
