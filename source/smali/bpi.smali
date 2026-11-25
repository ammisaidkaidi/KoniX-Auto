.class public final Lbpi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->e:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    sput-object v0, Lbpi;->a:Lcol;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 1
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v3, v1

    const/4 p5, 0x4

    new-array v5, p5, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x2

    aput-object p3, v5, p1

    if-eq v0, p4, :cond_0

    const-string p1, "0"

    goto :goto_0

    .line 2
    :cond_0
    const-string p1, "1"

    .line 1
    :goto_0
    const/4 p2, 0x3

    aput-object p1, v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    const-string v2, "ExperimentTokens"

    const-string v4, "packageName = ? AND version = ? AND user = ? AND isCommitted = ?"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .line 1
    const-class v0, Lbps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getConfigHash"

    invoke-static {v0, v1, p1}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v7, "configHash"

    .line 2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lbpi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 5
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :cond_1
    :try_start_3
    const-string p1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_0

    .line 5
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 2
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :cond_2
    :goto_1
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 6
    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 7
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 2
    const-string v3, "tokensTag"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    new-array v2, v1, [B

    .line 3
    const-string v3, "experimentToken"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 4
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 5
    const-string p1, "ExperimentTokens"

    const-string p2, "packageName = ? AND user = ? AND version = ?"

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .line 1
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "packageName TEXT NOT NULL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "version INTEGER NOT NULL"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "user TEXT NOT NULL"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "isCommitted INTEGER NOT NULL"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "experimentToken BLOB NOT NULL"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v7, "serverToken TEXT NOT NULL"

    aput-object v7, v0, v1

    const/4 v1, 0x6

    const-string v7, "configHash TEXT NOT NULL DEFAULT \'\'"

    aput-object v7, v0, v1

    const/4 v1, 0x7

    const-string v7, "servingVersion INTEGER NOT NULL DEFAULT 0"

    aput-object v7, v0, v1

    new-array v1, v6, [Ljava/lang/String;

    const-string v7, "packageName"

    aput-object v7, v1, v2

    const-string v8, "version"

    aput-object v8, v1, v3

    const-string v9, "user"

    aput-object v9, v1, v4

    const-string v10, "isCommitted"

    aput-object v10, v1, v5

    invoke-static {v1}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "tokensTag BLOB DEFAULT NULL, flagsHash INTEGER DEFAULT NULL"

    if-eqz v11, :cond_0

    .line 2
    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 2
    invoke-direct {v1, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 v11, 0x8

    aput-object v1, v0, v11

    .line 3
    const-string v1, "ExperimentTokens"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    aput-object v7, v0, v2

    aput-object v8, v0, v3

    aput-object v9, v0, v4

    aput-object v10, v0, v5

    .line 5
    const-string v2, "committed"

    invoke-static {v1, v2, v0}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
