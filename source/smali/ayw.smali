.class public final synthetic Layw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:[I

.field public final synthetic d:[F

.field public final synthetic e:[Z

.field public final synthetic f:[F

.field public final synthetic g:[F


# direct methods
.method public synthetic constructor <init>(II[I[F[Z[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Layw;->a:I

    iput p2, p0, Layw;->b:I

    iput-object p3, p0, Layw;->c:[I

    iput-object p4, p0, Layw;->d:[F

    iput-object p5, p0, Layw;->e:[Z

    iput-object p6, p0, Layw;->f:[F

    iput-object p7, p0, Layw;->g:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v1, p0, Layw;->a:I

    iget v3, p0, Layw;->b:I

    iget-object v4, p0, Layw;->c:[I

    iget-object v0, p0, Layw;->d:[F

    iget-object v6, p0, Layw;->e:[Z

    iget-object v2, p0, Layw;->f:[F

    iget-object v5, p0, Layw;->g:[F

    check-cast p1, Lcom/google/android/projection/protocol/SensorSource;

    invoke-static {v0}, Lcom/google/android/projection/protocol/SensorSource;->e([F)[I

    move-result-object v7

    .line 2
    invoke-static {v2}, Lcom/google/android/projection/protocol/SensorSource;->e([F)[I

    move-result-object v8

    .line 3
    invoke-static {v5}, Lcom/google/android/projection/protocol/SensorSource;->e([F)[I

    move-result-object v9

    .line 4
    const/4 v2, 0x1

    move-object v0, p1

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportGpsSatelliteData(IZI[I[I[Z[I[I)I

    return-void
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
