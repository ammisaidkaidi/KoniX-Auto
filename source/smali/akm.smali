.class final Lakm;
.super Lady;
.source "PG"


# direct methods
.method public constructor <init>(Laee;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lady;-><init>(Laee;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lafn;Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    check-cast v0, Lakk;

    .line 2
    iget-object v2, v0, Lakk;->b:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1, v3}, Lafm;->e(I)V

    goto :goto_0

    .line 9
    :cond_0
    nop

    .line 4
    invoke-virtual {v1, v3, v2}, Lafm;->f(ILjava/lang/String;)V

    .line 3
    :goto_0
    nop

    .line 5
    iget v2, v0, Lakk;->q:I

    invoke-static {v2}, Lfw;->e(I)I

    move-result v2

    int-to-long v4, v2

    .line 6
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, v5}, Lafm;->d(IJ)V

    .line 7
    iget-object v4, v0, Lakk;->c:Ljava/lang/String;

    const/4 v5, 0x3

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {v1, v5}, Lafm;->e(I)V

    goto :goto_1

    .line 12
    :cond_1
    nop

    .line 9
    invoke-virtual {v1, v5, v4}, Lafm;->f(ILjava/lang/String;)V

    .line 10
    :goto_1
    iget-object v4, v0, Lakk;->d:Ljava/lang/String;

    const/4 v6, 0x4

    if-nez v4, :cond_2

    .line 11
    invoke-virtual {v1, v6}, Lafm;->e(I)V

    goto :goto_2

    .line 15
    :cond_2
    nop

    .line 12
    invoke-virtual {v1, v6, v4}, Lafm;->f(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v4, v0, Lakk;->e:Lagk;

    invoke-static {v4}, Lagk;->c(Lagk;)[B

    move-result-object v4

    const/4 v7, 0x5

    if-nez v4, :cond_3

    .line 14
    invoke-virtual {v1, v7}, Lafm;->e(I)V

    goto :goto_3

    .line 18
    :cond_3
    nop

    .line 15
    invoke-virtual {v1, v7, v4}, Lafm;->c(I[B)V

    .line 16
    :goto_3
    iget-object v4, v0, Lakk;->f:Lagk;

    invoke-static {v4}, Lagk;->c(Lagk;)[B

    move-result-object v4

    const/4 v8, 0x6

    if-nez v4, :cond_4

    .line 17
    invoke-virtual {v1, v8}, Lafm;->e(I)V

    goto :goto_4

    .line 68
    :cond_4
    nop

    .line 18
    invoke-virtual {v1, v8, v4}, Lafm;->c(I[B)V

    .line 17
    :goto_4
    const/4 v4, 0x7

    .line 19
    iget-wide v9, v0, Lakk;->g:J

    invoke-virtual {v1, v4, v9, v10}, Lafm;->d(IJ)V

    const/16 v4, 0x8

    .line 20
    iget-wide v9, v0, Lakk;->h:J

    invoke-virtual {v1, v4, v9, v10}, Lafm;->d(IJ)V

    const/16 v4, 0x9

    .line 21
    iget-wide v9, v0, Lakk;->i:J

    invoke-virtual {v1, v4, v9, v10}, Lafm;->d(IJ)V

    const/16 v4, 0xa

    .line 22
    iget v9, v0, Lakk;->k:I

    int-to-long v9, v9

    invoke-virtual {v1, v4, v9, v10}, Lafm;->d(IJ)V

    .line 23
    iget v4, v0, Lakk;->r:I

    add-int/lit8 v9, v4, -0x1

    if-eqz v4, :cond_e

    const-string v11, " to int"

    const-string v12, "Could not convert "

    const/4 v13, 0x0

    packed-switch v9, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch v4, :pswitch_data_1

    const-string v2, "LINEAR"

    goto/16 :goto_12

    :pswitch_0
    const/4 v4, 0x1

    goto :goto_5

    .line 68
    :pswitch_1
    const/4 v4, 0x0

    .line 70
    :goto_5
    const/16 v9, 0xb

    int-to-long v14, v4

    .line 25
    invoke-virtual {v1, v9, v14, v15}, Lafm;->d(IJ)V

    const/16 v4, 0xc

    .line 26
    iget-wide v14, v0, Lakk;->l:J

    invoke-virtual {v1, v4, v14, v15}, Lafm;->d(IJ)V

    const/16 v4, 0xd

    .line 27
    iget-wide v14, v0, Lakk;->m:J

    invoke-virtual {v1, v4, v14, v15}, Lafm;->d(IJ)V

    const/16 v4, 0xe

    .line 28
    iget-wide v14, v0, Lakk;->n:J

    invoke-virtual {v1, v4, v14, v15}, Lafm;->d(IJ)V

    const/16 v4, 0xf

    .line 29
    iget-wide v14, v0, Lakk;->o:J

    invoke-virtual {v1, v4, v14, v15}, Lafm;->d(IJ)V

    const/16 v4, 0x10

    .line 30
    iget-boolean v9, v0, Lakk;->p:Z

    int-to-long v14, v9

    .line 31
    invoke-virtual {v1, v4, v14, v15}, Lafm;->d(IJ)V

    .line 32
    iget v4, v0, Lakk;->s:I

    add-int/lit8 v9, v4, -0x1

    if-eqz v4, :cond_d

    packed-switch v9, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch v4, :pswitch_data_3

    const-string v2, "DROP_WORK_REQUEST"

    goto/16 :goto_11

    :pswitch_2
    const/4 v4, 0x1

    goto :goto_6

    .line 68
    :pswitch_3
    const/4 v4, 0x0

    .line 69
    :goto_6
    const/16 v9, 0x11

    int-to-long v14, v4

    .line 34
    invoke-virtual {v1, v9, v14, v15}, Lafm;->d(IJ)V

    .line 35
    iget-object v0, v0, Lakk;->j:Lagh;

    const/16 v4, 0x18

    const/16 v9, 0x17

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/16 v2, 0x14

    const/16 v3, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x19

    if-eqz v0, :cond_c

    iget v7, v0, Lagh;->i:I

    add-int/lit8 v16, v7, -0x1

    if-eqz v7, :cond_b

    packed-switch v16, :pswitch_data_4

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1e

    if-lt v13, v10, :cond_a

    if-ne v7, v8, :cond_a

    const/4 v13, 0x5

    goto :goto_7

    .line 58
    :pswitch_4
    const/4 v13, 0x4

    goto :goto_7

    :pswitch_5
    const/4 v13, 0x3

    goto :goto_7

    :pswitch_6
    const/4 v13, 0x2

    goto :goto_7

    :pswitch_7
    const/4 v13, 0x1

    goto :goto_7

    :pswitch_8
    nop

    .line 35
    :goto_7
    int-to-long v7, v13

    .line 38
    invoke-virtual {v1, v5, v7, v8}, Lafm;->d(IJ)V

    iget-boolean v5, v0, Lagh;->b:Z

    int-to-long v7, v5

    .line 39
    invoke-virtual {v1, v3, v7, v8}, Lafm;->d(IJ)V

    iget-boolean v3, v0, Lagh;->c:Z

    int-to-long v7, v3

    .line 40
    invoke-virtual {v1, v2, v7, v8}, Lafm;->d(IJ)V

    iget-boolean v2, v0, Lagh;->d:Z

    int-to-long v2, v2

    .line 41
    invoke-virtual {v1, v15, v2, v3}, Lafm;->d(IJ)V

    iget-boolean v2, v0, Lagh;->e:Z

    int-to-long v2, v2

    .line 42
    invoke-virtual {v1, v14, v2, v3}, Lafm;->d(IJ)V

    iget-wide v2, v0, Lagh;->f:J

    .line 43
    invoke-virtual {v1, v9, v2, v3}, Lafm;->d(IJ)V

    iget-wide v2, v0, Lagh;->g:J

    .line 44
    invoke-virtual {v1, v4, v2, v3}, Lafm;->d(IJ)V

    iget-object v0, v0, Lagh;->h:Lagj;

    .line 45
    invoke-virtual {v0}, Lagj;->a()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v10, 0x0

    goto/16 :goto_d

    .line 46
    :cond_5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    invoke-virtual {v0}, Lagj;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, v0, Lagj;->a:Ljava/util/Set;

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lagi;

    iget-object v5, v4, Lagi;->a:Landroid/net/Uri;

    .line 50
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v4, v4, Lagi;->b:Z

    .line 51
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 52
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    .line 57
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 53
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :goto_9
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_c

    .line 57
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v10, v3

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v10, v3

    goto :goto_a

    .line 54
    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    goto :goto_e

    .line 37
    :catch_2
    move-exception v0

    const/4 v10, 0x0

    .line 56
    :goto_a
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v10, :cond_7

    .line 52
    :try_start_5
    invoke-virtual {v10}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    .line 55
    :catch_3
    move-exception v0

    move-object v3, v0

    .line 53
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_7
    :goto_b
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    .line 53
    :catch_4
    move-exception v0

    move-object v3, v0

    .line 55
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :goto_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 45
    :goto_d
    if-nez v10, :cond_8

    .line 59
    invoke-virtual {v1, v6}, Lafm;->e(I)V

    return-void

    :cond_8
    nop

    .line 60
    invoke-virtual {v1, v6, v10}, Lafm;->c(I[B)V

    return-void

    .line 55
    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 54
    :goto_e
    if-eqz v10, :cond_9

    .line 52
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_f

    .line 55
    :catch_5
    move-exception v0

    move-object v3, v0

    .line 53
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_9
    :goto_f
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_10

    .line 53
    :catch_6
    move-exception v0

    move-object v2, v0

    .line 55
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    :goto_10
    throw v1

    .line 36
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lez;->n(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_b
    nop

    .line 36
    const/4 v1, 0x0

    throw v1

    .line 58
    :cond_c
    nop

    .line 61
    invoke-virtual {v1, v5}, Lafm;->e(I)V

    .line 62
    invoke-virtual {v1, v3}, Lafm;->e(I)V

    .line 63
    invoke-virtual {v1, v2}, Lafm;->e(I)V

    .line 64
    invoke-virtual {v1, v15}, Lafm;->e(I)V

    .line 65
    invoke-virtual {v1, v14}, Lafm;->e(I)V

    .line 66
    invoke-virtual {v1, v9}, Lafm;->e(I)V

    .line 67
    invoke-virtual {v1, v4}, Lafm;->e(I)V

    .line 68
    invoke-virtual {v1, v6}, Lafm;->e(I)V

    return-void

    .line 33
    :pswitch_9
    const-string v2, "RUN_AS_NON_EXPEDITED_WORK_REQUEST"

    .line 69
    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_d
    nop

    .line 33
    const/4 v1, 0x0

    throw v1

    .line 24
    :pswitch_a
    const-string v2, "EXPONENTIAL"

    .line 70
    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_e
    nop

    .line 24
    const/4 v1, 0x0

    goto :goto_14

    :goto_13
    throw v1

    :goto_14
    goto :goto_13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
