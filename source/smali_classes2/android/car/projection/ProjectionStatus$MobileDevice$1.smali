.class Landroid/car/projection/ProjectionStatus$MobileDevice$1;
.super Ljava/lang/Object;
.source "ProjectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/projection/ProjectionStatus$MobileDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/projection/ProjectionStatus$MobileDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/projection/ProjectionStatus$MobileDevice;
    .locals 2

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/car/projection/ProjectionStatus$MobileDevice;->builder(ILjava/lang/String;)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->setProjecting(Z)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->setExtras(Landroid/os/Bundle;)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->build()Landroid/car/projection/ProjectionStatus$MobileDevice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/projection/ProjectionStatus$MobileDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/car/projection/ProjectionStatus$MobileDevice;
    .locals 0

    .line 126
    new-array p1, p1, [Landroid/car/projection/ProjectionStatus$MobileDevice;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$1;->newArray(I)[Landroid/car/projection/ProjectionStatus$MobileDevice;

    move-result-object p1

    return-object p1
.end method
