.class public final Lahh;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Schedulers"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;Lahx;)Lahg;
    .locals 2

    .line 1
    new-instance v0, Lair;

    invoke-direct {v0, p0, p1}, Lair;-><init>(Landroid/content/Context;Lahx;)V

    const-class p1, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 2
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lale;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 3
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lagr;->d([Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b(Lagf;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 35

    .line 1
    if-eqz p2, :cond_c

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v0

    .line 3
    invoke-virtual/range {p1 .. p1}, Laee;->f()V

    move-object/from16 v1, p0

    :try_start_0
    iget v1, v1, Lagf;->e:I

    const-string v1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 4
    const/4 v2, 0x1

    invoke-static {v1, v2}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v1

    const-wide/16 v3, 0x14

    .line 5
    invoke-virtual {v1, v2, v3, v4}, Laeh;->d(IJ)V

    .line 2
    move-object v3, v0

    check-cast v3, Lakv;

    iget-object v3, v3, Lakv;->a:Laee;

    .line 6
    invoke-virtual {v3}, Laee;->e()V

    .line 2
    move-object v3, v0

    check-cast v3, Lakv;

    iget-object v3, v3, Lakv;->a:Laee;

    .line 7
    invoke-virtual {v3, v1}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v4, "required_network_type"

    .line 8
    invoke-static {v3, v4}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_charging"

    .line 9
    invoke-static {v3, v5}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 10
    invoke-static {v3, v6}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 11
    invoke-static {v3, v7}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 12
    invoke-static {v3, v8}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 13
    invoke-static {v3, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 14
    invoke-static {v3, v10}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 15
    invoke-static {v3, v11}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 16
    invoke-static {v3, v12}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 17
    invoke-static {v3, v13}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 18
    invoke-static {v3, v14}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 19
    invoke-static {v3, v15}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    .line 20
    invoke-static {v3, v2}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v16, v0

    const-string v0, "output"

    .line 21
    invoke-static {v3, v0}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v1

    :try_start_2
    const-string v1, "initial_delay"

    .line 22
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "interval_duration"

    .line 23
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "flex_duration"

    .line 24
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "run_attempt_count"

    .line 25
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "backoff_policy"

    .line 26
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "backoff_delay_duration"

    .line 27
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "period_start_time"

    .line 28
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "minimum_retention_duration"

    .line 29
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "schedule_requested_at"

    .line 30
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "run_in_foreground"

    .line 31
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "out_of_quota_policy"

    .line 32
    invoke-static {v3, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    new-instance v1, Ljava/util/ArrayList;

    .line 33
    move/from16 v29, v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    move/from16 v30, v12

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 37
    move/from16 v31, v14

    new-instance v14, Lagh;

    invoke-direct {v14}, Lagh;-><init>()V

    .line 38
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 39
    move/from16 v33, v4

    invoke-static/range {v32 .. v32}, Lfw;->g(I)I

    move-result v4

    iput v4, v14, Lagh;->i:I

    .line 40
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v32, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 69
    :cond_1
    const/4 v4, 0x0

    .line 40
    :goto_1
    iput-boolean v4, v14, Lagh;->b:Z

    .line 41
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    .line 69
    :cond_2
    const/4 v4, 0x0

    .line 41
    :goto_2
    iput-boolean v4, v14, Lagh;->c:Z

    .line 42
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    .line 69
    :cond_3
    const/4 v4, 0x0

    .line 42
    :goto_3
    iput-boolean v4, v14, Lagh;->d:Z

    .line 43
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    .line 69
    :cond_4
    const/4 v4, 0x0

    .line 43
    :goto_4
    iput-boolean v4, v14, Lagh;->e:Z

    .line 44
    move/from16 v34, v5

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v14, Lagh;->f:J

    .line 45
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v14, Lagh;->g:J

    .line 46
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 47
    invoke-static {v4}, Lfw;->d([B)Lagj;

    move-result-object v4

    iput-object v4, v14, Lagh;->h:Lagj;

    .line 48
    new-instance v4, Lakk;

    invoke-direct {v4, v0, v12}, Lakk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 50
    invoke-static {v0}, Lfw;->i(I)I

    move-result v0

    iput v0, v4, Lakk;->q:I

    .line 51
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lakk;->d:Ljava/lang/String;

    .line 52
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 53
    invoke-static {v0}, Lagk;->a([B)Lagk;

    move-result-object v0

    iput-object v0, v4, Lakk;->e:Lagk;

    .line 54
    move/from16 v0, v29

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 55
    invoke-static {v5}, Lagk;->a([B)Lagk;

    move-result-object v5

    iput-object v5, v4, Lakk;->f:Lagk;

    .line 56
    move v12, v6

    move/from16 v5, v18

    move/from16 v18, v7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lakk;->g:J

    .line 57
    move/from16 v6, v19

    move/from16 v19, v8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lakk;->h:J

    .line 58
    move v8, v5

    move/from16 v7, v20

    move/from16 v20, v6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lakk;->i:J

    .line 59
    move/from16 v5, v21

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lakk;->k:I

    .line 60
    move/from16 v6, v22

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 61
    move/from16 v29, v0

    invoke-static/range {v21 .. v21}, Lfw;->f(I)I

    move-result v0

    iput v0, v4, Lakk;->r:I

    .line 62
    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lakk;->l:J

    .line 63
    move/from16 v23, v7

    move/from16 v5, v24

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lakk;->m:J

    .line 64
    move/from16 v24, v8

    move/from16 v6, v25

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lakk;->n:J

    .line 65
    move v8, v5

    move/from16 v25, v6

    move/from16 v7, v26

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lakk;->o:J

    .line 66
    move/from16 v5, v27

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    .line 69
    :cond_5
    const/4 v6, 0x0

    .line 66
    :goto_5
    iput-boolean v6, v4, Lakk;->p:Z

    .line 67
    move/from16 v6, v28

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 68
    move/from16 v27, v0

    invoke-static/range {v26 .. v26}, Lfw;->h(I)I

    move-result v0

    iput v0, v4, Lakk;->s:I

    iput-object v14, v4, Lakk;->j:Lagh;

    .line 69
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v28, v6

    move/from16 v26, v7

    move v6, v12

    move/from16 v7, v18

    move/from16 v18, v24

    move/from16 v12, v30

    move/from16 v14, v31

    move/from16 v4, v33

    move/from16 v24, v8

    move/from16 v8, v19

    move/from16 v19, v20

    move/from16 v20, v23

    move/from16 v23, v27

    move/from16 v27, v5

    move/from16 v5, v34

    goto/16 :goto_0

    .line 70
    :cond_6
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 71
    invoke-virtual/range {v17 .. v17}, Laeh;->i()V

    .line 73
    invoke-interface/range {v16 .. v16}, Lakl;->g()Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lakk;

    .line 77
    iget-object v5, v5, Lakk;->b:Ljava/lang/String;

    move-object/from16 v6, v16

    invoke-interface {v6, v5, v2, v3}, Lakl;->h(Ljava/lang/String;J)V

    move-object/from16 v16, v6

    goto :goto_6

    .line 78
    :cond_7
    invoke-virtual/range {p1 .. p1}, Laee;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 79
    invoke-virtual/range {p1 .. p1}, Laee;->g()V

    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lakk;

    .line 82
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lakk;

    .line 83
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lahg;

    .line 84
    invoke-interface {v3}, Lahg;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 85
    invoke-interface {v3, v1}, Lahg;->c([Lakk;)V

    goto :goto_7

    .line 86
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lakk;

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lakk;

    .line 89
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lahg;

    .line 90
    invoke-interface {v2}, Lahg;->d()Z

    move-result v3

    if-nez v3, :cond_a

    .line 91
    invoke-interface {v2, v0}, Lahg;->c([Lakk;)V

    goto :goto_8

    .line 92
    :cond_b
    return-void

    .line 91
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v17, v1

    .line 70
    :goto_9
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 71
    invoke-virtual/range {v17 .. v17}, Laeh;->i()V

    .line 72
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 79
    invoke-virtual/range {p1 .. p1}, Laee;->g()V

    .line 92
    throw v0

    .line 1
    :cond_c
    :goto_a
    return-void
.end method
