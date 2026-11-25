.class public final synthetic Lcer;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcew;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcew;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcer;->a:Lcew;

    iput-object p2, p0, Lcer;->b:Ljava/lang/String;

    iput-object p3, p0, Lcer;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    const-string v2, ""

    const-string v3, " "

    iget-object v4, v1, Lcer;->a:Lcew;

    iget-object v5, v1, Lcer;->b:Ljava/lang/String;

    iget-object v6, v1, Lcer;->c:Ljava/lang/String;

    :try_start_0
    iget-object v7, v4, Lcew;->a:Landroid/content/Context;

    invoke-static {v7}, Lbps;->c(Landroid/content/Context;)Lbps;

    move-result-object v7
    :try_end_0
    .catch Lbpt; {:try_start_0 .. :try_end_0} :catch_5

    .line 2
    :try_start_1
    new-instance v8, Lbpz;

    iget-object v9, v4, Lcew;->c:Ljava/lang/String;

    invoke-direct {v8, v5, v6, v5, v9}, Lbpz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Lcew;->a:Landroid/content/Context;

    iget-object v5, v8, Lbpz;->c:Ljava/lang/String;

    const/16 v6, 0x733c

    if-eqz v5, :cond_2e

    .line 3
    iget-object v9, v8, Lbpz;->e:Ljava/lang/String;

    if-eqz v9, :cond_2d

    .line 4
    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1f

    if-nez v5, :cond_1

    :try_start_2
    iget-object v5, v8, Lbpz;->c:Ljava/lang/String;

    const-string v9, "com.google.EMPTY"

    .line 5
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v2, Lbpt;

    const-string v3, "Invalid alternate configuration name"

    .line 140
    invoke-direct {v2, v6, v3}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v21, v7

    goto/16 :goto_24

    .line 5
    :cond_1
    :goto_0
    :try_start_3
    iget-object v5, v8, Lbpz;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1f

    if-nez v5, :cond_3

    :try_start_4
    iget-object v5, v8, Lbpz;->d:Ljava/lang/String;

    invoke-static {v5, v4}, Lbpv;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    new-instance v2, Lbpt;

    const-string v3, "Invalid user"

    .line 139
    invoke-direct {v2, v6, v3}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6
    :cond_3
    :goto_1
    :try_start_5
    const-class v4, Lbpz;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "transaction"

    iget-object v9, v8, Lbpz;->c:Ljava/lang/String;

    .line 8
    invoke-static {v4, v5, v9}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v7}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 10
    invoke-static {v4}, Lbps;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v5, v8, Lbpz;->c:Ljava/lang/String;

    iget-object v9, v8, Lbpz;->f:Ljava/lang/String;

    .line 11
    invoke-static {v5, v9}, Lre;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lbpz;->c:Ljava/lang/String;

    iget-object v5, v8, Lbpz;->e:Ljava/lang/String;

    iget-object v9, v8, Lbpz;->f:Ljava/lang/String;

    .line 12
    invoke-static {v5, v9}, Lre;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lbpz;->e:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1f

    :try_start_6
    iget-object v5, v8, Lbpz;->c:Ljava/lang/String;

    iget-object v9, v8, Lbpz;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6
    .catch Lbpt; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1c

    const/4 v9, 0x1

    const/4 v15, 0x0

    if-nez v5, :cond_7

    :try_start_7
    iget-object v5, v8, Lbpz;->c:Ljava/lang/String;

    const-class v10, Lbpz;

    .line 14
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "hasLogSources"

    .line 15
    invoke-static {v10, v11, v5}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lbpt; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    new-array v12, v9, [Ljava/lang/String;

    const-string v10, "packageName"

    aput-object v10, v12, v15

    new-array v14, v9, [Ljava/lang/String;

    aput-object v5, v14, v15

    const-string v11, "LogSources"

    const-string v13, "packageName = ?"

    const/4 v5, 0x0

    const/16 v16, 0x0

    const-string v17, "1"

    .line 16
    move-object v10, v4

    move-object v15, v5

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 17
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v5, :cond_4

    .line 19
    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 20
    :cond_4
    :try_start_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-gtz v10, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    new-instance v2, Lbpt;

    const-string v3, "Alternate package cannot have log sources"

    .line 134
    invoke-direct {v2, v6, v3}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_b
    .catch Lbpt; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 21
    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_6

    .line 18
    :try_start_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_2

    .line 136
    :catchall_2
    move-exception v0

    .line 18
    :cond_6
    :goto_2
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 137
    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 20
    :try_start_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 21
    throw v2
    :try_end_e
    .catch Lbpt; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 132
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v9, v4

    move-object/from16 v21, v7

    goto/16 :goto_22

    .line 139
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v9, v4

    move-object/from16 v21, v7

    goto/16 :goto_20

    .line 20
    :cond_7
    :goto_3
    :try_start_f
    iget-object v5, v8, Lbpz;->e:Ljava/lang/String;

    .line 22
    invoke-static {v5}, Lbpz;->d(Ljava/lang/String;)Z

    move-result v5
    :try_end_f
    .catch Lbpt; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1c

    if-eqz v5, :cond_9

    :try_start_10
    iget-object v5, v8, Lbpz;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Lbpt;

    iget-object v3, v8, Lbpz;->d:Ljava/lang/String;

    iget-object v5, v8, Lbpz;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2f

    .line 133
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Can\'t commit to "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for direct boot aware package "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_10
    .catch Lbpt; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_9
    :goto_4
    :try_start_11
    iget-object v5, v8, Lbpz;->c:Ljava/lang/String;

    iget-object v6, v8, Lbpz;->d:Ljava/lang/String;

    .line 23
    invoke-static {v4, v5, v6}, Lbpz;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, v8, Lbpz;->e:Ljava/lang/String;

    iget-object v10, v8, Lbpz;->d:Ljava/lang/String;

    .line 24
    invoke-static {v4, v6, v10}, Lbpz;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)[Lbpb;

    move-result-object v6
    :try_end_11
    .catch Lbpt; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1c

    const-string v10, "serverToken"

    const/4 v15, 0x0

    if-eqz v6, :cond_10

    :try_start_12
    array-length v11, v6

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_b

    .line 25
    aget-object v9, v6, v12

    .line 26
    iget-object v13, v9, Lbpb;->b:Ljava/lang/String;

    const-string v14, "__phenotype_server_token"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    iget v13, v9, Lbpb;->h:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_a

    new-instance v10, Lbpy;

    .line 27
    invoke-virtual {v9}, Lbpb;->c()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v13, 0x0

    invoke-direct {v10, v15, v9, v13, v14}, Lbpy;-><init>([BLjava/lang/String;J)V

    move-object v13, v2

    move-object v1, v10

    move-object/from16 v22, v15

    const/4 v9, 0x0

    const/4 v15, 0x2

    goto/16 :goto_a

    .line 89
    :cond_a
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    goto :goto_5

    .line 28
    :cond_b
    const-wide/16 v13, 0x0

    invoke-static {}, Ldlz;->c()Z

    move-result v9

    if-nez v9, :cond_c

    sget-object v10, Lbpy;->a:Lbpy;

    move-object v13, v2

    move-object v1, v10

    move-object/from16 v22, v15

    const/4 v9, 0x0

    const/4 v15, 0x2

    goto/16 :goto_a

    :cond_c
    const-class v9, Lbpz;

    .line 29
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "getUncommittedTokens_serverToken"

    iget-object v12, v8, Lbpz;->c:Ljava/lang/String;

    .line 30
    invoke-static {v9, v11, v12}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lbpt; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    const/4 v9, 0x1

    :try_start_13
    new-array v12, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v10, v12, v9

    const/4 v11, 0x3

    new-array v10, v11, [Ljava/lang/String;

    iget-object v11, v8, Lbpz;->c:Ljava/lang/String;

    aput-object v11, v10, v9

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v18, 0x1

    aput-object v11, v10, v18

    iget-object v11, v8, Lbpz;->d:Ljava/lang/String;

    const/16 v17, 0x2

    aput-object v11, v10, v17

    const-string v11, "ExperimentTokens"

    const-string v18, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 32
    move-object/from16 v23, v10

    move-object v10, v4

    const/16 v16, 0x3

    const/4 v14, 0x2

    move-object/from16 v13, v18

    move-object/from16 v14, v23

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 33
    :try_start_14
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_e

    new-instance v11, Lbpy;

    .line 36
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v15, v12, v13, v14}, Lbpy;-><init>([BLjava/lang/String;J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    if-eqz v10, :cond_d

    .line 34
    :try_start_15
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 35
    :cond_d
    :goto_6
    :try_start_16
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_16
    .catch Lbpt; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_7

    :cond_e
    const/4 v15, 0x0

    :try_start_17
    sget-object v11, Lbpy;->a:Lbpy;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    if-eqz v10, :cond_d

    .line 34
    :try_start_18
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_6

    .line 35
    :goto_7
    move-object v13, v2

    move-object v1, v11

    move-object/from16 v22, v15

    const/4 v15, 0x2

    goto/16 :goto_a

    .line 38
    :catchall_5
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_f

    .line 37
    :try_start_19
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    goto :goto_8

    .line 136
    :catchall_6
    move-exception v0

    .line 37
    :cond_f
    :goto_8
    :try_start_1a
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 81
    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 35
    :try_start_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    throw v2
    :try_end_1b
    .catch Lbpt; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 35
    :cond_10
    const/4 v9, 0x0

    :try_start_1c
    const-class v11, Lbpz;

    .line 39
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getUncommittedTokens_tokens"

    iget-object v13, v8, Lbpz;->c:Ljava/lang/String;

    .line 40
    invoke-static {v11, v12, v13}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Lbpt; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    const/4 v14, 0x3

    :try_start_1d
    new-array v12, v14, [Ljava/lang/String;

    const-string v11, "experimentToken"

    aput-object v11, v12, v9

    const/4 v11, 0x1

    aput-object v10, v12, v11

    const-string v10, "servingVersion"

    const/4 v13, 0x2

    aput-object v10, v12, v13

    new-array v11, v14, [Ljava/lang/String;

    iget-object v10, v8, Lbpz;->c:Ljava/lang/String;

    aput-object v10, v11, v9

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x1

    aput-object v10, v11, v16

    iget-object v10, v8, Lbpz;->d:Ljava/lang/String;

    aput-object v10, v11, v13

    const-string v16, "ExperimentTokens"

    const-string v17, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 42
    move-object v10, v4

    move-object/from16 v22, v11

    move-object/from16 v11, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v22

    move-object/from16 v22, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1b

    .line 43
    :try_start_1e
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_18

    if-eqz v11, :cond_12

    :try_start_1f
    new-instance v11, Lbpy;

    .line 46
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v13, v2

    const/4 v15, 0x2

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v11, v12, v14, v1, v2}, Lbpy;-><init>([BLjava/lang/String;J)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    if-eqz v10, :cond_11

    .line 44
    :try_start_20
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 45
    :cond_11
    :try_start_21
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_21
    .catch Lbpt; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    move-object v1, v11

    goto :goto_a

    .line 48
    :catchall_8
    move-exception v0

    move-object v1, v0

    move-object v9, v4

    move-object/from16 v21, v7

    goto/16 :goto_1a

    .line 45
    :cond_12
    move-object v13, v2

    const/4 v15, 0x2

    :try_start_22
    sget-object v1, Lbpy;->a:Lbpy;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_18

    if-eqz v10, :cond_13

    .line 44
    :try_start_23
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    goto :goto_9

    .line 37
    :catchall_9
    move-exception v0

    move-object v1, v0

    move-object v9, v4

    move-object/from16 v21, v7

    goto/16 :goto_1d

    .line 45
    :cond_13
    :goto_9
    :try_start_24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    :goto_a
    iget-object v2, v8, Lbpz;->e:Ljava/lang/String;

    iget-object v10, v8, Lbpz;->d:Ljava/lang/String;

    .line 49
    invoke-static {v4, v2, v10}, Lbps;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    const-string v10, "!"
    :try_end_24
    .catch Lbpt; {:try_start_24 .. :try_end_24} :catch_4
    .catchall {:try_start_24 .. :try_end_24} :catchall_1c

    if-eqz v2, :cond_14

    :try_start_25
    iget-object v11, v8, Lbpz;->e:Ljava/lang/String;

    .line 50
    iget-object v12, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 51
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v14, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 52
    const/4 v15, 0x1

    invoke-static {v4, v11, v12, v14, v15}, Lbpi;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v11
    :try_end_25
    .catch Lbpt; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    move-object v15, v11

    goto :goto_b

    .line 89
    :cond_14
    move-object/from16 v15, v22

    .line 52
    :goto_b
    :try_start_26
    iget-object v11, v8, Lbpz;->c:Ljava/lang/String;

    iget-object v12, v8, Lbpz;->d:Ljava/lang/String;

    .line 53
    invoke-static {v4, v11, v5, v12, v9}, Lbpi;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v11
    :try_end_26
    .catch Lbpt; {:try_start_26 .. :try_end_26} :catch_4
    .catchall {:try_start_26 .. :try_end_26} :catchall_1c

    if-eqz v6, :cond_16

    :try_start_27
    sget-object v12, Lbpz;->a:[Lbpb;
    :try_end_27
    .catch Lbpt; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    if-ne v6, v12, :cond_15

    const/4 v12, 0x1

    goto :goto_c

    .line 89
    :cond_15
    const/4 v12, 0x0

    goto :goto_c

    :cond_16
    const/4 v12, 0x1

    .line 54
    :goto_c
    :try_start_28
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_28
    .catch Lbpt; {:try_start_28 .. :try_end_28} :catch_4
    .catchall {:try_start_28 .. :try_end_28} :catchall_1c

    if-eqz v12, :cond_17

    if-eqz v10, :cond_17

    .line 55
    :try_start_29
    sget-object v10, Ldlz;->a:Ldlz;

    .line 56
    invoke-virtual {v10}, Ldlz;->b()Ldma;

    move-result-object v10

    invoke-interface {v10}, Ldma;->d()Z

    move-result v10
    :try_end_29
    .catch Lbpt; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    goto :goto_d

    .line 89
    :cond_17
    const/4 v10, 0x0

    .line 56
    :goto_d
    :try_start_2a
    iget-object v12, v8, Lbpz;->d:Ljava/lang/String;

    iget-object v14, v8, Lbpz;->c:Ljava/lang/String;

    .line 57
    move/from16 v16, v10

    invoke-static {v4, v14}, Lre;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    move-object/from16 v18, v13

    iget-object v13, v8, Lbpz;->e:Ljava/lang/String;
    :try_end_2a
    .catch Lbpt; {:try_start_2a .. :try_end_2a} :catch_4
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1c

    if-nez v15, :cond_18

    move-object/from16 v15, v18

    :cond_18
    :try_start_2b
    const-string v18, "1"

    const-string v20, "0"
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1f

    move-object/from16 v22, v6

    move-object/from16 v21, v7

    move/from16 v7, v16

    const/4 v6, 0x1

    if-eq v6, v7, :cond_19

    move-object/from16 v6, v20

    goto :goto_e

    :cond_19
    move-object/from16 v6, v18

    :goto_e
    :try_start_2c
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x26

    .line 58
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v16, v18

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v16, v18

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v16, v18

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v16, v18

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18
    :try_end_2c
    .catch Lbpt; {:try_start_2c .. :try_end_2c} :catch_2
    .catchall {:try_start_2c .. :try_end_2c} :catchall_17

    move-object/from16 v20, v1

    add-int v1, v16, v18

    move-object/from16 v18, v4

    :try_start_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_22

    .line 90
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 91
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Ljava/util/TreeSet;

    .line 92
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    new-instance v6, Ljava/util/TreeSet;

    sget-object v7, Lbpb;->a:Ljava/util/Comparator;

    .line 93
    invoke-direct {v6, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v7, v8, Lbpz;->e:Ljava/lang/String;
    :try_end_2d
    .catch Lbpt; {:try_start_2d .. :try_end_2d} :catch_1
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    .line 94
    move-object/from16 v9, v18

    :try_start_2e
    invoke-static {v9, v7}, Lbpx;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[Lbpb;

    move-result-object v7

    if-eqz v7, :cond_1a

    array-length v10, v7

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v10, :cond_1a

    .line 95
    aget-object v11, v7, v15

    .line 96
    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_1a
    const-class v7, Lbpz;

    .line 98
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "getDeltaConfigurations_committedFlags"

    iget-object v11, v8, Lbpz;->c:Ljava/lang/String;

    .line 99
    invoke-static {v7, v10, v11}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Lbpt; {:try_start_2e .. :try_end_2e} :catch_3
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1d

    .line 100
    :try_start_2f
    sget-object v7, Lbpk;->b:Lcol;

    .line 101
    invoke-interface {v7}, Lcol;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, [Ljava/lang/String;

    const/4 v7, 0x3

    new-array v14, v7, [Ljava/lang/String;

    iget-object v10, v8, Lbpz;->e:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v14, v11

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v14, v10

    const/4 v2, 0x2

    aput-object v3, v14, v2

    const-string v11, "Flags"

    const-string v13, "packageName = ? AND version = ? AND user = ? AND committed = 1"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "name"

    .line 103
    move-object v10, v9

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    .line 104
    :cond_1b
    :goto_10
    :try_start_30
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 105
    invoke-static {v3}, Lbpz;->c(Landroid/database/Cursor;)Lbpb;

    move-result-object v10

    .line 106
    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 107
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_d

    goto :goto_10

    :cond_1c
    if-eqz v3, :cond_1d

    .line 109
    :try_start_31
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_f

    .line 110
    :cond_1d
    :try_start_32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v3, Ljava/util/TreeSet;

    .line 112
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    new-instance v15, Ljava/util/TreeSet;

    sget-object v10, Lbpb;->a:Ljava/util/Comparator;

    .line 113
    invoke-direct {v15, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const-class v10, Lbpz;

    .line 114
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getDeltaConfigurations_pendingFlags"

    iget-object v12, v8, Lbpz;->c:Ljava/lang/String;

    .line 115
    invoke-static {v10, v11, v12}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Lbpt; {:try_start_32 .. :try_end_32} :catch_3
    .catchall {:try_start_32 .. :try_end_32} :catchall_1d

    :try_start_33
    sget-object v10, Lbpk;->b:Lcol;

    .line 116
    invoke-interface {v10}, Lcol;->a()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, [Ljava/lang/String;

    new-array v14, v7, [Ljava/lang/String;

    iget-object v7, v8, Lbpz;->c:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v14, v10

    .line 117
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v14, v7

    iget-object v5, v8, Lbpz;->d:Ljava/lang/String;

    aput-object v5, v14, v2

    const-string v11, "Flags"

    const-string v13, "packageName = ? AND version = ? AND user = ? AND committed = 0"

    const/4 v2, 0x0

    const/16 v16, 0x0

    const-string v17, "name"

    .line 118
    move-object v10, v9

    move-object v5, v15

    move-object v15, v2

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_c

    .line 119
    :goto_11
    :try_start_34
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 120
    invoke-static {v2}, Lbpz;->c(Landroid/database/Cursor;)Lbpb;

    move-result-object v7

    .line 121
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_a

    goto :goto_11

    :cond_1e
    if-eqz v2, :cond_1f

    .line 124
    :try_start_35
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_c

    .line 125
    :cond_1f
    :try_start_36
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 127
    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 128
    invoke-interface {v6, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 129
    move-object/from16 v4, v20

    const/4 v2, 0x1

    invoke-static {v3, v6, v1, v4, v2}, Lbpz;->b(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lbpy;Z)Lboz;

    move-result-object v1
    :try_end_36
    .catch Lbpt; {:try_start_36 .. :try_end_36} :catch_3
    .catchall {:try_start_36 .. :try_end_36} :catchall_1d

    goto/16 :goto_17

    .line 126
    :catchall_a
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_20

    .line 123
    :try_start_37
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_b

    goto :goto_12

    .line 136
    :catchall_b
    move-exception v0

    .line 123
    :cond_20
    :goto_12
    :try_start_38
    throw v1
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_c

    .line 100
    :catchall_c
    move-exception v0

    move-object v1, v0

    .line 125
    :try_start_39
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 126
    throw v1
    :try_end_39
    .catch Lbpt; {:try_start_39 .. :try_end_39} :catch_3
    .catchall {:try_start_39 .. :try_end_39} :catchall_1d

    .line 111
    :catchall_d
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_21

    .line 100
    :try_start_3a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_e

    goto :goto_13

    .line 136
    :catchall_e
    move-exception v0

    .line 100
    :cond_21
    :goto_13
    :try_start_3b
    throw v1
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_f

    .line 134
    :catchall_f
    move-exception v0

    move-object v1, v0

    .line 110
    :try_start_3c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 111
    throw v1

    .line 138
    :cond_22
    move-object/from16 v9, v18

    move-object/from16 v4, v20

    const/4 v2, 0x2

    const/4 v7, 0x3

    new-instance v3, Ljava/util/TreeSet;

    sget-object v6, Lbpb;->a:Ljava/util/Comparator;

    .line 59
    invoke-direct {v3, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const-class v6, Lbpz;

    .line 60
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v10, "getFullConfigurations_flags"

    iget-object v11, v8, Lbpz;->c:Ljava/lang/String;

    .line 61
    invoke-static {v6, v10, v11}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Lbpt; {:try_start_3c .. :try_end_3c} :catch_3
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1d

    .line 62
    :try_start_3d
    sget-object v6, Lbpk;->b:Lcol;

    .line 63
    invoke-interface {v6}, Lcol;->a()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, [Ljava/lang/String;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/String;

    iget-object v6, v8, Lbpz;->c:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v14, v10

    const-string v11, "Flags"

    const-string v13, "packageName = ?"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 64
    move-object v10, v9

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_15

    .line 65
    :goto_14
    :try_start_3e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 66
    invoke-static {v6}, Lbpz;->c(Landroid/database/Cursor;)Lbpb;

    move-result-object v10

    .line 67
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_13

    goto :goto_14

    :cond_23
    if-eqz v6, :cond_24

    .line 68
    :try_start_3f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_15

    .line 69
    :cond_24
    :try_start_40
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v6, Ljava/util/TreeSet;

    sget-object v10, Lbpb;->a:Ljava/util/Comparator;

    .line 71
    invoke-direct {v6, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const-class v10, Lbpz;

    .line 72
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getFullConfigurations_userFlags"

    iget-object v12, v8, Lbpz;->c:Ljava/lang/String;

    .line 73
    invoke-static {v10, v11, v12}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Lbpt; {:try_start_40 .. :try_end_40} :catch_3
    .catchall {:try_start_40 .. :try_end_40} :catchall_1d

    :try_start_41
    sget-object v10, Lbpk;->b:Lcol;

    .line 74
    invoke-interface {v10}, Lcol;->a()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, [Ljava/lang/String;

    new-array v14, v7, [Ljava/lang/String;

    iget-object v7, v8, Lbpz;->c:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v14, v10

    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v14, v7

    iget-object v5, v8, Lbpz;->d:Ljava/lang/String;

    aput-object v5, v14, v2

    const-string v11, "Flags"

    const-string v13, "packageName = ? AND version = ? AND user = ? AND committed = 0"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "name"

    .line 76
    move-object v10, v9

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_12

    .line 77
    :goto_15
    :try_start_42
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 78
    invoke-static {v2}, Lbpz;->c(Landroid/database/Cursor;)Lbpb;

    move-result-object v5

    .line 79
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_10

    goto :goto_15

    :cond_25
    if-eqz v2, :cond_26

    .line 82
    :try_start_43
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_12

    .line 83
    :cond_26
    :try_start_44
    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz v22, :cond_27

    move-object/from16 v2, v22

    array-length v5, v2

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v5, :cond_27

    .line 85
    aget-object v7, v2, v15

    .line 86
    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    :cond_27
    nop

    .line 89
    const/4 v2, 0x0

    invoke-static {v6, v3, v1, v4, v2}, Lbpz;->b(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lbpy;Z)Lboz;

    move-result-object v1

    .line 130
    :goto_17
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catch Lbpt; {:try_start_44 .. :try_end_44} :catch_3
    .catchall {:try_start_44 .. :try_end_44} :catchall_1d

    .line 131
    :try_start_45
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1e

    goto/16 :goto_21

    .line 84
    :catchall_10
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_28

    .line 81
    :try_start_46
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_11

    goto :goto_18

    .line 136
    :catchall_11
    move-exception v0

    .line 81
    :cond_28
    :goto_18
    :try_start_47
    throw v1
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_12

    .line 62
    :catchall_12
    move-exception v0

    move-object v1, v0

    .line 83
    :try_start_48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 84
    throw v1
    :try_end_48
    .catch Lbpt; {:try_start_48 .. :try_end_48} :catch_3
    .catchall {:try_start_48 .. :try_end_48} :catchall_1d

    .line 70
    :catchall_13
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_29

    .line 62
    :try_start_49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_14

    goto :goto_19

    .line 136
    :catchall_14
    move-exception v0

    .line 62
    :cond_29
    :goto_19
    :try_start_4a
    throw v1
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_15

    .line 123
    :catchall_15
    move-exception v0

    move-object v1, v0

    .line 69
    :try_start_4b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 70
    throw v1
    :try_end_4b
    .catch Lbpt; {:try_start_4b .. :try_end_4b} :catch_3
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1d

    .line 132
    :catchall_16
    move-exception v0

    move-object/from16 v9, v18

    goto :goto_1e

    .line 139
    :catch_1
    move-exception v0

    move-object/from16 v9, v18

    goto :goto_1f

    .line 132
    :catchall_17
    move-exception v0

    move-object v9, v4

    goto :goto_1e

    .line 139
    :catch_2
    move-exception v0

    move-object v9, v4

    goto :goto_1f

    .line 48
    :catchall_18
    move-exception v0

    move-object v9, v4

    move-object/from16 v21, v7

    move-object v1, v0

    :goto_1a
    if-eqz v10, :cond_2a

    .line 47
    :try_start_4c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_19

    goto :goto_1b

    .line 136
    :catchall_19
    move-exception v0

    .line 47
    :cond_2a
    :goto_1b
    :try_start_4d
    throw v1
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_1a

    .line 37
    :catchall_1a
    move-exception v0

    goto :goto_1c

    :catchall_1b
    move-exception v0

    move-object v9, v4

    move-object/from16 v21, v7

    :goto_1c
    move-object v1, v0

    .line 45
    :goto_1d
    :try_start_4e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 48
    throw v1
    :try_end_4e
    .catch Lbpt; {:try_start_4e .. :try_end_4e} :catch_3
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1d

    .line 139
    :catch_3
    move-exception v0

    goto :goto_1f

    .line 132
    :catchall_1c
    move-exception v0

    move-object v9, v4

    move-object/from16 v21, v7

    :goto_1e
    move-object v1, v0

    goto :goto_22

    .line 139
    :catch_4
    move-exception v0

    move-object v9, v4

    move-object/from16 v21, v7

    :goto_1f
    move-object v1, v0

    :goto_20
    :try_start_4f
    iget v2, v1, Lbpt;->a:I

    const/16 v3, 0x733f

    if-ne v2, v3, :cond_2c

    iget-object v2, v8, Lbpz;->c:Ljava/lang/String;

    iget-object v3, v8, Lbpz;->e:Ljava/lang/String;

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v1, Lbpz;->b:Lboz;
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1d

    .line 131
    :try_start_50
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 132
    :goto_21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {v1}, Lcew;->f(Lboz;)Lcem;

    move-result-object v1
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1e

    if-eqz v21, :cond_2b

    .line 138
    :try_start_51
    invoke-virtual/range {v21 .. v21}, Lbps;->close()V
    :try_end_51
    .catch Lbpt; {:try_start_51 .. :try_end_51} :catch_5

    :cond_2b
    return-object v1

    .line 136
    :cond_2c
    :try_start_52
    throw v1
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_1d

    .line 132
    :catchall_1d
    move-exception v0

    goto :goto_1e

    .line 131
    :goto_22
    :try_start_53
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 132
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 137
    throw v1

    .line 1
    :cond_2d
    move-object/from16 v21, v7

    new-instance v1, Lbpt;

    const-string v2, "No target package"

    .line 141
    invoke-direct {v1, v6, v2}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2
    :cond_2e
    move-object/from16 v21, v7

    new-instance v1, Lbpt;

    const-string v2, "No source package"

    .line 3
    invoke-direct {v1, v6, v2}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_1e

    .line 142
    :catchall_1e
    move-exception v0

    goto :goto_23

    :catchall_1f
    move-exception v0

    move-object/from16 v21, v7

    :goto_23
    move-object v1, v0

    :goto_24
    if-eqz v21, :cond_2f

    .line 1
    :try_start_54
    invoke-virtual/range {v21 .. v21}, Lbps;->close()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_20

    goto :goto_25

    .line 47
    :catchall_20
    move-exception v0

    .line 1
    :cond_2f
    :goto_25
    :try_start_55
    throw v1
    :try_end_55
    .catch Lbpt; {:try_start_55 .. :try_end_55} :catch_5

    .line 45
    :catch_5
    move-exception v0

    move-object v1, v0

    new-instance v2, Lcep;

    iget v3, v1, Lbpt;->a:I

    .line 142
    invoke-virtual {v1}, Lbpt;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcep;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :goto_26
    throw v2

    :goto_27
    goto :goto_26
.end method
