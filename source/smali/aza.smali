.class public final synthetic Laza;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/hardware/SensorEvent;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/SensorEvent;I)V
    .locals 0

    iput p2, p0, Laza;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laza;->a:Landroid/hardware/SensorEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 3
    iget v0, p0, Laza;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v4, 0x408f400000000000L    # 1000.0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Laza;->a:Landroid/hardware/SensorEvent;

    move-object v6, p1

    check-cast v6, Lcom/google/android/projection/protocol/SensorSource;

    sget p1, Lazb;->b:I

    const/4 v7, 0x1

    .line 4
    iget-object p1, v0, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    double-to-float p1, v8

    float-to-int v8, p1

    const/4 v9, 0x1

    iget-object p1, v0, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float p1, v2

    float-to-int v10, p1

    const/4 v11, 0x1

    iget-object p1, v0, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-float p1, v0

    float-to-int v12, p1

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportGyroscopeData(ZIZIZI)I

    return-void

    :pswitch_0
    iget-object v0, p0, Laza;->a:Landroid/hardware/SensorEvent;

    .line 1
    move-object v6, p1

    check-cast v6, Lcom/google/android/projection/protocol/SensorSource;

    sget p1, Lazb;->b:I

    const/4 v7, 0x1

    .line 2
    iget-object p1, v0, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    double-to-float p1, v8

    float-to-int v8, p1

    const/4 v9, 0x1

    iget-object p1, v0, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float p1, v2

    float-to-int v10, p1

    const/4 v11, 0x1

    iget-object p1, v0, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-float p1, v0

    float-to-int v12, p1

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportAccelerometerData(ZIZIZI)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 1

    .line 2
    iget v0, p0, Laza;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
