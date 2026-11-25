.class public final synthetic Lcet;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcew;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcet;->a:Lcew;

    const-string p1, "com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection"

    iput-object p1, p0, Lcet;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    iget-object v2, v1, Lcet;->a:Lcew;

    iget-object v3, v1, Lcet;->b:Ljava/lang/String;

    :try_start_0
    iget-object v4, v2, Lcew;->a:Landroid/content/Context;

    invoke-static {v4}, Lbps;->c(Landroid/content/Context;)Lbps;

    move-result-object v4
    :try_end_0
    .catch Lbpt; {:try_start_0 .. :try_end_0} :catch_b

    .line 2
    :try_start_1
    sget-object v5, Ldgx;->h:Ldgx;

    .line 3
    invoke-virtual {v5}, Lddk;->n()Lddf;

    move-result-object v5

    iget-object v2, v2, Lcew;->b:Lcny;

    .line 4
    invoke-interface {v2, v4}, Lcny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lbqf;

    iget-object v6, v6, Lbqf;->d:Ldhq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    :try_start_2
    iget-object v6, v6, Ldhq;->a:Landroid/content/Context;

    .line 5
    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    .line 6
    array-length v8, v6

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_2

    .line 7
    :try_start_3
    aget-object v11, v6, v10

    const-string v12, "com.google"

    .line 8
    iget-object v13, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.google.work"

    iget-object v13, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 9
    :cond_0
    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v4

    goto/16 :goto_1f

    .line 1
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v4

    goto/16 :goto_1d

    .line 9
    :cond_2
    :try_start_4
    new-array v6, v9, [Ljava/lang/String;

    .line 10
    invoke-interface {v7, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 12
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    if-nez v5, :cond_3

    :try_start_6
    sget-object v10, Ldgx;->h:Ldgx;

    .line 13
    invoke-virtual {v10}, Lddk;->n()Lddf;

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 25
    :cond_3
    move-object v10, v5

    .line 13
    :goto_1
    :try_start_7
    iget-boolean v11, v10, Lddf;->c:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    if-eqz v11, :cond_4

    .line 14
    :try_start_8
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v9, v10, Lddf;->c:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :try_start_9
    iget-object v11, v10, Lddf;->b:Lddk;

    .line 15
    check-cast v11, Ldgx;

    const/16 v12, 0xce4

    iput v12, v11, Ldgx;->b:I

    iget v12, v11, Ldgx;->a:I

    const/4 v13, 0x1

    or-int/2addr v12, v13

    iput v12, v11, Ldgx;->a:I

    iput v13, v11, Ldgx;->c:I

    const/4 v14, 0x2

    or-int/2addr v12, v14

    iput v12, v11, Ldgx;->a:I

    .line 16
    invoke-static {v3}, Lcoe;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v11, v10, Lddf;->c:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    if-eqz v11, :cond_5

    .line 17
    :try_start_a
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v9, v10, Lddf;->c:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    :try_start_b
    iget-object v11, v10, Lddf;->b:Lddk;

    .line 18
    check-cast v11, Ldgx;

    iget v12, v11, Ldgx;->a:I

    const/4 v15, 0x4

    or-int/2addr v12, v15

    iput v12, v11, Ldgx;->a:I

    iput-object v3, v11, Ldgx;->d:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    .line 19
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    .line 20
    :try_start_c
    sget-object v12, Ldgw;->h:Ldgw;

    .line 21
    invoke-virtual {v12}, Lddk;->n()Lddf;

    move-result-object v12
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :try_start_d
    new-instance v11, Lbqe;

    .line 22
    invoke-direct {v11}, Lbqe;-><init>()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :try_start_e
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 23
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    array-length v15, v6

    iput v15, v11, Lbqe;->a:I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    const-string v9, ""

    const/16 v13, 0xa

    if-gt v15, v13, :cond_6

    .line 4
    :try_start_f
    move-object v15, v2

    check-cast v15, Lbqf;

    .line 25
    invoke-virtual {v15, v14, v6}, Lbqf;->c(Ljava/util/LinkedHashMap;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v24, v4

    goto :goto_5

    .line 101
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v4

    :goto_2
    move-wide/from16 v26, v7

    goto/16 :goto_16

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v4

    :goto_3
    move-wide/from16 v26, v7

    goto/16 :goto_19

    .line 26
    :cond_6
    :try_start_10
    invoke-static {v6}, Lbqf;->b([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    new-instance v13, Ljava/util/ArrayList;

    .line 4
    move-object v1, v2

    check-cast v1, Lbqf;

    iget-object v1, v1, Lbqf;->c:Lbps;

    .line 27
    invoke-virtual {v1}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 25
    invoke-static {v1}, Lbqf;->g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v1

    .line 27
    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 28
    move-object/from16 v24, v4

    :try_start_11
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/LinkedHashSet;

    .line 29
    invoke-direct {v4, v15}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 32
    invoke-virtual {v4, v13}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 34
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    if-eqz v4, :cond_7

    :try_start_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 36
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->size()I

    move-result v13

    const/16 v15, 0xa

    if-ge v13, v15, :cond_7

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v15, v13

    .line 4
    move-object v4, v2

    check-cast v4, Lbqf;

    .line 25
    invoke-virtual {v4, v14, v15}, Lbqf;->c(Ljava/util/LinkedHashMap;[Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_4

    .line 37
    :cond_7
    :goto_5
    :try_start_13
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    iput v1, v11, Lbqe;->b:I

    .line 38
    invoke-static {v6}, Lbqf;->b([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    .line 39
    sget-object v4, Ldmi;->a:Ldmi;

    .line 40
    invoke-virtual {v4}, Ldmi;->c()Ldmj;

    move-result-object v4

    invoke-interface {v4}, Ldmj;->k()Z

    move-result v4
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v4, :cond_8

    :try_start_14
    new-instance v4, Lbqc;

    .line 4
    move-object v13, v2

    check-cast v13, Lbqf;

    invoke-direct {v4, v13}, Lbqc;-><init>(Lbqf;)V

    .line 25
    invoke-static {v4}, Lbqf;->j(Ljava/lang/Runnable;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_6

    .line 101
    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3

    .line 25
    :cond_8
    :goto_6
    :try_start_15
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 41
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 43
    array-length v13, v6

    invoke-interface {v4}, Ljava/util/Set;->size()I

    iput v13, v11, Lbqe;->d:I

    .line 44
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v15

    iput v15, v11, Lbqe;->f:I

    move-object/from16 v25, v5

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/String;

    .line 45
    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 46
    array-length v5, v4
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    sub-int/2addr v13, v5

    const/16 v15, 0xa

    if-le v5, v15, :cond_9

    .line 47
    :try_start_16
    invoke-static {v4, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 4
    :cond_9
    :try_start_17
    move-object v5, v2

    check-cast v5, Lbqf;

    iget-object v5, v5, Lbqf;->c:Lbps;

    .line 48
    invoke-virtual {v5}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/String;

    const-string v5, "packageName"

    const/16 v17, 0x0

    aput-object v5, v15, v17

    const-string v27, "Packages"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 49
    move-object/from16 v28, v15

    invoke-virtual/range {v26 .. v34}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 50
    :goto_7
    :try_start_18
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v15, :cond_24

    .line 51
    move-wide/from16 v26, v7

    const/4 v15, 0x0

    :try_start_19
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "__internal."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-nez v7, :cond_23

    if-eqz v5, :cond_a

    .line 52
    :try_start_1a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    .line 68
    array-length v7, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v5, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v11, Lbqe;->e:I

    iget v7, v11, Lbqe;->f:I

    if-le v4, v7, :cond_b

    iget v4, v11, Lbqe;->d:I

    const/4 v7, 0x1

    add-int/2addr v4, v7

    goto :goto_8

    .line 84
    :cond_b
    iget v4, v11, Lbqe;->d:I

    .line 71
    :goto_8
    iput v4, v11, Lbqe;->c:I

    .line 72
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    const-string v7, "HeterodyneSyncer.java"

    const-string v8, "com/google/android/gms/phenotype/core/sync/HeterodyneSyncer"

    const/4 v9, 0x1

    if-le v4, v9, :cond_f

    .line 4
    :try_start_1b
    move-object/from16 v16, v2

    check-cast v16, Lbqf;

    const/16 v23, 0x1

    .line 25
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, v1

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move-object/from16 v22, v14

    invoke-virtual/range {v16 .. v23}, Lbqf;->k(Ljava/util/Set;Ljava/util/List;ZLddf;Lbqe;Ljava/util/LinkedHashMap;Z)V
    :try_end_1b
    .catch Lbpt; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    goto/16 :goto_d

    .line 67
    :catch_3
    move-exception v0

    move-object v1, v0

    :try_start_1c
    sget-object v3, Lbqf;->a:Lcsz;

    invoke-virtual {v3}, Lcsv;->c()Lctq;

    move-result-object v3

    .line 85
    invoke-interface {v3, v1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const-string v4, "syncInBatch"

    const/16 v5, 0x213

    invoke-interface {v3, v8, v4, v5, v7}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const-string v4, "SyncInBatch failed"

    invoke-interface {v3, v4}, Lcsx;->n(Ljava/lang/String;)V

    iget-boolean v3, v10, Lddf;->c:Z

    if-eqz v3, :cond_c

    .line 86
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v10, Lddf;->c:Z

    :cond_c
    iget-object v3, v10, Lddf;->b:Lddk;

    .line 87
    check-cast v3, Ldgx;

    const/4 v4, 0x4

    iput v4, v3, Ldgx;->f:I

    iget v4, v3, Ldgx;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ldgx;->a:I

    iget-object v3, v12, Lddf;->b:Lddk;

    .line 88
    check-cast v3, Ldgw;

    iget v3, v3, Ldgw;->a:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-nez v3, :cond_e

    .line 99
    iget-boolean v3, v12, Lddf;->c:Z

    if-eqz v3, :cond_d

    .line 89
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v12, Lddf;->c:Z

    :cond_d
    iget-object v3, v12, Lddf;->b:Lddk;

    .line 90
    check-cast v3, Ldgw;

    const/4 v4, 0x1

    iput v4, v3, Ldgw;->c:I

    iget v4, v3, Ldgw;->a:I

    const/4 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v3, Ldgw;->a:I

    .line 91
    :cond_e
    throw v1

    .line 73
    :cond_f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_10
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v12, :cond_11

    move-object v15, v12

    goto :goto_a

    .line 82
    :cond_11
    sget-object v15, Ldgw;->h:Ldgw;

    .line 74
    invoke-virtual {v15}, Lddk;->n()Lddf;

    move-result-object v15
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 75
    :goto_a
    :try_start_1d
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    .line 4
    move-object/from16 v16, v2

    check-cast v16, Lbqf;

    const/16 v23, 0x0

    .line 25
    move-object/from16 v17, v3

    move/from16 v19, v1

    move-object/from16 v20, v15

    move-object/from16 v21, v11

    move-object/from16 v22, v14

    invoke-virtual/range {v16 .. v23}, Lbqf;->k(Ljava/util/Set;Ljava/util/List;ZLddf;Lbqe;Ljava/util/LinkedHashMap;Z)V
    :try_end_1d
    .catch Lbpt; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    if-nez v12, :cond_10

    .line 82
    :try_start_1e
    invoke-virtual {v10, v15}, Lddf;->aj(Lddf;)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_5
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_c

    .line 91
    :catch_4
    move-exception v0

    move-object v5, v0

    :try_start_1f
    sget-object v9, Lbqf;->a:Lcsz;

    invoke-virtual {v9}, Lcsv;->c()Lctq;

    move-result-object v9

    .line 76
    invoke-interface {v9, v5}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v9

    check-cast v9, Lcsx;

    move/from16 v17, v1

    const-string v1, "syncForEachUser"

    move-object/from16 v18, v3

    const/16 v3, 0x23e

    invoke-interface {v9, v8, v1, v3, v7}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v3, "Sync failed"

    invoke-interface {v1, v3}, Lcsx;->n(Ljava/lang/String;)V

    iget-boolean v1, v10, Lddf;->c:Z

    if-eqz v1, :cond_12

    .line 77
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v10, Lddf;->c:Z

    :cond_12
    iget-object v1, v10, Lddf;->b:Lddk;

    .line 78
    check-cast v1, Ldgx;

    const/4 v3, 0x4

    iput v3, v1, Ldgx;->f:I

    iget v3, v1, Ldgx;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Ldgx;->a:I

    iget-object v1, v15, Lddf;->b:Lddk;

    .line 79
    check-cast v1, Ldgw;

    iget v1, v1, Ldgw;->a:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    goto :goto_b

    .line 90
    :cond_13
    iget-boolean v1, v15, Lddf;->c:Z

    if-eqz v1, :cond_14

    .line 80
    invoke-virtual {v15}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v15, Lddf;->c:Z

    :cond_14
    iget-object v1, v15, Lddf;->b:Lddk;

    .line 81
    check-cast v1, Ldgw;

    const/4 v3, 0x1

    iput v3, v1, Ldgw;->c:I

    iget v3, v1, Ldgw;->a:I

    const/4 v9, 0x2

    or-int/2addr v3, v9

    iput v3, v1, Ldgw;->a:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 79
    :goto_b
    if-nez v12, :cond_15

    .line 82
    :try_start_20
    invoke-virtual {v10, v15}, Lddf;->aj(Lddf;)V

    .line 73
    :cond_15
    move/from16 v1, v17

    move-object/from16 v3, v18

    goto/16 :goto_9

    .line 82
    :goto_c
    if-nez v12, :cond_16

    invoke-virtual {v10, v15}, Lddf;->aj(Lddf;)V

    .line 83
    :cond_16
    throw v1

    .line 74
    :cond_17
    if-nez v5, :cond_22

    .line 25
    :goto_d
    if-gtz v13, :cond_20

    iget v1, v11, Lbqe;->a:I

    iget v3, v11, Lbqe;->b:I
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    if-le v1, v3, :cond_18

    goto/16 :goto_f

    .line 94
    :cond_18
    if-eqz v12, :cond_1e

    :try_start_21
    iget-object v1, v12, Lddf;->b:Lddk;

    .line 55
    check-cast v1, Ldgw;

    iget v1, v1, Ldgw;->c:I

    invoke-static {v1}, Ldpx;->t(I)I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_e

    .line 96
    :cond_19
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1b

    .line 55
    :goto_e
    invoke-static {v11}, Lbqf;->e(Lbqe;)I

    move-result v1

    iget-boolean v3, v12, Lddf;->c:Z

    if-eqz v3, :cond_1a

    .line 56
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v12, Lddf;->c:Z

    :cond_1a
    iget-object v3, v12, Lddf;->b:Lddk;

    .line 57
    check-cast v3, Ldgw;

    add-int/lit8 v1, v1, -0x1

    iput v1, v3, Ldgw;->c:I

    iget v1, v3, Ldgw;->a:I

    const/4 v4, 0x2

    or-int/2addr v1, v4

    iput v1, v3, Ldgw;->a:I

    .line 25
    :cond_1b
    invoke-static {v11}, Lbqf;->h(Lbqe;)Lddf;

    move-result-object v1

    iget-boolean v3, v12, Lddf;->c:Z

    if-eqz v3, :cond_1c

    .line 58
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v12, Lddf;->c:Z

    :cond_1c
    iget-object v3, v12, Lddf;->b:Lddk;

    .line 59
    check-cast v3, Ldgw;

    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldgy;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v3, Ldgw;->g:Ldgy;

    iget v1, v3, Ldgw;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v3, Ldgw;->a:I

    .line 61
    invoke-virtual {v10, v12}, Lddf;->aj(Lddf;)V

    invoke-static {v11}, Lbqf;->e(Lbqe;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1e

    iget-boolean v1, v10, Lddf;->c:Z

    if-eqz v1, :cond_1d

    .line 62
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v10, Lddf;->c:Z

    :cond_1d
    iget-object v1, v10, Lddf;->b:Lddk;

    .line 63
    check-cast v1, Ldgx;

    const/4 v3, 0x4

    iput v3, v1, Ldgx;->f:I

    iget v3, v1, Ldgx;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Ldgx;->a:I

    :cond_1e
    new-instance v1, Lbqd;

    .line 4
    check-cast v2, Lbqf;

    invoke-direct {v1, v2, v6}, Lbqd;-><init>(Lbqf;[Ljava/lang/String;)V

    .line 25
    invoke-static {v1}, Lbqf;->j(Ljava/lang/Runnable;)V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v26

    long-to-int v2, v1

    iget-boolean v1, v10, Lddf;->c:Z

    if-eqz v1, :cond_1f

    .line 65
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v10, Lddf;->c:Z

    :cond_1f
    iget-object v1, v10, Lddf;->b:Lddk;

    .line 66
    check-cast v1, Ldgx;

    iget v3, v1, Ldgx;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Ldgx;->a:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    goto/16 :goto_11

    .line 25
    :cond_20
    :goto_f
    :try_start_22
    iget-boolean v1, v10, Lddf;->c:Z

    if-eqz v1, :cond_21

    .line 92
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v10, Lddf;->c:Z

    :cond_21
    iget-object v1, v10, Lddf;->b:Lddk;

    .line 93
    check-cast v1, Ldgx;

    const/4 v3, 0x4

    iput v3, v1, Ldgx;->f:I

    iget v3, v1, Ldgx;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Ldgx;->a:I

    new-instance v1, Lbpt;

    const/16 v3, 0x7340

    const-string v4, "Could not find valid auth token for all requested accounts"

    .line 94
    invoke-direct {v1, v3, v4}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v1

    .line 84
    :cond_22
    throw v5

    .line 51
    :cond_23
    move/from16 v17, v1

    move-object/from16 v18, v3

    move-wide/from16 v7, v26

    goto/16 :goto_7

    .line 101
    :catchall_4
    move-exception v0

    goto/16 :goto_12

    .line 84
    :cond_24
    move-wide/from16 v26, v7

    if-eqz v5, :cond_25

    .line 52
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_25
    iget-boolean v1, v10, Lddf;->c:Z

    if-eqz v1, :cond_26

    .line 53
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v10, Lddf;->c:Z

    :cond_26
    iget-object v1, v10, Lddf;->b:Lddk;

    .line 54
    check-cast v1, Ldgx;

    const/4 v3, 0x2

    iput v3, v1, Ldgx;->f:I

    iget v3, v1, Ldgx;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Ldgx;->a:I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_5
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    if-eqz v12, :cond_2c

    :try_start_23
    iget-object v1, v12, Lddf;->b:Lddk;

    .line 55
    check-cast v1, Ldgw;

    iget v1, v1, Ldgw;->c:I

    invoke-static {v1}, Ldpx;->t(I)I

    move-result v1

    if-nez v1, :cond_27

    goto :goto_10

    .line 66
    :cond_27
    const/4 v3, 0x1

    if-ne v1, v3, :cond_29

    .line 55
    :goto_10
    invoke-static {v11}, Lbqf;->e(Lbqe;)I

    move-result v1

    iget-boolean v3, v12, Lddf;->c:Z

    if-eqz v3, :cond_28

    .line 56
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v12, Lddf;->c:Z

    :cond_28
    iget-object v3, v12, Lddf;->b:Lddk;

    .line 57
    check-cast v3, Ldgw;

    add-int/lit8 v1, v1, -0x1

    iput v1, v3, Ldgw;->c:I

    iget v1, v3, Ldgw;->a:I

    const/4 v4, 0x2

    or-int/2addr v1, v4

    iput v1, v3, Ldgw;->a:I

    .line 25
    :cond_29
    invoke-static {v11}, Lbqf;->h(Lbqe;)Lddf;

    move-result-object v1

    iget-boolean v3, v12, Lddf;->c:Z

    if-eqz v3, :cond_2a

    .line 58
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v12, Lddf;->c:Z

    :cond_2a
    iget-object v3, v12, Lddf;->b:Lddk;

    .line 59
    check-cast v3, Ldgw;

    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldgy;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v3, Ldgw;->g:Ldgy;

    iget v1, v3, Ldgw;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v3, Ldgw;->a:I

    .line 61
    invoke-virtual {v10, v12}, Lddf;->aj(Lddf;)V

    invoke-static {v11}, Lbqf;->e(Lbqe;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2c

    iget-boolean v1, v10, Lddf;->c:Z

    if-eqz v1, :cond_2b

    .line 62
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v10, Lddf;->c:Z

    :cond_2b
    iget-object v1, v10, Lddf;->b:Lddk;

    .line 63
    check-cast v1, Ldgx;

    const/4 v3, 0x4

    iput v3, v1, Ldgx;->f:I

    iget v3, v1, Ldgx;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Ldgx;->a:I

    :cond_2c
    new-instance v1, Lbqd;

    .line 4
    check-cast v2, Lbqf;

    invoke-direct {v1, v2, v6}, Lbqd;-><init>(Lbqf;[Ljava/lang/String;)V

    .line 25
    invoke-static {v1}, Lbqf;->j(Ljava/lang/Runnable;)V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v26

    long-to-int v2, v1

    iget-boolean v1, v10, Lddf;->c:Z

    if-eqz v1, :cond_2d

    .line 65
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v10, Lddf;->c:Z

    :cond_2d
    iget-object v1, v10, Lddf;->b:Lddk;

    .line 66
    check-cast v1, Ldgx;

    iget v3, v1, Ldgx;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Ldgx;->a:I

    :goto_11
    iput v2, v1, Ldgx;->g:I

    .line 95
    invoke-virtual/range {v25 .. v25}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldgx;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    if-eqz v24, :cond_2e

    .line 96
    :try_start_24
    invoke-virtual/range {v24 .. v24}, Lbps;->close()V
    :try_end_24
    .catch Lbpt; {:try_start_24 .. :try_end_24} :catch_b

    :cond_2e
    return-object v1

    .line 101
    :catchall_5
    move-exception v0

    move-wide/from16 v26, v7

    :goto_12
    move-object v1, v0

    if-eqz v5, :cond_2f

    .line 67
    :try_start_25
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    goto :goto_13

    .line 99
    :catchall_6
    move-exception v0

    .line 67
    :cond_2f
    :goto_13
    :try_start_26
    throw v1
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_5
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    .line 101
    :catchall_7
    move-exception v0

    goto :goto_15

    :catch_5
    move-exception v0

    goto :goto_18

    :catchall_8
    move-exception v0

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_17

    :catchall_9
    move-exception v0

    move-object/from16 v24, v4

    :goto_14
    move-wide/from16 v26, v7

    :goto_15
    move-object v1, v0

    :goto_16
    move-object/from16 v16, v11

    move-object v11, v12

    goto :goto_1b

    :catch_7
    move-exception v0

    move-object/from16 v24, v4

    :goto_17
    move-wide/from16 v26, v7

    :goto_18
    move-object v1, v0

    :goto_19
    move-object/from16 v16, v11

    move-object v11, v12

    goto :goto_1a

    :catchall_a
    move-exception v0

    move-object/from16 v24, v4

    move-wide/from16 v26, v7

    move-object v1, v0

    move-object v11, v12

    const/16 v16, 0x0

    goto :goto_1b

    :catch_8
    move-exception v0

    move-object/from16 v24, v4

    move-wide/from16 v26, v7

    move-object v1, v0

    move-object v11, v12

    const/16 v16, 0x0

    goto :goto_1a

    .line 100
    :catchall_b
    move-exception v0

    move-object/from16 v24, v4

    move-wide/from16 v26, v7

    move-object v1, v0

    const/4 v11, 0x0

    const/16 v16, 0x0

    goto :goto_1b

    .line 11
    :catch_9
    move-exception v0

    move-object/from16 v24, v4

    move-wide/from16 v26, v7

    move-object v1, v0

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_1a
    :try_start_27
    iget-object v3, v10, Lddf;->b:Lddk;

    .line 97
    check-cast v3, Ldgx;

    iget v3, v3, Ldgx;->a:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_31

    .line 83
    iget-boolean v3, v10, Lddf;->c:Z

    if-eqz v3, :cond_30

    .line 98
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v10, Lddf;->c:Z

    :cond_30
    iget-object v3, v10, Lddf;->b:Lddk;

    .line 99
    check-cast v3, Ldgx;

    const/4 v4, 0x3

    iput v4, v3, Ldgx;->f:I

    iget v4, v3, Ldgx;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ldgx;->a:I

    .line 100
    :cond_31
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    .line 83
    :catchall_c
    move-exception v0

    move-object v1, v0

    .line 100
    :goto_1b
    if-eqz v11, :cond_37

    if-eqz v16, :cond_37

    :try_start_28
    iget-object v3, v11, Lddf;->b:Lddk;

    .line 55
    check-cast v3, Ldgw;

    iget v3, v3, Ldgw;->c:I

    invoke-static {v3}, Ldpx;->t(I)I

    move-result v3

    if-nez v3, :cond_32

    goto :goto_1c

    .line 99
    :cond_32
    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    .line 55
    :goto_1c
    invoke-static/range {v16 .. v16}, Lbqf;->e(Lbqe;)I

    move-result v3

    iget-boolean v4, v11, Lddf;->c:Z

    if-eqz v4, :cond_33

    .line 56
    invoke-virtual {v11}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v11, Lddf;->c:Z

    :cond_33
    iget-object v4, v11, Lddf;->b:Lddk;

    .line 57
    check-cast v4, Ldgw;

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Ldgw;->c:I

    iget v3, v4, Ldgw;->a:I

    const/4 v5, 0x2

    or-int/2addr v3, v5

    iput v3, v4, Ldgw;->a:I

    .line 25
    :cond_34
    invoke-static/range {v16 .. v16}, Lbqf;->h(Lbqe;)Lddf;

    move-result-object v3

    iget-boolean v4, v11, Lddf;->c:Z

    if-eqz v4, :cond_35

    .line 58
    invoke-virtual {v11}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v11, Lddf;->c:Z

    :cond_35
    iget-object v4, v11, Lddf;->b:Lddk;

    .line 59
    check-cast v4, Ldgw;

    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldgy;

    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Ldgw;->g:Ldgy;

    iget v3, v4, Ldgw;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v4, Ldgw;->a:I

    .line 61
    invoke-virtual {v10, v11}, Lddf;->aj(Lddf;)V

    invoke-static/range {v16 .. v16}, Lbqf;->e(Lbqe;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_37

    iget-boolean v3, v10, Lddf;->c:Z

    if-eqz v3, :cond_36

    .line 62
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v10, Lddf;->c:Z

    :cond_36
    iget-object v3, v10, Lddf;->b:Lddk;

    .line 63
    check-cast v3, Ldgx;

    const/4 v4, 0x4

    iput v4, v3, Ldgx;->f:I

    iget v4, v3, Ldgx;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ldgx;->a:I

    :cond_37
    new-instance v3, Lbqd;

    .line 4
    check-cast v2, Lbqf;

    invoke-direct {v3, v2, v6}, Lbqd;-><init>(Lbqf;[Ljava/lang/String;)V

    .line 25
    invoke-static {v3}, Lbqf;->j(Ljava/lang/Runnable;)V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v26

    long-to-int v3, v2

    iget-boolean v2, v10, Lddf;->c:Z

    if-eqz v2, :cond_38

    .line 65
    invoke-virtual {v10}, Lddf;->k()V

    const/4 v2, 0x0

    iput-boolean v2, v10, Lddf;->c:Z

    :cond_38
    iget-object v2, v10, Lddf;->b:Lddk;

    .line 66
    check-cast v2, Ldgx;

    iget v4, v2, Ldgx;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Ldgx;->a:I

    iput v3, v2, Ldgx;->g:I

    .line 101
    throw v1

    .line 1
    :catch_a
    move-exception v0

    move-object/from16 v24, v4

    move-object v1, v0

    :goto_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must have permission to access accounts"

    .line 11
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    .line 102
    :catchall_d
    move-exception v0

    goto :goto_1e

    :catchall_e
    move-exception v0

    move-object/from16 v24, v4

    :goto_1e
    move-object v1, v0

    :goto_1f
    if-eqz v24, :cond_39

    .line 1
    :try_start_29
    invoke-virtual/range {v24 .. v24}, Lbps;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    goto :goto_20

    .line 83
    :catchall_f
    move-exception v0

    .line 1
    :cond_39
    :goto_20
    :try_start_2a
    throw v1
    :try_end_2a
    .catch Lbpt; {:try_start_2a .. :try_end_2a} :catch_b

    .line 25
    :catch_b
    move-exception v0

    move-object v1, v0

    new-instance v2, Lcep;

    iget v3, v1, Lbpt;->a:I

    .line 102
    invoke-virtual {v1}, Lbpt;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcep;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    :goto_21
    throw v2

    :goto_22
    goto :goto_21
.end method
