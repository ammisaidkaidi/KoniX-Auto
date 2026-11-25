.class public final Lbat;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroid/car/CarProjectionManager;

.field public d:Lcom/google/android/apps/auto/aareceiver/service/PersistentService;

.field public e:Z

.field f:Landroid/hardware/usb/UsbDeviceConnection;

.field g:Landroid/hardware/usb/UsbDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/service/PersistentServiceController"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbat;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/CarProjectionManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbat;->e:Z

    iput-object p1, p0, Lbat;->b:Landroid/content/Context;

    iput-object p2, p0, Lbat;->c:Landroid/car/CarProjectionManager;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 2
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lbar;

    .line 4
    invoke-direct {v0, p0}, Lbar;-><init>(Lbat;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/google/android/apps/auto/aareceiver/service/PersistentService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lbat;->d:Lcom/google/android/apps/auto/aareceiver/service/PersistentService;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->e:Lbah;

    new-instance v0, Lbas;

    invoke-direct {v0, p0}, Lbas;-><init>(Lbat;)V

    invoke-virtual {p1, v0}, Lbah;->n(Lbag;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbat;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbat;->c:Landroid/car/CarProjectionManager;

    iget-object v1, p0, Lbat;->b:Landroid/content/Context;

    invoke-static {v1}, Lbat;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->registerProjectionRunner(Landroid/car/CarProjectionManager;Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbat;->e:Z

    :cond_0
    iget-object v0, p0, Lbat;->d:Lcom/google/android/apps/auto/aareceiver/service/PersistentService;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->a()V

    :cond_1
    return-void
.end method
