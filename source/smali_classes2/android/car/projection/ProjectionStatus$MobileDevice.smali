.class public final Landroid/car/projection/ProjectionStatus$MobileDevice;
.super Ljava/lang/Object;
.source "ProjectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/projection/ProjectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/projection/ProjectionStatus$MobileDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAvailableTransports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;

.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mProjecting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Landroid/car/projection/ProjectionStatus$MobileDevice$1;

    invoke-direct {v0}, Landroid/car/projection/ProjectionStatus$MobileDevice$1;-><init>()V

    sput-object v0, Landroid/car/projection/ProjectionStatus$MobileDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$700(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mId:I

    .line 98
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$800(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mName:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$900(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mAvailableTransports:Ljava/util/List;

    .line 100
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$1000(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mProjecting:Z

    .line 101
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$1100(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$1100(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mExtras:Landroid/os/Bundle;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;Landroid/car/projection/ProjectionStatus$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Landroid/car/projection/ProjectionStatus$MobileDevice;-><init>(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)V

    return-void
.end method

.method public static builder(ILjava/lang/String;)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    .locals 2

    .line 105
    new-instance v0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;-><init>(ILjava/lang/String;Landroid/car/projection/ProjectionStatus$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableTransports()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mAvailableTransports:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 112
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 108
    iget v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isProjecting()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mProjecting:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 116
    iget p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-boolean p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mProjecting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method
