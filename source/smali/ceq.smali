.class public final synthetic Lceq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcew;

.field public final synthetic b:I

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:[B


# direct methods
.method public synthetic constructor <init>(Lcew;I[Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lceq;->a:Lcew;

    iput p2, p0, Lceq;->b:I

    iput-object p3, p0, Lceq;->c:[Ljava/lang/String;

    iput-object p4, p0, Lceq;->d:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    const-string v2, "weak"

    const-string v3, "dynamicParams"

    const-string v4, "params"

    const-string v5, "packageName = ?"

    const-string v0, "WeakExperimentIds"

    const-string v6, "androidPackageName"

    const-string v7, "baselineCl"

    const-string v8, "version"

    iget-object v9, v1, Lceq;->a:Lcew;

    iget v10, v1, Lceq;->b:I

    iget-object v11, v1, Lceq;->c:[Ljava/lang/String;

    iget-object v12, v1, Lceq;->d:[B

    :try_start_0
    iget-object v13, v9, Lcew;->a:Landroid/content/Context;

    invoke-static {v13}, Lbps;->c(Landroid/content/Context;)Lbps;

    move-result-object v13
    :try_end_0
    .catch Lbpt; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    iget-object v14, v9, Lcew;->c:Ljava/lang/String;

    .line 2
    sget-object v15, Ldbt;->p:Ldbt;

    .line 3
    invoke-virtual {v15}, Lddk;->n()Lddf;

    move-result-object v15

    iget-boolean v1, v15, Lddf;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    move-object/from16 v16, v7

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {v15}, Lddf;->k()V

    iput-boolean v7, v15, Lddf;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v13

    goto/16 :goto_33

    .line 4
    :cond_0
    :goto_0
    :try_start_3
    iget-object v1, v15, Lddf;->b:Lddk;

    .line 5
    check-cast v1, Ldbt;

    iget v7, v1, Ldbt;->a:I

    move-object/from16 v18, v2

    const/4 v2, 0x2

    or-int/2addr v7, v2

    iput v7, v1, Ldbt;->a:I

    iput v10, v1, Ldbt;->e:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v1, Ldbt;->a:I

    const/4 v10, 0x0

    iput-boolean v10, v1, Ldbt;->j:Z

    const/4 v10, 0x1

    iput v10, v1, Ldbt;->k:I

    const/16 v2, 0x80

    or-int/2addr v7, v2

    iput v7, v1, Ldbt;->a:I

    or-int/2addr v7, v10

    iput v7, v1, Ldbt;->a:I

    const-string v7, "com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection"

    iput-object v7, v1, Ldbt;->d:Ljava/lang/String;

    .line 6
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v15, v1}, Lddf;->s(Ljava/lang/Iterable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_11

    if-eqz v12, :cond_2

    :try_start_4
    array-length v1, v12

    if-lez v1, :cond_2

    .line 7
    invoke-static {v12}, Ldcl;->t([B)Ldcl;

    move-result-object v1

    iget-boolean v7, v15, Lddf;->c:Z

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {v15}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v15, Lddf;->c:Z

    :cond_1
    iget-object v7, v15, Lddf;->b:Lddk;

    .line 9
    check-cast v7, Ldbt;

    iget v11, v7, Ldbt;->a:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v7, Ldbt;->a:I

    iput-object v1, v7, Ldbt;->i:Ldcl;

    :cond_2
    const/4 v1, 0x7

    if-eqz v14, :cond_4

    iget-boolean v7, v15, Lddf;->c:Z

    if-eqz v7, :cond_3

    .line 10
    invoke-virtual {v15}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v15, Lddf;->c:Z

    :cond_3
    iget-object v7, v15, Lddf;->b:Lddk;

    .line 11
    check-cast v7, Ldbt;

    iput v1, v7, Ldbt;->b:I

    iput-object v14, v7, Ldbt;->c:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12
    :cond_4
    :try_start_5
    invoke-virtual {v15}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Ldbt;

    iget-object v9, v9, Lcew;->a:Landroid/content/Context;

    if-eqz v7, :cond_4a

    .line 14
    invoke-virtual {v13}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 15
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_11

    :try_start_6
    iget-object v12, v7, Ldbt;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    const/16 v14, 0x733c

    if-nez v12, :cond_49

    iget-object v12, v7, Ldbt;->g:Lddr;

    .line 17
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_5

    .line 18
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Lbpt;

    const-string v1, "Invalid log source"

    .line 154
    invoke-direct {v0, v14, v1}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v12, v7, Ldbt;->j:Z

    if-nez v12, :cond_8

    iget-object v12, v7, Ldbt;->h:Lddp;

    .line 19
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    .line 155
    :cond_7
    new-instance v0, Lbpt;

    const-string v1, "Experiment ids for weak registration only"

    .line 153
    invoke-direct {v0, v14, v1}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0

    .line 19
    :cond_8
    :goto_2
    iget v12, v7, Ldbt;->b:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_f

    const-string v15, ""

    if-ne v12, v1, :cond_9

    :try_start_7
    iget-object v12, v7, Ldbt;->c:Ljava/lang/Object;

    .line 20
    check-cast v12, Ljava/lang/String;

    goto :goto_3

    .line 19
    :cond_9
    move-object v12, v15

    .line 21
    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_48

    iget v12, v7, Ldbt;->k:I

    invoke-static {v12}, Lhl;->L(I)I

    move-result v12

    if-eqz v12, :cond_47

    .line 22
    if-eq v12, v10, :cond_46

    iget-object v12, v7, Ldbt;->d:Ljava/lang/String;

    iget v14, v7, Ldbt;->b:I

    if-ne v14, v1, :cond_a

    iget-object v14, v7, Ldbt;->c:Ljava/lang/Object;

    .line 23
    check-cast v14, Ljava/lang/String;

    goto :goto_4

    .line 22
    :cond_a
    move-object v14, v15

    .line 24
    :goto_4
    invoke-static {v12, v14}, Lre;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 25
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 26
    invoke-static {v11, v12}, Lxq;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lbqb;->a()V

    :cond_b
    iget-object v12, v7, Ldbt;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    sget-object v12, Ldbt;->p:Ldbt;

    .line 29
    invoke-virtual {v12, v7}, Lddk;->o(Lddk;)Lddf;

    move-result-object v12

    iget-boolean v2, v12, Lddf;->c:Z

    if-eqz v2, :cond_c

    .line 30
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v2, 0x0

    iput-boolean v2, v12, Lddf;->c:Z

    :cond_c
    iget-object v2, v12, Lddf;->b:Lddk;

    .line 31
    check-cast v2, Ldbt;

    .line 32
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v2, Ldbt;->a:I

    or-int/2addr v1, v10

    iput v1, v2, Ldbt;->a:I

    iput-object v14, v2, Ldbt;->d:Ljava/lang/String;

    .line 33
    invoke-virtual {v12}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldbt;

    goto :goto_5

    .line 47
    :cond_d
    move-object v1, v7

    .line 33
    :goto_5
    iget-object v2, v1, Ldbt;->d:Ljava/lang/String;

    iget v12, v1, Ldbt;->b:I

    const/4 v14, 0x7

    if-ne v12, v14, :cond_e

    iget-object v12, v1, Ldbt;->c:Ljava/lang/Object;

    .line 34
    check-cast v12, Ljava/lang/String;

    goto :goto_6

    .line 33
    :cond_e
    move-object v12, v15

    .line 34
    :goto_6
    new-array v14, v10, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v6, v14, v17

    move-object/from16 v28, v15

    new-array v15, v10, [Ljava/lang/String;

    aput-object v2, v15, v17

    const-string v20, "Packages"

    const-string v22, "packageName = ?"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 35
    move-object/from16 v19, v11

    move-object/from16 v21, v14

    move-object/from16 v23, v15

    invoke-virtual/range {v19 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    .line 36
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    if-ne v14, v10, :cond_10

    .line 37
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 39
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_7

    :cond_f
    new-instance v0, Lbpt;

    .line 150
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6f

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed registering with Android package: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Config package already registered with a different Android package: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7342

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 152
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v3, v11

    move-object/from16 v30, v13

    goto/16 :goto_2e

    .line 150
    :cond_10
    :goto_7
    if-eqz v2, :cond_11

    .line 40
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_11
    iget-object v2, v1, Ldbt;->d:Ljava/lang/String;

    .line 41
    invoke-static {v11, v2}, Lbpn;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    iget v12, v1, Ldbt;->k:I

    invoke-static {v12}, Lhl;->L(I)I

    move-result v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    const-string v14, "packageName"

    const-string v15, "serializedDeclarativeRegInfo"

    if-nez v12, :cond_12

    move-object/from16 v30, v13

    goto/16 :goto_9

    .line 73
    :cond_12
    const/4 v10, 0x3

    if-ne v12, v10, :cond_16

    const/4 v10, 0x1

    :try_start_b
    new-array v12, v10, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v15, v12, v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v30, v13

    :try_start_c
    new-array v13, v10, [Ljava/lang/String;

    iget-object v10, v1, Ldbt;->d:Ljava/lang/String;

    aput-object v10, v13, v17

    const-string v20, "Packages"

    const-string v22, "packageName = ?"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 42
    move-object/from16 v19, v11

    move-object/from16 v21, v12

    move-object/from16 v23, v13

    invoke-virtual/range {v19 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 43
    :try_start_d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 44
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-eqz v13, :cond_14

    array-length v12, v13

    if-lez v12, :cond_14

    .line 45
    invoke-virtual {v1}, Ldbv;->h()[B

    move-result-object v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v12, :cond_14

    if-eqz v10, :cond_13

    .line 47
    :try_start_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_13
    iget-object v0, v1, Ldbt;->d:Ljava/lang/String;

    .line 133
    invoke-static {v2, v0}, Lxp;->e(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    move-object/from16 v33, v2

    move-object/from16 v31, v7

    move-object v3, v11

    goto/16 :goto_26

    :cond_14
    if-eqz v10, :cond_17

    .line 47
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    goto :goto_9

    .line 91
    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_15

    .line 46
    :try_start_f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_8

    .line 92
    :catchall_3
    move-exception v0

    .line 46
    :cond_15
    :goto_8
    :try_start_10
    throw v1

    .line 1
    :catchall_4
    move-exception v0

    move-object/from16 v30, v13

    goto/16 :goto_2d

    .line 73
    :cond_16
    move-object/from16 v30, v13

    .line 41
    :cond_17
    :goto_9
    iget-object v10, v1, Ldbt;->d:Ljava/lang/String;

    iget-object v12, v1, Ldbt;->h:Lddp;

    move-object/from16 v31, v7

    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v10, v7, v13

    .line 48
    invoke-virtual {v11, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v12, :cond_18

    .line 49
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    new-instance v13, Landroid/content/ContentValues;

    .line 50
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 51
    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v7

    const-string v7, "experimentId"

    .line 52
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const/4 v7, 0x0

    invoke-virtual {v11, v0, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object/from16 v7, v19

    goto :goto_a

    :cond_18
    iget-object v0, v1, Ldbt;->i:Ldcl;

    .line 54
    invoke-virtual {v0}, Ldcl;->C()[B

    move-result-object v0

    .line 55
    array-length v7, v0

    if-nez v7, :cond_19

    const/4 v7, 0x0

    goto :goto_b

    :cond_19
    move-object v7, v0

    :goto_b
    iget-object v0, v1, Ldbt;->o:Ldcl;

    .line 56
    invoke-virtual {v0}, Ldcl;->C()[B

    move-result-object v0

    .line 57
    array-length v10, v0

    if-nez v10, :cond_1a

    const/4 v10, 0x0

    goto :goto_c

    :cond_1a
    move-object v10, v0

    :goto_c
    iget-wide v12, v1, Ldbt;->n:J

    .line 58
    invoke-static {}, Ldmc;->c()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-eqz v0, :cond_1c

    .line 59
    :try_start_11
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    move-object/from16 v32, v10

    :try_start_12
    iget v10, v1, Ldbt;->b:I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-wide/from16 v19, v12

    const/4 v12, 0x7

    if-ne v10, v12, :cond_1b

    :try_start_13
    iget-object v10, v1, Ldbt;->c:Ljava/lang/Object;

    .line 60
    check-cast v10, Ljava/lang/String;

    goto :goto_d

    .line 59
    :cond_1b
    move-object/from16 v10, v28

    .line 61
    :goto_d
    invoke-static {v0, v10}, Ldbc;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ldbb;

    move-result-object v0

    iget-wide v12, v0, Ldbb;->a:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    const/4 v0, 0x1

    goto :goto_10

    .line 151
    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v32, v10

    :goto_e
    move-wide/from16 v19, v12

    :goto_f
    move-wide/from16 v12, v19

    const/4 v0, 0x0

    goto :goto_10

    .line 73
    :cond_1c
    move-object/from16 v32, v10

    move-wide/from16 v19, v12

    const/4 v0, 0x0

    .line 61
    :goto_10
    :try_start_14
    new-instance v10, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v2

    move-object/from16 v34, v6

    const/4 v2, 0x7

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v6, v2

    const/4 v2, 0x1

    aput-object v4, v6, v2

    const/4 v2, 0x2

    aput-object v3, v6, v2

    const/4 v2, 0x3

    aput-object v18, v6, v2

    const/4 v2, 0x4

    aput-object v15, v6, v2

    const/16 v19, 0x5

    aput-object v16, v6, v19

    const-string v19, "heterodyneInfo"

    const/4 v2, 0x6

    aput-object v19, v6, v2

    .line 63
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 64
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v20, "Packages"

    const/4 v6, 0x0

    new-array v2, v6, [Ljava/lang/String;

    .line 65
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    iget-object v5, v1, Ldbt;->d:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 66
    move-object/from16 v19, v11

    move-object/from16 v22, v2

    move-object/from16 v23, v6

    invoke-virtual/range {v19 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 67
    :try_start_15
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    if-eqz v5, :cond_28

    .line 68
    const/4 v5, 0x0

    :try_start_16
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iget v5, v1, Ldbt;->e:I

    if-ne v6, v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_11

    .line 73
    :cond_1d
    const/4 v5, 0x0

    .line 68
    :goto_11
    nop

    .line 69
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-static {v7, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    sget-object v10, Ldmc;->a:Ldmc;

    .line 70
    invoke-virtual {v10}, Ldmc;->b()Ldmd;

    move-result-object v10

    invoke-interface {v10}, Ldmd;->c()Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-boolean v10, v1, Ldbt;->m:Z

    if-nez v10, :cond_1e

    .line 71
    move/from16 v19, v5

    const/4 v10, 0x2

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v7, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_12

    .line 70
    :cond_1e
    move/from16 v19, v5

    .line 71
    :goto_12
    nop

    .line 72
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    if-eqz v10, :cond_20

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_13

    .line 70
    :cond_1f
    move/from16 v19, v5

    .line 95
    :cond_20
    nop

    .line 73
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    const/4 v5, 0x0

    .line 72
    :goto_13
    move/from16 v20, v5

    iget-boolean v5, v1, Ldbt;->j:Z

    .line 74
    move/from16 v21, v6

    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_21

    const/4 v6, 0x0

    goto :goto_14

    .line 95
    :cond_21
    const/4 v6, 0x1

    .line 74
    :goto_14
    if-ne v5, v6, :cond_22

    const/4 v5, 0x1

    goto :goto_15

    .line 95
    :cond_22
    const/4 v5, 0x0

    .line 74
    :goto_15
    nop

    .line 75
    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 76
    move/from16 v22, v5

    const/4 v5, 0x6

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 77
    invoke-static {}, Ldmc;->c()Z

    move-result v23

    if-eqz v23, :cond_25

    if-eqz v0, :cond_23

    .line 78
    move-object v0, v5

    const/4 v5, 0x5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    cmp-long v5, v23, v12

    if-eqz v5, :cond_24

    goto :goto_16

    .line 95
    :cond_23
    move-object v0, v5

    :cond_24
    move-object/from16 v29, v11

    const/4 v5, 0x1

    move-object v11, v10

    move-object v10, v6

    move-object v6, v0

    const/4 v0, 0x1

    goto :goto_17

    .line 77
    :cond_25
    move-object v0, v5

    .line 79
    :goto_16
    invoke-static {}, Ldmc;->c()Z

    move-result v5

    if-nez v5, :cond_26

    .line 80
    const/4 v5, 0x5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-object/from16 v25, v6

    iget-wide v5, v1, Ldbt;->n:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    cmp-long v26, v23, v5

    if-nez v26, :cond_27

    move-object v6, v0

    move-object/from16 v29, v11

    const/4 v0, 0x1

    const/4 v5, 0x1

    move-object v11, v10

    move-object/from16 v10, v25

    goto :goto_17

    .line 95
    :cond_26
    move-object/from16 v25, v6

    :cond_27
    move-object v6, v0

    move-object/from16 v29, v11

    const/4 v0, 0x1

    const/4 v5, 0x0

    move-object v11, v10

    move-object/from16 v10, v25

    goto :goto_17

    .line 151
    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v3, v11

    goto/16 :goto_2b

    .line 73
    :cond_28
    move-object/from16 v29, v11

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 80
    :goto_17
    if-eqz v2, :cond_29

    .line 82
    :try_start_17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_29
    new-instance v2, Lcha;

    .line 83
    move-wide/from16 v23, v12

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-direct {v2, v12}, Lcha;-><init>(Landroid/content/pm/PackageManager;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 84
    :try_start_18
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget v12, v1, Ldbt;->b:I

    const/4 v13, 0x7

    if-ne v12, v13, :cond_2a

    iget-object v12, v1, Ldbt;->c:Ljava/lang/Object;

    .line 85
    check-cast v12, Ljava/lang/String;

    goto :goto_18

    .line 84
    :cond_2a
    move-object/from16 v12, v28

    .line 85
    :goto_18
    nop

    .line 86
    const/16 v13, 0x80

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 87
    iget-object v12, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcha;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    iget v13, v1, Ldbt;->k:I

    invoke-static {v13}, Lhl;->L(I)I

    move-result v13
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-nez v13, :cond_2b

    move-object/from16 v27, v3

    move-object/from16 v25, v15

    const/4 v3, 0x0

    goto :goto_1b

    .line 124
    :cond_2b
    move-object/from16 v25, v15

    const/4 v15, 0x2

    if-ne v13, v15, :cond_2f

    .line 88
    :try_start_19
    invoke-virtual {v2, v9, v12}, Lcha;->c(Landroid/content/pm/PackageInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v13
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 93
    :try_start_1a
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_19
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ldbt;

    move-object/from16 v26, v13

    iget-object v13, v15, Ldbt;->d:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v1, Ldbt;->d:Ljava/lang/String;

    .line 94
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 95
    invoke-virtual {v15}, Ldbv;->h()[B

    move-result-object v3

    goto :goto_1b

    .line 94
    :cond_2c
    move-object/from16 v13, v26

    move-object/from16 v3, v27

    goto :goto_19

    .line 130
    :catch_3
    move-exception v0

    move-object v2, v0

    .line 89
    invoke-static {}, Ldmc;->d()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lbpt;

    iget v3, v1, Ldbt;->b:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2d

    iget-object v3, v1, Ldbt;->c:Ljava/lang/Object;

    .line 90
    check-cast v3, Ljava/lang/String;

    goto :goto_1a

    .line 89
    :cond_2d
    move-object/from16 v3, v28

    .line 90
    :goto_1a
    nop

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " failed to register."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x733c

    invoke-direct {v0, v4, v3, v2}, Lbpt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 92
    :cond_2e
    throw v2

    .line 95
    :cond_2f
    move-object/from16 v27, v3

    const/4 v3, 0x0

    .line 87
    :goto_1b
    iget v13, v1, Ldbt;->a:I

    and-int/lit16 v13, v13, 0x800

    if-nez v13, :cond_34

    sget-object v13, Ldmc;->a:Ldmc;

    .line 96
    invoke-virtual {v13}, Ldmc;->b()Ldmd;

    move-result-object v13

    invoke-interface {v13}, Ldmd;->d()Z

    move-result v13
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-eqz v13, :cond_34

    :try_start_1b
    iget-object v13, v1, Ldbt;->d:Ljava/lang/String;

    .line 97
    invoke-virtual {v2, v9, v12}, Lcha;->a(Landroid/content/pm/PackageInfo;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldcl;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    if-eqz v2, :cond_34

    .line 107
    :try_start_1c
    invoke-virtual {v2}, Ldcl;->C()[B

    move-result-object v2

    goto :goto_1f

    .line 103
    :catch_4
    move-exception v0

    new-instance v2, Lbpt;

    iget v3, v1, Ldbt;->b:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_30

    iget-object v3, v1, Ldbt;->c:Ljava/lang/Object;

    .line 99
    check-cast v3, Ljava/lang/String;

    goto :goto_1c

    .line 103
    :cond_30
    move-object/from16 v3, v28

    .line 99
    :goto_1c
    const/16 v4, 0x7347

    .line 100
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " Failed to read HeterodyneInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3, v0}, Lbpt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 106
    :catch_5
    move-exception v0

    .line 101
    invoke-static {}, Ldmc;->d()Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance v2, Lbpt;

    iget v3, v1, Ldbt;->b:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_31

    iget-object v3, v1, Ldbt;->c:Ljava/lang/Object;

    .line 102
    check-cast v3, Ljava/lang/String;

    goto :goto_1d

    .line 101
    :cond_31
    move-object/from16 v3, v28

    .line 102
    :goto_1d
    nop

    .line 103
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " failed to register."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x733c

    invoke-direct {v2, v4, v3, v0}, Lbpt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 104
    :cond_32
    throw v0

    .line 109
    :catch_6
    move-exception v0

    new-instance v2, Lbpt;

    iget v3, v1, Ldbt;->b:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_33

    iget-object v3, v1, Ldbt;->c:Ljava/lang/Object;

    .line 105
    check-cast v3, Ljava/lang/String;

    goto :goto_1e

    .line 109
    :cond_33
    move-object/from16 v3, v28

    .line 105
    :goto_1e
    nop

    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " not found!."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x733c

    invoke-direct {v2, v4, v3, v0}, Lbpt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_1c} :catch_7
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 107
    :cond_34
    move-object/from16 v2, v32

    :goto_1f
    if-eqz v0, :cond_36

    if-eqz v19, :cond_36

    if-eqz v21, :cond_36

    if-eqz v22, :cond_36

    if-nez v20, :cond_36

    .line 110
    :try_start_1d
    invoke-static {v10, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz v5, :cond_36

    .line 111
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_20

    :cond_35
    move-object/from16 v3, v29

    goto/16 :goto_23

    :cond_36
    :goto_20
    new-instance v0, Landroid/content/ContentValues;

    .line 112
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v1, Ldbt;->d:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v1, Ldbt;->e:I

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 116
    move-object/from16 v4, v27

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-boolean v4, v1, Ldbt;->j:Z

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v4, v1, Ldbt;->b:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_37

    iget-object v4, v1, Ldbt;->c:Ljava/lang/Object;

    .line 118
    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    goto :goto_21

    .line 117
    :cond_37
    move-object/from16 v15, v28

    .line 119
    :goto_21
    move-object/from16 v4, v34

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "isSynced"

    .line 120
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    move-object/from16 v4, v25

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 122
    invoke-static {}, Ldmc;->c()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 123
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, v16

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_22

    .line 149
    :cond_38
    move-object/from16 v4, v16

    iget-wide v5, v1, Ldbt;->n:J

    .line 124
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    :goto_22
    const-string v3, "heterodyneInfo"

    .line 125
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "Packages"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 126
    move-object/from16 v3, v29

    const/4 v4, 0x5

    const/4 v5, 0x0

    :try_start_1e
    invoke-virtual {v3, v2, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :goto_23
    if-nez v19, :cond_3b

    if-nez v21, :cond_39

    if-eqz v11, :cond_3b

    :cond_39
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v0, v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    iget-object v4, v1, Ldbt;->d:Ljava/lang/String;

    aput-object v4, v5, v2

    iget v2, v1, Ldbt;->e:I

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const-string v20, "ExperimentTokens"

    const-string v22, "packageName = ? AND version = ?"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 128
    move-object/from16 v19, v3

    move-object/from16 v21, v0

    move-object/from16 v23, v5

    invoke-virtual/range {v19 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    .line 129
    :try_start_1f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v2, :cond_3b

    .line 131
    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    goto :goto_25

    .line 100
    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_3a

    .line 130
    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_24

    .line 104
    :catchall_7
    move-exception v0

    .line 130
    :cond_3a
    :goto_24
    :try_start_22
    throw v1

    .line 131
    :cond_3b
    :goto_25
    iget-object v0, v1, Ldbt;->g:Lddr;

    iget-object v2, v1, Ldbt;->d:Ljava/lang/String;

    .line 132
    invoke-static {v0, v2}, Lxp;->e(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    :goto_26
    iget-object v2, v1, Ldbt;->d:Ljava/lang/String;

    .line 134
    move-object/from16 v4, v33

    invoke-static {v4, v0}, Lfw;->k(Ljava/util/Set;Ljava/util/Set;)Lcso;

    move-result-object v5

    .line 135
    invoke-static {v0, v4}, Lfw;->k(Ljava/util/Set;Ljava/util/Set;)Lcso;

    move-result-object v0

    .line 134
    move-object v4, v5

    check-cast v4, Lcsn;

    .line 136
    invoke-virtual {v4}, Lcsn;->a()Lcst;

    move-result-object v4

    .line 137
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v10, 0x1

    aput-object v6, v8, v10

    const-string v6, "LogSources"

    const-string v11, "packageName = ? AND logSourceName = ?"

    .line 138
    invoke-virtual {v3, v6, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_27

    .line 135
    :cond_3c
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v0

    check-cast v4, Lcsn;

    .line 139
    invoke-virtual {v4}, Lcsn;->a()Lcst;

    move-result-object v4

    .line 140
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Landroid/content/ContentValues;

    .line 141
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 142
    invoke-virtual {v7, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "logSourceName"

    .line 143
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "LogSources"

    .line 144
    const/4 v8, 0x5

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v11, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_28

    .line 145
    :cond_3d
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v7, 0x1

    goto :goto_29

    .line 149
    :cond_3e
    const/4 v7, 0x0

    goto :goto_29

    :cond_3f
    const/4 v7, 0x1

    .line 145
    :goto_29
    iget-object v0, v1, Ldbt;->d:Ljava/lang/String;

    .line 146
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    .line 147
    :try_start_23
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-nez v7, :cond_40

    move-object/from16 v7, v31

    iget-boolean v0, v7, Ldbt;->j:Z

    if-eqz v0, :cond_41

    .line 148
    :cond_40
    invoke-static {}, Lbqb;->a()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    :cond_41
    if-eqz v30, :cond_42

    .line 149
    :try_start_24
    invoke-virtual/range {v30 .. v30}, Lbps;->close()V
    :try_end_24
    .catch Lbpt; {:try_start_24 .. :try_end_24} :catch_8

    :cond_42
    const/4 v1, 0x0

    return-object v1

    .line 81
    :catch_7
    move-exception v0

    move-object/from16 v3, v29

    :try_start_25
    new-instance v2, Lbpt;

    iget v4, v1, Ldbt;->b:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_43

    iget-object v1, v1, Ldbt;->c:Ljava/lang/Object;

    .line 108
    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    goto :goto_2a

    .line 46
    :cond_43
    move-object/from16 v15, v28

    .line 108
    :goto_2a
    nop

    .line 109
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, " not found!."

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x733c

    invoke-direct {v2, v4, v1, v0}, Lbpt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    .line 1
    :catchall_8
    move-exception v0

    move-object/from16 v3, v29

    goto :goto_31

    .line 151
    :catchall_9
    move-exception v0

    move-object v3, v11

    move-object v1, v0

    :goto_2b
    if-eqz v2, :cond_44

    .line 81
    :try_start_26
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    goto :goto_2c

    .line 46
    :catchall_a
    move-exception v0

    .line 81
    :cond_44
    :goto_2c
    :try_start_27
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    .line 1
    :catchall_b
    move-exception v0

    :goto_2d
    move-object v3, v11

    goto :goto_31

    .line 152
    :catchall_c
    move-exception v0

    move-object v3, v11

    move-object/from16 v30, v13

    move-object v1, v0

    :goto_2e
    if-eqz v2, :cond_45

    .line 151
    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    goto :goto_2f

    .line 46
    :catchall_d
    move-exception v0

    .line 151
    :cond_45
    :goto_2f
    :try_start_29
    throw v1

    .line 22
    :cond_46
    move-object v3, v11

    move-object/from16 v30, v13

    goto :goto_30

    .line 21
    :cond_47
    move-object v3, v11

    move-object/from16 v30, v13

    :goto_30
    new-instance v0, Lbpt;

    const-string v1, "Unknown registration type"

    .line 22
    const/16 v2, 0x733c

    invoke-direct {v0, v2, v1}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0

    .line 153
    :cond_48
    move-object v3, v11

    move-object/from16 v30, v13

    new-instance v0, Lbpt;

    const-string v1, "No Android package"

    .line 152
    const/16 v2, 0x733c

    invoke-direct {v0, v2, v1}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0

    .line 156
    :cond_49
    move-object v3, v11

    move-object/from16 v30, v13

    new-instance v0, Lbpt;

    const-string v1, "No package name"

    .line 155
    const/16 v2, 0x733c

    invoke-direct {v0, v2, v1}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    .line 1
    :catchall_e
    move-exception v0

    goto :goto_31

    :catchall_f
    move-exception v0

    move-object v3, v11

    move-object/from16 v30, v13

    .line 147
    :goto_31
    :try_start_2a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 156
    throw v0

    .line 12
    :cond_4a
    move-object/from16 v30, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null RegistrationInfo"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    .line 157
    :catchall_10
    move-exception v0

    goto :goto_32

    :catchall_11
    move-exception v0

    move-object/from16 v30, v13

    :goto_32
    move-object v1, v0

    :goto_33
    if-eqz v30, :cond_4b

    .line 1
    :try_start_2b
    invoke-virtual/range {v30 .. v30}, Lbps;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    goto :goto_34

    .line 46
    :catchall_12
    move-exception v0

    .line 1
    :cond_4b
    :goto_34
    :try_start_2c
    throw v1
    :try_end_2c
    .catch Lbpt; {:try_start_2c .. :try_end_2c} :catch_8

    .line 47
    :catch_8
    move-exception v0

    new-instance v1, Lcep;

    iget v2, v0, Lbpt;->a:I

    .line 157
    invoke-virtual {v0}, Lbpt;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcep;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    :goto_35
    throw v1

    :goto_36
    goto :goto_35
.end method
