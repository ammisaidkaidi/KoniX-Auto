.class final Layx;
.super Landroid/location/GnssStatus$Callback;
.source "PG"


# instance fields
.field final synthetic a:Lazc;


# direct methods
.method public constructor <init>(Lazc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Layx;->a:Lazc;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 12

    .line 1
    iget-object v0, p0, Layx;->a:Lazc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v4

    const/4 v6, 0x1

    if-ge v2, v4, :cond_2

    .line 2
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v4

    if-ne v4, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    new-array v7, v3, [I

    .line 5
    new-array v8, v3, [F

    .line 6
    new-array v9, v3, [Z

    .line 7
    new-array v10, v3, [F

    .line 8
    new-array v11, v3, [F

    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 10
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 11
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v3

    aput v3, v7, v2

    .line 12
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v3

    aput v3, v8, v2

    .line 13
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v3

    aput-boolean v3, v9, v2

    .line 14
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v3

    aput v3, v10, v2

    .line 15
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v3

    aput v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v6

    .line 17
    sget-object p1, Lckw;->u:Lckw;

    new-instance v1, Layw;

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Layw;-><init>(II[I[F[Z[F[F)V

    invoke-virtual {v0, p1, v1}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void
.end method
