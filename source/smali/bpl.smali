.class public final Lbpl;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->i:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "packageName TEXT NOT NULL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "isolationkey TEXT NOT NULL DEFAULT \'\'"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "namespace INTEGER NOT NULL"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v5, "instance INTEGER NOT NULL"

    aput-object v5, v0, v1

    const-string v1, "GenericDimensions"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "packageName"

    aput-object v4, v0, v2

    const-string v2, "isolationkey"

    aput-object v2, v0, v3

    .line 3
    const-string v2, "configPackageIsolationKey"

    invoke-static {v1, v2, v0}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
