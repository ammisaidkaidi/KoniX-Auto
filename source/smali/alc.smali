.class public final Lalc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:J


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lahx;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ForceStopRunnable"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lalc;->a:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lalc;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lahx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lalc;->c:Landroid/content/Context;

    iput-object p2, p0, Lalc;->d:Lahx;

    const/4 p1, 0x0

    iput p1, p0, Lalc;->e:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    invoke-static {}, Lre;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/high16 v1, 0x8000000

    goto :goto_0

    .line 5
    :cond_0
    const/high16 v1, 0xa000000

    .line 3
    :goto_0
    invoke-static {p0, v1}, Lalc;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lalc;->b:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 2
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3
    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    const/4 v1, -0x1

    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    const-string v0, "reschedule_needed"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Lagr;->d([Ljava/lang/Throwable;)V

    goto :goto_1

    .line 59
    :cond_0
    iget-object v2, p0, Lalc;->c:Landroid/content/Context;

    .line 3
    invoke-static {v2}, Lalf;->a(Landroid/content/Context;)Z

    move-result v2

    .line 4
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "Is default app process = %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Lagr;->d([Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_1

    iget-object v0, p0, Lalc;->d:Lahx;

    .line 71
    :goto_0
    invoke-virtual {v0}, Lahx;->d()V

    return-void

    .line 2
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, p0, Lalc;->c:Landroid/content/Context;

    .line 5
    invoke-static {v2}, Lahv;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_6

    .line 7
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Throwable;

    invoke-virtual {v5, v7}, Lagr;->d([Ljava/lang/Throwable;)V

    new-instance v5, Ljava/util/HashMap;

    .line 8
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {v2}, Lahv;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v9, "androidx.work.workdb"

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lahv;->b:[Ljava/lang/String;

    .line 12
    array-length v9, v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v6, :cond_2

    aget-object v10, v2, v9

    new-instance v11, Ljava/io/File;

    .line 13
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    .line 14
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 16
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 17
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 18
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    .line 19
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v4

    const-string v10, "Over-writing contents of %s"

    .line 20
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v10, Lahv;->a:Ljava/lang/String;

    new-array v11, v4, [Ljava/lang/Throwable;

    invoke-static {v10, v9, v11}, Lagr;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 22
    :cond_4
    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_5

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v7, v9, v4

    aput-object v8, v9, v3

    const-string v7, "Migrated %s to %s"

    .line 23
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_4

    .line 25
    :cond_5
    new-array v9, v10, [Ljava/lang/Object;

    aput-object v7, v9, v4

    aput-object v8, v9, v3

    const-string v7, "Renaming %s to %s failed"

    .line 24
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    :goto_4
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Lagr;->d([Ljava/lang/Throwable;)V

    goto :goto_3

    .line 26
    :cond_6
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Lagr;->d([Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lalc;->c:Landroid/content/Context;

    iget-object v5, p0, Lalc;->d:Lahx;

    .line 27
    invoke-static {v2, v5}, Lair;->f(Landroid/content/Context;Lahx;)Z

    move-result v2

    iget-object v5, p0, Lalc;->d:Lahx;

    iget-object v5, v5, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    .line 28
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v7

    .line 29
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->q()Laki;

    move-result-object v8

    .line 30
    invoke-virtual {v5}, Laee;->f()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    :try_start_3
    invoke-interface {v7}, Lakl;->b()Ljava/util/List;

    move-result-object v9

    .line 32
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v3

    if-eqz v10, :cond_7

    .line 33
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lakk;

    new-array v12, v3, [Ljava/lang/String;

    .line 34
    iget-object v13, v11, Lakk;->b:Ljava/lang/String;

    aput-object v13, v12, v4

    invoke-interface {v7, v3, v12}, Lakl;->i(I[Ljava/lang/String;)V

    .line 35
    iget-object v11, v11, Lakk;->b:Ljava/lang/String;

    const-wide/16 v12, -0x1

    invoke-interface {v7, v11, v12, v13}, Lakl;->h(Ljava/lang/String;J)V

    goto :goto_5

    :cond_7
    iget-object v7, v8, Laki;->a:Laee;

    .line 36
    invoke-virtual {v7}, Laee;->e()V

    iget-object v7, v8, Laki;->c:Laej;

    .line 37
    invoke-virtual {v7}, Laej;->d()Lafn;

    move-result-object v7

    iget-object v9, v8, Laki;->a:Laee;

    .line 38
    invoke-virtual {v9}, Laee;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :try_start_4
    invoke-virtual {v7}, Lafn;->a()V

    iget-object v9, v8, Laki;->a:Laee;

    .line 40
    invoke-virtual {v9}, Laee;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v9, v8, Laki;->a:Laee;

    .line 41
    invoke-virtual {v9}, Laee;->g()V

    iget-object v8, v8, Laki;->c:Laej;

    .line 42
    invoke-virtual {v8, v7}, Laej;->e(Lafn;)V

    .line 44
    invoke-virtual {v5}, Laee;->h()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 45
    :try_start_6
    invoke-virtual {v5}, Laee;->g()V

    if-nez v10, :cond_9

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    .line 59
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    const/4 v2, 0x1

    .line 45
    :goto_6
    iget-object v5, p0, Lalc;->d:Lahx;

    iget-object v5, v5, Lahx;->j:Lald;

    iget-object v5, v5, Lald;->a:Landroidx/work/impl/WorkDatabase;

    .line 46
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->t()Lakx;

    move-result-object v5

    invoke-virtual {v5, v0}, Lakx;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 47
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v5, v7, v9

    if-nez v5, :cond_a

    .line 63
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v2, p0, Lalc;->d:Lahx;

    .line 64
    invoke-virtual {v2}, Lahx;->e()V

    iget-object v2, p0, Lalc;->d:Lahx;

    iget-object v2, v2, Lahx;->j:Lald;

    new-instance v5, Lajx;

    const-wide/16 v7, 0x0

    .line 65
    invoke-direct {v5, v0, v7, v8}, Lajx;-><init>(Ljava/lang/String;J)V

    iget-object v2, v2, Lald;->a:Landroidx/work/impl/WorkDatabase;

    .line 66
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->t()Lakx;

    move-result-object v2

    invoke-virtual {v2, v5}, Lakx;->c(Lajx;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_b

    .line 48
    :cond_a
    :try_start_7
    invoke-static {}, Lre;->c()Z

    move-result v5

    if-eq v3, v5, :cond_b

    const/high16 v5, 0x20000000

    goto :goto_7

    .line 59
    :cond_b
    const/high16 v5, 0x22000000

    .line 48
    :goto_7
    iget-object v7, p0, Lalc;->c:Landroid/content/Context;

    .line 49
    invoke-static {v7, v5}, Lalc;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v7, v8, :cond_e

    if-eqz v5, :cond_c

    .line 50
    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    :cond_c
    iget-object v5, p0, Lalc;->c:Landroid/content/Context;

    const-string v7, "activity"

    .line 51
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 52
    invoke-virtual {v5, v1, v4, v4}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 53
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x0

    .line 54
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_f

    .line 55
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ApplicationExitInfo;

    .line 56
    invoke-virtual {v8}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_d

    goto :goto_a

    .line 62
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 58
    :cond_e
    if-nez v5, :cond_f

    iget-object v2, p0, Lalc;->c:Landroid/content/Context;

    .line 59
    invoke-static {v2}, Lalc;->a(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_a

    .line 62
    :cond_f
    if-eqz v2, :cond_10

    .line 57
    :try_start_8
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v2, p0, Lalc;->d:Lahx;

    iget-object v5, v2, Lahx;->c:Lagf;

    iget-object v7, v2, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v2, Lahx;->e:Ljava/util/List;

    .line 58
    invoke-static {v5, v7, v2}, Lahh;->b(Lagf;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_b

    .line 43
    :catch_0
    move-exception v2

    goto :goto_9

    :catch_1
    move-exception v2

    .line 60
    :goto_9
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v5, Lalc;->a:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Throwable;

    aput-object v2, v7, v4

    const-string v2, "Ignoring exception"

    invoke-static {v5, v2, v7}, Lagr;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 61
    :goto_a
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v2, p0, Lalc;->d:Lahx;

    .line 62
    invoke-virtual {v2}, Lahx;->e()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 66
    :cond_10
    :goto_b
    iget-object v0, p0, Lalc;->d:Lahx;

    goto/16 :goto_0

    .line 67
    :catchall_0
    move-exception v2

    :try_start_9
    iget-object v9, v8, Laki;->a:Laee;

    .line 41
    invoke-virtual {v9}, Laee;->g()V

    iget-object v8, v8, Laki;->c:Laej;

    .line 42
    invoke-virtual {v8, v7}, Laej;->e(Lafn;)V

    .line 43
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 74
    :catchall_1
    move-exception v2

    .line 45
    :try_start_a
    invoke-virtual {v5}, Laee;->g()V

    .line 67
    throw v2
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_a .. :try_end_a} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_a .. :try_end_a} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 75
    :catch_2
    move-exception v2

    goto :goto_c

    :catch_3
    move-exception v2

    goto :goto_c

    :catch_4
    move-exception v2

    goto :goto_c

    :catch_5
    move-exception v2

    goto :goto_c

    :catch_6
    move-exception v2

    goto :goto_c

    :catch_7
    move-exception v2

    :goto_c
    :try_start_b
    iget v5, p0, Lalc;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Lalc;->e:I

    if-ge v5, v6, :cond_11

    .line 60
    int-to-long v5, v5

    const-wide/16 v7, 0x12c

    mul-long v5, v5, v7

    .line 68
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    .line 69
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v4

    const-string v5, "Retrying after %s"

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Throwable;

    aput-object v2, v5, v4

    invoke-virtual {v9, v5}, Lagr;->d([Ljava/lang/Throwable;)V

    iget v2, p0, Lalc;->e:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    int-to-long v5, v2

    mul-long v5, v5, v7

    .line 70
    :try_start_c
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_1

    :catch_8
    move-exception v2

    goto/16 :goto_1

    .line 75
    :cond_11
    :try_start_d
    const-string v0, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 72
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v1, Lalc;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v2, v3, v4

    invoke-static {v1, v0, v3}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 73
    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 71
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lalc;->d:Lahx;

    invoke-virtual {v1}, Lahx;->d()V

    .line 75
    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
