.class public final synthetic Layj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:F

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(FI)V
    .locals 0

    iput p2, p0, Layj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Layj;->a:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 9
    iget v0, p0, Layj;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Layj;->a:F

    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget v1, Lays;->b:I

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/SensorSource;->i(F)V

    return-void

    :pswitch_0
    iget v0, p0, Layj;->a:F

    .line 1
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget-object v1, Laym;->a:Lcsz;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/SensorSource;->f(F)V

    return-void

    :pswitch_1
    iget v0, p0, Layj;->a:F

    .line 3
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget-object v1, Laym;->a:Lcsz;

    float-to-double v0, v0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/projection/protocol/SensorSource;->h(D)V

    return-void

    :pswitch_2
    iget v0, p0, Layj;->a:F

    .line 5
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget-object v1, Laym;->a:Lcsz;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/SensorSource;->i(F)V

    return-void

    :pswitch_3
    iget v0, p0, Layj;->a:F

    .line 7
    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    sget-object v1, Laym;->a:Lcsz;

    float-to-double v0, v0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/projection/protocol/SensorSource;->d(D)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 1

    .line 5
    iget v0, p0, Layj;->b:I

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

    .line 4
    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
