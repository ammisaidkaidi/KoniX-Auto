.class public final synthetic Lazd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:Z

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    iput p2, p0, Lazd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lazd;->a:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget v0, p0, Lazd;->b:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lazd;->a:Z

    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget-object v1, Laym;->a:Lcsz;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportParkingBrakeData(Z)I

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lazd;->a:Z

    .line 1
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportNightModeData(Z)I

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
    iget v0, p0, Lazd;->b:I

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
