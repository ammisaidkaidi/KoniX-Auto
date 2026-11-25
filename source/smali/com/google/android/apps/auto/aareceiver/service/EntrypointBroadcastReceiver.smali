.class public Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;
.super Lbam;
.source "PG"


# static fields
.field private static final f:Lcsz;


# instance fields
.field public a:Landroid/os/UserManager;

.field public b:Lbat;

.field public c:Landroid/content/Context;

.field public d:Lbhi;

.field public e:Laxz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->f:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbam;-><init>()V

    return-void
.end method

.method private final b()V
    .locals 3

    .line 1
    new-instance v0, Lagx;

    const-class v1, Lcom/google/android/apps/auto/aareceiver/service/SQLiteDeviceRegistryCleanupWorker;

    invoke-direct {v0, v1}, Lagx;-><init>(Ljava/lang/Class;)V

    .line 2
    const-string v1, "db_cleanup_tag"

    invoke-virtual {v0, v1}, Lagx;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lagx;->a()Lagy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->c:Landroid/content/Context;

    .line 4
    invoke-static {v2}, Lahx;->c(Landroid/content/Context;)Lahx;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1, v0}, Lagw;->b(Ljava/lang/String;Lagy;)V

    return-void
.end method

.method private final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->e:Laxz;

    invoke-virtual {v0}, Laxz;->a()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->b()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->d:Lbhi;

    .line 3
    invoke-virtual {v0}, Lbhi;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->d:Lbhi;

    .line 4
    invoke-virtual {v0}, Lbhi;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 16
    :cond_0
    new-instance v0, Lagx;

    const-class v1, Lcom/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker;

    .line 5
    invoke-direct {v0, v1}, Lagx;-><init>(Ljava/lang/Class;)V

    const-wide/16 v1, 0x14

    .line 6
    invoke-static {v1, v2}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lagx;->a:Z

    iget-object v3, v0, Lagx;->c:Lakk;

    .line 7
    iput v2, v3, Lakk;->r:I

    .line 8
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    const/4 v4, 0x0

    const-wide/32 v5, 0x112a880

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    .line 9
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v1, Lakk;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Throwable;

    const-string v7, "Backoff delay duration exceeds maximum value"

    invoke-static {v1, v7, v2}, Lagr;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide v1, v5

    goto :goto_0

    .line 15
    :cond_1
    nop

    .line 9
    :goto_0
    const-wide/16 v5, 0x2710

    cmp-long v7, v1, v5

    if-gez v7, :cond_2

    .line 10
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v1, Lakk;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Throwable;

    const-string v4, "Backoff delay duration less than minimum value"

    invoke-static {v1, v4, v2}, Lagr;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide v1, v5

    goto :goto_1

    .line 15
    :cond_2
    nop

    .line 10
    :goto_1
    iput-wide v1, v3, Lakk;->l:J

    sget-object v1, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    iget-object v2, v0, Lagx;->c:Lakk;

    .line 11
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lakk;->n:J

    .line 12
    const-string v1, "wireless_channel_check_tag"

    invoke-virtual {v0, v1}, Lagx;->b(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lagx;->a()Lagy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->c:Landroid/content/Context;

    .line 14
    invoke-static {v2}, Lahx;->c(Landroid/content/Context;)Lahx;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1, v0}, Lagw;->b(Ljava/lang/String;Lagy;)V

    .line 4
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->b:Lbat;

    .line 16
    invoke-virtual {v0}, Lbat;->c()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lbam;->a(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const-string v1, "android.intent.action.USER_UNLOCKED"

    sparse-switch p2, :sswitch_data_0

    :cond_0
    goto :goto_0

    .line 13
    :sswitch_0
    nop

    .line 5
    const-string p2, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_2
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_3
    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_4
    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 12
    sget-object p1, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->f:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 p2, 0x43

    .line 13
    const-string v1, "com/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver"

    const-string v2, "onReceive"

    const-string v3, "EntrypointBroadcastReceiver.java"

    invoke-interface {p1, v1, v2, p2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Unexpected action %s ignored."

    invoke-interface {p1, p2, v0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->a:Landroid/os/UserManager;

    .line 6
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->b()V

    :cond_1
    return-void

    .line 8
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->c()V

    return-void

    :pswitch_2
    iget-object p2, p0, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->a:Landroid/os/UserManager;

    .line 9
    invoke-virtual {p2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver;->c()V

    return-void

    :cond_2
    new-instance p2, Landroid/content/IntentFilter;

    .line 11
    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35f22cb2 -> :sswitch_4
        0x1e1f7f95 -> :sswitch_3
        0x2f94f923 -> :sswitch_2
        0x31af1c32 -> :sswitch_1
        0x6789a577 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
