.class public final Lalb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public final a:Lahd;

.field private final c:Lahi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lalb;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lahi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lalb;->c:Lahi;

    new-instance p1, Lahd;

    invoke-direct {p1}, Lahd;-><init>()V

    iput-object p1, p0, Lalb;->a:Lahd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lalb;->c:Lahi;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v0, Lahi;->d:Ljava/util/List;

    .line 2
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {}, Lahi;->L()Ljava/util/Set;

    move-result-object v3

    .line 4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v1, Lalb;->c:Lahi;

    aput-object v3, v2, v6

    const-string v3, "WorkContinuation has cycles (%s)"

    .line 96
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v0, Lahi;->d:Ljava/util/List;

    .line 6
    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lalb;->c:Lahi;

    iget-object v0, v0, Lahi;->a:Lahx;

    iget-object v2, v0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    .line 7
    invoke-virtual {v2}, Laee;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    :try_start_1
    iget-object v0, v1, Lalb;->c:Lahi;

    .line 8
    invoke-static {}, Lahi;->L()Ljava/util/Set;

    move-result-object v3

    iget-object v4, v0, Lahi;->a:Lahx;

    iget-object v5, v0, Lahi;->c:Ljava/util/List;

    new-array v8, v6, [Ljava/lang/String;

    .line 9
    invoke-interface {v3, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v8, v0, Lahi;->b:Ljava/lang/String;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v4, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    if-eqz v3, :cond_2

    array-length v12, v3

    if-lez v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    .line 17
    :cond_2
    const/4 v12, 0x0

    .line 10
    :goto_1
    if-eqz v12, :cond_8

    .line 11
    array-length v15, v3

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    :goto_2
    if-ge v13, v15, :cond_7

    aget-object v14, v3, v13

    .line 12
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v6

    invoke-interface {v6, v14}, Lakl;->a(Ljava/lang/String;)Lakk;

    move-result-object v6

    if-nez v6, :cond_3

    .line 88
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v3, Lalb;->b:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const-string v6, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 89
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Throwable;

    .line 88
    invoke-static {v3, v4, v6}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object/from16 v20, v0

    move-object/from16 v19, v2

    const/4 v6, 0x0

    goto/16 :goto_12

    .line 94
    :cond_3
    const/4 v14, 0x0

    iget v6, v6, Lakk;->q:I

    const/4 v14, 0x3

    if-ne v6, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    and-int v18, v18, v14

    const/4 v14, 0x4

    if-ne v6, v14, :cond_5

    const/16 v16, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x6

    if-ne v6, v14, :cond_6

    const/16 v17, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    goto :goto_5

    .line 17
    :cond_8
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 13
    :goto_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    xor-int/2addr v6, v7

    if-eqz v6, :cond_11

    if-nez v12, :cond_11

    .line 14
    :try_start_2
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v13

    const-string v14, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 15
    invoke-static {v14, v7}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v8, :cond_9

    .line 16
    :try_start_3
    invoke-virtual {v14, v7}, Laeh;->e(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    goto :goto_6

    .line 51
    :cond_9
    nop

    .line 17
    :try_start_4
    invoke-virtual {v14, v7, v8}, Laeh;->f(ILjava/lang/String;)V

    .line 14
    :goto_6
    move-object v15, v13

    check-cast v15, Lakv;

    iget-object v15, v15, Lakv;->a:Laee;

    .line 18
    invoke-virtual {v15}, Laee;->e()V

    .line 14
    check-cast v13, Lakv;

    iget-object v13, v13, Lakv;->a:Laee;

    .line 19
    invoke-virtual {v13, v14}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string v15, "id"

    .line 20
    invoke-static {v13, v15}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v7, "state"

    .line 21
    invoke-static {v13, v7}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    new-instance v1, Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 22
    move-object/from16 v19, v2

    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    :goto_7
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lakj;

    invoke-direct {v2}, Lakj;-><init>()V

    .line 24
    move-object/from16 v20, v0

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lakj;->a:Ljava/lang/String;

    .line 25
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 26
    invoke-static {v0}, Lfw;->i(I)I

    move-result v0

    iput v0, v2, Lakj;->b:I

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v0, v20

    goto :goto_7

    .line 28
    :cond_a
    move-object/from16 v20, v0

    :try_start_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 29
    invoke-virtual {v14}, Laeh;->i()V

    .line 31
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lakj;

    .line 33
    iget v2, v2, Lakj;->b:I

    const/4 v7, 0x1

    if-eq v2, v7, :cond_c

    const/4 v7, 0x2

    if-ne v2, v7, :cond_b

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_12

    :cond_d
    new-instance v0, Lakz;

    .line 34
    invoke-direct {v0, v4, v8}, Lakz;-><init>(Lahx;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lala;->run()V

    .line 36
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v2

    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakj;

    .line 38
    iget-object v1, v1, Lakj;->a:Ljava/lang/String;

    .line 36
    move-object v4, v2

    check-cast v4, Lakv;

    iget-object v4, v4, Lakv;->a:Laee;

    .line 39
    invoke-virtual {v4}, Laee;->e()V

    .line 36
    move-object v4, v2

    check-cast v4, Lakv;

    iget-object v4, v4, Lakv;->c:Laej;

    .line 40
    invoke-virtual {v4}, Laej;->d()Lafn;

    move-result-object v4

    if-nez v1, :cond_e

    .line 41
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lafm;->e(I)V

    goto :goto_9

    .line 47
    :cond_e
    const/4 v7, 0x1

    .line 42
    invoke-virtual {v4, v7, v1}, Lafm;->f(ILjava/lang/String;)V

    .line 36
    :goto_9
    move-object v1, v2

    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->a:Laee;

    .line 43
    invoke-virtual {v1}, Laee;->f()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 44
    :try_start_8
    invoke-virtual {v4}, Lafn;->a()V

    .line 36
    move-object v1, v2

    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->a:Laee;

    .line 45
    invoke-virtual {v1}, Laee;->h()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 36
    :try_start_9
    move-object v1, v2

    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->a:Laee;

    .line 46
    invoke-virtual {v1}, Laee;->g()V

    .line 36
    move-object v1, v2

    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->c:Laej;

    .line 47
    invoke-virtual {v1, v4}, Laej;->e(Lafn;)V

    goto :goto_8

    .line 30
    :catchall_0
    move-exception v0

    .line 36
    move-object v1, v2

    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->a:Laee;

    .line 46
    invoke-virtual {v1}, Laee;->g()V

    .line 36
    check-cast v2, Lakv;

    iget-object v1, v2, Lakv;->c:Laej;

    .line 47
    invoke-virtual {v1, v4}, Laej;->e(Lafn;)V

    .line 87
    throw v0

    .line 42
    :cond_f
    const/4 v0, 0x1

    goto :goto_b

    .line 51
    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    .line 95
    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v19, v2

    .line 28
    :goto_a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 29
    invoke-virtual {v14}, Laeh;->i()V

    .line 30
    throw v0

    .line 85
    :catchall_3
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_14

    .line 17
    :cond_11
    move-object/from16 v20, v0

    move-object/from16 v19, v2

    const/4 v0, 0x0

    .line 48
    :goto_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagy;

    iget-object v4, v2, Lagy;->a:Lakk;

    if-eqz v12, :cond_14

    if-nez v18, :cond_14

    if-eqz v16, :cond_12

    .line 52
    const/4 v5, 0x4

    iput v5, v4, Lakk;->q:I

    const/4 v7, 0x6

    goto :goto_d

    .line 82
    :cond_12
    const/4 v5, 0x4

    if-eqz v17, :cond_13

    .line 53
    const/4 v7, 0x6

    iput v7, v4, Lakk;->q:I

    goto :goto_d

    :cond_13
    const/4 v7, 0x6

    const/4 v13, 0x5

    .line 54
    iput v13, v4, Lakk;->q:I

    goto :goto_d

    .line 48
    :cond_14
    const/4 v5, 0x4

    const/4 v7, 0x6

    .line 49
    invoke-virtual {v4}, Lakk;->d()Z

    move-result v13

    if-nez v13, :cond_15

    .line 50
    iput-wide v9, v4, Lakk;->m:J

    goto :goto_d

    :cond_15
    const-wide/16 v13, 0x0

    .line 51
    iput-wide v13, v4, Lakk;->m:J

    .line 55
    :goto_d
    iget v13, v4, Lakk;->q:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_16

    const/4 v13, 0x0

    goto :goto_e

    .line 82
    :cond_16
    const/4 v13, 0x1

    .line 55
    :goto_e
    xor-int/2addr v13, v14

    or-int/2addr v0, v13

    .line 56
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lakv;

    iget-object v14, v14, Lakv;->a:Laee;

    .line 57
    invoke-virtual {v14}, Laee;->e()V

    .line 56
    move-object v14, v13

    check-cast v14, Lakv;

    iget-object v14, v14, Lakv;->a:Laee;

    .line 58
    invoke-virtual {v14}, Laee;->f()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 56
    :try_start_a
    move-object v14, v13

    check-cast v14, Lakv;

    iget-object v14, v14, Lakv;->b:Lady;

    .line 59
    invoke-virtual {v14, v4}, Lady;->a(Ljava/lang/Object;)V

    .line 56
    move-object v4, v13

    check-cast v4, Lakv;

    iget-object v4, v4, Lakv;->a:Laee;

    .line 60
    invoke-virtual {v4}, Laee;->h()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 56
    :try_start_b
    check-cast v13, Lakv;

    iget-object v4, v13, Lakv;->a:Laee;

    .line 61
    invoke-virtual {v4}, Laee;->g()V

    if-eqz v12, :cond_17

    .line 62
    array-length v4, v3

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v4, :cond_17

    aget-object v14, v3, v13

    new-instance v15, Lboa;

    .line 63
    invoke-virtual {v2}, Lagy;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v15, v5, v14, v7}, Lboa;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 64
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->u()Lakx;

    move-result-object v5

    iget-object v7, v5, Lakx;->a:Laee;

    .line 65
    invoke-virtual {v7}, Laee;->e()V

    iget-object v7, v5, Lakx;->a:Laee;

    .line 66
    invoke-virtual {v7}, Laee;->f()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :try_start_c
    iget-object v7, v5, Lakx;->b:Lady;

    .line 67
    invoke-virtual {v7, v15}, Lady;->a(Ljava/lang/Object;)V

    iget-object v7, v5, Lakx;->a:Laee;

    .line 68
    invoke-virtual {v7}, Laee;->h()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    iget-object v5, v5, Lakx;->a:Laee;

    .line 69
    invoke-virtual {v5}, Laee;->g()V

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x4

    const/4 v7, 0x6

    goto :goto_f

    .line 83
    :catchall_4
    move-exception v0

    iget-object v1, v5, Lakx;->a:Laee;

    .line 69
    invoke-virtual {v1}, Laee;->g()V

    .line 86
    throw v0

    .line 69
    :cond_17
    iget-object v4, v2, Lagy;->b:Ljava/util/Set;

    .line 70
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 71
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->r()Lakx;

    move-result-object v7

    new-instance v13, Lboa;

    invoke-virtual {v2}, Lagy;->a()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v5, v14}, Lboa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v7, Lakx;->a:Laee;

    .line 72
    invoke-virtual {v5}, Laee;->e()V

    iget-object v5, v7, Lakx;->a:Laee;

    .line 73
    invoke-virtual {v5}, Laee;->f()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :try_start_e
    iget-object v5, v7, Lakx;->b:Lady;

    .line 74
    invoke-virtual {v5, v13}, Lady;->a(Ljava/lang/Object;)V

    iget-object v5, v7, Lakx;->a:Laee;

    .line 75
    invoke-virtual {v5}, Laee;->h()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    iget-object v5, v7, Lakx;->a:Laee;

    .line 76
    invoke-virtual {v5}, Laee;->g()V

    goto :goto_10

    .line 86
    :catchall_5
    move-exception v0

    iget-object v1, v7, Lakx;->a:Laee;

    .line 76
    invoke-virtual {v1}, Laee;->g()V

    .line 84
    throw v0

    .line 76
    :cond_18
    if-eqz v6, :cond_19

    .line 77
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->s()Lakx;

    move-result-object v4

    new-instance v5, Lboa;

    invoke-virtual {v2}, Lagy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v8, v2}, Lboa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lakx;->a:Laee;

    .line 78
    invoke-virtual {v2}, Laee;->e()V

    iget-object v2, v4, Lakx;->a:Laee;

    .line 79
    invoke-virtual {v2}, Laee;->f()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :try_start_10
    iget-object v2, v4, Lakx;->b:Lady;

    .line 80
    invoke-virtual {v2, v5}, Lady;->a(Ljava/lang/Object;)V

    iget-object v2, v4, Lakx;->a:Laee;

    .line 81
    invoke-virtual {v2}, Laee;->h()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    iget-object v2, v4, Lakx;->a:Laee;

    .line 82
    invoke-virtual {v2}, Laee;->g()V

    goto :goto_11

    .line 17
    :catchall_6
    move-exception v0

    iget-object v1, v4, Lakx;->a:Laee;

    .line 82
    invoke-virtual {v1}, Laee;->g()V

    .line 85
    throw v0

    .line 82
    :cond_19
    :goto_11
    goto/16 :goto_c

    .line 87
    :catchall_7
    move-exception v0

    .line 56
    check-cast v13, Lakv;

    iget-object v1, v13, Lakv;->a:Laee;

    .line 61
    invoke-virtual {v1}, Laee;->g()V

    .line 83
    throw v0

    .line 51
    :cond_1a
    move v6, v0

    .line 88
    :goto_12
    move-object/from16 v0, v20

    const/4 v1, 0x1

    iput-boolean v1, v0, Lahi;->e:Z

    .line 90
    invoke-virtual/range {v19 .. v19}, Laee;->h()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 91
    :try_start_12
    invoke-virtual/range {v19 .. v19}, Laee;->g()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-eqz v6, :cond_1b

    move-object/from16 v1, p0

    :try_start_13
    iget-object v0, v1, Lalb;->c:Lahi;

    iget-object v0, v0, Lahi;->a:Lahx;

    iget-object v0, v0, Lahx;->b:Landroid/content/Context;

    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 92
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lale;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    iget-object v0, v1, Lalb;->c:Lahi;

    iget-object v0, v0, Lahi;->a:Lahx;

    iget-object v2, v0, Lahx;->c:Lagf;

    iget-object v3, v0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lahx;->e:Ljava/util/List;

    .line 93
    invoke-static {v2, v3, v0}, Lahh;->b(Lagf;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_13

    .line 91
    :cond_1b
    move-object/from16 v1, p0

    .line 93
    :goto_13
    iget-object v0, v1, Lalb;->a:Lahd;

    sget-object v2, Lagv;->a:Lagu;

    .line 94
    invoke-virtual {v0, v2}, Lahd;->a(Lez;)V

    return-void

    .line 84
    :catchall_8
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_16

    .line 85
    :catchall_9
    move-exception v0

    :goto_14
    move-object/from16 v1, p0

    goto :goto_15

    :catchall_a
    move-exception v0

    move-object/from16 v19, v2

    .line 91
    :goto_15
    invoke-virtual/range {v19 .. v19}, Laee;->g()V

    .line 95
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 84
    :catchall_b
    move-exception v0

    :goto_16
    iget-object v2, v1, Lalb;->a:Lahd;

    new-instance v3, Lags;

    invoke-direct {v3, v0}, Lags;-><init>(Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {v2, v3}, Lahd;->a(Lez;)V

    return-void
.end method
