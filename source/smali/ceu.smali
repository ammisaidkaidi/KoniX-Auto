.class public final synthetic Lceu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcew;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcew;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lceu;->a:Lcew;

    iput-object p2, p0, Lceu;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    const-string v0, ") SELECT "

    iget-object v2, v1, Lceu;->a:Lcew;

    iget-object v3, v1, Lceu;->b:Ljava/lang/String;

    :try_start_0
    iget-object v4, v2, Lcew;->a:Landroid/content/Context;

    invoke-static {v4}, Lbps;->c(Landroid/content/Context;)Lbps;

    move-result-object v4
    :try_end_0
    .catch Lbpt; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    new-instance v5, Lbpw;

    iget-object v6, v2, Lcew;->c:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Lbpw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcew;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v4}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    :try_start_2
    iget-object v6, v5, Lbpw;->g:Ljava/lang/String;

    const-string v7, "CURRENT"

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    const-string v12, ""

    const/4 v13, 0x5

    const/16 v14, 0x733c

    const/4 v15, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    :try_start_3
    iget-object v6, v5, Lbpw;->g:Ljava/lang/String;

    const-string v7, ":"

    .line 6
    invoke-virtual {v6, v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 7
    array-length v7, v6

    if-eq v7, v15, :cond_1

    new-instance v0, Lbpt;

    const-string v2, "Empty or malformed snapshot token: "

    iget-object v5, v5, Lbpw;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 108
    :cond_0
    new-instance v5, Ljava/lang/String;

    .line 8
    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    :goto_0
    invoke-direct {v0, v14, v2}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    nop

    .line 9
    aget-object v7, v6, v9

    iput-object v7, v5, Lbpw;->k:Ljava/lang/String;

    iget-object v7, v5, Lbpw;->k:Ljava/lang/String;

    .line 10
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v5, Lbpw;->k:Ljava/lang/String;

    invoke-static {v7, v2}, Lbpv;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Lbpt;

    const-string v2, "Invalid user"

    .line 13
    invoke-direct {v0, v14, v2}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    :goto_1
    aget-object v2, v6, v11

    iget-object v6, v5, Lbpw;->l:Ljava/lang/String;

    invoke-static {v2, v6}, Lre;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lbpw;->i:Ljava/lang/String;

    iget-object v2, v5, Lbpw;->i:Ljava/lang/String;

    iput-object v2, v5, Lbpw;->h:Ljava/lang/String;

    iget-object v6, v5, Lbpw;->k:Ljava/lang/String;

    .line 12
    invoke-static {v3, v2, v6}, Lbpz;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lbpw;->j:I

    goto/16 :goto_4

    .line 34
    :cond_4
    iget-object v2, v5, Lbpw;->g:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Lbpz;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v0, Lbpt;

    const-string v2, "Empty (package not registered?) or malformed snapshot token: "

    iget-object v5, v5, Lbpw;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    .line 15
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 84
    :cond_5
    new-instance v5, Ljava/lang/String;

    .line 15
    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    :goto_2
    invoke-direct {v0, v14, v2}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    nop

    .line 16
    aget-object v6, v2, v10

    iput-object v6, v5, Lbpw;->k:Ljava/lang/String;

    .line 17
    aget-object v6, v2, v9

    iput-object v6, v5, Lbpw;->h:Ljava/lang/String;

    .line 18
    aget-object v6, v2, v13

    iput-object v6, v5, Lbpw;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 19
    :try_start_4
    aget-object v6, v2, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lbpw;->j:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 21
    :try_start_5
    aget-object v6, v2, v15

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, v5, Lbpw;->h:Ljava/lang/String;

    .line 22
    invoke-static {v3, v8}, Lre;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v10
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    const/16 v8, 0x733d

    cmp-long v16, v10, v6

    if-nez v16, :cond_1f

    .line 23
    :try_start_6
    array-length v6, v2

    const/4 v7, 0x7

    if-le v6, v7, :cond_7

    .line 25
    aget-object v6, v2, v7

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_7
    const/4 v6, 0x6

    .line 26
    aget-object v2, v2, v6

    iget-object v6, v5, Lbpw;->i:Ljava/lang/String;

    iget-object v7, v5, Lbpw;->k:Ljava/lang/String;

    .line 27
    invoke-static {v3, v6, v7}, Lbps;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v7, v5, Lbpw;->i:Ljava/lang/String;

    .line 28
    iget-object v10, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 30
    invoke-static {v3, v7, v10, v6, v9}, Lbpi;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 107
    :cond_8
    move-object v6, v12

    .line 31
    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 12
    :cond_9
    :goto_4
    iget-object v7, v5, Lbpw;->i:Ljava/lang/String;

    iget v8, v5, Lbpw;->j:I

    iget-object v2, v5, Lbpw;->k:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "servingVersion"

    .line 32
    move-object v6, v3

    const/4 v13, 0x1

    move-object v9, v2

    const/4 v2, 0x0

    const/4 v15, 0x2

    invoke-static/range {v6 .. v11}, Lbpi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 33
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 35
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v6, :cond_b

    .line 34
    goto :goto_5

    .line 40
    :cond_a
    if-eqz v6, :cond_b

    .line 34
    :goto_5
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    iget-object v6, v5, Lbpw;->i:Ljava/lang/String;

    .line 36
    invoke-static {v6}, Lbpz;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v5, Lbpw;->k:Ljava/lang/String;

    .line 37
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Lbpt;

    iget-object v2, v5, Lbpw;->k:Ljava/lang/String;

    iget-object v5, v5, Lbpw;->i:Ljava/lang/String;

    .line 106
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2f

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Can\'t commit to "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for direct boot aware package "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v14, v2}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_d
    :goto_6
    const-string v6, " FROM Flags WHERE packageName = ? AND version = ? AND user = ? AND committed = 0"

    iget-object v7, v5, Lbpw;->i:Ljava/lang/String;

    .line 38
    invoke-static {v7}, Lcdw;->c(Ljava/lang/String;)Z

    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    const-string v8, "packageName = ? AND user = ? AND committed = 1"

    const-string v9, "packageName = ? AND committed = 1"

    const-string v10, "Flags"

    if-eqz v7, :cond_e

    :try_start_9
    new-array v7, v15, [Ljava/lang/String;

    iget-object v11, v5, Lbpw;->i:Ljava/lang/String;

    aput-object v11, v7, v2

    iget-object v11, v5, Lbpw;->k:Ljava/lang/String;

    aput-object v11, v7, v13

    .line 39
    invoke-virtual {v3, v10, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7

    .line 43
    :cond_e
    new-array v7, v13, [Ljava/lang/String;

    iget-object v11, v5, Lbpw;->i:Ljava/lang/String;

    aput-object v11, v7, v2

    .line 40
    invoke-virtual {v3, v10, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    :goto_7
    iget-object v7, v5, Lbpw;->i:Ljava/lang/String;

    .line 41
    invoke-static {v7}, Lcdw;->c(Ljava/lang/String;)Z

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    const-string v10, "FlagOverrides"

    if-eqz v7, :cond_f

    :try_start_a
    new-array v7, v15, [Ljava/lang/String;

    iget-object v9, v5, Lbpw;->i:Ljava/lang/String;

    aput-object v9, v7, v2

    iget-object v9, v5, Lbpw;->k:Ljava/lang/String;

    aput-object v9, v7, v13

    .line 42
    invoke-virtual {v3, v10, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_8

    .line 71
    :cond_f
    new-array v7, v13, [Ljava/lang/String;

    iget-object v8, v5, Lbpw;->i:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 43
    invoke-virtual {v3, v10, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    :goto_8
    sget-object v7, Lbpw;->b:Ljava/lang/String;

    iget-object v8, v5, Lbpw;->i:Ljava/lang/String;

    iget-object v9, v5, Lbpw;->h:Ljava/lang/String;

    .line 44
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    const-string v9, "\'"

    const-string v11, "packageName"

    if-nez v8, :cond_10

    :try_start_b
    iget-object v8, v5, Lbpw;->i:Ljava/lang/String;

    .line 45
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 46
    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_10
    sget-object v8, Lbpw;->a:Ljava/lang/String;

    .line 47
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x6c

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v12, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "INSERT INTO Flags ("

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :try_start_c
    iget-object v7, v5, Lbpw;->h:Ljava/lang/String;

    .line 49
    invoke-virtual {v6, v13, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget v7, v5, Lbpw;->j:I

    int-to-long v7, v7

    .line 50
    invoke-virtual {v6, v15, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v7, v5, Lbpw;->k:Ljava/lang/String;

    .line 51
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v6, :cond_11

    .line 53
    :try_start_d
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_11
    iget-object v6, v5, Lbpw;->i:Ljava/lang/String;

    iget-object v7, v5, Lbpw;->k:Ljava/lang/String;

    .line 54
    invoke-static {v3, v6, v7}, Lbpz;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)[Lbpb;

    move-result-object v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const-string v7, "user"

    if-eqz v6, :cond_12

    :try_start_e
    array-length v12, v6

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v12, :cond_12

    .line 55
    aget-object v2, v6, v14

    new-instance v15, Landroid/content/ContentValues;

    .line 56
    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    iget-object v8, v5, Lbpw;->i:Ljava/lang/String;

    .line 57
    invoke-virtual {v15, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v5, Lbpw;->k:Ljava/lang/String;

    .line 58
    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "name"

    .line 59
    iget-object v13, v2, Lbpb;->b:Ljava/lang/String;

    invoke-virtual {v15, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "flagType"

    .line 60
    iget v13, v2, Lbpb;->i:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "committed"

    .line 61
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    iget v1, v2, Lbpb;->h:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "extensionVal"

    goto :goto_a

    .line 68
    :pswitch_0
    const-string v1, "stringVal"

    .line 64
    invoke-virtual {v2}, Lbpb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_1
    const-string v1, "floatVal"

    .line 65
    invoke-virtual {v2}, Lbpb;->a()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_b

    :pswitch_2
    const-string v1, "boolVal"

    .line 66
    invoke-virtual {v2}, Lbpb;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b

    :pswitch_3
    const-string v1, "intVal"

    .line 67
    invoke-virtual {v2}, Lbpb;->b()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_b

    .line 63
    :goto_a
    invoke-virtual {v2}, Lbpb;->e()[B

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_b
    nop

    .line 68
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v3, v10, v1, v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x2

    goto :goto_9

    .line 67
    :cond_12
    if-nez v6, :cond_19

    const-string v1, " FROM ExperimentTokens WHERE packageName = ? AND version = ? AND user = ? AND isCommitted = 0"

    iget-object v2, v5, Lbpw;->i:Ljava/lang/String;

    .line 69
    invoke-static {v2}, Lcdw;->c(Ljava/lang/String;)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const-string v6, "ExperimentTokens"

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    :try_start_f
    new-array v8, v2, [Ljava/lang/String;

    iget-object v2, v5, Lbpw;->i:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    iget-object v2, v5, Lbpw;->k:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v2, v8, v10

    const-string v2, "packageName = ? AND user = ? AND isCommitted = 1"

    .line 70
    invoke-virtual {v3, v6, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c

    .line 90
    :cond_13
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    iget-object v2, v5, Lbpw;->i:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    const-string v2, "packageName = ? AND isCommitted = 1"

    .line 71
    invoke-virtual {v3, v6, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    :goto_c
    sget-object v2, Lbpw;->d:Ljava/lang/String;

    iget-object v6, v5, Lbpw;->h:Ljava/lang/String;

    iget-object v8, v5, Lbpw;->i:Ljava/lang/String;

    .line 72
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, v5, Lbpw;->i:Ljava/lang/String;

    .line 73
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x2

    add-int/2addr v8, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v2, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_14
    sget-object v6, Lbpw;->c:Ljava/lang/String;

    .line 75
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0x84

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "INSERT INTO ExperimentTokens ("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    iget-object v2, v5, Lbpw;->h:Ljava/lang/String;

    .line 77
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget v2, v5, Lbpw;->j:I

    int-to-long v8, v2

    .line 78
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, v5, Lbpw;->k:Ljava/lang/String;

    .line 79
    const/4 v6, 0x3

    invoke-virtual {v1, v6, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v1, :cond_15

    .line 81
    :try_start_11
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_15
    iget v1, v5, Lbpw;->j:I

    iget-object v2, v5, Lbpw;->k:Ljava/lang/String;

    const-string v6, " FROM CrossLoggedExperimentTokens WHERE fromPackageName = ? AND fromVersion = ? AND fromUser = ? AND isCommitted = 0"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    iget-object v8, v5, Lbpw;->i:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const-string v8, "CrossLoggedExperimentTokens"

    const-string v10, "fromPackageName = ? AND isCommitted = 1"

    .line 82
    invoke-virtual {v3, v8, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v8, v5, Lbpw;->i:Ljava/lang/String;

    .line 83
    invoke-static {v8}, Lcdw;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_f

    .line 101
    :cond_16
    sget-object v8, Lbpw;->e:Ljava/lang/String;

    sget-object v9, Lbpw;->f:Ljava/lang/String;

    .line 84
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit16 v10, v10, 0xa6

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v10, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "INSERT INTO CrossLoggedExperimentTokens ("

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    iget-object v0, v5, Lbpw;->i:Ljava/lang/String;

    .line 86
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    int-to-long v0, v1

    .line 87
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 88
    const/4 v0, 0x3

    invoke-virtual {v6, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 89
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v6, :cond_19

    .line 90
    :try_start_13
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_f

    .line 75
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_17

    .line 84
    :try_start_14
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_d

    .line 24
    :catchall_1
    move-exception v0

    .line 84
    :cond_17
    :goto_d
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 47
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_18

    .line 75
    :try_start_16
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_e

    .line 24
    :catchall_3
    move-exception v0

    .line 75
    :cond_18
    :goto_e
    :try_start_17
    throw v2

    .line 83
    :cond_19
    :goto_f
    iget-object v0, v5, Lbpw;->k:Ljava/lang/String;

    iget v1, v5, Lbpw;->j:I

    int-to-long v1, v1

    iget-object v6, v5, Lbpw;->i:Ljava/lang/String;

    .line 91
    invoke-static {v6}, Lcdw;->c(Ljava/lang/String;)Z

    move-result v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    const-string v8, "version"

    if-eqz v6, :cond_1a

    :try_start_18
    new-instance v6, Landroid/content/ContentValues;

    .line 92
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v5, Lbpw;->i:Ljava/lang/String;

    .line 93
    invoke-virtual {v6, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "MultiCommitApplicationStates"

    .line 96
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_10

    .line 105
    :cond_1a
    new-instance v6, Landroid/content/ContentValues;

    .line 97
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v5, Lbpw;->i:Ljava/lang/String;

    .line 98
    invoke-virtual {v6, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "ApplicationStates"

    .line 101
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 102
    :goto_10
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 103
    :try_start_19
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 104
    invoke-static {}, Lbqb;->a()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-eqz v4, :cond_1b

    .line 105
    :try_start_1a
    invoke-virtual {v4}, Lbps;->close()V
    :try_end_1a
    .catch Lbpt; {:try_start_1a .. :try_end_1a} :catch_2

    :cond_1b
    const/4 v0, 0x0

    return-object v0

    .line 32
    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_1c

    .line 47
    :try_start_1b
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto :goto_11

    .line 24
    :catchall_5
    move-exception v0

    .line 47
    :cond_1c
    :goto_11
    :try_start_1c
    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 13
    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_1d

    .line 32
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    goto :goto_12

    .line 24
    :catchall_7
    move-exception v0

    .line 32
    :cond_1d
    :goto_12
    :try_start_1e
    throw v1

    .line 31
    :cond_1e
    new-instance v0, Lbpt;

    const-string v1, "Stale snapshot (committed configuration changed)"

    .line 107
    invoke-direct {v0, v8, v1}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 22
    :cond_1f
    :try_start_1f
    new-instance v0, Lbpt;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x63

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Stale snapshot (change count changed - expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 20
    :catch_0
    move-exception v0

    :try_start_20
    new-instance v1, Lbpt;

    const-string v2, "Malformed snapshot token (change): "

    iget-object v5, v5, Lbpw;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_20

    .line 24
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 20
    :cond_20
    new-instance v5, Ljava/lang/String;

    .line 24
    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    :goto_13
    invoke-direct {v1, v14, v2, v0}, Lbpt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 15
    :catch_1
    move-exception v0

    new-instance v1, Lbpt;

    const-string v2, "Malformed snapshot token (version): "

    iget-object v5, v5, Lbpw;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_21

    .line 20
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 24
    :cond_21
    new-instance v5, Ljava/lang/String;

    .line 20
    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    :goto_14
    invoke-direct {v1, v14, v2, v0}, Lbpt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 1
    :catchall_8
    move-exception v0

    .line 103
    :try_start_21
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 109
    :catchall_9
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_22

    .line 1
    :try_start_22
    invoke-virtual {v4}, Lbps;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    goto :goto_15

    .line 24
    :catchall_a
    move-exception v0

    .line 1
    :cond_22
    :goto_15
    :try_start_23
    throw v1
    :try_end_23
    .catch Lbpt; {:try_start_23 .. :try_end_23} :catch_2

    .line 107
    :catch_2
    move-exception v0

    new-instance v1, Lcep;

    iget v2, v0, Lbpt;->a:I

    .line 109
    invoke-virtual {v0}, Lbpt;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcep;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    :goto_16
    throw v1

    :goto_17
    goto :goto_16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
