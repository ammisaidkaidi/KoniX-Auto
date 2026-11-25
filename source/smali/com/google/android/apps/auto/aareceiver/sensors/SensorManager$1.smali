.class public Lcom/google/android/apps/auto/aareceiver/sensors/SensorManager$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzj;


# instance fields
.field final synthetic a:Lazm;


# direct methods
.method public constructor <init>(Lazm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/sensors/SensorManager$1;->a:Lazm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/sensors/SensorManager$1;->a:Lazm;

    iget-object v1, v0, Lazm;->c:Lcqh;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Lazj;

    iget-object v5, v0, Lazm;->d:Lcqz;

    .line 3
    invoke-virtual {v5, v4}, Lcqz;->b(Ljava/lang/Object;)Lcqw;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Lcqw;->size()I

    move-result v6

    invoke-static {v6}, Lcqk;->f(I)Lcqi;

    move-result-object v6

    .line 5
    invoke-virtual {v5}, Lcqw;->e()Lcst;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lckw;

    .line 6
    sget-object v8, Lckw;->a:Lckw;

    invoke-virtual {v7}, Lckw;->ordinal()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 15
    new-instance v0, Ljava/lang/AssertionError;

    .line 16
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6
    :pswitch_0
    sget-object v8, Lazm;->a:Lcsz;

    invoke-virtual {v8}, Lcsv;->b()Lctq;

    move-result-object v8

    const-string v9, "com/google/android/apps/auto/aareceiver/sensors/SensorManager"

    const-string v10, "createRateLimiterForSensor"

    const/16 v11, 0xcd

    const-string v12, "SensorManager.java"

    .line 7
    invoke-interface {v8, v9, v10, v11, v12}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v8

    check-cast v8, Lcsx;

    const-string v9, "Not reporting deprecated sensor %d"

    iget v10, v7, Lckw;->w:I

    invoke-interface {v8, v9, v10}, Lcsx;->o(Ljava/lang/String;I)V

    const/4 v8, 0x0

    goto :goto_2

    .line 8
    :pswitch_1
    new-instance v8, Lazl;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10}, Ldao;->a(D)Ldao;

    move-result-object v9

    invoke-direct {v8, v9}, Lazl;-><init>(Ldao;)V

    goto :goto_2

    .line 9
    :pswitch_2
    new-instance v8, Lazl;

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    invoke-static {v9, v10}, Ldao;->a(D)Ldao;

    move-result-object v9

    invoke-direct {v8, v9}, Lazl;-><init>(Ldao;)V

    goto :goto_2

    .line 8
    :pswitch_3
    sget-object v8, Lazm;->b:Lj$/util/function/BooleanSupplier;

    .line 7
    :goto_2
    if-eqz v8, :cond_0

    .line 10
    invoke-virtual {v6, v7, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v6}, Lcqi;->c()Lcqk;

    move-result-object v5

    iget-object v6, v0, Lazm;->e:Lcom/google/android/projection/protocol/SensorSource;

    iget-object v7, v4, Lazj;->f:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, v4, Lazj;->h:Lcqk;

    .line 12
    invoke-virtual {v8}, Lcqk;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 11
    invoke-virtual {v4}, Lazj;->e()V

    :cond_2
    iput-object v6, v4, Lazj;->g:Lcom/google/android/projection/protocol/SensorSource;

    iput-object v5, v4, Lazj;->h:Lcqk;

    .line 13
    invoke-virtual {v5}, Lcqk;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 14
    invoke-virtual {v5}, Lcqk;->l()Lcqw;

    move-result-object v5

    .line 11
    invoke-virtual {v4, v5}, Lazj;->c(Lcqw;)V

    .line 15
    :cond_3
    monitor-exit v7

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/sensors/SensorManager$1;->a:Lazm;

    iget-object v0, v0, Lazm;->c:Lcqh;

    invoke-virtual {v0}, Lcqh;->h()Lcqh;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1
    check-cast v3, Lazj;

    .line 3
    invoke-virtual {v3}, Lazj;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method
