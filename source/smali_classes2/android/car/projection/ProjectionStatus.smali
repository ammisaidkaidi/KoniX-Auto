.class public final Landroid/car/projection/ProjectionStatus;
.super Ljava/lang/Object;
.source "ProjectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/projection/ProjectionStatus$MobileDevice;,
        Landroid/car/projection/ProjectionStatus$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/projection/ProjectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECTION_STATE_ACTIVE_BACKGROUND:I = 0x3

.field public static final PROJECTION_STATE_ACTIVE_FOREGROUND:I = 0x2

.field public static final PROJECTION_STATE_INACTIVE:I = 0x0

.field public static final PROJECTION_STATE_READY_TO_PROJECT:I = 0x1

.field public static final PROJECTION_TRANSPORT_NONE:I = 0x0

.field public static final PROJECTION_TRANSPORT_USB:I = 0x1

.field public static final PROJECTION_TRANSPORT_WIFI:I = 0x2


# instance fields
.field private final mConnectedMobileDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/projection/ProjectionStatus$MobileDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;

.field private final mPackageName:Ljava/lang/String;

.field private final mState:I

.field private final mTransport:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/car/projection/ProjectionStatus$1;

    invoke-direct {v0}, Landroid/car/projection/ProjectionStatus$1;-><init>()V

    sput-object v0, Landroid/car/projection/ProjectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/car/projection/ProjectionStatus$Builder;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$000(Landroid/car/projection/ProjectionStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus;->mPackageName:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$100(Landroid/car/projection/ProjectionStatus$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    .line 26
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$200(Landroid/car/projection/ProjectionStatus$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionStatus;->mTransport:I

    .line 27
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$300(Landroid/car/projection/ProjectionStatus$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$300(Landroid/car/projection/ProjectionStatus$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/car/projection/ProjectionStatus;->mExtras:Landroid/os/Bundle;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$400(Landroid/car/projection/ProjectionStatus$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus;->mConnectedMobileDevices:Ljava/util/List;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/car/projection/ProjectionStatus$Builder;Landroid/car/projection/ProjectionStatus$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Landroid/car/projection/ProjectionStatus;-><init>(Landroid/car/projection/ProjectionStatus$Builder;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;I)Landroid/car/projection/ProjectionStatus$Builder;
    .locals 2

    .line 32
    new-instance v0, Landroid/car/projection/ProjectionStatus$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/car/projection/ProjectionStatus$Builder;-><init>(Ljava/lang/String;ILandroid/car/projection/ProjectionStatus$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedMobileDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/projection/ProjectionStatus$MobileDevice;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus;->mConnectedMobileDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 38
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Landroid/car/projection/ProjectionStatus;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 35
    iget v0, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    return v0
.end method

.method public getTransport()I
    .locals 1

    .line 37
    iget v0, p0, Landroid/car/projection/ProjectionStatus;->mTransport:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectionStatus{pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/projection/ProjectionStatus;->mTransport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus;->mConnectedMobileDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget-object p2, p0, Landroid/car/projection/ProjectionStatus;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget p2, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Landroid/car/projection/ProjectionStatus;->mTransport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object p2, p0, Landroid/car/projection/ProjectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method
