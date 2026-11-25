.class public Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final supportedWifiChannels:[I

.field public final wifiPassword:Ljava/lang/String;

.field public final wifiSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->wifiSsid:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->wifiPassword:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->a:I

    iput-object p4, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->supportedWifiChannels:[I

    return-void
.end method

.method private getAccessPointType()I
    .locals 1

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getAccessPointTypeNumber()I

    move-result v0

    return v0
.end method

.method private getWifiSecurityModeNumber()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->a:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
