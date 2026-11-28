.class public Lcom/google/android/apps/auto/aareceiver/service/PersistentService;
.super Lban;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final k:Lcsz;


# instance fields
.field public b:Lawh;

.field public c:Lbat;

.field public d:Lbcj;

.field public e:Lbah;

.field public f:Lavk;

.field public g:Lazi;

.field public h:Laxw;

.field final i:Lbaa;

.field public j:Ldhq;

.field private l:Z

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Lbap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/service/PersistentService"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->k:Lcsz;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lban;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->l:Z

    new-instance v0, Lbaq;

    .line 2
    invoke-direct {v0, p0}, Lbaq;-><init>(Lcom/google/android/apps/auto/aareceiver/service/PersistentService;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->m:Landroid/content/BroadcastReceiver;

    new-instance v0, Lbaa;

    .line 3
    invoke-direct {v0}, Lbaa;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->i:Lbaa;

    new-instance v0, Lbap;

    invoke-direct {v0, p0}, Lbap;-><init>(Lcom/google/android/apps/auto/aareceiver/service/PersistentService;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->n:Lbap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->f:Lavk;

    invoke-virtual {v0}, Lavk;->b()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b:Lawh;

    .line 2
    invoke-virtual {v0}, Lawh;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->d:Lbcj;

    invoke-interface {v0}, Lbcj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b:Lawh;

    .line 3
    invoke-virtual {v0}, Lawh;->d()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b:Lawh;

    iget-object v1, v0, Lawh;->l:Lavz;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lavz;->a()V

    const/4 v1, 0x0

    iput-object v1, v0, Lawh;->l:Lavz;

    :cond_0
    return-void
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p3, :cond_1

    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const-string p3, "crash"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 19
    const-string p2, "Imitation of crash!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x8

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "*** "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ***"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->l:Z

    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    .line 3
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "bound: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b:Lawh;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p1, Lawh;->b:Ljava/util/Map;

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "  Devices: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p1, Lawh;->l:Lavz;

    .line 6
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "  RfcommServer: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p1, Lawh;->f:Lbdq;

    .line 7
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "  AccessPoint: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p1, Lawh;->d:Lbah;

    .line 8
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "  Device Tracker: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p1, Lawh;->g:Landroid/location/LocationManager;

    .line 9
    const/4 p3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "  Location Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p1, Lawh;->h:Landroid/os/Handler;

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p1, p3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v0, 0x16

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "  Start Pending: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_2
    nop

    .line 12
    const-string p1, "wirelessController is null"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->c:Lbat;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 13
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iget-boolean v0, p1, Lbat;->e:Z

    iget-object p1, p1, Lbat;->d:Lcom/google/android/apps/auto/aareceiver/service/PersistentService;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "{request sent: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", service: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_3
    nop

    .line 15
    const-string p1, "serviceController is null"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->h:Laxw;

    if-eqz p1, :cond_4

    .line 16
    sget-object p1, Ldiw;->a:Ldiw;

    .line 17
    invoke-virtual {p1}, Ldiw;->b()Ldix;

    move-result-object p1

    invoke-interface {p1}, Ldix;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->h:Laxw;

    .line 18
    invoke-virtual {p1, p2}, Laxw;->a(Ljava/io/PrintWriter;)V

    :cond_4
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->l:Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lban;->onCreate()V

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->initPersistentService(Landroid/app/Service;)V

    invoke-static {p0}, Lx/b;->start(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->c:Lbat;

    .line 2
    invoke-virtual {v0, p0}, Lbat;->b(Lcom/google/android/apps/auto/aareceiver/service/PersistentService;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->a()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->d:Lbcj;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->n:Lbap;

    .line 4
    invoke-interface {v0, v1}, Lbcj;->h(Lbap;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->e:Lbah;

    .line 5
    invoke-virtual {v0}, Lbah;->t()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->m:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->a:Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->i:Lbaa;

    new-instance v1, Landroid/content/IntentFilter;

    .line 7
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->g:Lazi;

    iget-boolean v1, v0, Lazi;->d:Z

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lazi;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lazi;->e:Z

    iget-object v1, v0, Lazi;->b:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v0, v0, Lazi;->g:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    const v2, 0x11400400

    const/4 v3, 0x0

    .line 8
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->registerPropertyCallback(Landroid/car/hardware/property/CarPropertyManager;Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void

    .line 7
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->i:Lbaa;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->j:Ldhq;

    .line 3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ldhq;->b(I)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->d:Lbcj;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->n:Lbap;

    .line 4
    invoke-interface {v0, v1}, Lbcj;->i(Lbap;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->c:Lbat;

    .line 5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbat;->b(Lcom/google/android/apps/auto/aareceiver/service/PersistentService;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->g:Lazi;

    iget-boolean v1, v0, Lazi;->d:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lazi;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lazi;->e:Z

    iget-object v1, v0, Lazi;->b:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v0, v0, Lazi;->g:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    const v2, 0x11400400

    .line 6
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->unregisterPropertyCallback(Landroid/car/hardware/property/CarPropertyManager;Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;I)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b()V

    .line 8
    invoke-super {p0}, Lban;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->onPersistentServiceStart(Landroid/app/Service;)V

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    nop

    .line 2
    const-string p2, "CRASH_RECOVERY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->k:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 p2, 0x73

    .line 3
    const-string p3, "com/google/android/apps/auto/aareceiver/service/PersistentService"

    const-string v0, "onStartCommand"

    const-string v1, "PersistentService.java"

    invoke-interface {p1, p3, v0, p2, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Recovered from the crash"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->l:Z

    return p1
.end method
