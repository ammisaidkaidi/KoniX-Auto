.class public final Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
.super Ljava/lang/Object;
.source "ProjectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/projection/ProjectionStatus$MobileDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private mProjecting:Z

.field private final mTransports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mTransports:Ljava/util/List;

    .line 137
    iput p1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mId:I

    .line 138
    iput-object p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/car/projection/ProjectionStatus$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mProjecting:Z

    return p0
.end method

.method static synthetic access$1100(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 129
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$700(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)I
    .locals 0

    .line 129
    iget p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mId:I

    return p0
.end method

.method static synthetic access$800(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Ljava/util/List;
    .locals 0

    .line 129
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mTransports:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addTransport(I)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mTransports:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p0
.end method

.method public build()Landroid/car/projection/ProjectionStatus$MobileDevice;
    .locals 2

    .line 153
    new-instance v0, Landroid/car/projection/ProjectionStatus$MobileDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/car/projection/ProjectionStatus$MobileDevice;-><init>(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;Landroid/car/projection/ProjectionStatus$1;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    .locals 0

    .line 149
    iput-object p1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mExtras:Landroid/os/Bundle;

    .line 150
    return-object p0
.end method

.method public setProjecting(Z)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    .locals 0

    .line 145
    iput-boolean p1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mProjecting:Z

    .line 146
    return-object p0
.end method
