.class public Lcom/google/android/projection/protocol/GalReceiver$CarInfo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public canPlayNativeMediaDuringVr:Z

.field public displayName:Ljava/lang/String;

.field public driverPosition:I

.field public headUnitMake:Ljava/lang/String;

.field public headUnitModel:Ljava/lang/String;

.field public headUnitSoftwareBuild:Ljava/lang/String;

.field public headUnitSoftwareVersion:Ljava/lang/String;

.field public manufacturer:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public modelYear:Ljava/lang/String;

.field public sessionConfiguration:I

.field public vehicleId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->manufacturer:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->model:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->modelYear:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->vehicleId:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->driverPosition:I

    iput-object p6, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitMake:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitModel:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitSoftwareBuild:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitSoftwareVersion:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->canPlayNativeMediaDuringVr:Z

    iput p10, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->sessionConfiguration:I

    iput-object p11, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->displayName:Ljava/lang/String;

    return-void
.end method
