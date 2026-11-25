.class public final Lcgv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static volatile b:Ljava/util/Map;

.field private static final c:Ljava/lang/Object;

.field private static volatile d:Lciv;

.field private static final e:Ljava/lang/Object;

.field private static final f:Lcju;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcgv;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcgv;->c:Ljava/lang/Object;

    sput-object v0, Lcgv;->d:Lciv;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcgv;->e:Ljava/lang/Object;

    new-instance v0, Lcju;

    sget-object v1, Lcgw;->h:Lcgw;

    invoke-direct {v0, v1}, Lcju;-><init>(Lder;)V

    sput-object v0, Lcgv;->f:Lcju;

    return-void
.end method

.method static a(Lcem;)Lcgw;
    .locals 11

    .line 1
    sget-object v0, Lcgw;->h:Lcgw;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    if-nez p0, :cond_0

    .line 3
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Lcgw;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcem;->e:Lddr;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcen;

    .line 5
    sget-object v7, Lcgx;->e:Lcgx;

    .line 6
    invoke-virtual {v7}, Lddk;->n()Lddf;

    move-result-object v7

    iget-object v8, v2, Lcen;->d:Ljava/lang/String;

    iget-boolean v9, v7, Lddf;->c:Z

    if-eqz v9, :cond_1

    .line 5
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v6, v7, Lddf;->c:Z

    :cond_1
    iget-object v9, v7, Lddf;->b:Lddk;

    .line 7
    check-cast v9, Lcgx;

    .line 8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v9, Lcgx;->a:I

    or-int/2addr v10, v3

    iput v10, v9, Lcgx;->a:I

    iput-object v8, v9, Lcgx;->d:Ljava/lang/String;

    iget v8, v2, Lcen;->b:I

    invoke-static {v8}, Laga;->d(I)I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    if-eqz v8, :cond_e

    const/4 v8, 0x5

    const/4 v10, 0x3

    packed-switch v9, :pswitch_data_0

    .line 41
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    const-string v0, "No known flag type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :pswitch_0
    iget v3, v2, Lcen;->b:I

    if-ne v3, v8, :cond_2

    iget-object v2, v2, Lcen;->c:Ljava/lang/Object;

    .line 25
    check-cast v2, Ldcl;

    goto :goto_1

    .line 26
    :cond_2
    sget-object v2, Ldcl;->b:Ldcl;

    .line 25
    :goto_1
    iget-boolean v3, v7, Lddf;->c:Z

    if-eqz v3, :cond_3

    .line 27
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v6, v7, Lddf;->c:Z

    :cond_3
    iget-object v3, v7, Lddf;->b:Lddk;

    .line 28
    check-cast v3, Lcgx;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    iput v4, v3, Lcgx;->b:I

    iput-object v2, v3, Lcgx;->c:Ljava/lang/Object;

    goto/16 :goto_6

    .line 26
    :pswitch_1
    iget v3, v2, Lcen;->b:I

    if-ne v3, v4, :cond_4

    iget-object v2, v2, Lcen;->c:Ljava/lang/Object;

    .line 21
    check-cast v2, Ljava/lang/String;

    goto :goto_2

    .line 24
    :cond_4
    const-string v2, ""

    .line 21
    :goto_2
    iget-boolean v3, v7, Lddf;->c:Z

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v6, v7, Lddf;->c:Z

    :cond_5
    iget-object v3, v7, Lddf;->b:Lddk;

    .line 23
    check-cast v3, Lcgx;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v8, v3, Lcgx;->b:I

    iput-object v2, v3, Lcgx;->c:Ljava/lang/Object;

    goto/16 :goto_6

    .line 8
    :pswitch_2
    iget v3, v2, Lcen;->b:I

    if-ne v3, v10, :cond_6

    iget-object v2, v2, Lcen;->c:Ljava/lang/Object;

    .line 17
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_3

    .line 35
    :cond_6
    const-wide/16 v2, 0x0

    .line 17
    :goto_3
    iget-boolean v5, v7, Lddf;->c:Z

    if-eqz v5, :cond_7

    .line 18
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v6, v7, Lddf;->c:Z

    :cond_7
    iget-object v5, v7, Lddf;->b:Lddk;

    .line 19
    check-cast v5, Lcgx;

    iput v4, v5, Lcgx;->b:I

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v5, Lcgx;->c:Ljava/lang/Object;

    goto :goto_6

    .line 12
    :pswitch_3
    iget v3, v2, Lcen;->b:I

    if-ne v3, v5, :cond_8

    iget-object v2, v2, Lcen;->c:Ljava/lang/Object;

    .line 13
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_4

    .line 16
    :cond_8
    const/4 v2, 0x0

    .line 13
    :goto_4
    iget-boolean v3, v7, Lddf;->c:Z

    if-eqz v3, :cond_9

    .line 14
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v6, v7, Lddf;->c:Z

    :cond_9
    iget-object v3, v7, Lddf;->b:Lddk;

    .line 15
    check-cast v3, Lcgx;

    iput v10, v3, Lcgx;->b:I

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v3, Lcgx;->c:Ljava/lang/Object;

    goto :goto_6

    .line 35
    :pswitch_4
    iget v4, v2, Lcen;->b:I

    if-ne v4, v3, :cond_a

    iget-object v2, v2, Lcen;->c:Ljava/lang/Object;

    .line 9
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_5

    .line 12
    :cond_a
    const-wide/16 v2, 0x0

    .line 9
    :goto_5
    iget-boolean v4, v7, Lddf;->c:Z

    if-eqz v4, :cond_b

    .line 10
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v6, v7, Lddf;->c:Z

    :cond_b
    iget-object v4, v7, Lddf;->b:Lddk;

    .line 11
    check-cast v4, Lcgx;

    iput v5, v4, Lcgx;->b:I

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcgx;->c:Ljava/lang/Object;

    .line 30
    :goto_6
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Lcgx;

    iget-boolean v3, v0, Lddf;->c:Z

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v6, v0, Lddf;->c:Z

    :cond_c
    iget-object v3, v0, Lddf;->b:Lddk;

    .line 31
    check-cast v3, Lcgw;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcgw;->g:Lddr;

    .line 33
    invoke-interface {v4}, Lddr;->c()Z

    move-result v5

    if-nez v5, :cond_d

    .line 34
    invoke-static {v4}, Lddk;->z(Lddr;)Lddr;

    move-result-object v4

    iput-object v4, v3, Lcgw;->g:Lddr;

    :cond_d
    iget-object v3, v3, Lcgw;->g:Lddr;

    .line 35
    invoke-interface {v3, v2}, Lddr;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 44
    :cond_e
    const/4 p0, 0x0

    .line 43
    throw p0

    .line 24
    :cond_f
    iget-object v1, p0, Lcem;->d:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_10

    .line 36
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v6, v0, Lddf;->c:Z

    :cond_10
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 37
    check-cast v2, Lcgw;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v2, Lcgw;->a:I

    or-int/2addr v4, v7

    iput v4, v2, Lcgw;->a:I

    iput-object v1, v2, Lcgw;->d:Ljava/lang/String;

    iget-object v1, p0, Lcem;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/2addr v3, v4

    iput v3, v2, Lcgw;->a:I

    iput-object v1, v2, Lcgw;->b:Ljava/lang/String;

    iget-wide v7, p0, Lcem;->h:J

    or-int/lit8 v1, v3, 0x8

    iput v1, v2, Lcgw;->a:I

    iput-wide v7, v2, Lcgw;->e:J

    iget v3, p0, Lcem;->a:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_11

    iget-object p0, p0, Lcem;->c:Ldcl;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/2addr v1, v5

    iput v1, v2, Lcgw;->a:I

    iput-object p0, v2, Lcgw;->c:Ldcl;

    .line 41
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-boolean p0, v0, Lddf;->c:Z

    if-eqz p0, :cond_12

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v6, v0, Lddf;->c:Z

    .line 43
    :cond_12
    iget-object p0, v0, Lddf;->b:Lddk;

    .line 42
    check-cast p0, Lcgw;

    iget v3, p0, Lcgw;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcgw;->a:I

    iput-wide v1, p0, Lcgw;->f:J

    .line 41
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Lcgw;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static b(Landroid/content/Context;Ldai;)Lciv;
    .locals 4

    .line 1
    sget-object v0, Lcgv;->d:Lciv;

    if-nez v0, :cond_1

    sget-object v1, Lcgv;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcgv;->d:Lciv;

    if-nez v0, :cond_0

    new-instance v0, Lchm;

    new-instance v2, Ldhq;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ldhq;-><init>(Landroid/content/Context;[B)V

    new-instance p0, Lcho;

    invoke-direct {p0, v2, v3}, Lcho;-><init>(Ldhq;[B)V

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lchm;-><init>(Ljava/util/List;)V

    new-instance p0, Lciw;

    .line 3
    invoke-direct {p0}, Lciw;-><init>()V

    iput-object p1, p0, Lciw;->a:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lciw;->b:Lchm;

    sget-object p1, Lcjd;->a:Lcjr;

    const-string v0, "singleproc"

    iget-object v2, p0, Lciw;->c:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "There is already a factory registered for the ID %s"

    .line 5
    invoke-static {v2, v3, v0}, Lex;->o(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lciw;->c:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lciv;

    iget-object v0, p0, Lciw;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lciw;->b:Lchm;

    iget-object v3, p0, Lciw;->d:Lcjv;

    iget-object p0, p0, Lciw;->c:Ljava/util/HashMap;

    .line 7
    invoke-direct {p1, v0, v2, v3, p0}, Lciv;-><init>(Ljava/util/concurrent/Executor;Lchm;Lcjv;Ljava/util/Map;)V

    sput-object p1, Lcgv;->d:Lciv;

    move-object v0, p1

    goto :goto_0

    .line 8
    :cond_0
    nop

    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method static c(Lcgw;)Lcqk;
    .locals 12

    .line 1
    iget-object v0, p0, Lcgw;->g:Lddr;

    invoke-interface {v0}, Lddr;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    add-int/2addr v0, v2

    .line 2
    invoke-static {v0}, Lfv;->C(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iget-object v0, p0, Lcgw;->g:Lddr;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcgx;

    iget v5, v3, Lcgx;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/4 v10, 0x0

    goto :goto_1

    .line 11
    :pswitch_1
    const/4 v10, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v10, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v10, 0x3

    goto :goto_1

    :pswitch_4
    const/4 v10, 0x2

    goto :goto_1

    :pswitch_5
    const/4 v10, 0x1

    goto :goto_1

    :pswitch_6
    const/4 v10, 0x6

    .line 3
    :goto_1
    add-int/lit8 v11, v10, -0x1

    if-eqz v10, :cond_5

    packed-switch v11, :pswitch_data_1

    goto :goto_0

    .line 7
    :pswitch_7
    iget-object v4, v3, Lcgx;->d:Ljava/lang/String;

    if-ne v5, v9, :cond_0

    iget-object v3, v3, Lcgx;->c:Ljava/lang/Object;

    .line 12
    check-cast v3, Ldcl;

    goto :goto_2

    .line 13
    :cond_0
    sget-object v3, Ldcl;->b:Ldcl;

    .line 14
    :goto_2
    invoke-virtual {v3}, Ldcl;->C()[B

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :pswitch_8
    iget-object v4, v3, Lcgx;->d:Ljava/lang/String;

    if-ne v5, v7, :cond_1

    iget-object v3, v3, Lcgx;->c:Ljava/lang/Object;

    .line 10
    check-cast v3, Ljava/lang/String;

    goto :goto_3

    .line 11
    :cond_1
    const-string v3, ""

    :goto_3
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :pswitch_9
    iget-object v6, v3, Lcgx;->d:Ljava/lang/String;

    if-ne v5, v4, :cond_2

    iget-object v3, v3, Lcgx;->c:Ljava/lang/Object;

    .line 8
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_4

    .line 9
    :cond_2
    const-wide/16 v3, 0x0

    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :pswitch_a
    iget-object v4, v3, Lcgx;->d:Ljava/lang/String;

    if-ne v5, v2, :cond_3

    iget-object v3, v3, Lcgx;->c:Ljava/lang/Object;

    .line 6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_5

    .line 7
    :cond_3
    nop

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :pswitch_b
    iget-object v4, v3, Lcgx;->d:Ljava/lang/String;

    if-ne v5, v8, :cond_4

    iget-object v3, v3, Lcgx;->c:Ljava/lang/Object;

    .line 4
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_6

    .line 5
    :cond_4
    const-wide/16 v5, 0x0

    :goto_6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 27
    :cond_5
    const/4 p0, 0x0

    .line 15
    throw p0

    .line 11
    :cond_6
    iget-object v0, p0, Lcgw;->d:Ljava/lang/String;

    .line 16
    const-string v2, "__phenotype_server_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcgw;->b:Ljava/lang/String;

    .line 17
    const-string v2, "__phenotype_snapshot_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcgw;->e:J

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 19
    const-string v0, "__phenotype_configuration_version"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 21
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    goto :goto_7

    .line 15
    :cond_7
    nop

    .line 22
    :goto_7
    new-instance v1, Lcqi;

    .line 23
    invoke-direct {v1, v4}, Lcqi;-><init>(I)V

    if-eqz v0, :cond_8

    iget v0, v1, Lcqi;->b:I

    .line 24
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcqi;->e(I)V

    .line 25
    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 27
    :cond_9
    invoke-virtual {v1}, Lcqi;->c()Lcqk;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method static d(Lcdz;Ljava/lang/String;Ljava/lang/String;)Ldag;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcdz;->b()Lceo;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lceo;->c(Ljava/lang/String;Ljava/lang/String;)Ldag;

    move-result-object p1

    sget-object p2, Lcgt;->a:Lcgt;

    .line 2
    invoke-virtual {p0}, Lcdz;->d()Ldai;

    move-result-object p0

    .line 3
    invoke-static {p1, p2, p0}, Lcyt;->o(Ldag;Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcdz;Ljava/lang/String;Ljava/lang/String;Lcgw;ZZ)Ldag;
    .locals 2

    .line 1
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    if-nez p5, :cond_0

    iget-object p5, p0, Lcdz;->h:Landroid/content/Context;

    .line 2
    invoke-static {p5, p1}, Lcdw;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 3
    invoke-static {p0, p5, p2, p4}, Lcgv;->g(Lcdz;Ljava/lang/String;Ljava/lang/String;Z)Lcjp;

    move-result-object p5

    new-instance v0, Lcgs;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Lcgs;-><init>(Lcgw;I)V

    .line 4
    invoke-virtual {p0}, Lcdz;->d()Ldai;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcjp;->b(Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p5

    new-instance v0, Lcgu;

    invoke-direct {v0, p5, p1}, Lcgu;-><init>(Ldag;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcdz;->d()Ldai;

    move-result-object v1

    .line 6
    invoke-interface {p5, v0, v1}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    :cond_0
    invoke-static {p0, p1, p2, p4}, Lcgv;->g(Lcdz;Ljava/lang/String;Ljava/lang/String;Z)Lcjp;

    move-result-object p1

    new-instance p2, Lcgs;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcgs;-><init>(Lcgw;I)V

    .line 8
    invoke-virtual {p0}, Lcdz;->d()Ldai;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcjp;->b(Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/util/Map;
    .locals 10

    .line 1
    sget-object v0, Lcgv;->b:Ljava/util/Map;

    if-nez v0, :cond_6

    sget-object v1, Lcgv;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcgv;->b:Ljava/util/Map;

    if-nez v0, :cond_5

    invoke-static {}, Lcqk;->e()Lcqi;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "phenotype"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "phenotype/"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 8
    :cond_0
    new-instance v8, Ljava/lang/String;

    .line 3
    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_2
    .catch Lddu; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v7, Lcfn;

    .line 4
    invoke-static {}, Ldcz;->b()Ldcz;

    move-result-object v8

    .line 5
    sget-object v9, Lcfo;->g:Lcfo;

    .line 6
    invoke-static {v9, v6, v8}, Lddk;->q(Lddk;Ljava/io/InputStream;Ldcz;)Lddk;

    move-result-object v8

    check-cast v8, Lcfo;

    .line 5
    invoke-direct {v7, p0, v8}, Lcfn;-><init>(Landroid/content/Context;Lcfo;)V

    iget-object v8, v7, Lcfn;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v8, v7}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    .line 8
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Lddu; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 9
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_1

    .line 3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 9
    :catchall_1
    move-exception v6

    .line 3
    :cond_1
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Lddu; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 10
    :catch_0
    move-exception v6

    :try_start_7
    const-string v7, "SnapshotHandler"

    const-string v8, "Unable to read Phenotype PackageMetadata for "

    .line 9
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 3
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 9
    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v7, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 8
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :catch_1
    move-exception p0

    :try_start_8
    const-string v2, "SnapshotHandler"

    const-string v3, "Unable to read Phenotype PackageMetadata from assets."

    .line 10
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcqi;->c()Lcqk;

    move-result-object p0

    sput-object p0, Lcgv;->b:Ljava/util/Map;

    move-object v0, p0

    goto :goto_5

    .line 12
    :cond_5
    nop

    :goto_5
    monitor-exit v1

    goto :goto_6

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :cond_6
    :goto_6
    return-object v0
.end method

.method static g(Lcdz;Ljava/lang/String;Ljava/lang/String;Z)Lcjp;
    .locals 5

    .line 1
    invoke-static {}, Lcit;->a()Lcis;

    move-result-object v0

    iget-object v1, p0, Lcdz;->h:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lchq;->a(Landroid/content/Context;)Lchp;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lchp;->b()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pb"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v1, p1}, Lchp;->c(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 5
    sget p1, Lbtj;->a:I

    sget-object p1, Lchq;->d:Ljava/util/Set;

    .line 6
    const-string p2, "directboot-files"

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lchq;->d:Ljava/util/Set;

    aput-object v3, p3, v2

    const/4 v2, 0x1

    aput-object p2, p3, v2

    .line 7
    const-string v2, "The only supported locations are %s: %s"

    invoke-static {p1, v2, p3}, Lbvs;->q(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, v1, Lchp;->a:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-virtual {v1}, Lchp;->a()Landroid/net/Uri;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcis;->e(Landroid/net/Uri;)V

    .line 10
    sget-object p1, Lcgw;->h:Lcgw;

    invoke-virtual {v0, p1}, Lcis;->d(Lder;)V

    sget-object p1, Lcgv;->f:Lcju;

    .line 11
    invoke-virtual {v0, p1}, Lcis;->c(Lcim;)V

    .line 12
    invoke-virtual {v0}, Lcis;->b()V

    .line 13
    invoke-virtual {v0}, Lcis;->a()Lcit;

    move-result-object p1

    iget-object p2, p0, Lcdz;->h:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Lcdz;->d()Ldai;

    move-result-object p0

    invoke-static {p2, p0}, Lcgv;->b(Landroid/content/Context;Ldai;)Lciv;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lciv;->a(Lcit;)Lcjp;

    move-result-object p0

    return-object p0
.end method
