.class public final Laua;
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

    iput p2, p0, Laua;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laua;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 9

    .line 36
    iget v0, p0, Laua;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 61
    iget-object v0, p0, Laua;->a:Ldny;

    check-cast v0, Ldhr;

    .line 78
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 79
    invoke-static {}, Lcde;->c()Lcxz;

    .line 80
    new-instance v1, Lbco;

    invoke-direct {v1, v0}, Lbco;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 42
    :pswitch_0
    iget-object v0, p0, Laua;->a:Ldny;

    check-cast v0, Ldhr;

    .line 1
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbci;

    .line 2
    invoke-direct {v1, v0}, Lbci;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Laua;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Lbbl;

    iget-object v0, v0, Lbbl;->F:Lzn;

    .line 4
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Laua;->a:Ldny;

    check-cast v0, Ldhr;

    .line 5
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lazf;

    .line 6
    invoke-direct {v1, v0}, Lazf;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Laua;->a:Ldny;

    check-cast v0, Ldhr;

    .line 7
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lazc;

    .line 8
    invoke-direct {v1, v0}, Lazc;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Laua;->a:Ldny;

    .line 9
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 10
    new-instance v1, Layu;

    invoke-direct {v1, v0}, Layu;-><init>(Landroid/car/drivingstate/CarUxRestrictionsManager;)V

    return-object v1

    :pswitch_5
    iget-object v0, p0, Laua;->a:Ldny;

    .line 11
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 12
    invoke-static {}, Lcap;->c()Lcao;

    move-result-object v3

    .line 13
    sget-object v4, Ldju;->a:Ldju;

    .line 14
    invoke-virtual {v4}, Ldju;->b()Ldjv;

    move-result-object v4

    invoke-interface {v4}, Ldjv;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v3, v1}, Lcao;->b(Z)V

    .line 15
    invoke-virtual {v3}, Lcao;->a()Lcap;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Laua;->a:Ldny;

    .line 16
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 17
    invoke-static {}, Lcak;->c()Lcaj;

    move-result-object v3

    .line 18
    sget-object v4, Ldju;->a:Ldju;

    .line 19
    invoke-virtual {v4}, Ldju;->b()Ldjv;

    move-result-object v4

    invoke-interface {v4}, Ldjv;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_1
    invoke-virtual {v3, v1}, Lcaj;->b(Z)V

    .line 20
    invoke-virtual {v3}, Lcaj;->a()Lcak;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Laua;->a:Ldny;

    .line 21
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 22
    invoke-static {}, Lbzh;->c()Lbzg;

    move-result-object v3

    .line 23
    sget-object v4, Ldju;->a:Ldju;

    .line 24
    invoke-virtual {v4}, Ldju;->b()Ldjv;

    move-result-object v4

    invoke-interface {v4}, Ldjv;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    .line 25
    :cond_2
    const/4 v1, 0x0

    .line 23
    :goto_2
    invoke-virtual {v3, v1}, Lbzg;->b(Z)V

    .line 25
    invoke-virtual {v3}, Lbzg;->a()Lbzh;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Laua;->a:Ldny;

    .line 26
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 27
    invoke-static {}, Lbyk;->c()Lbyj;

    move-result-object v3

    .line 28
    sget-object v4, Ldju;->a:Ldju;

    .line 29
    invoke-virtual {v4}, Ldju;->b()Ldjv;

    move-result-object v4

    invoke-interface {v4}, Ldjv;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    .line 30
    :cond_3
    const/4 v1, 0x0

    .line 28
    :goto_3
    invoke-virtual {v3, v1}, Lbyj;->b(Z)V

    .line 30
    invoke-virtual {v3}, Lbyj;->a()Lbyk;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Laua;->a:Ldny;

    .line 31
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 32
    invoke-static {}, Lbxf;->c()Lcbd;

    move-result-object v3

    .line 33
    sget-object v4, Ldju;->a:Ldju;

    .line 34
    invoke-virtual {v4}, Ldju;->b()Ldjv;

    move-result-object v4

    invoke-interface {v4}, Ldjv;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    goto :goto_4

    .line 35
    :cond_4
    const/4 v1, 0x0

    .line 33
    :goto_4
    invoke-virtual {v3, v1}, Lcbd;->d(Z)V

    .line 35
    invoke-virtual {v3}, Lcbd;->c()Lbxf;

    move-result-object v0

    return-object v0

    .line 36
    :pswitch_a
    iget-object v0, p0, Laua;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 37
    invoke-static {}, Lbyq;->c()Lbyp;

    move-result-object v3

    .line 38
    sget-object v4, Ldju;->a:Ldju;

    .line 39
    invoke-virtual {v4}, Ldju;->b()Ldjv;

    move-result-object v4

    invoke-interface {v4}, Ldjv;->d()Z

    move-result v4

    .line 38
    invoke-virtual {v3, v4}, Lbyp;->b(Z)V

    sget-object v4, Ldju;->a:Ldju;

    .line 40
    invoke-virtual {v4}, Ldju;->b()Ldjv;

    move-result-object v4

    invoke-interface {v4}, Ldjv;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    goto :goto_5

    .line 42
    :cond_5
    const/4 v1, 0x0

    .line 41
    :goto_5
    invoke-virtual {v3, v1}, Lbyp;->c(Z)V

    .line 42
    invoke-virtual {v3}, Lbyp;->a()Lbyq;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_b
    iget-object v0, p0, Laua;->a:Ldny;

    .line 43
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    .line 44
    sget-object v1, Lawq;->f:Lawq;

    .line 45
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    sget-object v1, Ldgq;->a:Ldgq;

    .line 46
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgq;

    .line 47
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_c
    iget-object v0, p0, Laua;->a:Ldny;

    .line 48
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    .line 49
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    const-string v3, "PhenotypeRegistrationInfoModule.java"

    const-string v4, "providesApplicationProperties"

    const-string v5, "com/google/android/apps/auto/aareceiver/phenotype/PhenotypeRegistrationInfoModule"

    if-nez v1, :cond_6

    goto/16 :goto_6

    .line 50
    :cond_6
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbt;

    iget v1, v1, Ldbt;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 51
    :try_start_0
    sget-object v1, Lbhk;->b:Lbhk;

    .line 52
    invoke-virtual {v1}, Lddk;->n()Lddf;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbt;

    iget-object v0, v0, Ldbt;->i:Ldcl;

    invoke-static {}, Ldcz;->b()Ldcz;

    move-result-object v6
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    :try_start_1
    invoke-virtual {v0}, Ldcl;->l()Ldcp;

    move-result-object v0

    .line 55
    invoke-virtual {v1, v0, v6}, Lddf;->m(Ldcp;Ldcz;)V

    .line 56
    invoke-virtual {v0, v2}, Ldcp;->z(I)V
    :try_end_1
    .catch Lddu; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :try_start_2
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lbhk;

    .line 61
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    goto :goto_7

    .line 59
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "ByteString"

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 58
    add-int/lit8 v7, v7, 0x46

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Reading "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from a "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " threw an IOException (should never happen)."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 63
    :catch_1
    move-exception v0

    .line 59
    throw v0
    :try_end_2
    .catch Lddu; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    :catch_2
    move-exception v0

    sget-object v1, Layb;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    .line 62
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x52

    invoke-interface {v0, v5, v4, v1, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Couldn\'t parse application properties"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    goto :goto_7

    .line 49
    :cond_7
    :goto_6
    sget-object v0, Layb;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x48

    .line 64
    invoke-interface {v0, v5, v4, v1, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "There were no params found in the current registration"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    :goto_7
    return-object v0

    .line 80
    :pswitch_d
    iget-object v0, p0, Laua;->a:Ldny;

    .line 66
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    new-instance v1, Lcha;

    invoke-direct {v1, v0}, Lcha;-><init>(Landroid/content/pm/PackageManager;)V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Laua;->a:Ldny;

    .line 67
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceo;

    new-instance v1, Laxw;

    invoke-direct {v1, v0}, Laxw;-><init>(Lceo;)V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Laua;->a:Ldny;

    .line 68
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxs;

    new-instance v1, Lcom/google/android/projection/protocol/MediaPlaybackStatus;

    iget-object v0, v0, Laxs;->d:Laxr;

    invoke-direct {v1, v0}, Lcom/google/android/projection/protocol/MediaPlaybackStatus;-><init>(Laxr;)V

    return-object v1

    :pswitch_10
    iget-object v0, p0, Laua;->a:Ldny;

    .line 69
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarAppFocusManager;

    new-instance v1, Laxf;

    .line 70
    invoke-direct {v1, v0}, Laxf;-><init>(Landroid/car/CarAppFocusManager;)V

    return-object v1

    :pswitch_11
    iget-object v0, p0, Laua;->a:Ldny;

    .line 71
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laus;

    iget-object v0, v0, Laus;->c:Lauj;

    iget-object v0, v0, Lauj;->f:Lcom/google/android/projection/protocol/AudioSink;

    .line 72
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_12
    iget-object v0, p0, Laua;->a:Ldny;

    .line 73
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laus;

    iget-object v0, v0, Laus;->a:Lauj;

    iget-object v0, v0, Lauj;->f:Lcom/google/android/projection/protocol/AudioSink;

    .line 74
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_13
    iget-object v0, p0, Laua;->a:Ldny;

    .line 75
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laus;

    iget-object v0, v0, Laus;->d:Lauj;

    .line 76
    invoke-static {v0}, Lhg;->n(Lauj;)Lclk;

    move-result-object v0

    .line 77
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
