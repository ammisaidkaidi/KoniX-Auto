.class public final Lbpm;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->j:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    invoke-static {}, Lbps;->a()I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "packageName TEXT NOT NULL PRIMARY KEY"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "servingVersion INTEGER NOT NULL DEFAULT 0"

    aput-object v2, v0, v1

    .line 2
    const-string v1, "LastSyncAfterRequest"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
