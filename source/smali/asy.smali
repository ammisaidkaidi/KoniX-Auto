.class public final Lasy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ldny;I)V
    .locals 0

    iput p2, p0, Lasy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lasy;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 55
    iget v0, p0, Lasy;->b:I

    packed-switch v0, :pswitch_data_0

    .line 54
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 61
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laus;

    iget-object v0, v0, Laus;->b:Lauj;

    .line 62
    invoke-static {v0}, Lhg;->n(Lauj;)Lclk;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 55
    :pswitch_0
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 1
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laus;

    iget-object v0, v0, Laus;->e:Laun;

    if-eqz v0, :cond_0

    iget-object v0, v0, Laun;->f:Lcom/google/android/projection/protocol/AudioSource;

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lbaz;->a:Lbaz;

    .line 3
    :goto_0
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 2
    :pswitch_1
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    .line 4
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 7
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/Car;

    .line 8
    const-string v1, "uxrestriction"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 9
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 10
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/Car;

    .line 11
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/CarSensorManager;

    .line 12
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 13
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/Car;

    .line 14
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getCarPropertyManagerSafe(Landroid/car/Car;)Landroid/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 15
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 16
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/Car;

    .line 17
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getCarProjectionManagerSafe(Landroid/car/Car;)Landroid/car/CarProjectionManager;

    move-result-object v0

    .line 18
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 19
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/Car;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_1

    .line 20
    const-string v1, "car_occupant_zone_service"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarOccupantZoneManager;

    .line 21
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    goto :goto_1

    .line 22
    :cond_1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    .line 21
    :goto_1
    return-object v0

    .line 22
    :pswitch_7
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 23
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/Car;

    .line 24
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getCarNavigationManagerSafe(Landroid/car/Car;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/navigation/CarNavigationStatusManager;

    .line 25
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 26
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/Car;

    .line 27
    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarInfoManager;

    .line 28
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 29
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/Car;

    .line 30
    const-string v1, "app_focus"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarAppFocusManager;

    .line 31
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    .line 32
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 34
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    .line 35
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 37
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    .line 38
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 40
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    .line 41
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    .line 44
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/location/LocationManager;

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 46
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    .line 47
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 49
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    .line 50
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 52
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lasy;->a:Ldny;

    .line 53
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 54
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_12
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 56
    sget-object v1, Lbje;->c:Lbje;

    const v2, 0xc85df20

    .line 57
    invoke-virtual {v1, v0, v2}, Lbje;->c(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    .line 55
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 63
    :pswitch_13
    iget-object v0, p0, Lasy;->a:Ldny;

    check-cast v0, Ldhr;

    .line 58
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 60
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
