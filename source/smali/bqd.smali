.class public final synthetic Lbqd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbqf;

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbqf;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbqd;->a:Lbqf;

    iput-object p2, p0, Lbqd;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    const-string v0, "user = ?"

    iget-object v2, v1, Lbqd;->a:Lbqf;

    iget-object v3, v1, Lbqd;->b:[Ljava/lang/String;

    iget-object v4, v2, Lbqf;->c:Lbps;

    invoke-virtual {v4}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v13, 0x1

    :try_start_0
    new-array v7, v13, [Ljava/lang/String;

    const-string v5, "user"

    const/4 v14, 0x0

    aput-object v5, v7, v14

    const-string v6, "RequestTags"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3
    move-object v5, v4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    new-instance v6, Ljava/util/HashSet;

    .line 4
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 7
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_1
    array-length v5, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_2

    aget-object v8, v3, v7

    .line 9
    invoke-interface {v6, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lbqf;->g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11
    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v3, ""

    .line 12
    invoke-interface {v6, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashSet;

    .line 13
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 14
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    const-string v12, "ApplicationTags"

    const-string v11, "Flags"

    const-string v10, "ExperimentTokens"

    const-string v6, "packageName"

    const-string v9, "CrossLoggedExperimentTokens"

    if-eqz v5, :cond_7

    :try_start_3
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v8, v13, [Ljava/lang/String;

    aput-object v5, v8, v14

    new-array v7, v13, [Ljava/lang/String;

    aput-object v6, v7, v14

    const-string v6, "ExperimentTokens"

    const-string v16, "user = ?"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 15
    move-object v5, v4

    move-object/from16 v20, v8

    move-object/from16 v8, v16

    move-object v13, v9

    move-object/from16 v9, v20

    move-object/from16 v21, v10

    move-object/from16 v10, v17

    move-object/from16 v22, v11

    move-object/from16 v11, v18

    move-object/from16 v23, v12

    move-object/from16 v12, v19

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 16
    :goto_4
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 17
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_5

    .line 18
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    nop

    .line 19
    move-object/from16 v5, v20

    move-object/from16 v7, v21

    invoke-virtual {v4, v7, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    move-object/from16 v8, v22

    invoke-virtual {v4, v8, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v6, "RequestTags"

    .line 21
    invoke-virtual {v4, v6, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 22
    move-object/from16 v9, v23

    invoke-virtual {v4, v9, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v6, "fromUser = ?"

    .line 23
    invoke-virtual {v4, v13, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    const/4 v13, 0x1

    goto :goto_3

    .line 3
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_6

    .line 24
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 49
    :catchall_1
    move-exception v0

    .line 24
    :cond_6
    :goto_5
    :try_start_7
    throw v2

    .line 25
    :cond_7
    move-object v13, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 26
    invoke-static {v4, v3}, Lre;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    goto :goto_6

    .line 27
    :cond_8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 28
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, v2, Lbqf;->c:Lbps;

    .line 30
    invoke-virtual {v0}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x2

    :try_start_8
    new-array v3, v0, [Ljava/lang/String;

    aput-object v6, v3, v14

    const-string v4, "version"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v18, "Packages"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 32
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 33
    :cond_9
    :goto_7
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 34
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 35
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-array v5, v0, [Ljava/lang/String;

    aput-object v4, v5, v14

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v5, v10

    const-string v6, "SELECT MAX(version), user FROM ExperimentTokens WHERE packageName = ? AND version <= ? AND isCommitted = 0 GROUP BY user"

    .line 37
    invoke-virtual {v2, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v6, 0x0

    .line 38
    :goto_8
    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 39
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 40
    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    aput-object v4, v15, v14

    aput-object v12, v15, v11

    .line 41
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v15, v0

    const-string v10, "packageName = ? AND user = ? AND version != ? AND committed = 0"

    .line 42
    invoke-virtual {v2, v8, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_a

    const/4 v10, 0x1

    goto :goto_9

    .line 46
    :cond_a
    const/4 v10, 0x0

    .line 42
    :goto_9
    or-int/2addr v6, v10

    const-string v10, "packageName = ? AND user = ? AND version != ? AND isCommitted = 0"

    .line 43
    invoke-virtual {v2, v7, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_b

    const/4 v10, 0x1

    goto :goto_a

    .line 46
    :cond_b
    const/4 v10, 0x0

    .line 43
    :goto_a
    or-int/2addr v6, v10

    const-string v10, "packageName = ? AND user = ? AND version != ?"

    .line 44
    invoke-virtual {v2, v9, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_c

    const/4 v10, 0x1

    goto :goto_b

    .line 46
    :cond_c
    const/4 v10, 0x0

    .line 44
    :goto_b
    or-int/2addr v6, v10

    const-string v10, "fromPackageName = ? AND fromUser = ? AND fromVersion != ? AND isCommitted = 0"

    .line 45
    invoke-virtual {v2, v13, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_d

    const/4 v10, 0x1

    goto :goto_c

    .line 46
    :cond_d
    const/4 v10, 0x0

    .line 45
    :goto_c
    or-int/2addr v6, v10

    const-string v10, "toPackageName = ? AND fromUser = ? AND toVersion != ? AND isCommitted = 0"

    .line 46
    invoke-virtual {v2, v13, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-lez v10, :cond_e

    const/4 v10, 0x1

    goto :goto_d

    :cond_e
    const/4 v10, 0x0

    :goto_d
    or-int/2addr v6, v10

    goto :goto_8

    :cond_f
    const/4 v11, 0x1

    if-eqz v5, :cond_10

    .line 47
    :try_start_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v6, :cond_9

    .line 48
    invoke-static {v2, v4}, Lre;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_7

    .line 51
    :catchall_2
    move-exception v0

    move-object v4, v0

    if-eqz v5, :cond_11

    .line 49
    :try_start_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    :cond_11
    :goto_e
    :try_start_d
    throw v4

    .line 50
    :cond_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v3, :cond_13

    .line 52
    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 53
    :cond_13
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    .line 54
    :catchall_4
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_14

    .line 51
    :try_start_f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_f

    .line 49
    :catchall_5
    move-exception v0

    .line 51
    :cond_14
    :goto_f
    :try_start_10
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 24
    :catchall_6
    move-exception v0

    .line 53
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    throw v0

    .line 29
    :catchall_7
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_15

    .line 3
    :try_start_11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_10

    .line 49
    :catchall_8
    move-exception v0

    .line 3
    :cond_15
    :goto_10
    :try_start_12
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 53
    :catchall_9
    move-exception v0

    .line 28
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 29
    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method
