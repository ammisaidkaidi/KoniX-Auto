.class public final Latz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Latz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ldai;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lhi;->l(Ljava/util/concurrent/ScheduledExecutorService;)Ldai;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final c()Lbdw;
    .locals 1

    new-instance v0, Lbdw;

    invoke-direct {v0}, Lbdw;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 9

    .line 4
    iget v0, p0, Latz;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 1
    new-instance v0, Lbut;

    .line 25
    invoke-direct {v0}, Lbut;-><init>()V

    return-object v0

    .line 10
    :pswitch_0
    new-instance v0, Lbul;

    .line 1
    invoke-direct {v0}, Lbul;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lxr;

    invoke-direct {v0}, Lxr;-><init>()V

    return-object v0

    :pswitch_2
    sget-object v0, Lbhg;->a:Lbhg;

    return-object v0

    :pswitch_3
    new-instance v0, Lbef;

    invoke-direct {v0}, Lbef;-><init>()V

    return-object v0

    .line 24
    :pswitch_4
    nop

    .line 2
    throw v1

    .line 1
    :pswitch_5
    new-instance v0, Lbdu;

    invoke-direct {v0}, Lbdu;-><init>()V

    return-object v0

    .line 2
    :pswitch_6
    nop

    .line 3
    throw v1

    .line 4
    :pswitch_7
    new-instance v0, Ldau;

    invoke-direct {v0}, Ldau;-><init>()V

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "Background #%d"

    invoke-static {v2, v5}, Ldau;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iput-object v2, v0, Ldau;->a:Ljava/lang/String;

    .line 5
    iput-object v4, v0, Ldau;->b:Ljava/lang/Boolean;

    iget-object v2, v0, Ldau;->a:Ljava/lang/String;

    iget-object v0, v0, Ldau;->b:Ljava/lang/Boolean;

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0

    .line 10
    :cond_0
    nop

    .line 7
    :goto_0
    new-instance v5, Ldat;

    invoke-direct {v5, v4, v2, v1, v0}, Ldat;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;)V

    .line 8
    invoke-static {v3, v5}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lhi;->l(Ljava/util/concurrent/ScheduledExecutorService;)Ldai;

    move-result-object v0

    .line 10
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 25
    :pswitch_8
    new-instance v0, Lhj;

    invoke-direct {v0}, Lhj;-><init>()V

    return-object v0

    :pswitch_9
    sget-object v0, Lbbu;->a:Lbbu;

    return-object v0

    :pswitch_a
    sget-object v0, Lbbt;->a:Lbbt;

    return-object v0

    :pswitch_b
    sget-object v0, Lbbs;->a:Lbbs;

    return-object v0

    :pswitch_c
    new-instance v0, Lhi;

    invoke-direct {v0}, Lhi;-><init>()V

    return-object v0

    .line 11
    :pswitch_d
    invoke-static {}, Lcbe;->c()Lcbd;

    move-result-object v0

    invoke-virtual {v0}, Lcbd;->a()Lcbe;

    move-result-object v0

    return-object v0

    :pswitch_e
    nop

    .line 12
    return-object v4

    :pswitch_f
    new-instance v0, Laxs;

    .line 13
    invoke-direct {v0}, Laxs;-><init>()V

    return-object v0

    .line 14
    :pswitch_10
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v0

    .line 15
    sget-object v1, Ldiq;->a:Ldiq;

    .line 16
    invoke-virtual {v1}, Ldiq;->b()Ldir;

    move-result-object v1

    invoke-interface {v1}, Ldir;->a()Ldgp;

    move-result-object v1

    iget-object v1, v1, Ldgp;->a:Lddr;

    .line 17
    invoke-virtual {v0, v1}, Lcqc;->h(Ljava/lang/Iterable;)V

    .line 18
    const-string v1, "/system/etc/aar"

    invoke-virtual {v0, v1}, Lcqc;->g(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Lcqc;->f()Lcqh;

    move-result-object v0

    .line 20
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_11
    const-string v0, "certificate"

    const-string v1, "credentials/client.pem"

    .line 21
    invoke-static {v0, v1}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "root_certificate"

    const-string v5, "credentials/ca.pem"

    .line 22
    invoke-static {v4, v5}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "key"

    const-string v7, "credentials/private.key"

    .line 23
    invoke-static {v6, v7}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v1, 0x4

    aput-object v6, v8, v1

    const/4 v1, 0x5

    aput-object v7, v8, v1

    .line 24
    invoke-static {v0, v8}, Lcse;->a(I[Ljava/lang/Object;)Lcse;

    move-result-object v0

    return-object v0

    :pswitch_12
    new-instance v0, Lhg;

    invoke-direct {v0}, Lhg;-><init>()V

    return-object v0

    .line 3
    :pswitch_13
    sget-object v0, Latw;->a:Latw;

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
