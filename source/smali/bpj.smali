.class public final Lbpj;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->f:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 1
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "packageName TEXT NOT NULL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "user TEXT NOT NULL"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "name TEXT NOT NULL"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "flagType INTEGER NOT NULL"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "intVal INTEGER"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v7, "boolVal INTEGER"

    aput-object v7, v0, v1

    const/4 v1, 0x6

    const-string v7, "floatVal REAL"

    aput-object v7, v0, v1

    const/4 v1, 0x7

    const-string v7, "stringVal TEXT"

    aput-object v7, v0, v1

    const/16 v1, 0x8

    const-string v7, "extensionVal BLOB"

    aput-object v7, v0, v1

    new-array v1, v6, [Ljava/lang/String;

    const-string v6, "packageName"

    aput-object v6, v1, v2

    const-string v2, "user"

    aput-object v2, v1, v3

    const-string v2, "name"

    aput-object v2, v1, v4

    const-string v2, "committed"

    aput-object v2, v1, v5

    invoke-static {v1}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 3
    const-string v1, "FlagOverrides"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
