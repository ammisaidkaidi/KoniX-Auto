.class public final Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;
.super Ljava/lang/Object;
.source "CarCompat.java"


# static fields
.field private static final A2DP_SOURCE_UUID:Ljava/util/UUID;

.field private static final COMPAT_TETHER_CB_CLS:Ljava/lang/String; = "com.google.android.apps.auto.aareceiver.compat.CompatTetheringCallback"

.field private static final DISAMBIGUATION_CLS:Ljava/lang/String; = "com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity"

.field private static final NEW_DEVICE_CLS:Ljava/lang/String; = "com.google.android.apps.auto.aareceiver.transport.usb.NewDeviceActivity"

.field private static final PERSISTENT_SERVICE_CLS:Ljava/lang/String; = "com.google.android.apps.auto.aareceiver.service.PersistentService"

.field private static final TAG:Ljava/lang/String; = "AAReceiverCompat"

.field private static volatile sActiveApConfig:Landroid/net/wifi/WifiConfiguration;

.field private static final sActiveRfcommDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sApLock:Ljava/lang/Object;

.field private static volatile sAppContext:Landroid/content/Context;

.field private static final sAutoLaunchPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sBtNudgeRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile sCurrentConnectedDevices:I

.field private static volatile sCurrentProjectionState:I

.field private static volatile sLastClientWifiIp:Ljava/lang/String;

.field private static volatile sLastRfcommActivityMs:J

.field private static volatile sLohsReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

.field private static final sPendingApCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReceiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile sRestoreClientWifi:Z

.field private static volatile sSessionStartMs:J

.field private static volatile sSoftApStartedByUs:Z

.field private static volatile sStartingAccessPoint:Z

.field private static final sSwitchingDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sTetheringStartedByUs:Z

.field private static final sWaitLoopRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile sWirelessStartTimestampMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 81
    nop

    .line 82
    const-string v0, "00001112-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->A2DP_SOURCE_UUID:Ljava/util/UUID;

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sTetheringStartedByUs:Z

    .line 88
    sput-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSoftApStartedByUs:Z

    .line 89
    sput-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sRestoreClientWifi:Z

    .line 90
    sput-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sStartingAccessPoint:Z

    .line 91
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLastClientWifiIp:Ljava/lang/String;

    .line 92
    sput v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    .line 93
    sput v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentConnectedDevices:I

    .line 94
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sWirelessStartTimestampMs:J

    .line 96
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sApLock:Ljava/lang/Object;

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sPendingApCallbacks:Ljava/util/List;

    .line 99
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 100
    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSwitchingDevices:Ljava/util/Set;

    .line 101
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 102
    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveRfcommDevices:Ljava/util/Set;

    .line 103
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAutoLaunchPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sWaitLoopRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sBtNudgeRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sReceiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->unlockHiddenApis()V

    .line 511
    sput-wide v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLastRfcommActivityMs:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->tryStartWifiTethering(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 71
    sput-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiManager;)I
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getWifiApStateSafe(Landroid/net/wifi/WifiManager;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sTetheringStartedByUs:Z

    return p0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSoftApStartedByUs:Z

    return p0
.end method

.method static synthetic access$1400(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->tryStopWifiTethering(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1500()V
    .locals 0

    .line 71
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->provisionApNetworkViaLocalRoot()V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->notifyAllPendingApStarted(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$1702(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 0

    .line 71
    sput-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLohsReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object p0
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->restoreWifiAfterFailure(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method static synthetic access$1900(I)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->notifyAllPendingApFailed(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->ensureWirelessSettingsEnabled(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    .line 71
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->handleAttachedUsbDevice(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method static synthetic access$2100(Landroid/content/Context;)Z
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->hasConnectedUsbPhone(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200()I
    .locals 1

    .line 71
    sget v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    return v0
.end method

.method static synthetic access$2300(Landroid/content/Context;Z)Z
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->hasConnectedBluetoothPhone(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
    .locals 0

    .line 71
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->nudgeWirelessBluetoothReconnect(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V

    return-void
.end method

.method static synthetic access$2500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAutoLaunchPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .line 71
    sget v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentConnectedDevices:I

    return v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .line 71
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isWirelessStartRecentlyActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->launchDisambiguationNow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2900()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sWaitLoopRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->runLocalRootShell(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 71
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isWirelessSessionOrApBusy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sBtNudgeRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3200()Ljava/util/UUID;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->A2DP_SOURCE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V
    .locals 0

    .line 71
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sendAoapString(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400()Ljava/util/Set;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSwitchingDevices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isCandidateUsbPhone(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getCurrentClientWifiIpv4(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLastClientWifiIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLastClientWifiIp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sRestoreClientWifi:Z

    return p0
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getIWifiManager()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(I)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->buildPersistentApWifiConfig(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->setWifiApConfigSafe(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static addKeyEventHandler(Landroid/car/CarProjectionManager;Ljava/util/Set;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/CarProjectionManager;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;",
            ")V"
        }
    .end annotation

    .line 528
    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 530
    :cond_0
    :try_start_0
    new-instance p1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$3;

    invoke-direct {p1, p2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$3;-><init>(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/car/CarProjectionManager;->registerProjectionListener(Landroid/car/CarProjectionManager$CarProjectionListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    goto :goto_0

    .line 536
    :catchall_0
    move-exception p0

    .line 537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerProjectionListener failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_0
    return-void

    .line 528
    :cond_1
    :goto_1
    return-void
.end method

.method private static allocateDummy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1619
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sun.misc.Unsafe"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1620
    const-string v2, "theUnsafe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1621
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1622
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1623
    const-string v4, "allocateInstance"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1624
    :catchall_0
    move-exception v1

    .line 1625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateDummy failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AAReceiverCompat"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return-object v0
.end method

.method private static buildPersistentApWifiConfig(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    const/4 p0, 0x0

    .line 729
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 730
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getPersistentApSsid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 731
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getPersistentApPsk()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 732
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 733
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 734
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 735
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 736
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 738
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "apBand"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 739
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 741
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "apChannel"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/16 v1, 0x6

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 742
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 743
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 744
    return-object v0
.end method

.method public static captureContext(Landroid/content/Context;)V
    .locals 1

    .line 284
    if-eqz p0, :cond_1

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    sput-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    .line 287
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->ensureDefaultDisplayPrefs(Landroid/content/Context;)V

    .line 288
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->grantRuntimePermissionsSelf(Landroid/content/Context;)V

    .line 289
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->ensureWirelessSettingsEnabled(Landroid/content/Context;)V

    .line 291
    :cond_1
    return-void
.end method

.method private static computeDefaultPsk()Ljava/lang/String;
    .locals 4

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    const-string v1, "020000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AA"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    const-string v0, "AAWireless2026"

    return-object v0
.end method

.method private static computeDefaultSsid()Ljava/lang/String;
    .locals 3

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "AUTO"

    .line 134
    :goto_0
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "CAR9"

    .line 135
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidAuto_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCar(Landroid/content/Context;)Landroid/car/Car;
    .locals 9

    .line 316
    const-string v0, "AAReceiverCompat"

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->captureContext(Landroid/content/Context;)V

    .line 318
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 319
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 320
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "car_service"

    aput-object v4, v2, v6

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 321
    if-eqz v1, :cond_0

    .line 322
    invoke-static {v1}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v1

    .line 323
    const-class v2, Landroid/car/Car;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const-class v7, Landroid/car/ICar;

    aput-object v7, v5, v3

    const-class v7, Landroid/os/Handler;

    const/4 v8, 0x2

    aput-object v7, v5, v8

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 324
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 325
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object v1, v4, v3

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/Car;

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created synchronous Car instance via ICar binder (connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/car/Car;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    return-object v1

    .line 331
    :cond_0
    goto :goto_0

    .line 329
    :catchall_0
    move-exception v1

    .line 330
    const-string v2, "Direct ICar construction failed, falling back to ServiceConnection"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    :goto_0
    new-instance v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$2;

    invoke-direct {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$2;-><init>()V

    invoke-static {p0, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object p0

    .line 340
    if-eqz p0, :cond_1

    .line 341
    invoke-virtual {p0}, Landroid/car/Car;->connect()V

    .line 343
    :cond_1
    return-object p0
.end method

.method private static ensureDefaultDisplayPrefs(Landroid/content/Context;)V
    .locals 4

    .line 204
    if-nez p0, :cond_0

    return-void

    .line 206
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lez v1, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x500

    .line 208
    :goto_0
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lez v2, :cond_2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x2d0

    .line 209
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v3

    .line 212
    invoke-static {v3, v2, v1, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->seedPrefsOnContext(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 213
    :catchall_0
    move-exception v3

    :goto_2
    nop

    .line 214
    :try_start_2
    invoke-static {p0, v2, v1, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->seedPrefsOnContext(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 215
    :catchall_1
    move-exception p0

    :goto_3
    nop

    .line 216
    return-void
.end method

.method public static ensurePersistentServiceRunning(Landroid/content/Context;)V
    .locals 3

    .line 271
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    .line 273
    :goto_0
    if-nez p0, :cond_2

    return-void

    .line 275
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.auto.aareceiver.service.PersistentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    goto :goto_1

    .line 278
    :catchall_0
    move-exception p0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensurePersistentServiceRunning warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AAReceiverCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_1
    return-void
.end method

.method private static ensureWirelessSettingsEnabled(Landroid/content/Context;)V
    .locals 4

    .line 219
    const-string v0, "location_mode"

    const-string v1, "com.android.car.projection.DISABLED"

    if-nez p0, :cond_0

    return-void

    .line 222
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    :cond_1
    :goto_0
    nop

    .line 228
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 229
    if-nez v1, :cond_2

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    const-string p0, "AAReceiverCompat"

    const-string v0, "Enabled Settings.Secure.LOCATION_MODE=3 for Android 9 Wi-Fi AP/LOHS"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 233
    :catchall_1
    move-exception p0

    :cond_2
    :goto_1
    nop

    .line 234
    return-void
.end method

.method private static findValidApIpv4OnInterface(Ljava/lang/String;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5

    .line 702
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0

    .line 703
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 704
    :cond_0
    nop

    .line 705
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p0

    move-object v1, v0

    .line 706
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 707
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 708
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-nez v3, :cond_2

    .line 709
    goto :goto_0

    .line 711
    :cond_2
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 712
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 713
    :cond_3
    const-string v4, "192.168.43."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "192.168.49."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ".1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_1

    .line 716
    :cond_4
    if-nez v1, :cond_5

    move-object v1, v2

    .line 717
    :cond_5
    goto :goto_0

    .line 714
    :cond_6
    :goto_1
    return-object v2

    .line 718
    :cond_7
    return-object v1

    .line 703
    :cond_8
    :goto_2
    return-object v0

    .line 719
    :catchall_0
    move-exception p0

    .line 720
    return-object v0
.end method

.method public static getAccessPointTypeNumber()I
    .locals 1

    .line 508
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLohsReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 618
    const-string v0, "00:00:00:00:00:00"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 620
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    const-string p0, "wlan1"

    const-string v2, "p2p0"

    const-string v3, "ap0"

    const-string v4, "softap0"

    const-string v5, "wlan0"

    filled-new-array {v3, v4, v5, p0, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 623
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 625
    :try_start_0
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 626
    if-eqz v2, :cond_1

    .line 627
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 628
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 629
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02x:%02x:%02x:%02x:%02x:%02x"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    .line 630
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    .line 631
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x5

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    .line 629
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    return-object v2

    .line 635
    :catchall_0
    move-exception v2

    :cond_1
    nop

    .line 636
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/class/net/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 637
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 638
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    if-lt v3, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 639
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 641
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 639
    return-object v1

    .line 641
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    .line 636
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 641
    :catchall_3
    move-exception v1

    .line 642
    :goto_2
    goto/16 :goto_0

    .line 643
    :cond_3
    const-string p0, "02:00:00:00:00:00"

    return-object p0
.end method

.method public static getApHostInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 674
    const-string v1, "wlan0"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 675
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_0
    const-string v2, "wlan1"

    const-string v3, "p2p-wlan0-0"

    const-string v4, "ap0"

    const-string v5, "softap0"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 680
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 681
    sget-object v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLastClientWifiIp:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->findValidApIpv4OnInterface(Ljava/lang/String;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 682
    if-eqz v2, :cond_1

    return-object v2

    .line 683
    :cond_1
    goto :goto_0

    .line 686
    :cond_2
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLohsReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sTetheringStartedByUs:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSoftApStartedByUs:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v3

    .line 687
    :goto_2
    if-nez v0, :cond_6

    sget-object v4, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    if-eqz v4, :cond_6

    .line 689
    :try_start_0
    sget-object v4, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    const-class v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 690
    invoke-static {v4}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getWifiApStateSafe(Landroid/net/wifi/WifiManager;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_5

    move v2, v3

    .line 691
    :cond_5
    move v0, v2

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 693
    :cond_6
    :goto_3
    if-nez v0, :cond_7

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 694
    :cond_7
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLastClientWifiIp:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->findValidApIpv4OnInterface(Ljava/lang/String;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 695
    if-eqz p0, :cond_8

    return-object p0

    .line 697
    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAvailableWifiChannels(Landroid/car/CarProjectionManager;I)Ljava/util/List;
    .locals 1

    invoke-static {}, Lx/a;->channels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCarNavigationManagerSafe(Landroid/car/Car;)Ljava/lang/Object;
    .locals 2

    .line 1656
    :try_start_0
    const-string v0, "car_navigation_service"

    invoke-virtual {p0, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1657
    :catchall_0
    move-exception p0

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarManager(car_navigation_service) fallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AAReceiverCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCarProjectionManagerSafe(Landroid/car/Car;)Landroid/car/CarProjectionManager;
    .locals 2

    .line 1632
    :try_start_0
    const-string v0, "projection"

    invoke-virtual {p0, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1633
    instance-of v0, p0, Landroid/car/CarProjectionManager;

    if-eqz v0, :cond_0

    .line 1634
    check-cast p0, Landroid/car/CarProjectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1638
    :cond_0
    goto :goto_0

    .line 1636
    :catchall_0
    move-exception p0

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarManager(projection) fallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AAReceiverCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :goto_0
    const-class p0, Landroid/car/CarProjectionManager;

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->allocateDummy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/CarProjectionManager;

    return-object p0
.end method

.method public static getCarPropertyManagerSafe(Landroid/car/Car;)Landroid/car/hardware/property/CarPropertyManager;
    .locals 2

    .line 1644
    :try_start_0
    const-string v0, "property"

    invoke-virtual {p0, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1645
    instance-of v0, p0, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 1646
    check-cast p0, Landroid/car/hardware/property/CarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1650
    :cond_0
    goto :goto_0

    .line 1648
    :catchall_0
    move-exception p0

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarManager(property) fallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AAReceiverCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :goto_0
    const-class p0, Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->allocateDummy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/property/CarPropertyManager;

    return-object p0
.end method

.method private static getCurrentClientWifiIpv4(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 5

    .line 658
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 660
    if-eqz p0, :cond_0

    .line 661
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    .line 662
    if-eqz p0, :cond_0

    .line 663
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d.%d.%d.%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    and-int/lit16 v3, p0, 0xff

    .line 664
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x3

    aput-object p0, v2, v3

    .line 663
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 668
    :catchall_0
    move-exception p0

    :cond_0
    nop

    .line 669
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEvConnectorTypesSafe(Landroid/car/CarInfoManager;)[I
    .locals 3

    .line 427
    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [I

    return-object p0

    .line 429
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/car/CarInfoManager;->getEvConnectorTypes()[I

    move-result-object p0

    .line 430
    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-array p0, v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p0

    .line 431
    :catchall_0
    move-exception p0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEvConnectorTypesSafe unsupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AAReceiverCompat"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-array p0, v0, [I

    return-object p0
.end method

.method public static getFuelCapacitySafe(Landroid/car/CarInfoManager;)F
    .locals 3

    .line 417
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 419
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/car/CarInfoManager;->getFuelCapacity()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 420
    :catchall_0
    move-exception p0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFuelCapacitySafe unsupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AAReceiverCompat"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v0
.end method

.method private static getIWifiManager()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 787
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 788
    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "wifi"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 789
    if-nez v0, :cond_0

    return-object v2

    .line 790
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroid/os/IBinder;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 791
    const-string v4, "asInterface"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 790
    return-object v0
.end method

.method public static getIntPropertySafe(Landroid/car/hardware/property/CarPropertyManager;II)I
    .locals 2

    .line 395
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 397
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 398
    :catchall_0
    move-exception p0

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntPropertySafe(0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") unsupported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v0
.end method

.method public static getPersistentApPsk()Ljava/lang/String;
    .locals 4

    .line 160
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->computeDefaultPsk()Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    .line 162
    if-nez v1, :cond_0

    return-object v0

    .line 164
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_preferences"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    const-string v2, "aa_v8_ap_psk"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    return-object v1

    .line 168
    :catchall_0
    move-exception v1

    :cond_1
    nop

    .line 169
    return-object v0
.end method

.method public static getPersistentApSsid()Ljava/lang/String;
    .locals 4

    .line 147
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->computeDefaultSsid()Ljava/lang/String;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    .line 149
    if-nez v1, :cond_0

    return-object v0

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_preferences"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    const-string v2, "aa_v8_ap_ssid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    return-object v1

    .line 155
    :catchall_0
    move-exception v1

    :cond_1
    nop

    .line 156
    return-object v0
.end method

.method public static getProjectionOptions(Landroid/car/CarProjectionManager;)Landroid/os/Bundle;
    .locals 2

    .line 439
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 440
    const-string v0, "android.car.projection.uiMode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    return-object p0
.end method

.method public static getPropertyListSafe(Landroid/car/hardware/property/CarPropertyManager;)Ljava/util/List;
    .locals 2

    .line 406
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 408
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList()Ljava/util/List;

    move-result-object p0

    .line 409
    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p0

    .line 410
    :catchall_0
    move-exception p0

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyListSafe failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AAReceiverCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPropertySafe(Landroid/car/hardware/property/CarPropertyManager;II)Landroid/car/hardware/CarPropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/property/CarPropertyManager;",
            "II)",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 387
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 388
    :catchall_0
    move-exception p0

    .line 389
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertySafe(0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") unsupported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v0
.end method

.method public static getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 3

    .line 1706
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1707
    :cond_0
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1708
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->grantUsbPermissionAndDefault(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    .line 1711
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 1712
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    return-object v0

    .line 1715
    :cond_2
    goto :goto_0

    .line 1713
    :catchall_0
    move-exception v0

    .line 1714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsbSerialSafe fallback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AAReceiverCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiApConfigurationSafe(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 748
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 749
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 750
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 751
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 752
    :cond_0
    invoke-static {v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 754
    :cond_1
    return-object v0

    .line 757
    :cond_2
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 758
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getWifiApConfiguration"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 759
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    .line 760
    if-eqz p0, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 761
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_5

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 762
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 763
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 764
    :cond_3
    invoke-static {v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :cond_4
    return-object p0

    .line 769
    :catchall_0
    move-exception p0

    :cond_5
    nop

    .line 770
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->buildPersistentApWifiConfig(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    .line 771
    sput-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 772
    return-object p0
.end method

.method private static getWifiApStateSafe(Landroid/net/wifi/WifiManager;)I
    .locals 5

    .line 647
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 649
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWifiApState"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 650
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 651
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 652
    :catchall_0
    move-exception p0

    :cond_1
    nop

    .line 653
    return v0
.end method

.method private static grantRuntimePermissionsSelf(Landroid/content/Context;)V
    .locals 13

    .line 237
    if-nez p0, :cond_0

    return-void

    .line 238
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.RECORD_AUDIO"

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.car.permission.CAR_SPEED"

    const-string v5, "android.car.permission.CAR_ENERGY"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 247
    nop

    .line 248
    nop

    .line 249
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    move v3, v2

    :goto_0
    const/4 v6, 0x6

    if-ge v3, v6, :cond_4

    :try_start_0
    aget-object v6, v0, v3

    .line 250
    invoke-virtual {p0, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 251
    goto/16 :goto_2

    .line 253
    :cond_1
    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-nez v4, :cond_3

    .line 254
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getService"

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v2

    .line 255
    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string v10, "package"

    aput-object v10, v5, v2

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 256
    if-nez v4, :cond_2

    return-void

    .line 257
    :cond_2
    const-string v5, "android.content.pm.IPackageManager$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v10, "asInterface"

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Landroid/os/IBinder;

    aput-object v12, v11, v2

    .line 258
    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 259
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v10, "grantRuntimePermission"

    new-array v11, v8, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v2

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v9

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v7

    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :cond_3
    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v2

    aput-object v6, v8, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v7, "AAReceiverCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-granted runtime permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    :catchall_0
    move-exception v6

    :goto_1
    nop

    .line 249
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 267
    :catchall_1
    move-exception p0

    :cond_4
    nop

    .line 268
    return-void
.end method

.method public static grantUsbPermissionAndDefault(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 9

    .line 1247
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1249
    :cond_0
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1250
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "usb"

    aput-object v3, v1, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1251
    const-string v1, "android.hardware.usb.IUsbManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1252
    const-string v4, "asInterface"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v5

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "grantDevicePermission"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/hardware/usb/UsbDevice;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 1254
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isAoapDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 1257
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "setDevicePackage"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/hardware/usb/UsbDevice;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 1258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1259
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 1263
    :cond_1
    goto :goto_1

    .line 1261
    :catchall_1
    move-exception p0

    .line 1262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "grantUsbPermissionAndDefault warning: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :goto_1
    return-void

    .line 1247
    :cond_2
    :goto_2
    return-void
.end method

.method private static handleAttachedUsbDevice(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Z)V
    .locals 2

    invoke-static {}, Lx/a;->usb()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1560
    :goto_0
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isCandidateUsbPhone(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1561
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->grantUsbPermissionAndDefault(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    .line 1562
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isAoapDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1563
    if-eqz p2, :cond_2

    sget p2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 1565
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.auto.aareceiver.transport.usb.NewDeviceActivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1567
    const-string v0, "device"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1568
    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1569
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    goto :goto_1

    .line 1570
    :catchall_0
    move-exception p0

    .line 1571
    const-string p1, "AAReceiverCompat"

    const-string p2, "Failed to launch NewDeviceActivity for AOAP device"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    :cond_2
    :goto_1
    return-void

    .line 1576
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    .line 1577
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSwitchingDevices:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 1578
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$14;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    const-string p0, "aoap-switch"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1610
    return-void
.end method

.method private static hasConnectedBluetoothPhone(Landroid/content/Context;Z)Z
    .locals 7

    .line 1411
    const/4 v0, 0x0

    invoke-static {}, Lx/i;->biasReset()V

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1412
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 1413
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 1414
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 1415
    :cond_1
    const-class v3, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "isConnected"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1416
    nop

    .line 1417
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1418
    if-nez v4, :cond_3

    goto :goto_0

    .line 1419
    :cond_3
    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 1420
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1421
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    .line 1422
    const/16 v6, 0x200

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v6

    .line 1423
    :goto_1
    if-eq v5, v6, :cond_5

    const/16 v6, 0x1f00

    if-ne v5, v6, :cond_6

    .line 1425
    :cond_5
    invoke-static {v4}, Lx/i;->biasSkip(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1426
    goto :goto_2

    .line 1429
    :cond_6
    goto :goto_0

    .line 1417
    :cond_7
    const/4 v4, 0x0

    invoke-static {}, Lx/i;->biasFallback()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 1430
    :goto_2
    if-eqz v4, :cond_8

    if-eqz p1, :cond_8

    invoke-static {v4}, Lx/g;->shouldSkipWirelessNudge(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1431
    const-wide/16 v2, 0x898

    invoke-static {p0, v1, v4, v2, v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->nudgeWirelessBluetoothReconnect(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    :cond_8
    if-eqz v4, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0

    .line 1414
    :cond_a
    :goto_3
    return v0

    .line 1412
    :cond_b
    :goto_4
    return v0

    .line 1434
    :catchall_0
    move-exception p0

    .line 1435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasConnectedBluetoothPhone warning: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    return v0
.end method

.method private static hasConnectedUsbPhone(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static initApp(Landroid/content/Context;)V
    .locals 1

    .line 294
    if-eqz p0, :cond_1

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    sput-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    .line 297
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->ensureDefaultDisplayPrefs(Landroid/content/Context;)V

    .line 298
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->grantRuntimePermissionsSelf(Landroid/content/Context;)V

    .line 299
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->ensureWirelessSettingsEnabled(Landroid/content/Context;)V

    .line 300
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$1;

    invoke-direct {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    :cond_1
    return-void
.end method

.method public static initPersistentService(Landroid/app/Service;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lx/i;->onProcessStart(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1286
    :goto_0
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->captureContext(Landroid/content/Context;)V

    .line 1288
    :try_start_1
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object v0

    .line 1289
    if-eqz v0, :cond_0

    .line 1290
    const-string v1, "projection"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarProjectionManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1291
    if-eqz v0, :cond_0

    .line 1293
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/car/CarProjectionManager;->registerProjectionRunner(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1294
    :catchall_1
    move-exception v0

    :goto_1
    nop

    .line 1299
    :cond_0
    goto :goto_2

    .line 1297
    :catchall_2
    move-exception v0

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPersistentService car init warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AAReceiverCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :goto_2
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sReceiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1302
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_3

    :cond_1
    move-object v0, p0

    .line 1303
    :goto_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1304
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1305
    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1306
    new-instance v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9;

    invoke-direct {v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$9;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1330
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1331
    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1332
    const-string v3, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1333
    new-instance v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$10;

    invoke-direct {v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$10;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1347
    :cond_2
    invoke-static {p0, v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->scanAndSwitchUsbPhones(Landroid/content/Context;Z)Z

    move-result v0

    .line 1348
    if-nez v0, :cond_3

    .line 1349
    invoke-static {p0}, Lx/i;->btAttemptGated(Landroid/content/Context;)Z

    .line 1351
    :cond_3
    :try_start_3
    invoke-static {p0}, Lx/i;->selfHealDeferred(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :goto_4
    return-void
.end method

.method public static interceptNewDeviceActivity(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)Z
    .locals 4

    .line 1541
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->captureContext(Landroid/content/Context;)V

    .line 1542
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1543
    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->ensurePersistentServiceRunning(Landroid/content/Context;)V

    .line 1544
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1545
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isCandidateUsbPhone(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1546
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1547
    return v3

    .line 1549
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->grantUsbPermissionAndDefault(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    .line 1550
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isAoapDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1551
    const-wide/16 p0, 0x28a

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->scheduleAutoLaunchProjectionIfReady(Landroid/content/Context;J)V

    .line 1552
    return v1

    .line 1554
    :cond_3
    invoke-static {v0, p1, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->handleAttachedUsbDevice(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Z)V

    .line 1555
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1556
    return v3
.end method

.method public static isAoapDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    .line 1240
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1241
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    .line 1242
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p0

    .line 1243
    const/16 v2, 0x18d1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x2d00

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2d01

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2d04

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2d05

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isCandidateUsbPhone(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    .line 591
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 592
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    const/16 v2, 0x1d6b

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 593
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result p0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_2

    return v0

    .line 594
    :cond_2
    return v2

    .line 592
    :cond_3
    :goto_0
    return v0
.end method

.method public static isHeadlessSystemUser(Landroid/os/UserManager;)Z
    .locals 3

    .line 1699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1700
    return v2

    .line 1702
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static isWirelessSessionOrApBusy()Z
    .locals 6

    .line 514
    sget v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sStartingAccessPoint:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sTetheringStartedByUs:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSoftApStartedByUs:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLohsReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveRfcommDevices:Ljava/util/Set;

    .line 515
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isWirelessStartRecentlyActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 519
    :cond_0
    sget-wide v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLastRfcommActivityMs:J

    .line 520
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x61a8

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 517
    :cond_2
    :goto_1
    return v1
.end method

.method private static isWirelessStartRecentlyActive()Z
    .locals 4

    .line 450
    sget-wide v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sWirelessStartTimestampMs:J

    .line 451
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide v0, 0x9c40

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static launchDisambiguationNow(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lx/a;->allowAutoLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1354
    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 1356
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1357
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1359
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1360
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    goto :goto_1

    .line 1361
    :catchall_0
    move-exception p0

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchDisambiguationNow warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AAReceiverCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :goto_1
    return-void
.end method

.method private static notifyAllPendingApFailed(I)V
    .locals 3

    .line 963
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sStartingAccessPoint:Z

    .line 965
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sPendingApCallbacks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 966
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 967
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$5;

    invoke-direct {v2, v1, p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$5;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 982
    return-void

    .line 967
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static notifyAllPendingApStarted(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 940
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sStartingAccessPoint:Z

    .line 942
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sPendingApCallbacks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 943
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 944
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$4;

    invoke-direct {v2, v1, p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$4;-><init>(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 959
    return-void

    .line 944
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static nudgeWirelessBluetoothReconnect(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
    .locals 8

    .line 1445
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1446
    :cond_0
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sBtNudgeRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1447
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;

    move-object v1, v7

    move-wide v2, p3

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$13;-><init>(JLandroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter;)V

    const-string p0, "bt-aa-nudge"

    invoke-direct {v0, v7, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1514
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1515
    return-void

    .line 1445
    :cond_2
    :goto_0
    return-void
.end method

.method public static onDisambiguationEmpty(Landroid/app/Activity;)Z
    .locals 5

    .line 1519
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->captureContext(Landroid/content/Context;)V

    .line 1520
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1521
    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->ensurePersistentServiceRunning(Landroid/content/Context;)V

    .line 1523
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->scanAndSwitchUsbPhones(Landroid/content/Context;Z)Z

    move-result v2

    .line 1524
    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->hasConnectedBluetoothPhone(Landroid/content/Context;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1526
    :goto_1
    if-nez v2, :cond_2

    if-nez v4, :cond_2

    sget-object v4, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveRfcommDevices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1527
    return v3

    .line 1530
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1531
    if-eqz v2, :cond_3

    .line 1532
    const-string p0, "Starting Android Auto via USB..."

    goto :goto_2

    .line 1533
    :cond_3
    const-string p0, "Starting Wireless Android Auto via Bluetooth & Wi-Fi..."

    .line 1534
    :goto_2
    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1535
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->startAutoLaunchWaitLoop(Landroid/content/Context;)V

    .line 1536
    return v1
.end method

.method public static onPersistentServiceStart(Landroid/app/Service;)V
    .locals 1

    .line 310
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->captureContext(Landroid/content/Context;)V

    .line 311
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->scanAndSwitchUsbPhones(Landroid/content/Context;Z)Z

    .line 312
    return-void
.end method

.method public static onRfcommConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    invoke-static {}, Lx/a;->onRfcommUp()V

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLastRfcommActivityMs:J

    .line 492
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveRfcommDevices:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wireless AA RFCOMM connected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AAReceiverCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    return-void
.end method

.method public static onRfcommDisconnected(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lx/a;->onRfcommDown()V

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLastRfcommActivityMs:J

    .line 500
    if-eqz p0, :cond_0

    .line 501
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveRfcommDevices:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wireless AA RFCOMM disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AAReceiverCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    return-void
.end method

.method public static onWirelessStartRequested()V
    .locals 2

    .line 445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sWirelessStartTimestampMs:J

    .line 446
    const-string v0, "AAReceiverCompat"

    const-string v1, "Wireless projection start requested (WifiStartRequest pipeline active)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method private static provisionApNetworkViaLocalRoot()V
    .locals 3

    .line 923
    nop

    .line 934
    const/16 v0, 0xdac

    const-string v1, "IFACE=$(ip -o link show | awk -F\': \' \'/ap0|softap0/{print $2; exit}\'); test -z $IFACE && IFACE=wlan0; ip link set $IFACE up; ip -4 addr show dev $IFACE | grep -q 192.168.43. || ip addr add 192.168.43.1/24 broadcast 192.168.43.255 dev $IFACE; ip route replace 192.168.43.0/24 dev $IFACE proto kernel scope link src 192.168.43.1 table local_network 2>/dev/null || true; ip rule add to 192.168.43.0/24 lookup main pref 9999 2>/dev/null || true; ps -A | grep -q dnsmasq || dnsmasq --no-daemon --no-resolv --no-poll --interface=$IFACE --bind-interfaces --dhcp-range=192.168.43.20,192.168.43.200,1h --dhcp-option=3,192.168.43.1 --dhcp-option=6,192.168.43.1 >/dev/null 2>&1 &"

    invoke-static {v1, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->runLocalRootShell(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provisionApNetworkViaLocalRoot completed (out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unavailable"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AAReceiverCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method public static registerProjectionRunner(Landroid/car/CarProjectionManager;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p0, p1}, Lx/a;->rememberRunner(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lx/a;->allowAutoLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1664
    :goto_0
    const-string v0, "AAReceiverCompat"

    if-eqz p0, :cond_1

    .line 1666
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/car/CarProjectionManager;->registerProjectionRunner(Landroid/content/Intent;)V

    .line 1667
    const-string p0, "Registered projection runner via CarProjectionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    goto :goto_1

    .line 1668
    :catchall_0
    move-exception p0

    .line 1669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarProjectionManager.registerProjectionRunner fallback to startService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :cond_1
    :goto_1
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1674
    :try_start_1
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1675
    const-string p0, "Started PersistentService directly via startService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1678
    goto :goto_2

    .line 1676
    :catchall_1
    move-exception p0

    .line 1677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Direct startService(PersistentService) failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_2
    :goto_2
    return-void
.end method

.method public static registerPropertyCallback(Landroid/car/hardware/property/CarPropertyManager;Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    .locals 1

    .line 352
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->registerListener(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListener;IF)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 355
    :catchall_0
    move-exception p0

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "registerListener failed for prop 0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v0

    .line 352
    :cond_1
    :goto_0
    return v0
.end method

.method public static releaseBluetoothProfileInhibit(Landroid/car/CarProjectionManager;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 486
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "releaseBluetoothProfileInhibit device="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " profile="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 p0, 0x1

    return p0
.end method

.method public static removeKeyEventHandler(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V
    .locals 1

    .line 544
    if-nez p0, :cond_0

    return-void

    .line 546
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/car/CarProjectionManager;->unregisterProjectionListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    goto :goto_0

    .line 547
    :catchall_0
    move-exception p0

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterProjectionListener failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :goto_0
    return-void
.end method

.method public static requestBluetoothProfileInhibit(Landroid/car/CarProjectionManager;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestBluetoothProfileInhibit device="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " profile="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 p0, 0x1

    return p0
.end method

.method private static restoreWifiAfterFailure(Landroid/net/wifi/WifiManager;)V
    .locals 1

    .line 1194
    sget-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sRestoreClientWifi:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 1195
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sRestoreClientWifi:Z

    .line 1196
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1198
    :cond_0
    :goto_0
    return-void
.end method

.method private static runAdbServiceOnce(ILjava/lang/String;I)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 845
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 846
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "127.0.0.1"

    invoke-direct {v1, v2, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p0, 0x4b0

    invoke-virtual {v0, v1, p0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 847
    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 848
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 849
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 850
    const-string v1, "host::features=shell_v2,cmd\u0000"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 851
    const/high16 v2, 0x1000000

    const/high16 v3, 0x40000

    const v4, 0x4e584e43    # 9.072519E8f

    invoke-static {p2, v4, v2, v3, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sendAdbPacket(Ljava/io/OutputStream;III[B)V

    .line 852
    const/16 v1, 0x18

    new-array v2, v1, [B

    .line 853
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 854
    const/4 v5, 0x0

    move v6, v5

    .line 856
    :goto_0
    move v7, v5

    .line 857
    :goto_1
    if-ge v7, v1, :cond_1

    .line 858
    rsub-int/lit8 v8, v7, 0x18

    invoke-virtual {p0, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 859
    if-gez v8, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 859
    return-object p0

    .line 860
    :cond_0
    add-int/2addr v7, v8

    .line 861
    goto :goto_1

    .line 862
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 863
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 864
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 865
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 866
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 867
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 868
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 869
    new-array v7, v10, [B

    .line 870
    move v11, v5

    .line 871
    :goto_2
    if-ge v11, v10, :cond_3

    .line 872
    sub-int v12, v10, v11

    invoke-virtual {p0, v7, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .line 873
    if-gez v12, :cond_2

    goto :goto_3

    .line 874
    :cond_2
    add-int/2addr v11, v12

    .line 875
    goto :goto_2

    .line 876
    :cond_3
    :goto_3
    const/4 v10, 0x1

    if-ne v8, v4, :cond_4

    if-nez v6, :cond_4

    .line 877
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u0000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const v7, 0x4e45504f    # 8.2759366E8f

    invoke-static {p2, v7, v10, v5, v6}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sendAdbPacket(Ljava/io/OutputStream;III[B)V

    .line 878
    move v6, v10

    goto :goto_4

    .line 879
    :cond_4
    const v11, 0x45545257

    const/4 v12, 0x0

    if-ne v8, v11, :cond_5

    .line 880
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 881
    const v7, 0x59414b4f

    invoke-static {p2, v7, v10, v9, v12}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sendAdbPacket(Ljava/io/OutputStream;III[B)V

    goto :goto_4

    .line 882
    :cond_5
    const v7, 0x45534c43

    if-ne v8, v7, :cond_6

    .line 883
    invoke-static {p2, v7, v10, v9, v12}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sendAdbPacket(Ljava/io/OutputStream;III[B)V

    .line 884
    nop

    .line 887
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 887
    return-object p0

    .line 886
    :cond_6
    :goto_4
    goto/16 :goto_0

    .line 845
    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
.end method

.method private static runLocalRootShell(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 911
    :try_start_0
    const-string v0, "shell:id"

    const/16 v1, 0x7d0

    const/16 v2, 0x2537

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->runAdbServiceOnce(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 912
    const-string v3, "uid=0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    const-string v0, "root:"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->runAdbServiceOnce(ILjava/lang/String;I)Ljava/lang/String;

    .line 914
    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 916
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shell:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->runAdbServiceOnce(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 917
    :catchall_0
    move-exception p0

    .line 918
    const/4 p0, 0x0

    return-object p0
.end method

.method public static scanAndSwitchUsbPhones(Landroid/content/Context;Z)Z
    .locals 4

    .line 1267
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1268
    :cond_0
    nop

    .line 1270
    :try_start_0
    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1271
    if-nez v1, :cond_1

    return v0

    .line 1272
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 1273
    if-nez v1, :cond_2

    return v0

    .line 1274
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 1275
    invoke-static {v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isCandidateUsbPhone(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1276
    :cond_3
    nop

    .line 1277
    const/4 v0, 0x1

    invoke-static {p0, v2, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->handleAttachedUsbDevice(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    goto :goto_0

    .line 1281
    :cond_4
    goto :goto_1

    .line 1279
    :catchall_0
    move-exception p0

    .line 1280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scanAndSwitchUsbPhones warning: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :goto_1
    return v0
.end method

.method private static scheduleAutoLaunchProjectionIfReady(Landroid/content/Context;J)V
    .locals 3

    invoke-static {}, Lx/a;->allowAutoLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1367
    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 1368
    :cond_1
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAutoLaunchPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1369
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$11;

    invoke-direct {v1, p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$11;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1380
    return-void
.end method

.method private static seedPrefsOnContext(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6

    .line 173
    const-string v0, "aa_v8_ap_psk"

    const-string v1, "aa_v8_ap_ssid"

    const-string v2, "car_wifi_enabled"

    const-string v3, "width"

    if-nez p0, :cond_0

    return-void

    .line 175
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 176
    if-eqz p1, :cond_a

    .line 177
    nop

    .line 178
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 179
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 180
    invoke-interface {v4, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v3, "height"

    invoke-interface {v4, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-object v3, v4

    .line 183
    :goto_1
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 184
    :cond_3
    if-nez v3, :cond_4

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 185
    :cond_4
    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    :cond_5
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 188
    if-nez v3, :cond_6

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 189
    :cond_6
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->computeDefaultSsid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    :cond_7
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 192
    if-nez v3, :cond_8

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 193
    :cond_8
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->computeDefaultPsk()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    :cond_9
    if-eqz v3, :cond_a

    .line 196
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    const-string p1, "AAReceiverCompat"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seeded v8 prefs on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": width="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " height="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " wifi=true"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 200
    :catchall_0
    move-exception p0

    :cond_a
    :goto_2
    nop

    .line 201
    return-void
.end method

.method private static sendAdbPacket(Ljava/io/OutputStream;III[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 892
    const/4 v0, 0x0

    if-nez p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p4

    .line 893
    :goto_0
    nop

    .line 894
    if-eqz p4, :cond_2

    .line 895
    array-length v2, p4

    move v3, v0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-byte v4, p4, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 897
    :cond_2
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 898
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 899
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 900
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 901
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 902
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 903
    not-int p1, p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 904
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 905
    if-lez v1, :cond_3

    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write([B)V

    .line 906
    :cond_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 907
    return-void
.end method

.method private static sendAoapString(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V
    .locals 9

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\u0000"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 1614
    const/16 v2, 0x40

    const/16 v3, 0x34

    const/4 v4, 0x0

    array-length v7, v6

    const/16 v8, 0x1f4

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 1615
    return-void
.end method

.method private static setWifiApConfigSafe(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    .line 776
    const-string v0, "AAReceiverCompat"

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 778
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setWifiApConfiguration"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 779
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiApConfiguration(SSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") -> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    goto :goto_0

    .line 781
    :catchall_0
    move-exception p0

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiApConfiguration warning: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    return-void

    .line 776
    :cond_1
    :goto_1
    return-void
.end method

.method public static shouldIgnoreApDisabledBroadcast()Z
    .locals 1

    .line 725
    sget-boolean v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sStartingAccessPoint:Z

    return v0
.end method

.method private static startAutoLaunchWaitLoop(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lx/a;->allowAutoLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1383
    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 1384
    :cond_1
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sWaitLoopRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1385
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1386
    filled-new-array {v2}, [I

    move-result-object v1

    .line 1387
    new-instance v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;-><init>([ILandroid/content/Context;Landroid/os/Handler;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1407
    return-void
.end method

.method public static startProjectionAccessPoint(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
    .locals 3

    .line 987
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    .line 988
    const/4 v0, 0x2

    if-nez p0, :cond_1

    .line 989
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onFailed(I)V

    .line 990
    :cond_0
    return-void

    .line 992
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->hasConnectedUsbPhone(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 993
    const-string p0, "AAReceiverCompat"

    const-string v1, "USB phone connected/switching -> deferring Wireless AP to keep client Wi-Fi online"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onFailed(I)V

    .line 995
    :cond_2
    return-void

    .line 997
    :cond_3
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 998
    if-nez v1, :cond_5

    .line 999
    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onFailed(I)V

    .line 1000
    :cond_4
    return-void

    .line 1004
    :cond_5
    invoke-static {v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getWifiApStateSafe(Landroid/net/wifi/WifiManager;)I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLohsReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz v0, :cond_8

    :cond_6
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_8

    .line 1006
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApHostInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1007
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1008
    const-string p0, "AAReceiverCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP already active ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApHostInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), delivering immediately"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    if-eqz p1, :cond_7

    .line 1010
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$6;

    invoke-direct {v0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$6;-><init>(Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1017
    :cond_7
    return-void

    .line 1020
    :cond_8
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    if-eqz p1, :cond_9

    .line 1022
    :try_start_0
    sget-object v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sPendingApCallbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    :cond_9
    sget-boolean p1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sStartingAccessPoint:Z

    if-eqz p1, :cond_a

    .line 1025
    const-string p0, "AAReceiverCompat"

    const-string p1, "AP startup already in progress; coalesced callback"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    monitor-exit v0

    return-void

    .line 1028
    :cond_a
    const/4 p1, 0x1

    sput-boolean p1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sStartingAccessPoint:Z

    .line 1029
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1032
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/os/Handler;)V

    const-string p0, "aa-ap-v8"

    invoke-direct {v0, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1191
    return-void

    .line 1029
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static stopProjectionAccessPoint(Landroid/car/CarProjectionManager;)V
    .locals 5

    .line 1201
    sget-boolean p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sStartingAccessPoint:Z

    const-string v0, "AAReceiverCompat"

    if-eqz p0, :cond_0

    .line 1202
    const-string p0, "Ignoring stopProjectionAccessPoint while AP startup is in progress"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return-void

    .line 1206
    :cond_0
    :try_start_0
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLohsReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz p0, :cond_1

    .line 1207
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLohsReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V

    .line 1208
    const/4 p0, 0x0

    sput-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sLohsReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 1210
    :cond_1
    sget-boolean p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sTetheringStartedByUs:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    .line 1211
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->tryStopWifiTethering(Landroid/content/Context;)V

    .line 1212
    sput-boolean v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sTetheringStartedByUs:Z

    .line 1214
    :cond_2
    sget-boolean p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSoftApStartedByUs:Z

    if-eqz p0, :cond_4

    .line 1215
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getIWifiManager()Ljava/lang/Object;

    move-result-object p0

    .line 1216
    if-eqz p0, :cond_3

    .line 1217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "stopSoftAp"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :cond_3
    sput-boolean v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSoftApStartedByUs:Z

    .line 1221
    :cond_4
    sget-boolean p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sRestoreClientWifi:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    if-eqz p0, :cond_5

    .line 1222
    sput-boolean v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sRestoreClientWifi:Z

    .line 1223
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 1224
    if-eqz p0, :cond_5

    .line 1225
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$8;

    invoke-direct {v2, p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$8;-><init>(Landroid/net/wifi/WifiManager;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    :cond_5
    goto :goto_0

    .line 1233
    :catchall_0
    move-exception p0

    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopProjectionAccessPoint error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :goto_0
    return-void
.end method

.method private static tryStartWifiTethering(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 14

    invoke-static {}, Lx/a;->wifi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 796
    :goto_0
    invoke-static {}, Lx/a;->onWirelessAttempt()V

    const-string v0, "AAReceiverCompat"

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 797
    if-nez v2, :cond_1

    return v1

    .line 798
    :cond_1
    const-string v3, "com.google.android.apps.auto.aareceiver.compat.CompatTetheringCallback"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 799
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 800
    const-string v8, "startTethering"

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    .line 801
    :cond_2
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 802
    array-length v9, v8

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-ne v9, v12, :cond_3

    .line 803
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 804
    new-array p0, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p0, v13

    aput-object v3, p0, v11

    aput-object p1, p0, v10

    invoke-virtual {v7, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string p0, "Invoked ConnectivityManager.startTethering(TETHERING_WIFI, false, cb, handler)"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return v13

    .line 807
    :cond_3
    array-length v8, v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    .line 808
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 809
    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v13

    aput-object v3, v4, v11

    aput-object p1, v4, v10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v12

    invoke-virtual {v7, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string p0, "Invoked ConnectivityManager.startTethering(5-arg)"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    return v13

    .line 799
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 816
    :cond_5
    goto :goto_3

    .line 814
    :catchall_0
    move-exception p0

    .line 815
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityManager.startTethering unavailable/failed: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :goto_3
    return v1
.end method

.method private static tryStopWifiTethering(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AAReceiverCompat"

    const-string v1, "keepAP build: skipping stopTethering so the phone has time to join"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unlockHiddenApis()V
    .locals 10

    .line 116
    const-string v0, "AAReceiverCompat"

    :try_start_0
    const-class v1, Ljava/lang/Class;

    const-string v2, "forName"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 117
    const-class v2, Ljava/lang/Class;

    const-string v4, "getDeclaredMethod"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    const-class v8, [Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 118
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "dalvik.system.VMRuntime"

    aput-object v7, v4, v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 119
    new-array v4, v5, [Ljava/lang/Object;

    const-string v8, "getRuntime"

    aput-object v8, v4, v6

    aput-object v7, v4, v3

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 120
    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "setHiddenApiExemptions"

    aput-object v8, v5, v6

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, [Ljava/lang/String;

    aput-object v9, v8, v6

    aput-object v8, v5, v3

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 122
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "L"

    aput-object v5, v3, v6

    aput-object v3, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "Unlocked Android 9 hidden APIs via VMRuntime.setHiddenApiExemptions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockHiddenApis warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void
.end method

.method public static unregisterProjectionRunner(Landroid/car/CarProjectionManager;Landroid/content/Intent;)V
    .locals 2

    .line 1683
    if-eqz p0, :cond_0

    .line 1685
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/car/CarProjectionManager;->unregisterProjectionRunner(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    return-void

    .line 1687
    :catchall_0
    move-exception p0

    .line 1688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterProjectionRunner fallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AAReceiverCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_0
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1693
    :try_start_1
    sget-object p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1694
    :catchall_1
    move-exception p0

    :goto_0
    nop

    .line 1696
    :cond_1
    return-void
.end method

.method public static unregisterPropertyCallback(Landroid/car/hardware/property/CarPropertyManager;Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 1

    .line 364
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/car/hardware/property/CarPropertyManager;->unregisterListener(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    goto :goto_0

    .line 367
    :catchall_0
    move-exception p0

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterListener failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-void

    .line 364
    :cond_1
    :goto_1
    return-void
.end method

.method public static unregisterPropertyCallback(Landroid/car/hardware/property/CarPropertyManager;Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;I)V
    .locals 0

    .line 376
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->unregisterListener(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    goto :goto_0

    .line 379
    :catchall_0
    move-exception p0

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unregisterListener(prop) failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AAReceiverCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 376
    :cond_1
    :goto_1
    return-void
.end method

.method public static updateProjectionStatus(Landroid/car/CarProjectionManager;Landroid/car/projection/ProjectionStatus;)V
    .locals 5

    .line 455
    sget p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    .line 456
    nop

    .line 457
    if-eqz p1, :cond_0

    .line 458
    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus;->getState()I

    move-result v0

    sput v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    .line 459
    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus;->getConnectedMobileDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentConnectedDevices:I

    .line 460
    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus;->getTransport()I

    move-result v0

    goto :goto_0

    .line 457
    :cond_0
    const/4 v0, 0x0

    .line 462
    :goto_0
    sget v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    invoke-static {p0, v1, v0, p1}, Lx/g;->onStatus(IIILandroid/car/projection/ProjectionStatus;)V

    invoke-static {p0, v1, v0, p1}, Lx/i;->onStatusSafe(IIILandroid/car/projection/ProjectionStatus;)V

    invoke-static {p0, v1, v0, p1}, Lx/l;->onStatusSafe(IIILandroid/car/projection/ProjectionStatus;)V

    sget v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    sget v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    if-ne v1, v2, :cond_2

    .line 463
    :cond_1
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sWirelessStartTimestampMs:J

    .line 465
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProjectionStatus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AAReceiverCompat"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget p1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    sget p1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentConnectedDevices:I

    if-lt p1, v1, :cond_4

    if-eq p0, v2, :cond_4

    .line 470
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isWirelessStartRecentlyActive()Z

    move-result p0

    if-nez p0, :cond_4

    .line 471
    if-ne v0, v2, :cond_3

    const-wide/16 p0, 0x28a

    goto :goto_1

    :cond_3
    const-wide/16 p0, 0x1c2

    .line 472
    :goto_1
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAppContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->scheduleAutoLaunchProjectionIfReady(Landroid/content/Context;J)V

    .line 475
    :cond_4
    return-void
.end method

.method public static v5ApConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public static v5HasBt(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->hasConnectedBluetoothPhone(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static v5ResetStatics()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sWirelessStartTimestampMs:J

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sAutoLaunchPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sWaitLoopRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sBtNudgeRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSwitchingDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sActiveRfcommDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static v5SessionStart()J
    .locals 2

    sget-wide v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSessionStartMs:J

    return-wide v0
.end method

.method public static v5SetSessionStart(J)V
    .locals 0

    sput-wide p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sSessionStartMs:J

    return-void
.end method

.method public static v5State()I
    .locals 1

    sget v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->sCurrentProjectionState:I

    return v0
.end method

.method public static v6Nudge(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->nudgeWirelessBluetoothReconnect(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V

    return-void
.end method
