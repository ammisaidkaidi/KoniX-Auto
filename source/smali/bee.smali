.class public final Lbee;
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

    iput p2, p0, Lbee;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbee;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    .line 29
    iget v0, p0, Lbee;->b:I

    packed-switch v0, :pswitch_data_0

    .line 28
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhr;

    .line 72
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 73
    sget-object v1, Ldmr;->a:Ldmr;

    .line 74
    invoke-virtual {v1}, Ldmr;->b()Ldms;

    move-result-object v1

    invoke-interface {v1, v0}, Ldms;->a(Landroid/content/Context;)Ldpy;

    move-result-object v0

    return-object v0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhr;

    .line 1
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Ldmo;->a:Ldmo;

    .line 3
    invoke-virtual {v1}, Ldmo;->b()Ldmp;

    move-result-object v1

    invoke-interface {v1, v0}, Ldmp;->a(Landroid/content/Context;)Ldoh;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhr;

    .line 4
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 5
    sget-object v1, Ldmo;->a:Ldmo;

    .line 6
    invoke-virtual {v1}, Ldmo;->b()Ldmp;

    move-result-object v1

    invoke-interface {v1, v0}, Ldmp;->b(Landroid/content/Context;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lbee;->a:Ldny;

    .line 7
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr;

    new-instance v0, Lbud;

    invoke-direct {v0}, Lbud;-><init>()V

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Latg;

    .line 8
    invoke-virtual {v0}, Latg;->b()Lcoc;

    move-result-object v0

    new-instance v1, Lxr;

    invoke-direct {v1}, Lxr;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Lbtw;

    .line 10
    invoke-virtual {v0}, Lbtw;->b()Lbtz;

    move-result-object v0

    new-instance v1, Lbtu;

    invoke-direct {v1, v0}, Lbtu;-><init>(Lbtz;)V

    .line 11
    invoke-static {v1}, Lbtz;->b(Lbtu;)V

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lbee;->a:Ldny;

    .line 12
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr;

    new-instance v0, Ljava/util/Random;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 14
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhr;

    .line 15
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcvv;

    .line 16
    invoke-direct {v1, v0}, Lcvv;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_7
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Latg;

    .line 17
    invoke-virtual {v0}, Latg;->b()Lcoc;

    move-result-object v0

    sget-object v1, Lbtn;->a:Lbtn;

    .line 18
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    .line 19
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbe;

    .line 20
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Latg;

    .line 21
    invoke-virtual {v0}, Latg;->b()Lcoc;

    move-result-object v0

    sget-object v1, Lbtn;->b:Lbtn;

    .line 22
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    .line 23
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcap;

    .line 24
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    .line 25
    check-cast v0, Lcoc;

    sget-object v1, Lbtn;->j:Lbtn;

    .line 26
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    .line 27
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbb;

    .line 28
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :pswitch_a
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    check-cast v0, Lcoc;

    new-instance v1, Lbui;

    invoke-direct {v1}, Lbui;-><init>()V

    const/16 v2, 0xb

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lbui;->a:Ljava/lang/Integer;

    .line 31
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lbui;->b:Ljava/lang/Integer;

    .line 32
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lbui;->c:Ljava/lang/Boolean;

    iget-object v4, v1, Lbui;->a:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v5, v1, Lbui;->b:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lbui;->c:Ljava/lang/Boolean;

    if-nez v5, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    new-instance v5, Lbuj;

    .line 38
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, v1, Lbui;->b:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v1, Lbui;->c:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v5, v4, v6, v1}, Lbuj;-><init>(IIZ)V

    iget v1, v5, Lbuj;->b:I

    const/4 v4, 0x0

    if-lez v1, :cond_1

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_0
    nop

    .line 41
    const-string v1, "Thread pool size must be less than or equal to %s"

    invoke-static {v3, v1, v2}, Lex;->t(ZLjava/lang/String;I)V

    .line 42
    invoke-virtual {v0, v5}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbuj;

    return-object v0

    .line 32
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lbui;->a:Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 34
    const-string v2, " primesMetricExecutorPriority"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, v1, Lbui;->b:Ljava/lang/Integer;

    if-nez v2, :cond_4

    .line 35
    const-string v2, " primesMetricExecutorPoolSize"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, v1, Lbui;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 36
    const-string v1, " enableDeferredTasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :pswitch_b
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Latg;

    .line 43
    invoke-virtual {v0}, Latg;->b()Lcoc;

    move-result-object v0

    sget-object v1, Lbtn;->i:Lbtn;

    .line 44
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    .line 45
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcak;

    .line 46
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Latg;

    .line 47
    invoke-virtual {v0}, Latg;->b()Lcoc;

    move-result-object v0

    sget-object v1, Lbtn;->g:Lbtn;

    .line 48
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    .line 49
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyk;

    .line 50
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Latg;

    .line 51
    invoke-virtual {v0}, Latg;->b()Lcoc;

    move-result-object v0

    sget-object v1, Lbtn;->f:Lbtn;

    .line 52
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    .line 53
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxf;

    .line 54
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    .line 55
    check-cast v0, Lcoc;

    sget-object v1, Lbtn;->e:Lbtn;

    .line 56
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    .line 57
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwx;

    .line 58
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    .line 59
    check-cast v0, Lcoc;

    sget-object v1, Lbtn;->c:Lbtn;

    .line 60
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    .line 61
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxn;

    .line 62
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lbee;->a:Ldny;

    .line 63
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgi;

    iget-object v0, v0, Lbgi;->b:Lbgj;

    .line 64
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    .line 65
    sget-object v1, Lbaz;->a:Lbaz;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclk;

    .line 66
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhr;

    .line 67
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ldhq;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Ldhq;-><init>(Landroid/content/Context;[B[C)V

    return-object v1

    :pswitch_12
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhr;

    .line 68
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 70
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lbee;->a:Ldny;

    check-cast v0, Ldhr;

    .line 71
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbed;

    invoke-direct {v1, v0}, Lbed;-><init>(Landroid/content/Context;)V

    return-object v1

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
