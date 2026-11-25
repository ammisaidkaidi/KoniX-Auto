.class public Landroid/car/CarOccupantZoneManager;
.super Ljava/lang/Object;
.source "CarOccupantZoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllOccupantZones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayForOccupant(Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;I)Landroid/view/Display;
    .locals 0

    .line 15
    const/4 p1, 0x0

    return-object p1
.end method
