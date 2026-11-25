.class public final Lbpg;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->c:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 2
    const-string v3, "tag"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 4
    const-string p1, "ApplicationTags"

    const-string p2, "packageName = ? AND user = ? AND version = ? "

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "packageName TEXT NOT NULL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "version INTEGER NOT NULL"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "partitionId INTEGER NOT NULL"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "user TEXT NOT NULL"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "packageName"

    aput-object v7, v6, v2

    const-string v2, "version"

    aput-object v2, v6, v3

    const-string v2, "partitionId"

    aput-object v2, v6, v4

    const-string v2, "user"

    aput-object v2, v6, v5

    invoke-static {v6}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "tag BLOB NOT NULL"

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
    const-string v1, "ApplicationTags"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
