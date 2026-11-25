.class public final synthetic Lcev;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcew;


# direct methods
.method public synthetic constructor <init>(Lcew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcev;->a:Lcew;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    iget-object v0, v1, Lcev;->a:Lcew;

    :try_start_0
    iget-object v2, v0, Lcew;->a:Landroid/content/Context;

    invoke-static {v2}, Lbps;->c(Landroid/content/Context;)Lbps;

    move-result-object v2
    :try_end_0
    .catch Lbpt; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lbpx;

    iget-object v0, v0, Lcew;->c:Ljava/lang/String;

    invoke-direct {v3, v0}, Lbpx;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lbpx;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 3
    invoke-virtual {v2}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 4
    invoke-static {v13}, Lbps;->g(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    :try_start_2
    iget-object v0, v3, Lbpx;->a:Ljava/lang/String;

    iget-object v4, v3, Lbpx;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0, v4}, Lre;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lbpx;->a:Ljava/lang/String;

    const-string v0, "all"

    iget-object v4, v3, Lbpx;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    const-string v4, "packageName"

    const/4 v12, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_6

    :try_start_3
    new-array v6, v12, [Ljava/lang/String;

    aput-object v4, v6, v11

    const-string v0, "version"

    aput-object v0, v6, v15

    const-string v0, "androidPackageName"

    aput-object v0, v6, v14

    const-string v5, "Packages"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 7
    move-object v4, v13

    const/4 v3, 0x0

    move-object v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    sget-object v5, Ldbt;->p:Ldbt;

    .line 11
    invoke-virtual {v5}, Lddk;->n()Lddf;

    move-result-object v5

    .line 12
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v5, Lddf;->c:Z

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v3, v5, Lddf;->c:Z

    :cond_0
    iget-object v7, v5, Lddf;->b:Lddk;

    .line 13
    check-cast v7, Ldbt;

    .line 14
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Ldbt;->a:I

    or-int/2addr v8, v15

    iput v8, v7, Ldbt;->a:I

    iput-object v6, v7, Ldbt;->d:Ljava/lang/String;

    .line 15
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iget-boolean v7, v5, Lddf;->c:Z

    if-eqz v7, :cond_1

    .line 16
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v3, v5, Lddf;->c:Z

    :cond_1
    iget-object v7, v5, Lddf;->b:Lddk;

    .line 17
    check-cast v7, Ldbt;

    iget v8, v7, Ldbt;->a:I

    or-int/2addr v8, v14

    iput v8, v7, Ldbt;->a:I

    iput v6, v7, Ldbt;->e:I

    .line 18
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v5, Lddf;->c:Z

    if-eqz v7, :cond_2

    .line 19
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v3, v5, Lddf;->c:Z

    :cond_2
    iget-object v7, v5, Lddf;->b:Lddk;

    .line 20
    check-cast v7, Ldbt;

    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x7

    iput v8, v7, Ldbt;->b:I

    iput-object v6, v7, Ldbt;->c:Ljava/lang/Object;

    .line 22
    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v5

    check-cast v5, Ldbt;

    new-instance v6, Lbpb;

    iget-object v7, v5, Ldbt;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {v5}, Ldbv;->h()[B

    move-result-object v5

    invoke-direct {v6, v7, v5, v3}, Lbpb;-><init>(Ljava/lang/String;[BI)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v5, Lboy;

    new-array v6, v3, [Lbpb;

    .line 24
    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbpb;

    new-array v6, v3, [Ljava/lang/String;

    invoke-direct {v5, v3, v0, v6}, Lboy;-><init>(I[Lbpb;[Ljava/lang/String;)V

    new-instance v0, Lboz;

    new-array v6, v15, [Lboy;

    aput-object v5, v6, v3

    const-string v17, ""

    const-string v18, ""

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    .line 25
    move-object/from16 v16, v0

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v23}, Lboz;-><init>(Ljava/lang/String;Ljava/lang/String;[Lboy;Z[BJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    .line 27
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    goto/16 :goto_a

    .line 63
    :cond_4
    goto/16 :goto_a

    .line 64
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v4, :cond_5

    .line 26
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 47
    :catchall_1
    move-exception v0

    .line 26
    :cond_5
    :goto_1
    :try_start_7
    throw v3

    .line 63
    :cond_6
    const/4 v0, 0x0

    iget-object v5, v3, Lbpx;->a:Ljava/lang/String;

    new-array v6, v15, [Ljava/lang/String;

    aput-object v4, v6, v0

    new-array v8, v15, [Ljava/lang/String;

    aput-object v5, v8, v0

    const-string v5, "Packages"

    const-string v7, "packageName = ?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 28
    move-object v4, v13

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    .line 29
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v4, :cond_7

    .line 31
    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v5, :cond_17

    iget-object v3, v3, Lbpx;->a:Ljava/lang/String;

    .line 33
    invoke-static {v13, v3}, Lbpx;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[Lbpb;

    move-result-object v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    const-string v4, "serverToken"

    if-eqz v11, :cond_e

    :try_start_a
    array-length v5, v11

    const/4 v6, 0x0

    :goto_2
    const-wide/16 v9, 0x0

    const/4 v14, 0x0

    if-ge v6, v5, :cond_9

    .line 34
    aget-object v7, v11, v6

    .line 35
    iget-object v8, v7, Lbpb;->b:Ljava/lang/String;

    const-string v12, "__phenotype_server_token"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget v8, v7, Lbpb;->h:I

    const/4 v12, 0x4

    if-ne v8, v12, :cond_8

    new-instance v4, Lbpy;

    .line 36
    invoke-virtual {v7}, Lbpb;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v14, v5, v9, v10}, Lbpy;-><init>([BLjava/lang/String;J)V

    move-object v12, v4

    move-object/from16 v24, v11

    goto/16 :goto_7

    .line 60
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 37
    :cond_9
    invoke-static {}, Ldlz;->c()Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v4, Lbpy;->a:Lbpy;

    move-object v12, v4

    move-object/from16 v24, v11

    goto/16 :goto_7

    :cond_a
    new-array v6, v15, [Ljava/lang/String;

    aput-object v4, v6, v0

    new-array v8, v15, [Ljava/lang/String;

    aput-object v3, v8, v0

    const-string v5, "ExperimentTokens"

    const-string v7, "packageName = ? AND isCommitted = 1"

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 38
    move-object v4, v13

    move-object v9, v12

    move-object/from16 v10, v16

    move-object v12, v11

    move-object/from16 v11, v17

    move-object/from16 v24, v12

    move-object/from16 v12, v18

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 39
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Lbpy;

    .line 41
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-direct {v5, v14, v6, v7, v8}, Lbpy;-><init>([BLjava/lang/String;J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v4, :cond_b

    .line 40
    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :cond_b
    :goto_3
    goto :goto_6

    :cond_c
    :try_start_d
    sget-object v5, Lbpy;->a:Lbpy;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v4, :cond_b

    :try_start_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto :goto_3

    .line 49
    :catchall_2
    move-exception v0

    move-object v3, v0

    if-eqz v4, :cond_d

    .line 42
    :try_start_f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_4

    .line 47
    :catchall_3
    move-exception v0

    .line 42
    :cond_d
    :goto_4
    :try_start_10
    throw v3

    .line 40
    :cond_e
    move-object/from16 v24, v11

    new-array v6, v12, [Ljava/lang/String;

    const-string v5, "experimentToken"

    aput-object v5, v6, v0

    aput-object v4, v6, v15

    const-string v4, "servingVersion"

    aput-object v4, v6, v14

    new-array v8, v15, [Ljava/lang/String;

    aput-object v3, v8, v0

    const-string v5, "ExperimentTokens"

    const-string v7, "packageName = ? AND isCommitted = 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 43
    move-object v4, v13

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 44
    :try_start_11
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Lbpy;

    .line 46
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lbpy;-><init>([BLjava/lang/String;J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v4, :cond_10

    .line 45
    :try_start_12
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    goto :goto_5

    :cond_f
    :try_start_13
    sget-object v5, Lbpy;->a:Lbpy;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v4, :cond_10

    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_10
    :goto_5
    nop

    .line 36
    :goto_6
    move-object v12, v5

    :goto_7
    new-instance v14, Ljava/util/TreeSet;

    sget-object v4, Lbpb;->a:Ljava/util/Comparator;

    .line 48
    invoke-direct {v14, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 49
    sget-object v4, Lbpk;->b:Lcol;

    .line 50
    invoke-interface {v4}, Lcol;->a()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    new-array v8, v15, [Ljava/lang/String;

    aput-object v3, v8, v0

    const-string v5, "Flags"

    const-string v7, "packageName = ? AND committed = 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 51
    move-object v4, v13

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 52
    :goto_8
    :try_start_15
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 53
    invoke-static {v3}, Lbpz;->c(Landroid/database/Cursor;)Lbpb;

    move-result-object v4

    .line 54
    invoke-interface {v14, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_8

    :cond_11
    if-eqz v3, :cond_12

    .line 55
    :try_start_16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_12
    move-object/from16 v3, v24

    if-eqz v3, :cond_13

    array-length v4, v3

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v4, :cond_13

    .line 56
    aget-object v5, v3, v11

    .line 57
    invoke-interface {v14, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v14, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 59
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, ""

    .line 60
    invoke-static {v14, v3, v4, v12, v0}, Lbpz;->b(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lbpy;Z)Lboz;

    move-result-object v0

    .line 61
    :goto_a
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 62
    :try_start_17
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v0}, Lcew;->f(Lboz;)Lcem;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    if-eqz v2, :cond_14

    .line 63
    :try_start_18
    invoke-virtual {v2}, Lbps;->close()V
    :try_end_18
    .catch Lbpt; {:try_start_18 .. :try_end_18} :catch_0

    :cond_14
    return-object v0

    .line 32
    :catchall_4
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_15

    .line 49
    :try_start_19
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto :goto_b

    .line 47
    :catchall_5
    move-exception v0

    .line 49
    :cond_15
    :goto_b
    :try_start_1a
    throw v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 42
    :catchall_6
    move-exception v0

    move-object v3, v0

    if-eqz v4, :cond_16

    .line 47
    :try_start_1b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    :cond_16
    :goto_c
    :try_start_1c
    throw v3

    .line 30
    :cond_17
    new-instance v0, Lbpt;

    .line 32
    invoke-direct {v0}, Lbpt;-><init>()V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 26
    :catchall_8
    move-exception v0

    move-object v3, v0

    if-eqz v4, :cond_18

    .line 30
    :try_start_1d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    goto :goto_d

    .line 47
    :catchall_9
    move-exception v0

    .line 30
    :cond_18
    :goto_d
    :try_start_1e
    throw v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 1
    :catchall_a
    move-exception v0

    .line 62
    :try_start_1f
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 64
    throw v0

    .line 1
    :cond_19
    new-instance v0, Lbpt;

    const/16 v3, 0x733c

    const-string v4, "No package name"

    .line 2
    invoke-direct {v0, v3, v4}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 65
    :catchall_b
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_1a

    .line 1
    :try_start_20
    invoke-virtual {v2}, Lbps;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    goto :goto_e

    .line 47
    :catchall_c
    move-exception v0

    .line 1
    :cond_1a
    :goto_e
    :try_start_21
    throw v3
    :try_end_21
    .catch Lbpt; {:try_start_21 .. :try_end_21} :catch_0

    .line 45
    :catch_0
    move-exception v0

    new-instance v2, Lcep;

    iget v3, v0, Lbpt;->a:I

    .line 65
    invoke-virtual {v0}, Lbpt;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcep;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :goto_f
    throw v2

    :goto_10
    goto :goto_f
.end method
