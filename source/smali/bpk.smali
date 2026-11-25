.class public final Lbpk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcol;

.field public static final b:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->h:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    sput-object v0, Lbpk;->a:Lcol;

    sget-object v0, Lbpe;->g:Lbpe;

    .line 2
    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    sput-object v0, Lbpk;->b:Lcol;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .line 1
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "packageName TEXT NOT NULL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "version INTEGER NOT NULL"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "flagType INTEGER NOT NULL"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "partitionId INTEGER NOT NULL"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "user TEXT NOT NULL"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "name TEXT NOT NULL"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "intVal INTEGER"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "boolVal INTEGER"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const/16 v1, 0x8

    const-string v10, "floatVal REAL"

    aput-object v10, v0, v1

    const/16 v1, 0x9

    const-string v10, "stringVal TEXT"

    aput-object v10, v0, v1

    const/16 v1, 0xa

    const-string v10, "extensionVal BLOB"

    aput-object v10, v0, v1

    new-array v1, v9, [Ljava/lang/String;

    const-string v9, "packageName"

    aput-object v9, v1, v2

    const-string v10, "version"

    aput-object v10, v1, v3

    const-string v11, "flagType"

    aput-object v11, v1, v4

    const-string v11, "partitionId"

    aput-object v11, v1, v5

    const-string v11, "user"

    aput-object v11, v1, v6

    const-string v12, "name"

    aput-object v12, v1, v7

    const-string v7, "committed"

    aput-object v7, v1, v8

    invoke-static {v1}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v12, "committed INTEGER NOT NULL"

    if-eqz v8, :cond_0

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
    const/16 v8, 0xb

    aput-object v1, v0, v8

    .line 3
    const-string v1, "Flags"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    aput-object v9, v0, v2

    aput-object v10, v0, v3

    aput-object v11, v0, v4

    aput-object v7, v0, v5

    .line 5
    invoke-static {v1, v7, v0}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
