.class public Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final deviceId:I

.field public final deviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;->deviceName:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;->deviceId:I

    return-void
.end method
