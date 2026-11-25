.class public final synthetic Layp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/car/hardware/CarSensorEvent;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/CarSensorEvent;I)V
    .locals 0

    iput p2, p0, Layp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layp;->a:Landroid/car/hardware/CarSensorEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Layp;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Layp;->a:Landroid/car/hardware/CarSensorEvent;

    .line 7
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget v2, Lays;->b:I

    .line 8
    iget-object v0, v0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/SensorSource;->f(F)V

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Layp;->a:Landroid/car/hardware/CarSensorEvent;

    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget v2, Lays;->b:I

    .line 2
    iget-object v0, v0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportParkingBrakeData(Z)I

    return-void

    .line 8
    :pswitch_1
    iget-object v0, p0, Layp;->a:Landroid/car/hardware/CarSensorEvent;

    .line 3
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget v2, Lays;->b:I

    .line 4
    iget-object v0, v0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/projection/protocol/SensorSource;->d(D)V

    return-void

    :pswitch_2
    iget-object v0, p0, Layp;->a:Landroid/car/hardware/CarSensorEvent;

    .line 5
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget v2, Lays;->b:I

    .line 6
    iget-object v0, v0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/projection/protocol/SensorSource;->h(D)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 1

    .line 4
    iget v0, p0, Layp;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 2
    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
