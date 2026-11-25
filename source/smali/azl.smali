.class public final Lazl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/BooleanSupplier;


# instance fields
.field final a:Ldao;


# direct methods
.method public constructor <init>(Ldao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazl;->a:Ldao;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    iget-object v0, v1, Lazl;->a:Ldao;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2
    invoke-virtual {v0}, Ldao;->b()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v7, v0, Ldao;->a:Ldan;

    .line 3
    invoke-virtual {v7}, Ldan;->a()J

    move-result-wide v7

    iget-wide v9, v0, Ldao;->e:J

    sub-long/2addr v9, v5

    cmp-long v11, v9, v7

    if-gtz v11, :cond_6

    .line 4
    invoke-virtual {v0, v7, v8}, Ldao;->c(J)V

    iget-wide v9, v0, Ldao;->e:J

    iget-wide v11, v0, Ldao;->b:D

    .line 5
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    sub-double/2addr v13, v11

    iget-wide v5, v0, Ldao;->d:D

    mul-double v13, v13, v5

    double-to-long v5, v13

    iget-wide v13, v0, Ldao;->e:J

    add-long v16, v13, v5

    xor-long/2addr v5, v13

    cmp-long v18, v5, v3

    if-gez v18, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 12
    :cond_0
    const/4 v5, 0x0

    .line 5
    :goto_0
    xor-long v13, v13, v16

    cmp-long v6, v13, v3

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 12
    :cond_1
    const/4 v6, 0x0

    .line 5
    :goto_1
    or-int/2addr v5, v6

    if-eqz v5, :cond_2

    move-wide/from16 v5, v16

    goto :goto_2

    .line 12
    :cond_2
    const/16 v5, 0x3f

    ushr-long v5, v16, v5

    const-wide/16 v13, 0x1

    xor-long/2addr v5, v13

    const-wide v13, 0x7fffffffffffffffL

    add-long v16, v5, v13

    move-wide/from16 v5, v16

    .line 5
    :goto_2
    iput-wide v5, v0, Ldao;->e:J

    iget-wide v5, v0, Ldao;->b:D

    sub-double/2addr v5, v11

    iput-wide v5, v0, Ldao;->b:D

    sub-long/2addr v9, v7

    .line 6
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    cmp-long v0, v5, v3

    if-lez v0, :cond_5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    :try_start_1
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-long/2addr v4, v2

    const/4 v15, 0x0

    :goto_3
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v15, :cond_3

    const/4 v5, 0x1

    goto :goto_5

    .line 12
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v2, 0x1

    return v2

    .line 11
    :catchall_0
    move-exception v0

    move v5, v15

    goto :goto_4

    .line 13
    :catch_0
    move-exception v0

    const/4 v2, 0x1

    .line 11
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sub-long v6, v4, v6

    move-wide v2, v6

    const/4 v15, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v5, 0x1

    goto :goto_4

    .line 7
    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 13
    :cond_4
    throw v0

    .line 12
    :cond_5
    const/4 v2, 0x1

    const/4 v5, 0x1

    goto :goto_5

    .line 14
    :cond_6
    :try_start_4
    monitor-exit v2

    const/4 v5, 0x0

    .line 10
    :goto_5
    return v5

    .line 14
    :catchall_3
    move-exception v0

    .line 7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
