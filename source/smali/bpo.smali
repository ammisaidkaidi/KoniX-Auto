.class public final Lbpo;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->l:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10

    .line 1
    const-class v0, Lbps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCommittedVersion"

    invoke-static {v0, v1, p1}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "version"

    const/4 v9, 0x0

    aput-object v1, v3, v9

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v9

    aput-object p2, v5, v0

    const-string v2, "MultiCommitApplicationStates"

    const-string v4, "packageName = ? AND user = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :cond_1
    if-eqz p0, :cond_2

    .line 4
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p0, 0x0

    return-object p0

    .line 8
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 7
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :cond_3
    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 5
    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8
    throw p0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "packageName TEXT NOT NULL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "user TEXT NOT NULL"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "packageName"

    aput-object v5, v4, v2

    const-string v2, "user"

    aput-object v2, v4, v3

    invoke-static {v4}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "version INTEGER NOT NULL"

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 2
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    aput-object v2, v0, v1

    .line 3
    const-string v1, "MultiCommitApplicationStates"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
