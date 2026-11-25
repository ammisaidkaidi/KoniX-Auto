.class public final Lawh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Ljava/util/Map;

.field public final c:Landroid/content/Context;

.field public final d:Lbah;

.field public final e:Lazy;

.field public final f:Lbdq;

.field public final g:Landroid/location/LocationManager;

.field public final h:Landroid/os/Handler;

.field public final i:Lbcj;

.field public final j:Lawy;

.field public final k:Lbde;

.field public l:Lavz;

.field public final m:Lbdu;

.field public n:Lbew;

.field private final o:Lawt;

.field private final p:Lbhi;

.field private final q:Lawa;

.field private final r:Lbss;

.field private final s:Ldhq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lawh;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbah;Lazy;Lbdq;Lbss;Landroid/location/LocationManager;Lbdu;Lbcj;Lawt;Lawy;Lbhi;Lbde;Ldhq;[B[B[B)V
    .locals 3

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lawh;->b:Ljava/util/Map;

    new-instance v1, Lawa;

    invoke-direct {v1, p0}, Lawa;-><init>(Lawh;)V

    iput-object v1, v0, Lawh;->q:Lawa;

    move-object v1, p1

    iput-object v1, v0, Lawh;->c:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lawh;->d:Lbah;

    move-object v1, p3

    iput-object v1, v0, Lawh;->e:Lazy;

    move-object v1, p4

    iput-object v1, v0, Lawh;->f:Lbdq;

    move-object v1, p5

    iput-object v1, v0, Lawh;->r:Lbss;

    move-object v1, p6

    iput-object v1, v0, Lawh;->g:Landroid/location/LocationManager;

    move-object v1, p7

    iput-object v1, v0, Lawh;->m:Lbdu;

    move-object v1, p8

    iput-object v1, v0, Lawh;->i:Lbcj;

    move-object v1, p9

    iput-object v1, v0, Lawh;->o:Lawt;

    move-object v1, p10

    iput-object v1, v0, Lawh;->j:Lawy;

    move-object v1, p11

    iput-object v1, v0, Lawh;->p:Lbhi;

    move-object v1, p12

    iput-object v1, v0, Lawh;->k:Lbde;

    move-object/from16 v1, p13

    iput-object v1, v0, Lawh;->s:Ldhq;

    new-instance v1, Lawb;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lawb;-><init>(Lawh;Landroid/os/Looper;)V

    iput-object v1, v0, Lawh;->h:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lclg;)Ljava/lang/String;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-class v0, Lclg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lclg;->e:I

    invoke-static {v1}, Lbzv;->g(I)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    packed-switch v1, :pswitch_data_0

    const-string v1, "STATUS_WIFI_NETWORK_UNAVAILABLE"

    goto :goto_1

    .line 1
    :goto_0
    :pswitch_0
    const-string v1, "STATUS_UNSOLICITED_MESSAGE"

    goto :goto_1

    .line 2
    :pswitch_1
    const-string v1, "STATUS_SUCCESS"

    goto :goto_1

    :pswitch_2
    const-string v1, "STATUS_NO_COMPATIBLE_VERSION"

    goto :goto_1

    :pswitch_3
    const-string v1, "STATUS_WIFI_INACCESSIBLE_CHANNEL"

    goto :goto_1

    :pswitch_4
    const-string v1, "STATUS_WIFI_INCORRECT_CREDENTIALS"

    goto :goto_1

    :pswitch_5
    const-string v1, "STATUS_PROJECTION_ALREADY_STARTED"

    goto :goto_1

    :pswitch_6
    const-string v1, "STATUS_WIFI_DISABLED"

    goto :goto_1

    :pswitch_7
    const-string v1, "STATUS_WIFI_NOT_YET_STARTED"

    goto :goto_1

    :pswitch_8
    const-string v1, "STATUS_INVALID_HOST"

    goto :goto_1

    :pswitch_9
    const-string v1, "STATUS_NO_SUPPORTED_WIFI_CHANNELS"

    goto :goto_1

    :pswitch_a
    const-string v1, "STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE"

    goto :goto_1

    :pswitch_b
    const-string v1, "STATUS_PHONE_WIFI_DISABLED"

    .line 1
    :goto_1
    iget-object v2, p0, Lclg;->d:Ljava/lang/String;

    iget v3, p0, Lclg;->b:I

    iget p0, p0, Lclg;->c:I

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x36

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {status:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", serial: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
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


# virtual methods
.method public final b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lawh;->b:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawg;

    const-string v1, "WirelessDiscoveryController.java"

    const-string v2, "sendWifiVersionRequest"

    const-string v3, "com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController"

    if-nez v0, :cond_0

    new-instance v0, Lawg;

    .line 2
    invoke-direct {v0, p1}, Lawg;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v4, p0, Lawh;->b:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_0
    sget-object v4, Lawh;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    const/16 v5, 0x1a8

    .line 4
    invoke-interface {v4, v3, v2, v5, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v4

    check-cast v4, Lcsx;

    const-string v5, "Connected to the device which was already connected."

    invoke-interface {v4, v5}, Lcsx;->n(Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object v4, p0, Lawh;->p:Lbhi;

    .line 5
    invoke-virtual {v4}, Lbhi;->a()Lcqh;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lawh;->a:Lcsz;

    invoke-virtual {v5}, Lcsv;->c()Lctq;

    move-result-object v5

    const/16 v6, 0x1ac

    .line 7
    invoke-interface {v5, v3, v2, v6, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "No Wi-Fi channels available reported."

    invoke-interface {v1, v2}, Lcsx;->n(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lawh;->o:Lawt;

    .line 9
    invoke-virtual {v1}, Lawt;->a()Lcom/google/android/projection/protocol/GalReceiver$CarInfo;

    move-result-object v1

    .line 10
    sget-object v2, Lclf;->g:Lclf;

    .line 11
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    iget-boolean v3, v2, Lddf;->c:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v5, v2, Lddf;->c:Z

    :cond_2
    iget-object v3, v2, Lddf;->b:Lddk;

    .line 13
    check-cast v3, Lclf;

    iget v6, v3, Lclf;->a:I

    const/4 v7, 0x1

    or-int/2addr v6, v7

    iput v6, v3, Lclf;->a:I

    iput v7, v3, Lclf;->b:I

    const/4 v8, 0x2

    or-int/2addr v6, v8

    iput v6, v3, Lclf;->a:I

    const/4 v9, 0x6

    iput v9, v3, Lclf;->c:I

    iput v5, v3, Lclf;->d:I

    const/4 v9, 0x4

    or-int/2addr v6, v9

    iput v6, v3, Lclf;->a:I

    .line 14
    sget-object v3, Lcka;->j:Lcka;

    .line 15
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    iget-object v6, v1, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->manufacturer:Ljava/lang/String;

    iget-boolean v10, v3, Lddf;->c:Z

    if-eqz v10, :cond_3

    .line 16
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v5, v3, Lddf;->c:Z

    :cond_3
    iget-object v10, v3, Lddf;->b:Lddk;

    .line 17
    check-cast v10, Lcka;

    .line 18
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v10, Lcka;->a:I

    or-int/2addr v7, v11

    iput v7, v10, Lcka;->a:I

    iput-object v6, v10, Lcka;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->model:Ljava/lang/String;

    .line 19
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/2addr v7, v8

    iput v7, v10, Lcka;->a:I

    iput-object v6, v10, Lcka;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->modelYear:Ljava/lang/String;

    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/2addr v7, v9

    iput v7, v10, Lcka;->a:I

    iput-object v6, v10, Lcka;->d:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->vehicleId:Ljava/lang/String;

    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v7, v7, 0x8

    iput v7, v10, Lcka;->a:I

    iput-object v6, v10, Lcka;->e:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitMake:Ljava/lang/String;

    .line 22
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v7, v7, 0x10

    iput v7, v10, Lcka;->a:I

    iput-object v6, v10, Lcka;->f:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitModel:Ljava/lang/String;

    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v7, v7, 0x20

    iput v7, v10, Lcka;->a:I

    iput-object v6, v10, Lcka;->g:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitSoftwareBuild:Ljava/lang/String;

    .line 24
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v7, v7, 0x40

    iput v7, v10, Lcka;->a:I

    iput-object v6, v10, Lcka;->h:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitSoftwareVersion:Ljava/lang/String;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit16 v6, v7, 0x80

    iput v6, v10, Lcka;->a:I

    iput-object v1, v10, Lcka;->i:Ljava/lang/String;

    .line 26
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Lcka;

    iget-boolean v3, v2, Lddf;->c:Z

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v5, v2, Lddf;->c:Z

    :cond_4
    iget-object v3, v2, Lddf;->b:Lddk;

    .line 28
    check-cast v3, Lclf;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v3, Lclf;->f:Lcka;

    iget v1, v3, Lclf;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v3, Lclf;->a:I

    .line 30
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Lclf;

    sget-object v2, Lclf;->g:Lclf;

    .line 31
    invoke-virtual {v2, v1}, Lddk;->o(Lddk;)Lddf;

    move-result-object v1

    iget-boolean v2, v1, Lddf;->c:Z

    if-eqz v2, :cond_5

    .line 32
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v5, v1, Lddf;->c:Z

    :cond_5
    iget-object v2, v1, Lddf;->b:Lddk;

    .line 33
    check-cast v2, Lclf;

    iget-object v3, v2, Lclf;->e:Lddp;

    .line 34
    invoke-interface {v3}, Lddp;->c()Z

    move-result v5

    if-nez v5, :cond_6

    .line 35
    invoke-static {v3}, Lddk;->v(Lddp;)Lddp;

    move-result-object v3

    iput-object v3, v2, Lclf;->e:Lddp;

    :cond_6
    iget-object v2, v2, Lclf;->e:Lddp;

    .line 36
    invoke-static {v4, v2}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 37
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v1

    .line 38
    invoke-virtual {p0, p1, v9, v1}, Lawh;->j(Ljava/lang/String;ILder;)V

    iput v8, v0, Lawg;->b:I

    iget-object p1, p0, Lawh;->h:Landroid/os/Handler;

    .line 39
    invoke-virtual {p1, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lawh;->d:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lawh;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    invoke-static {}, Ldib;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawh;->f:Lbdq;

    .line 2
    invoke-virtual {v0}, Lbdq;->j()V

    :cond_0
    iget-object v0, p0, Lawh;->l:Lavz;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lawh;->r:Lbss;

    iget-object v1, p0, Lawh;->q:Lawa;

    .line 4
    new-instance v2, Lavx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lbss;->c:Ldny;

    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lbss;->b:Ldny;

    invoke-interface {v4}, Ldny;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lavw;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lbss;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavq;

    invoke-direct {v2, v1, v3, v4, v0}, Lavx;-><init>(Lawa;Ljava/util/concurrent/Executor;Lavw;Lavq;)V

    iput-object v2, p0, Lawh;->l:Lavz;

    iget-object v0, p0, Lawh;->k:Lbde;

    .line 5
    sget-object v1, Lbdf;->c:Lbdf;

    invoke-virtual {v0, v1}, Lbde;->a(Lbdf;)V

    iget-object v0, p0, Lawh;->l:Lavz;

    .line 6
    invoke-interface {v0}, Lavz;->start()V

    return-void

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "Rfcomm Server already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Lawo;Lcla;)V
    .locals 2

    .line 1
    sget-object v0, Lcla;->a:Lcla;

    if-eq p2, v0, :cond_0

    .line 2
    new-instance v0, Lawc;

    invoke-direct {v0, p0, p1}, Lawc;-><init>(Lawh;Lawo;)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, p1, v1, p2, v0}, Lawh;->k(Lawo;ILcla;Lbdr;)V

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string p2, "startWirelessProjectionInBackground should not be called with StartRequestReason USER_REQUEST."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lawg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lawh;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Lawg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lawh;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lawh;->d:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    iget-object v1, p0, Lawh;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lawh;->l:Lavz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Ljava/lang/String;ILder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lawh;->l:Lavz;

    invoke-interface {p3}, Lder;->h()[B

    move-result-object p3

    move-object v1, v0

    check-cast v1, Lavx;

    iget-object v1, v1, Lavx;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v1

    :try_start_0
    check-cast v0, Lavx;

    iget-object v0, v0, Lavx;->c:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavv;

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lavv;->c:Lavp;

    .line 5
    array-length v0, p3

    add-int/lit8 v1, v0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-short v0, v0

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short p2, p2

    .line 7
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iget-object p3, p1, Lavp;->f:Ljava/util/concurrent/Executor;

    new-instance v0, Lavn;

    invoke-direct {v0, p1, p2}, Lavn;-><init>(Lavp;[B)V

    .line 10
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object p3, Lavx;->a:Lcsz;

    invoke-virtual {p3}, Lcsv;->b()Lctq;

    move-result-object p3

    const-string v0, "com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer"

    const-string v1, "sendMessage"

    const/16 v2, 0xab

    const-string v3, "RfcommServer.java"

    .line 11
    invoke-interface {p3, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p3

    check-cast p3, Lcsx;

    const-string v0, "Failed to send message %d to device %s. Device not found."

    invoke-interface {p3, v0, p2, p1}, Lcsx;->r(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k(Lawo;ILcla;Lbdr;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lawh;->b:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawg;

    goto :goto_0

    .line 14
    :cond_0
    nop

    .line 1
    :goto_0
    const-string v1, "WirelessDiscoveryController.java"

    const-string v2, "startWirelessProjection"

    const-string v3, "com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController"

    if-nez v0, :cond_1

    sget-object p2, Lawh;->a:Lcsz;

    invoke-virtual {p2}, Lcsv;->b()Lctq;

    move-result-object p2

    const/16 p3, 0x13c

    .line 2
    invoke-interface {p2, v3, v2, p3, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string p3, "Unexpected btDevice %s"

    invoke-interface {p2, p3, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v4, p0, Lawh;->d:Lbah;

    .line 3
    invoke-virtual {v4, p1}, Lbah;->u(Lawo;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lawh;->g:Landroid/location/LocationManager;

    .line 4
    const/4 v4, 0x1

    if-nez v4, :cond_4

    sget-object p1, Lawh;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 p3, 0x146

    .line 5
    invoke-interface {p1, v3, v2, p3, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p3, "Can\'t start access point, location services might be disabled."

    invoke-interface {p1, p3}, Lcsx;->n(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    iget-object p2, p0, Lawh;->c:Landroid/content/Context;

    const p3, 0x7f100092

    .line 6
    invoke-static {p2, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void

    :cond_4
    iget-object p2, p0, Lawh;->s:Ldhq;

    .line 8
    const/4 p2, 0x1

    if-nez p2, :cond_5

    sget-object p1, Lawh;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 p2, 0x150

    .line 9
    invoke-interface {p1, v3, v2, p2, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Not starting in background, insufficient permissions."

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p2, p0, Lawh;->j:Lawy;

    .line 10
    invoke-virtual {p2}, Lawy;->c()Z

    move-result p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    iget p2, v0, Lawg;->b:I

    const/4 v1, 0x7

    if-eq p2, v1, :cond_7

    const/4 p2, 0x6

    iput p2, v0, Lawg;->b:I

    :cond_7
    iget-object p2, p0, Lawh;->f:Lbdq;

    new-instance v1, Lawd;

    invoke-direct {v1, p0, v0, p3, p1}, Lawd;-><init>(Lawh;Lawg;Lcla;Lawo;)V

    .line 11
    invoke-virtual {p2, v1}, Lbdq;->i(Lbdr;)V

    iget-object p1, p0, Lawh;->f:Lbdq;

    .line 12
    invoke-virtual {p1, p4}, Lbdq;->i(Lbdr;)V

    .line 13
    invoke-static {}, Ldib;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lawh;->f:Lbdq;

    invoke-virtual {p1}, Lbdq;->k()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 14
    :cond_8
    return-void

    .line 13
    :cond_9
    :goto_1
    iget-object p1, p0, Lawh;->f:Lbdq;

    .line 14
    invoke-virtual {p1}, Lbdq;->j()V

    return-void
.end method
