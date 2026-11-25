.class public final synthetic Layv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Layv;->a:I

    iput p2, p0, Layv;->b:I

    iput p3, p0, Layv;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Layv;->a:I

    iget v1, p0, Layv;->b:I

    iget v2, p0, Layv;->c:I

    move-object v3, p1

    check-cast v3, Lcom/google/android/projection/protocol/SensorSource;

    int-to-double v4, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int p1, v4

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v6

    double-to-int v0, v0

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    double-to-int v1, v1

    iget v2, v3, Lcom/google/android/projection/protocol/SensorSource;->a:I

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    if-eq v2, v4, :cond_2

    iget p1, v3, Lcom/google/android/projection/protocol/SensorSource;->b:I

    const/4 v0, 0x0

    if-eq p1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v6, v3, Lcom/google/android/projection/protocol/SensorSource;->c:I

    if-eq v6, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v4, v2

    move v7, v5

    move v8, v6

    move v6, p1

    move v5, v1

    goto :goto_2

    :cond_2
    move v4, p1

    move v6, v0

    move v8, v1

    const/4 v7, 0x1

    :goto_2
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportCompassData(IZIZI)I

    return-void
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
