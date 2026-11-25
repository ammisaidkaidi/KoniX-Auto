.class public Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DiagnosticsWrkr"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static i(Lakx;Lakx;Lakc;Ljava/util/List;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Job Id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakk;

    .line 3
    iget-object v2, v1, Lakk;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lakc;->a(Ljava/lang/String;)Lajz;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget v2, v2, Lajz;->b:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_0
    move-object v2, v4

    .line 5
    :goto_1
    iget-object v5, v1, Lakk;->b:Ljava/lang/String;

    .line 6
    const-string v6, "SELECT name FROM workname WHERE work_spec_id=?"

    invoke-static {v6, v0}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v6

    if-nez v5, :cond_1

    .line 7
    invoke-virtual {v6, v0}, Laeh;->e(I)V

    goto :goto_2

    .line 20
    :cond_1
    nop

    .line 8
    invoke-virtual {v6, v0, v5}, Laeh;->f(ILjava/lang/String;)V

    .line 7
    :goto_2
    iget-object v5, p0, Lakx;->a:Laee;

    .line 9
    invoke-virtual {v5}, Laee;->e()V

    iget-object v5, p0, Lakx;->a:Laee;

    .line 10
    invoke-virtual {v5, v6}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 13
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 15
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v6}, Laeh;->i()V

    .line 17
    iget-object v5, v1, Lakk;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lakx;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 18
    const-string v6, ","

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    .line 20
    iget-object v8, v1, Lakk;->b:Ljava/lang/String;

    aput-object v8, v6, v3

    iget-object v8, v1, Lakk;->c:Ljava/lang/String;

    aput-object v8, v6, v0

    const/4 v8, 0x2

    aput-object v2, v6, v8

    iget v1, v1, Lakk;->q:I

    invoke-static {v1}, Lfv;->z(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    aput-object v2, v6, v1

    const/4 v1, 0x4

    aput-object v7, v6, v1

    const/4 v1, 0x5

    aput-object v5, v6, v1

    const-string v1, "\n%s\t %s\t %s\t %s\t %s\t %s\t"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_0

    .line 8
    :cond_3
    nop

    .line 22
    throw v4

    :catchall_0
    move-exception p0

    .line 15
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v6}, Laeh;->i()V

    .line 21
    throw p0

    :cond_4
    return-void
.end method


# virtual methods
.method public final h()Lex;
    .locals 38

    .line 1
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/work/ListenableWorker;->a:Landroid/content/Context;

    invoke-static {v0}, Lahx;->c(Landroid/content/Context;)Lahx;

    move-result-object v0

    iget-object v0, v0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->s()Lakx;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Lakx;

    move-result-object v4

    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()Lakc;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 7
    const-string v9, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v9

    sub-long/2addr v5, v7

    .line 8
    invoke-virtual {v9, v10, v5, v6}, Laeh;->d(IJ)V

    .line 2
    move-object v5, v2

    check-cast v5, Lakv;

    iget-object v6, v5, Lakv;->a:Laee;

    .line 9
    invoke-virtual {v6}, Laee;->e()V

    .line 2
    iget-object v5, v5, Lakv;->a:Laee;

    .line 10
    invoke-virtual {v5, v9}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v6, "required_network_type"

    .line 11
    invoke-static {v5, v6}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_charging"

    .line 12
    invoke-static {v5, v7}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_device_idle"

    .line 13
    invoke-static {v5, v8}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v11, "requires_battery_not_low"

    .line 14
    invoke-static {v5, v11}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "requires_storage_not_low"

    .line 15
    invoke-static {v5, v12}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "trigger_content_update_delay"

    .line 16
    invoke-static {v5, v13}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "trigger_max_content_delay"

    .line 17
    invoke-static {v5, v14}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "content_uri_triggers"

    .line 18
    invoke-static {v5, v15}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v10, "id"

    .line 19
    invoke-static {v5, v10}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v1, "state"

    .line 20
    invoke-static {v5, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v16, v0

    const-string v0, "worker_class_name"

    .line 21
    invoke-static {v5, v0}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v17, v3

    const-string v3, "input_merger_class_name"

    .line 22
    invoke-static {v5, v3}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v18, v4

    const-string v4, "input"

    .line 23
    invoke-static {v5, v4}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v19, v2

    const-string v2, "output"

    .line 24
    invoke-static {v5, v2}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v9

    :try_start_1
    const-string v9, "initial_delay"

    .line 25
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v21, v9

    const-string v9, "interval_duration"

    .line 26
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v22, v9

    const-string v9, "flex_duration"

    .line 27
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v23, v9

    const-string v9, "run_attempt_count"

    .line 28
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v24, v9

    const-string v9, "backoff_policy"

    .line 29
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v25, v9

    const-string v9, "backoff_delay_duration"

    .line 30
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v26, v9

    const-string v9, "period_start_time"

    .line 31
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v27, v9

    const-string v9, "minimum_retention_duration"

    .line 32
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v28, v9

    const-string v9, "schedule_requested_at"

    .line 33
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v29, v9

    const-string v9, "run_in_foreground"

    .line 34
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v30, v9

    const-string v9, "out_of_quota_policy"

    .line 35
    invoke-static {v5, v9}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    move/from16 v31, v9

    new-instance v9, Ljava/util/ArrayList;

    .line 36
    move/from16 v32, v2

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    move-object/from16 v33, v9

    if-eqz v2, :cond_5

    .line 38
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 40
    move/from16 v34, v0

    new-instance v0, Lagh;

    invoke-direct {v0}, Lagh;-><init>()V

    .line 41
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 42
    move/from16 v36, v6

    invoke-static/range {v35 .. v35}, Lfw;->g(I)I

    move-result v6

    iput v6, v0, Lagh;->i:I

    .line 43
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    .line 72
    :cond_0
    const/4 v6, 0x0

    .line 43
    :goto_1
    iput-boolean v6, v0, Lagh;->b:Z

    .line 44
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    .line 72
    :cond_1
    const/4 v6, 0x0

    .line 44
    :goto_2
    iput-boolean v6, v0, Lagh;->c:Z

    .line 45
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    .line 72
    :cond_2
    const/4 v6, 0x0

    .line 45
    :goto_3
    iput-boolean v6, v0, Lagh;->d:Z

    .line 46
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    .line 72
    :cond_3
    const/4 v6, 0x0

    .line 46
    :goto_4
    iput-boolean v6, v0, Lagh;->e:Z

    .line 47
    move/from16 v35, v7

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lagh;->f:J

    .line 48
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lagh;->g:J

    .line 49
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 50
    invoke-static {v6}, Lfw;->d([B)Lagj;

    move-result-object v6

    iput-object v6, v0, Lagh;->h:Lagj;

    .line 51
    new-instance v6, Lakk;

    invoke-direct {v6, v2, v9}, Lakk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 53
    invoke-static {v2}, Lfw;->i(I)I

    move-result v2

    iput v2, v6, Lakk;->q:I

    .line 54
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lakk;->d:Ljava/lang/String;

    .line 55
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 56
    invoke-static {v2}, Lagk;->a([B)Lagk;

    move-result-object v2

    iput-object v2, v6, Lakk;->e:Lagk;

    .line 57
    move/from16 v2, v32

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 58
    invoke-static {v7}, Lagk;->a([B)Lagk;

    move-result-object v7

    iput-object v7, v6, Lakk;->f:Lagk;

    .line 59
    move v9, v1

    move/from16 v32, v2

    move/from16 v7, v21

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lakk;->g:J

    .line 60
    move/from16 v21, v3

    move/from16 v1, v22

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lakk;->h:J

    .line 61
    move/from16 v22, v4

    move/from16 v2, v23

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v6, Lakk;->i:J

    .line 62
    move/from16 v3, v24

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v6, Lakk;->k:I

    .line 63
    move/from16 v4, v25

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 64
    move/from16 v24, v1

    invoke-static/range {v23 .. v23}, Lfw;->f(I)I

    move-result v1

    iput v1, v6, Lakk;->r:I

    .line 65
    move/from16 v23, v2

    move/from16 v25, v3

    move/from16 v1, v26

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lakk;->l:J

    .line 66
    move/from16 v26, v4

    move/from16 v2, v27

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v6, Lakk;->m:J

    .line 67
    move v4, v1

    move/from16 v27, v2

    move/from16 v3, v28

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lakk;->n:J

    .line 68
    move/from16 v28, v3

    move/from16 v1, v29

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lakk;->o:J

    .line 69
    move/from16 v2, v30

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    .line 72
    :cond_4
    const/4 v3, 0x0

    .line 69
    :goto_5
    iput-boolean v3, v6, Lakk;->p:Z

    .line 70
    move/from16 v3, v31

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 71
    move/from16 v30, v1

    invoke-static/range {v29 .. v29}, Lfw;->h(I)I

    move-result v1

    iput v1, v6, Lakk;->s:I

    iput-object v0, v6, Lakk;->j:Lagh;

    .line 72
    move-object/from16 v0, v33

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v31, v3

    move v1, v9

    move/from16 v3, v21

    move/from16 v29, v30

    move/from16 v6, v36

    move-object v9, v0

    move/from16 v30, v2

    move/from16 v21, v7

    move/from16 v0, v34

    move/from16 v7, v35

    move/from16 v37, v26

    move/from16 v26, v4

    move/from16 v4, v22

    move/from16 v22, v24

    move/from16 v24, v25

    move/from16 v25, v37

    goto/16 :goto_0

    .line 73
    :cond_5
    move-object/from16 v0, v33

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 74
    invoke-virtual/range {v20 .. v20}, Laeh;->i()V

    .line 76
    invoke-interface/range {v19 .. v19}, Lakl;->b()Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-interface/range {v19 .. v19}, Lakl;->g()Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 79
    invoke-static {}, Lagr;->a()Lagr;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-static {v4}, Lagr;->f([Ljava/lang/Throwable;)V

    .line 80
    invoke-static {}, Lagr;->a()Lagr;

    .line 81
    move-object/from16 v6, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-static {v4, v5, v6, v0}, Landroidx/work/impl/workers/DiagnosticsWorker;->i(Lakx;Lakx;Lakc;Ljava/util/List;)V

    new-array v0, v3, [Ljava/lang/Throwable;

    .line 80
    invoke-static {v0}, Lagr;->f([Ljava/lang/Throwable;)V

    goto :goto_6

    .line 78
    :cond_6
    move-object/from16 v6, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v3, 0x0

    .line 82
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 83
    invoke-static {}, Lagr;->a()Lagr;

    new-array v0, v3, [Ljava/lang/Throwable;

    invoke-static {v0}, Lagr;->f([Ljava/lang/Throwable;)V

    .line 84
    invoke-static {}, Lagr;->a()Lagr;

    invoke-static {v4, v5, v6, v1}, Landroidx/work/impl/workers/DiagnosticsWorker;->i(Lakx;Lakx;Lakc;Ljava/util/List;)V

    new-array v0, v3, [Ljava/lang/Throwable;

    invoke-static {v0}, Lagr;->f([Ljava/lang/Throwable;)V

    .line 85
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 86
    invoke-static {}, Lagr;->a()Lagr;

    new-array v0, v3, [Ljava/lang/Throwable;

    invoke-static {v0}, Lagr;->f([Ljava/lang/Throwable;)V

    .line 87
    invoke-static {}, Lagr;->a()Lagr;

    .line 88
    invoke-static {v4, v5, v6, v2}, Landroidx/work/impl/workers/DiagnosticsWorker;->i(Lakx;Lakx;Lakc;Ljava/util/List;)V

    new-array v0, v3, [Ljava/lang/Throwable;

    .line 87
    invoke-static {v0}, Lagr;->f([Ljava/lang/Throwable;)V

    .line 89
    :cond_8
    invoke-static {}, Lex;->h()Lex;

    move-result-object v0

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v20, v9

    .line 73
    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 74
    invoke-virtual/range {v20 .. v20}, Laeh;->i()V

    .line 75
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method
