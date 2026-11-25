.class public final Lbuo;
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

    iput p2, p0, Lbuo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbuo;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    .line 59
    iget v0, p0, Lbuo;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    check-cast v0, Lcoc;

    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    goto/16 :goto_2

    .line 63
    :pswitch_0
    iget-object v0, p0, Lbuo;->a:Ldny;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 2
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwq;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcsf;->a:Lcsf;

    .line 3
    :goto_0
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    .line 1
    :pswitch_1
    iget-object v0, p0, Lbuo;->a:Ldny;

    .line 4
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcor;

    .line 5
    new-instance v1, Lbwv;

    invoke-direct {v1, v0}, Lbwv;-><init>(Lcor;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 6
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v2

    sget-object v3, Lbwt;->a:Lcsz;

    invoke-virtual {v3}, Lcsv;->c()Lctq;

    move-result-object v3

    .line 10
    invoke-interface {v3, v2}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const/16 v3, 0x54

    const-string v4, "com/google/android/libraries/performance/primes/metrics/core/PrimesCoreMetricDaggerModule"

    const-string v5, "provideVersionName"

    const-string v6, "PrimesCoreMetricDaggerModule.java"

    invoke-interface {v2, v4, v5, v3, v6}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const-string v3, "Failed to get PackageInfo for: %s"

    invoke-interface {v2, v3, v0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :goto_1
    return-object v1

    :pswitch_3
    iget-object v0, p0, Lbuo;->a:Ldny;

    .line 11
    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v0

    new-instance v1, Lbwl;

    .line 12
    invoke-direct {v1, v0}, Lbwl;-><init>(Ldgz;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Lbuo;->a:Ldny;

    .line 13
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lbvj;

    .line 14
    check-cast v0, Lbvi;

    invoke-direct {v1, v0}, Lbvj;-><init>(Lbvi;)V

    return-object v1

    :pswitch_5
    iget-object v0, p0, Lbuo;->a:Ldny;

    .line 15
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvv;

    .line 16
    new-instance v2, Lbvi;

    invoke-direct {v2, v0, v1}, Lbvi;-><init>(Lcvv;[B)V

    return-object v2

    :pswitch_6
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 17
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 18
    sget-object v1, Ldnv;->a:Ldnv;

    .line 19
    invoke-virtual {v1}, Ldnv;->b()Ldnw;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnw;->a(Landroid/content/Context;)Ldpy;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 20
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 21
    sget-object v1, Ldns;->a:Ldns;

    .line 22
    invoke-virtual {v1}, Ldns;->b()Ldnt;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnt;->a(Landroid/content/Context;)Ldpy;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 23
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 24
    sget-object v1, Ldnp;->a:Ldnp;

    .line 25
    invoke-virtual {v1}, Ldnp;->b()Ldnq;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnq;->a(Landroid/content/Context;)Ldpy;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 26
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 27
    sget-object v1, Ldnm;->a:Ldnm;

    .line 28
    invoke-virtual {v1}, Ldnm;->b()Ldnn;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnn;->b(Landroid/content/Context;)Ldpy;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 29
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 30
    sget-object v1, Ldna;->a:Ldna;

    .line 31
    invoke-virtual {v1}, Ldna;->b()Ldnb;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnb;->d(Landroid/content/Context;)Z

    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 32
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 33
    sget-object v1, Ldnj;->a:Ldnj;

    .line 34
    invoke-virtual {v1}, Ldnj;->b()Ldnk;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnk;->a(Landroid/content/Context;)Ldpy;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 35
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 36
    sget-object v1, Ldnd;->a:Ldnd;

    .line 37
    invoke-virtual {v1}, Ldnd;->b()Ldne;

    move-result-object v1

    invoke-interface {v1, v0}, Ldne;->a(Landroid/content/Context;)Ldpy;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 38
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 39
    sget-object v1, Ldna;->a:Ldna;

    .line 40
    invoke-virtual {v1}, Ldna;->b()Ldnb;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnb;->b(Landroid/content/Context;)Ldpy;

    move-result-object v0

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 41
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 42
    sget-object v1, Ldna;->a:Ldna;

    .line 43
    invoke-virtual {v1}, Ldna;->b()Ldnb;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnb;->a(Landroid/content/Context;)Lbyn;

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 44
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 45
    sget-object v1, Ldnm;->a:Ldnm;

    .line 46
    invoke-virtual {v1}, Ldnm;->b()Ldnn;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnn;->a(Landroid/content/Context;)J

    move-result-wide v0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 47
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 48
    sget-object v1, Ldnm;->a:Ldnm;

    .line 49
    invoke-virtual {v1}, Ldnm;->b()Ldnn;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnn;->c(Landroid/content/Context;)Z

    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 50
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 51
    sget-object v1, Ldmx;->a:Ldmx;

    .line 52
    invoke-virtual {v1}, Ldmx;->b()Ldmy;

    move-result-object v1

    invoke-interface {v1, v0}, Ldmy;->a(Landroid/content/Context;)Z

    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 53
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 54
    sget-object v1, Ldmu;->a:Ldmu;

    .line 55
    invoke-virtual {v1}, Ldmu;->b()Ldmv;

    move-result-object v1

    invoke-interface {v1, v0}, Ldmv;->a(Landroid/content/Context;)Ldpy;

    move-result-object v0

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lbuo;->a:Ldny;

    check-cast v0, Ldhr;

    .line 56
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 57
    sget-object v1, Ldna;->a:Ldna;

    .line 58
    invoke-virtual {v1}, Ldna;->b()Ldnb;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnb;->c(Landroid/content/Context;)Z

    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    .line 61
    const-string v2, "Primes-Jank"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 60
    :goto_2
    new-instance v1, Landroid/os/Handler;

    .line 64
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1

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
