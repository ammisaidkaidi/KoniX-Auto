.class public final Lbpp;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->m:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "isSynced"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    const-string p1, "Packages"

    const-string v2, "packageName = ?"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "packageName TEXT NOT NULL PRIMARY KEY"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "version INTEGER NOT NULL"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "params BLOB"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "dynamicParams BLOB"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "weak INTEGER NOT NULL"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "androidPackageName TEXT NOT NULL"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "isSynced INTEGER"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "serializedDeclarativeRegInfo BLOB DEFAULT NULL, configTier INTEGER DEFAULT NULL, baselineCl INTEGER DEFAULT NULL, heterodyneInfo BLOB DEFAULT NULL"

    aput-object v4, v0, v1

    const-string v1, "Packages"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "androidPackageName"

    aput-object v3, v0, v2

    .line 3
    invoke-static {v1, v3, v0}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
