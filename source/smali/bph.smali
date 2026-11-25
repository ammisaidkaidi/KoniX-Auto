.class public final Lbph;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->d:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    sput-object v0, Lbph;->a:Lcol;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .line 1
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fromPackageName TEXT NOT NULL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fromVersion INTEGER NOT NULL"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "fromUser TEXT NOT NULL"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "toPackageName TEXT NOT NULL"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "toVersion INTEGER NOT NULL"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "isCommitted INTEGER NOT NULL"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "token BLOB NOT NULL"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const/4 v1, 0x7

    const-string v9, "provenance INTEGER NOT NULL"

    aput-object v9, v0, v1

    const-string v1, "CrossLoggedExperimentTokens"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "fromPackageName"

    aput-object v8, v0, v2

    const-string v8, "fromVersion"

    aput-object v8, v0, v3

    const-string v8, "fromUser"

    aput-object v8, v0, v4

    const-string v4, "toPackageName"

    aput-object v4, v0, v5

    const-string v5, "toVersion"

    aput-object v5, v0, v6

    const-string v5, "isCommitted"

    aput-object v5, v0, v7

    .line 3
    const-string v5, "apply"

    invoke-static {v1, v5, v0}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/String;

    aput-object v4, v0, v2

    .line 5
    const-string v2, "remove"

    invoke-static {v1, v2, v0}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
