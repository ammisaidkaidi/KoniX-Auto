.class public final Lbcu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbbo;


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/projection/protocol/GalReceiver;

.field public d:Z

.field public e:Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;

.field public final f:Landroid/content/BroadcastReceiver;

.field final g:Lbcx;

.field private final h:Lbah;

.field private i:Z

.field private final j:Ljava/lang/Object;

.field private final k:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/telecom/CallAvailabilityMonitor"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbcu;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/projection/protocol/GalReceiver;Lzn;Lbah;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbcu;->i:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbcu;->j:Ljava/lang/Object;

    new-instance v0, Lbcr;

    invoke-direct {v0, p0}, Lbcr;-><init>(Lbcu;)V

    iput-object v0, p0, Lbcu;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Lbcs;

    invoke-direct {v0, p0}, Lbcs;-><init>(Lbcu;)V

    iput-object v0, p0, Lbcu;->g:Lbcx;

    new-instance v0, Lbct;

    invoke-direct {v0, p0}, Lbct;-><init>(Lbcu;)V

    iput-object v0, p0, Lbcu;->k:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lbcu;->b:Landroid/content/Context;

    iput-object p2, p0, Lbcu;->c:Lcom/google/android/projection/protocol/GalReceiver;

    iput-object p4, p0, Lbcu;->h:Lbah;

    new-instance p1, Lcom/google/android/apps/auto/aareceiver/telecom/CallAvailabilityMonitor$4;

    invoke-direct {p1, p0}, Lcom/google/android/apps/auto/aareceiver/telecom/CallAvailabilityMonitor$4;-><init>(Lbcu;)V

    .line 2
    invoke-virtual {p3, p1}, Lzn;->b(Lzp;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbcu;->b:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_INCALL_EXPERIENCE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 2
    sget-object v1, Ldks;->a:Ldks;

    .line 3
    invoke-virtual {v1}, Ldks;->b()Ldkt;

    move-result-object v1

    invoke-interface {v1}, Ldkt;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbcu;->b:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;

    .line 8
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "inCallServiceLocalBindingAction"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lbcu;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lbcu;->b:Landroid/content/Context;

    iget-object v4, p0, Lbcu;->k:Landroid/content/ServiceConnection;

    .line 10
    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lbcu;->i:Z

    .line 11
    monitor-exit v1

    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbcu;->b:Landroid/content/Context;

    iget-object v3, p0, Lbcu;->f:Landroid/content/BroadcastReceiver;

    .line 5
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, p0, Lbcu;->d:Z

    iget-object v0, p0, Lbcu;->b:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iget-object v1, p0, Lbcu;->c:Lcom/google/android/projection/protocol/GalReceiver;

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCallAvailability(Z)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbcu;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbcu;->i:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lbcu;->e:Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Lbcw;

    invoke-direct {v3, v2}, Lbcw;-><init>(I)V

    iput-object v3, v1, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;->a:Lbcx;

    :cond_1
    iget-object v1, p0, Lbcu;->b:Landroid/content/Context;

    iget-object v3, p0, Lbcu;->k:Landroid/content/ServiceConnection;

    .line 2
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lbcu;->e:Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;

    iput-boolean v2, p0, Lbcu;->i:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(Landroid/telecom/Call;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbcu;->h:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbcu;->h:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    iget-object v0, v0, Lbbl;->h:Lawo;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
