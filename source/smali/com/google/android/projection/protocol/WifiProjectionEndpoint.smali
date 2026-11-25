.class public Lcom/google/android/projection/protocol/WifiProjectionEndpoint;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/projection/protocol/WifiProjectionCallbacks;
.implements Lclk;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lclm;

.field private mNativeWifiProjectionEndpoint:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lclm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->b:Lclm;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null car wifi BSSID"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeInit(IJLjava/lang/String;)I
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->mNativeWifiProjectionEndpoint:J

    return-wide v0
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->nativeShutdown()V

    return-void
.end method

.method public final c(IJ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->nativeInit(IJLjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onWifiCredentialsRequest()Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->b:Lclm;

    new-instance v1, Lcll;

    invoke-direct {v1}, Lcll;-><init>()V

    iget-object v2, v0, Lclm;->a:Lbdt;

    iget-object v3, v2, Lbdt;->a:Ljava/lang/String;

    iput-object v3, v1, Lcll;->a:Ljava/lang/String;

    iget-object v2, v2, Lbdt;->c:Ljava/lang/String;

    iput-object v2, v1, Lcll;->b:Ljava/lang/String;

    const/4 v2, 0x6

    iput v2, v1, Lcll;->d:I

    iget-object v0, v0, Lclm;->c:Lbhi;

    invoke-virtual {v0}, Lbhi;->a()Lcqh;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Laxk;->d:Laxk;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->mapToInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iput-object v0, v1, Lcll;->c:[I

    new-instance v0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;

    iget-object v2, v1, Lcll;->a:Ljava/lang/String;

    iget-object v3, v1, Lcll;->b:Ljava/lang/String;

    iget v4, v1, Lcll;->d:I

    iget-object v1, v1, Lcll;->c:[I

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    return-object v0
.end method
