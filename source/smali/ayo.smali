.class public final synthetic Layo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Layo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Layo;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 5
    iget v0, p0, Layo;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Layo;->a:I

    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget v1, Layu;->a:I

    iget v1, p1, Lcom/google/android/projection/protocol/SensorSource;->d:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 6
    :pswitch_0
    iget v0, p0, Layo;->a:I

    .line 1
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget-object v1, Laym;->a:Lcsz;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/SensorSource;->g(I)V

    return-void

    :pswitch_1
    iget v0, p0, Layo;->a:I

    .line 3
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget v1, Lays;->b:I

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/SensorSource;->g(I)V

    return-void

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportDrivingStatusData(I)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 1

    .line 3
    iget v0, p0, Layo;->b:I

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
