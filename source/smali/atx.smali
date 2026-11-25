.class public final Latx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ldny;Ldny;I)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->a:Ldny;

    iput-object p2, p0, Latx;->b:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[B)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[C)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[F)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[I)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[S)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[Z)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[[B)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[[C)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[[I)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[[S)V
    .locals 0

    iput p3, p0, Latx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latx;->b:Ldny;

    iput-object p2, p0, Latx;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 9

    .line 13
    iget v0, p0, Latx;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 76
    iget-object v0, p0, Latx;->b:Ldny;

    check-cast v0, Latg;

    .line 78
    invoke-virtual {v0}, Latg;->b()Lcoc;

    iget-object v0, p0, Latx;->a:Ldny;

    .line 79
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwq;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_0
    iget-object v0, p0, Latx;->b:Ldny;

    check-cast v0, Latg;

    .line 1
    invoke-virtual {v0}, Latg;->b()Lcoc;

    iget-object v0, p0, Latx;->a:Ldny;

    .line 2
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwq;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Latx;->b:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcoc;

    iget-object v1, p0, Latx;->a:Ldny;

    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcsf;->a:Lcsf;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwq;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 5
    :pswitch_2
    iget-object v0, p0, Latx;->b:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    .line 7
    check-cast v0, Lcoc;

    iget-object v1, p0, Latx;->a:Ldny;

    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwq;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Lcsf;->a:Lcsf;

    .line 10
    :goto_1
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 8
    :pswitch_3
    iget-object v0, p0, Latx;->a:Ldny;

    check-cast v0, Ldhr;

    .line 11
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Latx;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbvj;

    new-instance v2, Lbvh;

    .line 12
    invoke-direct {v2, v0, v1}, Lbvh;-><init>(Landroid/content/Context;Lbvj;)V

    return-object v2

    .line 13
    :pswitch_4
    iget-object v0, p0, Latx;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbuj;

    iget-object v1, p0, Latx;->a:Ldny;

    check-cast v1, Lbrx;

    invoke-virtual {v1}, Lbrx;->b()Lbrw;

    move-result-object v1

    iget v2, v0, Lbuj;->b:I

    .line 14
    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lbuh;

    iget v0, v0, Lbuj;->a:I

    .line 15
    invoke-direct {v4, v0}, Lbuh;-><init>(I)V

    new-instance v0, Lbuf;

    .line 16
    invoke-direct {v0}, Lbuf;-><init>()V

    .line 15
    invoke-direct {v3, v2, v4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 17
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 18
    invoke-static {v3}, Lhi;->l(Ljava/util/concurrent/ScheduledExecutorService;)Ldai;

    move-result-object v0

    iget-object v1, v1, Lbrw;->a:Lbry;

    if-nez v1, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    invoke-interface {v1}, Lbry;->a()Ldai;

    move-result-object v0

    .line 20
    :goto_2
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 32
    :pswitch_5
    iget-object v0, p0, Latx;->a:Ldny;

    .line 21
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldai;

    iget-object v1, p0, Latx;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbvh;

    new-instance v2, Lbtt;

    .line 22
    invoke-direct {v2, v0, v1}, Lbtt;-><init>(Ldai;Lbvh;)V

    return-object v2

    :pswitch_6
    iget-object v0, p0, Latx;->a:Ldny;

    check-cast v0, Ldhr;

    .line 23
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Latx;->b:Ldny;

    check-cast v1, Lcbo;

    invoke-virtual {v1}, Lcbo;->b()Lcoc;

    move-result-object v1

    new-instance v2, Lbya;

    invoke-direct {v2, v0, v3}, Lbya;-><init>(Landroid/content/Context;I)V

    .line 24
    invoke-virtual {v1, v2}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcol;

    .line 25
    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 26
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 12
    :pswitch_7
    iget-object v0, p0, Latx;->b:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    .line 27
    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Latx;->a:Ldny;

    check-cast v3, Lbsq;

    invoke-virtual {v3}, Lbsq;->b()Ldhq;

    move-result-object v3

    new-instance v4, Lbsv;

    invoke-direct {v4, v0, v3, v1}, Lbsv;-><init>(Landroid/content/Context;Ldhq;[B)V

    new-instance v0, Landroid/os/HandlerThread;

    .line 28
    const-string v1, "CheckboxObserverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lbsu;

    new-instance v3, Lboh;

    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Lboh;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v4, v3}, Lbsu;-><init>(Lbsv;Landroid/os/Handler;)V

    .line 31
    const-string v0, "multi_cb"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, v4, Lbsv;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v4

    .line 38
    :pswitch_8
    iget-object v0, p0, Latx;->a:Ldny;

    check-cast v0, Ldhr;

    .line 33
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Latx;->b:Ldny;

    check-cast v1, Ldhy;

    iget-object v1, v1, Ldhy;->a:Ljava/lang/Object;

    check-cast v1, Lbbl;

    new-instance v2, Lbgi;

    .line 34
    invoke-direct {v2, v0, v1}, Lbgi;-><init>(Landroid/content/Context;Lbbl;)V

    return-object v2

    .line 26
    :pswitch_9
    iget-object v0, p0, Latx;->a:Ldny;

    check-cast v0, Ldhr;

    .line 35
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Latx;->b:Ldny;

    invoke-interface {v4}, Ldny;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbdu;

    new-instance v5, Lcmg;

    invoke-direct {v5}, Lcmg;-><init>()V

    iput-object v0, v5, Lcmg;->a:Landroid/content/Context;

    iput-object v4, v5, Lcmg;->b:Lbdu;

    iget-object v0, v5, Lcmg;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 36
    new-instance v0, Lcmj;

    invoke-direct {v0}, Lcmj;-><init>()V

    iget-object v4, v5, Lcmg;->b:Lbdu;

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    new-array v4, v4, [Lcmi;

    new-instance v7, Lcmm;

    iget-object v8, v5, Lcmg;->a:Landroid/content/Context;

    .line 37
    invoke-direct {v7, v8, v2}, Lcmm;-><init>(Landroid/content/Context;I)V

    aput-object v7, v4, v2

    new-instance v2, Lcmm;

    iget-object v7, v5, Lcmg;->a:Landroid/content/Context;

    invoke-direct {v2, v7, v3, v1}, Lcmm;-><init>(Landroid/content/Context;I[B)V

    aput-object v2, v4, v3

    new-instance v1, Lcme;

    iget-object v2, v5, Lcmg;->b:Lbdu;

    invoke-direct {v1, v2}, Lcme;-><init>(Lbdu;)V

    aput-object v1, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcmj;->c:Ljava/util/List;

    goto :goto_3

    :cond_3
    new-array v4, v6, [Lcmi;

    new-instance v6, Lcmm;

    iget-object v7, v5, Lcmg;->a:Landroid/content/Context;

    .line 38
    invoke-direct {v6, v7, v2}, Lcmm;-><init>(Landroid/content/Context;I)V

    aput-object v6, v4, v2

    new-instance v2, Lcmm;

    iget-object v5, v5, Lcmg;->a:Landroid/content/Context;

    invoke-direct {v2, v5, v3, v1}, Lcmm;-><init>(Landroid/content/Context;I[B)V

    aput-object v2, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcmj;->c:Ljava/util/List;

    .line 37
    :goto_3
    return-object v0

    .line 35
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    const-string v1, "Context was not provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_a
    invoke-static {}, Lcde;->c()Lcxz;

    move-result-object v0

    iget-object v1, p0, Latx;->b:Ldny;

    check-cast v1, Lbru;

    .line 40
    invoke-virtual {v1}, Lbru;->b()Lcor;

    move-result-object v1

    iget-object v2, p0, Latx;->a:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhj;

    new-instance v2, Lbde;

    .line 41
    invoke-direct {v2, v0, v1}, Lbde;-><init>(Lcxz;Lcor;)V

    return-object v2

    .line 34
    :pswitch_b
    iget-object v0, p0, Latx;->a:Ldny;

    check-cast v0, Ldhr;

    .line 42
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Latx;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarProjectionManager;

    new-instance v2, Lbat;

    .line 43
    invoke-direct {v2, v0, v1}, Lbat;-><init>(Landroid/content/Context;Landroid/car/CarProjectionManager;)V

    return-object v2

    .line 41
    :pswitch_c
    iget-object v0, p0, Latx;->b:Ldny;

    .line 44
    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v0

    iget-object v1, p0, Latx;->a:Ldny;

    invoke-static {v1}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v1

    .line 45
    sget-object v2, Ldin;->a:Ldin;

    .line 46
    invoke-virtual {v2}, Ldin;->b()Ldio;

    move-result-object v2

    invoke-interface {v2}, Ldio;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 47
    invoke-interface {v1}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazj;

    goto :goto_4

    .line 48
    :cond_5
    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazj;

    .line 49
    :goto_4
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 53
    :pswitch_d
    iget-object v0, p0, Latx;->a:Ldny;

    .line 50
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Latx;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbah;

    new-instance v2, Lazi;

    .line 51
    invoke-direct {v2, v0, v1}, Lazi;-><init>(Landroid/car/hardware/property/CarPropertyManager;Lbah;)V

    return-object v2

    .line 48
    :pswitch_e
    iget-object v0, p0, Latx;->a:Ldny;

    check-cast v0, Ldhr;

    .line 52
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Latx;->b:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldah;

    new-instance v3, Lhh;

    invoke-direct {v3}, Lhh;-><init>()V

    new-instance v4, Lcew;

    .line 53
    invoke-direct {v4, v0, v2, v3, v1}, Lcew;-><init>(Landroid/content/Context;Ldah;Lhh;[B)V

    return-object v4

    .line 71
    :pswitch_f
    iget-object v0, p0, Latx;->b:Ldny;

    iget-object v1, p0, Latx;->a:Ldny;

    new-instance v2, Lavq;

    .line 54
    invoke-direct {v2, v0, v1}, Lavq;-><init>(Ldny;Ldny;)V

    return-object v2

    :pswitch_10
    iget-object v0, p0, Latx;->a:Ldny;

    .line 55
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Latx;->b:Ldny;

    const-string v2, "BluetoothModule.java"

    const-string v3, "provideBluetoothService"

    const-string v4, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothModule"

    if-nez v0, :cond_6

    sget-object v0, Lavd;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x21

    .line 56
    invoke-interface {v0, v4, v3, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "No bluetooth adapter found."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lbaz;->a:Lbaz;

    goto :goto_5

    .line 58
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lavd;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x25

    .line 59
    invoke-interface {v0, v4, v3, v1, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "No bluetooth-address found."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lbaz;->a:Lbaz;

    goto :goto_5

    .line 61
    :cond_7
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavi;

    iget-object v0, v0, Lavi;->h:Lcom/google/android/projection/protocol/BluetoothEndpoint;

    .line 62
    :goto_5
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 61
    :pswitch_11
    iget-object v0, p0, Latx;->b:Ldny;

    .line 63
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzn;

    iget-object v1, p0, Latx;->a:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhg;

    .line 64
    new-instance v1, Laun;

    invoke-direct {v1, v0}, Laun;-><init>(Lzn;)V

    return-object v1

    .line 51
    :pswitch_12
    iget-object v0, p0, Latx;->a:Ldny;

    check-cast v0, Ldhr;

    .line 65
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Latx;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager;

    .line 66
    sget-object v4, Ldjx;->a:Ldjx;

    .line 67
    invoke-virtual {v4}, Ldjx;->b()Ldjy;

    move-result-object v4

    invoke-interface {v4}, Ldjy;->a()Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    .line 68
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "assistant"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    new-instance v0, Landroid/content/Intent;

    .line 69
    const-string v4, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0xc0000

    .line 70
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 71
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    nop

    .line 65
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 64
    :pswitch_13
    iget-object v0, p0, Latx;->a:Ldny;

    .line 72
    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v0

    iget-object v1, p0, Latx;->b:Ldny;

    invoke-static {v1}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v1

    .line 73
    sget-object v2, Ldji;->a:Ldji;

    .line 74
    invoke-virtual {v2}, Ldji;->b()Ldjj;

    move-result-object v2

    invoke-interface {v2}, Ldjj;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 75
    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latt;

    goto :goto_7

    .line 76
    :cond_b
    invoke-interface {v1}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latt;

    .line 77
    :goto_7
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

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
