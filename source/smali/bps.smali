.class public final Lbps;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Lcol;

.field static final b:Ljava/lang/Object;

.field protected static volatile c:Lbps;

.field protected static volatile d:Lbps;

.field private static final g:Lcsz;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/reflect/Method;


# instance fields
.field e:I

.field f:Ljava/util/concurrent/ScheduledFuture;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "PhenotypeDbHelper.java"

    const-string v1, "com/google/android/gms/phenotype/core/common/PhenotypeDbHelper"

    invoke-static {v1}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v2

    sput-object v2, Lbps;->g:Lcsz;

    sget-object v2, Lbpe;->b:Lbpe;

    invoke-static {v2}, Lex;->i(Lcol;)Lcol;

    move-result-object v2

    sput-object v2, Lbps;->a:Lcol;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-class v5, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "getThreadSession"

    new-array v7, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 3
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :catchall_0
    move-exception v5

    sget-object v6, Lbps;->g:Lcsz;

    invoke-virtual {v6}, Lcsv;->b()Lctq;

    move-result-object v6

    .line 4
    invoke-interface {v6, v5}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v5

    check-cast v5, Lcsx;

    const/16 v6, 0x62

    const-string v7, "getGetThreadSessionMethod"

    invoke-interface {v5, v1, v7, v6, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v5

    check-cast v5, Lcsx;

    const-string v6, "Unable to reflect getThreadSession"

    invoke-interface {v5, v6}, Lcsx;->n(Ljava/lang/String;)V

    move-object v5, v4

    .line 3
    :goto_0
    sput-object v5, Lbps;->h:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    nop

    .line 5
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v3, Landroid/database/sqlite/SQLiteTransactionListener;

    aput-object v3, v6, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v6, v2

    const/4 v2, 0x3

    const-class v3, Landroid/os/CancellationSignal;

    aput-object v3, v6, v2

    const-string v2, "beginTransaction"

    .line 6
    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 4
    :catchall_1
    move-exception v2

    sget-object v3, Lbps;->g:Lcsz;

    invoke-virtual {v3}, Lcsv;->b()Lctq;

    move-result-object v3

    .line 7
    invoke-interface {v3, v2}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const/16 v3, 0x76

    const-string v5, "getBeginTransactionMethod"

    invoke-interface {v2, v1, v5, v3, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unable to reflect beginTransaction"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 3
    :goto_1
    sput-object v4, Lbps;->i:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbps;->b:Ljava/lang/Object;

    .line 8
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lbog;->a:Lqs;

    .line 2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 4
    invoke-static {}, Lbps;->a()I

    move-result v1

    const-string v2, "phenotype.db"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    iput p1, p0, Lbps;->e:I

    iput-object v0, p0, Lbps;->j:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget-object v0, Lbps;->a:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1

    .line 1
    invoke-static {p1}, Lcdw;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1, p2}, Lbpo;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lbpf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lbps;
    .locals 4

    .line 1
    invoke-static {p0}, Lbtj;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    sget-object v1, Lbps;->b:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v0, Lbps;->c:Lbps;

    if-nez v0, :cond_1

    new-instance v0, Lbps;

    .line 5
    invoke-direct {v0, p0}, Lbps;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbps;->c:Lbps;

    :cond_1
    sget-object p0, Lbps;->c:Lbps;

    .line 6
    iget v0, p0, Lbps;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lbps;->e:I

    sget-object p0, Lbps;->c:Lbps;

    .line 7
    iget-object p0, p0, Lbps;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_2

    sget-object p0, Lbps;->c:Lbps;

    iget-object p0, p0, Lbps;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lbps;->c:Lbps;

    .line 8
    iput-object v2, p0, Lbps;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    sget-object p0, Lbps;->c:Lbps;

    .line 9
    monitor-exit v1

    goto :goto_0

    :cond_3
    sget-object v0, Lbps;->d:Lbps;

    if-nez v0, :cond_4

    new-instance v0, Lbps;

    .line 10
    invoke-direct {v0, p0}, Lbps;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbps;->d:Lbps;

    :cond_4
    sget-object p0, Lbps;->d:Lbps;

    .line 11
    iget v0, p0, Lbps;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lbps;->e:I

    sget-object p0, Lbps;->d:Lbps;

    .line 12
    iget-object p0, p0, Lbps;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_5

    sget-object p0, Lbps;->d:Lbps;

    iget-object p0, p0, Lbps;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lbps;->d:Lbps;

    .line 13
    iput-object v2, p0, Lbps;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_5
    sget-object p0, Lbps;->d:Lbps;

    .line 14
    monitor-exit v1

    .line 9
    :goto_0
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE INDEX IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    const-string p1, " ON "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v0, p2}, Lbps;->k(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 7
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {v0, p1}, Lbps;->k(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 5
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", PRIMARY KEY("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0, p0}, Lbps;->k(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 3
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 2
    sget-object v0, Lbps;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v1, Lbps;->i:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v2

    const/4 v2, 0x2

    aput-object v4, v3, v2

    const/4 v2, 0x3

    aput-object v5, v3, v2

    .line 4
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1
    :catch_0
    move-exception v0

    sget-object v1, Lbps;->g:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x726

    const-string v2, "com/google/android/gms/phenotype/core/common/PhenotypeDbHelper"

    const-string v3, "beginDeferredTransaction"

    const-string v4, "PhenotypeDbHelper.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unable to use reflective deferred transaction"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public static h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lbpg;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lbpi;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance p1, Landroid/content/ContentValues;

    .line 3
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    sget-object p3, Lbpq;->a:[B

    .line 4
    const-string p4, "bytesTag"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    .line 5
    const-string p2, "RequestTags"

    const-string v1, "user = ?"

    invoke-virtual {p0, p2, p1, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-array p3, p3, [Ljava/lang/String;

    const-string p4, "ALL_USERS"

    aput-object p4, p3, v0

    .line 6
    invoke-virtual {p0, p2, p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p1, v3, v0

    const-string v4, "SELECT %s FROM %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v3, :cond_1

    new-instance p3, Landroid/content/ContentValues;

    .line 6
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 7
    invoke-virtual {p3, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1, p3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 5
    :catch_0
    move-exception v3

    .line 8
    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    aput-object p3, v3, v2

    .line 4
    const-string p1, "ALTER TABLE %s ADD COLUMN %s%s;"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs k(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    if-nez v2, :cond_0

    .line 2
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lbps;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lbps;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbps;->e:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lbps;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lbpd;

    invoke-direct {v2, p0}, Lbpd;-><init>(Lbps;)V

    .line 2
    sget-object v3, Ldln;->a:Ldln;

    .line 3
    invoke-virtual {v3}, Ldln;->b()Ldlo;

    move-result-object v3

    invoke-interface {v3}, Ldlo;->a()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lbps;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 0
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic i()V
    .locals 3

    .line 1
    sget-object v0, Lbps;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbps;->e:I

    if-nez v1, :cond_1

    sget-object v1, Lbps;->d:Lbps;

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    .line 2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    sput-object v2, Lbps;->d:Lbps;

    :cond_0
    sget-object v1, Lbps;->c:Lbps;

    if-ne p0, v1, :cond_1

    .line 3
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    sput-object v2, Lbps;->c:Lbps;

    .line 4
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lbpp;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    invoke-static {p1}, Lbpf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-static {p1}, Lbpo;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    invoke-static {p1}, Lbpn;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5
    invoke-static {p1}, Lbpr;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    invoke-static {p1}, Lbpi;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7
    invoke-static {p1}, Lbpk;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "user TEXT NOT NULL PRIMARY KEY"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bytesTag BLOB NOT NULL"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 8
    const-string v2, "RequestTags"

    invoke-static {v2, v1}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lbpg;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 11
    invoke-static {p1}, Lbph;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "packageName TEXT NOT NULL PRIMARY KEY"

    aput-object v2, v1, v3

    const-string v2, "count INTEGER NOT NULL"

    aput-object v2, v1, v4

    .line 12
    const-string v2, "ChangeCounts"

    invoke-static {v2, v1}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "key INTEGER NOT NULL PRIMARY KEY"

    aput-object v2, v1, v3

    const-string v5, "token BLOB"

    aput-object v5, v1, v4

    .line 14
    const-string v5, "DogfoodsToken"

    invoke-static {v5, v1}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    const-string v1, "servertimestamp INTEGER NOT NULL"

    aput-object v1, v0, v4

    .line 16
    const-string v1, "LastFetch"

    invoke-static {v1, v0}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lbpj;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    invoke-static {p1}, Lbpl;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    invoke-static {p1}, Lbpm;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    const/16 v0, 0x18

    if-ne p3, v0, :cond_1

    const/16 p3, 0x19

    if-ge p2, p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    return-void

    .line 1
    :cond_1
    :goto_0
    const/4 p2, 0x0

    const-string p3, "SELECT name FROM sqlite_master WHERE type =\'table\'"

    invoke-virtual {p1, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 2
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "android_metadata"

    .line 3
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "DROP TABLE IF EXISTS "

    .line 4
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    :goto_2
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 6
    :cond_5
    invoke-virtual {p0, p1}, Lbps;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_6

    .line 1
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    :cond_6
    :goto_3
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 26

    .line 1
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "key INTEGER NOT NULL PRIMARY KEY"

    const-string v7, "committed"

    const-string v8, "androidPackageName"

    const-string v9, "user"

    const-string v11, "user TEXT NOT NULL"

    const-string v12, "Packages"

    const-string v13, "version INTEGER NOT NULL"

    const-string v14, "packageName TEXT NOT NULL PRIMARY KEY"

    const-string v4, "packageName TEXT NOT NULL"

    const/4 v5, 0x5

    const-string v6, "packageName"

    const/4 v15, 0x3

    const/4 v10, 0x1

    const/16 v20, 0x0

    if-ge v1, v15, :cond_4

    if-lt v2, v15, :cond_4

    const-string v15, "DROP TABLE IF EXISTS Packages"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    const-string v15, "DROP TABLE IF EXISTS ApplicationStates"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    const-string v15, "DROP TABLE IF EXISTS LogSources"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    const-string v15, "DROP TABLE IF EXISTS WeakExperimentIds"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    const-string v15, "DROP TABLE IF EXISTS ExperimentTokens"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    const-string v15, "DROP TABLE IF EXISTS Flags"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7
    const-string v15, "DROP TABLE IF EXISTS RequestTags"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    const-string v15, "DROP TABLE IF EXISTS ApplicationTags"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    const-string v15, "DROP TABLE IF EXISTS CrossLoggedExperimentTokens"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 10
    const-string v15, "DROP TABLE IF EXISTS ChangeCounts"

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v15, v5, [Ljava/lang/String;

    aput-object v14, v15, v20

    aput-object v13, v15, v10

    const-string v22, "params BLOB"

    const/16 v19, 0x2

    aput-object v22, v15, v19

    const-string v22, "weak INTEGER NOT NULL"

    const/16 v21, 0x3

    aput-object v22, v15, v21

    const-string v22, "androidPackageName TEXT NOT NULL"

    const/4 v5, 0x4

    aput-object v22, v15, v5

    .line 11
    invoke-static {v12, v15}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v15, v10, [Ljava/lang/String;

    aput-object v8, v15, v20

    .line 13
    invoke-static {v12, v8, v15}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v15, v5, [Ljava/lang/String;

    aput-object v14, v15, v20

    aput-object v11, v15, v10

    const/4 v5, 0x2

    aput-object v13, v15, v5

    const-string v19, "patchable INTEGER"

    const/16 v21, 0x3

    aput-object v19, v15, v21

    .line 15
    const-string v10, "ApplicationStates"

    invoke-static {v10, v15}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v10, v5, [Ljava/lang/String;

    const-string v15, "logSourceName TEXT NOT NULL"

    aput-object v15, v10, v20

    new-array v15, v5, [Ljava/lang/String;

    const-string v5, "logSourceName"

    aput-object v5, v15, v20

    const/4 v5, 0x1

    aput-object v6, v15, v5

    .line 17
    invoke-static {v15}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 25
    :cond_0
    new-instance v5, Ljava/lang/String;

    .line 17
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v15, 0x1

    aput-object v5, v10, v15

    .line 18
    const-string v5, "LogSources"

    invoke-static {v5, v10}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v5, v15, [Ljava/lang/String;

    aput-object v6, v5, v20

    .line 20
    const-string v10, "LogSources"

    invoke-static {v10, v6, v5}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/String;

    aput-object v4, v10, v20

    const-string v5, "experimentId INTEGER NOT NULL"

    aput-object v5, v10, v15

    .line 21
    const-string v5, "WeakExperimentIds"

    invoke-static {v5, v10}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v5, v15, [Ljava/lang/String;

    aput-object v6, v5, v20

    .line 23
    const-string v10, "WeakExperimentIds"

    invoke-static {v10, v6, v5}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v5, 0x6

    new-array v10, v5, [Ljava/lang/String;

    aput-object v4, v10, v20

    aput-object v13, v10, v15

    const/4 v5, 0x2

    aput-object v11, v10, v5

    const-string v19, "isCommitted INTEGER NOT NULL"

    const/16 v21, 0x3

    aput-object v19, v10, v21

    const-string v19, "experimentToken BLOB NOT NULL"

    const/4 v5, 0x4

    aput-object v19, v10, v5

    new-array v15, v5, [Ljava/lang/String;

    aput-object v6, v15, v20

    const-string v5, "version"

    const/16 v19, 0x1

    aput-object v5, v15, v19

    const/16 v19, 0x2

    aput-object v9, v15, v19

    const-string v24, "isCommitted"

    aput-object v24, v15, v21

    .line 25
    invoke-static {v15}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v8

    const-string v8, "serverToken TEXT NOT NULL"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_1

    invoke-virtual {v8, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 30
    :cond_1
    new-instance v15, Ljava/lang/String;

    .line 25
    invoke-direct {v15, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v15

    :goto_1
    const/4 v15, 0x5

    aput-object v8, v10, v15

    .line 26
    const-string v8, "ExperimentTokens"

    invoke-static {v8, v10}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v8, 0x4

    new-array v10, v8, [Ljava/lang/String;

    aput-object v6, v10, v20

    const/4 v8, 0x1

    aput-object v5, v10, v8

    const/4 v8, 0x2

    aput-object v9, v10, v8

    const-string v8, "isCommitted"

    const/4 v15, 0x3

    aput-object v8, v10, v15

    .line 28
    const-string v8, "ExperimentTokens"

    invoke-static {v8, v7, v10}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v20

    const/4 v10, 0x1

    aput-object v13, v8, v10

    const-string v10, "flagType INTEGER NOT NULL"

    const/4 v15, 0x2

    aput-object v10, v8, v15

    const-string v10, "partitionId INTEGER NOT NULL"

    const/4 v15, 0x3

    aput-object v10, v8, v15

    const/4 v10, 0x4

    aput-object v11, v8, v10

    const-string v10, "name TEXT NOT NULL"

    const/4 v15, 0x5

    aput-object v10, v8, v15

    const-string v10, "intVal INTEGER"

    const/4 v15, 0x6

    aput-object v10, v8, v15

    const-string v10, "boolVal INTEGER"

    const/4 v15, 0x7

    aput-object v10, v8, v15

    const-string v10, "floatVal REAL"

    const/16 v18, 0x8

    aput-object v10, v8, v18

    const-string v10, "stringVal TEXT"

    const/16 v17, 0x9

    aput-object v10, v8, v17

    const-string v10, "extensionVal BLOB"

    const/16 v16, 0xa

    aput-object v10, v8, v16

    new-array v10, v15, [Ljava/lang/String;

    aput-object v6, v10, v20

    const/4 v15, 0x1

    aput-object v5, v10, v15

    const-string v15, "flagType"

    const/16 v19, 0x2

    aput-object v15, v10, v19

    const-string v15, "partitionId"

    const/16 v21, 0x3

    aput-object v15, v10, v21

    const/4 v15, 0x4

    aput-object v9, v10, v15

    const-string v15, "name"

    const/16 v23, 0x5

    aput-object v15, v10, v23

    const/4 v15, 0x6

    aput-object v7, v10, v15

    .line 30
    invoke-static {v10}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "committed INTEGER NOT NULL"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_2

    invoke-virtual {v15, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 37
    :cond_2
    new-instance v10, Ljava/lang/String;

    .line 30
    invoke-direct {v10, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const/16 v15, 0xb

    aput-object v10, v8, v15

    .line 31
    const-string v10, "Flags"

    invoke-static {v10, v8}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v8, 0x4

    new-array v10, v8, [Ljava/lang/String;

    aput-object v6, v10, v20

    const/4 v8, 0x1

    aput-object v5, v10, v8

    const/4 v8, 0x2

    aput-object v9, v10, v8

    const/4 v15, 0x3

    aput-object v7, v10, v15

    .line 33
    const-string v15, "Flags"

    invoke-static {v15, v7, v10}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v10, v8, [Ljava/lang/String;

    const-string v8, "user TEXT NOT NULL PRIMARY KEY"

    aput-object v8, v10, v20

    const-string v8, "bytesTag BLOB NOT NULL"

    const/4 v15, 0x1

    aput-object v8, v10, v15

    .line 35
    const-string v8, "RequestTags"

    invoke-static {v8, v10}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v8, 0x5

    new-array v10, v8, [Ljava/lang/String;

    aput-object v4, v10, v20

    aput-object v13, v10, v15

    const-string v8, "partitionId INTEGER NOT NULL"

    const/16 v19, 0x2

    aput-object v8, v10, v19

    const/4 v8, 0x3

    aput-object v11, v10, v8

    move-object/from16 v25, v12

    const/4 v8, 0x4

    new-array v12, v8, [Ljava/lang/String;

    aput-object v6, v12, v20

    aput-object v5, v12, v15

    const-string v5, "partitionId"

    aput-object v5, v12, v19

    const/4 v5, 0x3

    aput-object v9, v12, v5

    .line 37
    invoke-static {v12}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "tag BLOB NOT NULL"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 53
    :cond_3
    new-instance v5, Ljava/lang/String;

    .line 37
    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    const/4 v8, 0x4

    aput-object v5, v10, v8

    .line 38
    const-string v5, "ApplicationTags"

    invoke-static {v5, v10}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v5, 0x8

    new-array v8, v5, [Ljava/lang/String;

    const-string v5, "fromPackageName TEXT NOT NULL"

    aput-object v5, v8, v20

    const-string v5, "fromVersion INTEGER NOT NULL"

    const/4 v10, 0x1

    aput-object v5, v8, v10

    const-string v5, "fromUser TEXT NOT NULL"

    const/4 v10, 0x2

    aput-object v5, v8, v10

    const-string v5, "toPackageName TEXT NOT NULL"

    const/4 v10, 0x3

    aput-object v5, v8, v10

    const-string v5, "toVersion INTEGER NOT NULL"

    const/4 v10, 0x4

    aput-object v5, v8, v10

    const-string v5, "isCommitted INTEGER NOT NULL"

    const/4 v10, 0x5

    aput-object v5, v8, v10

    const-string v5, "token BLOB NOT NULL"

    const/4 v10, 0x6

    aput-object v5, v8, v10

    const-string v5, "provenance INTEGER NOT NULL"

    const/4 v12, 0x7

    aput-object v5, v8, v12

    .line 40
    const-string v5, "CrossLoggedExperimentTokens"

    invoke-static {v5, v8}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v5, v10, [Ljava/lang/String;

    const-string v8, "fromPackageName"

    aput-object v8, v5, v20

    const-string v8, "fromVersion"

    const/4 v10, 0x1

    aput-object v8, v5, v10

    const-string v8, "fromUser"

    const/4 v10, 0x2

    aput-object v8, v5, v10

    const-string v8, "toPackageName"

    const/4 v10, 0x3

    aput-object v8, v5, v10

    const-string v8, "toVersion"

    const/4 v10, 0x4

    aput-object v8, v5, v10

    const-string v8, "isCommitted"

    const/4 v10, 0x5

    aput-object v8, v5, v10

    .line 42
    const-string v8, "CrossLoggedExperimentTokens"

    const-string v10, "apply"

    invoke-static {v8, v10, v5}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const-string v5, "toPackageName"

    aput-object v5, v8, v20

    .line 44
    const-string v5, "CrossLoggedExperimentTokens"

    const-string v10, "remove"

    invoke-static {v5, v10, v8}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    aput-object v3, v8, v20

    const-string v5, "count INTEGER NOT NULL"

    const/4 v10, 0x1

    aput-object v5, v8, v10

    .line 46
    const-string v5, "ChangeCounts"

    invoke-static {v5, v8}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_4

    .line 1
    :cond_4
    move-object/from16 v24, v8

    move-object/from16 v25, v12

    .line 47
    :goto_4
    const/4 v5, 0x4

    if-ge v1, v5, :cond_5

    if-lt v2, v5, :cond_5

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    aput-object v3, v8, v20

    const-string v5, "token BLOB"

    const/4 v10, 0x1

    aput-object v5, v8, v10

    .line 48
    const-string v5, "DogfoodsToken"

    invoke-static {v5, v8}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/4 v5, 0x5

    if-ge v1, v5, :cond_6

    if-lt v2, v5, :cond_6

    .line 50
    const-string v5, "ALTER TABLE ExperimentTokens ADD COLUMN configHash TEXT NOT NULL DEFAULT \'\'"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const/4 v5, 0x6

    if-ge v1, v5, :cond_7

    if-lt v2, v5, :cond_7

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    aput-object v3, v8, v20

    const-string v3, "servertimestamp INTEGER NOT NULL"

    const/4 v5, 0x1

    aput-object v3, v8, v5

    .line 51
    const-string v3, "LastFetch"

    invoke-static {v3, v8}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const/4 v3, 0x7

    if-ge v1, v3, :cond_9

    if-lt v2, v3, :cond_9

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const-string v8, "logSourceName TEXT NOT NULL"

    aput-object v8, v5, v20

    new-array v8, v3, [Ljava/lang/String;

    const-string v3, "logSourceName"

    aput-object v3, v8, v20

    const/4 v3, 0x1

    aput-object v6, v8, v3

    .line 53
    invoke-static {v8}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 62
    :cond_8
    new-instance v3, Ljava/lang/String;

    .line 53
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    const/4 v8, 0x1

    aput-object v3, v5, v8

    .line 54
    const-string v3, "LogSources_copy"

    invoke-static {v3, v5}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v3, "INSERT INTO LogSources_copy (logSourceName, packageName) SELECT logSourceName, packageName FROM LogSources"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v3, "DROP TABLE IF EXISTS LogSources"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v3, "ALTER TABLE LogSources_copy RENAME TO LogSources"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const/16 v3, 0x8

    if-ge v1, v3, :cond_a

    if-lt v2, v3, :cond_a

    .line 59
    const-string v3, "ALTER TABLE Packages ADD COLUMN isSynced DEFAULT 0"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    const/16 v3, 0x9

    if-ge v1, v3, :cond_b

    if-lt v2, v3, :cond_b

    .line 60
    const-string v3, "ALTER TABLE Packages ADD COLUMN subscribedGcm INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    aput-object v14, v5, v20

    .line 61
    const-string v3, "UnsubscribeGcmPackages"

    invoke-static {v3, v5}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b
    const/16 v3, 0xa

    if-ge v1, v3, :cond_d

    if-lt v2, v3, :cond_d

    new-array v3, v3, [Ljava/lang/String;

    aput-object v4, v3, v20

    const/4 v5, 0x1

    aput-object v11, v3, v5

    const-string v5, "name TEXT NOT NULL"

    const/4 v8, 0x2

    aput-object v5, v3, v8

    const-string v5, "flagType INTEGER NOT NULL"

    const/4 v8, 0x3

    aput-object v5, v3, v8

    const-string v5, "intVal INTEGER"

    const/4 v8, 0x4

    aput-object v5, v3, v8

    const-string v5, "boolVal INTEGER"

    const/4 v10, 0x5

    aput-object v5, v3, v10

    const-string v5, "floatVal REAL"

    const/4 v10, 0x6

    aput-object v5, v3, v10

    const-string v5, "stringVal TEXT"

    const/4 v10, 0x7

    aput-object v5, v3, v10

    const-string v5, "extensionVal BLOB"

    const/16 v10, 0x8

    aput-object v5, v3, v10

    new-array v5, v8, [Ljava/lang/String;

    aput-object v6, v5, v20

    const/4 v8, 0x1

    aput-object v9, v5, v8

    const-string v8, "name"

    const/4 v10, 0x2

    aput-object v8, v5, v10

    const/4 v8, 0x3

    aput-object v7, v5, v8

    .line 62
    invoke-static {v5}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 97
    :cond_c
    new-instance v5, Ljava/lang/String;

    .line 62
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    const/16 v7, 0x9

    aput-object v5, v3, v7

    .line 63
    const-string v5, "FlagOverrides"

    invoke-static {v5, v3}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    const/16 v3, 0xb

    if-ge v1, v3, :cond_e

    const/16 v3, 0xb

    if-lt v2, v3, :cond_e

    .line 65
    const-string v3, "ALTER TABLE ApplicationStates RENAME TO OldApplicationStates"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    aput-object v14, v5, v20

    const/4 v3, 0x1

    aput-object v11, v5, v3

    const/4 v3, 0x2

    aput-object v13, v5, v3

    const-string v3, "patchable INTEGER"

    const/4 v7, 0x3

    aput-object v3, v5, v7

    .line 66
    const-string v3, "ApplicationStates"

    invoke-static {v3, v5}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v3, "INSERT INTO ApplicationStates(packageName,user,version,patchable) SELECT packageName,user,version,patchable FROM OldApplicationStates;"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v3, "DROP TABLE OldApplicationStates;"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_e
    const/16 v3, 0xc

    if-ge v1, v3, :cond_f

    const/16 v3, 0xc

    if-lt v2, v3, :cond_f

    .line 70
    const-string v3, "UPDATE Packages SET weak = 1 WHERE packageName = \'com.google.android.gms.phenotype.core\'"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_f
    const/16 v3, 0xd

    if-ge v1, v3, :cond_10

    const/16 v3, 0xd

    if-lt v2, v3, :cond_10

    .line 71
    const-string v3, "DROP TABLE IF EXISTS ChangeCounts"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    aput-object v14, v5, v20

    const-string v3, "count INTEGER NOT NULL"

    const/4 v7, 0x1

    aput-object v3, v5, v7

    .line 72
    const-string v3, "ChangeCounts"

    invoke-static {v3, v5}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_10
    const/16 v3, 0xe

    if-ge v1, v3, :cond_11

    const/16 v3, 0xe

    if-lt v2, v3, :cond_11

    .line 74
    const-string v3, "ALTER TABLE ExperimentTokens ADD COLUMN servingVersion INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_11
    const/16 v3, 0xf

    if-ge v1, v3, :cond_12

    const/16 v3, 0xf

    if-lt v2, v3, :cond_12

    .line 75
    const-string v3, "ALTER TABLE Packages ADD COLUMN dynamicParams BLOB DEFAULT NULL"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_12
    const/16 v3, 0x10

    if-ge v1, v3, :cond_13

    const/16 v3, 0x10

    if-lt v2, v3, :cond_13

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    aput-object v14, v5, v20

    const-string v3, "isSubscribed INTEGER NOT NULL"

    const/4 v7, 0x1

    aput-object v3, v5, v7

    const-string v3, "subscribeAfterTime INTEGER NOT NULL DEFAULT 0"

    const/4 v7, 0x2

    aput-object v3, v5, v7

    .line 76
    const-string v3, "GcmState"

    invoke-static {v3, v5}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v3, "INSERT OR REPLACE INTO GcmState(packageName, isSubscribed) SELECT packageName, 1 FROM Packages WHERE subscribedGcm = 1"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v3, "INSERT OR REPLACE INTO GcmState(packageName, isSubscribed) SELECT packageName, 1 FROM UnsubscribeGcmPackages"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v3, "DROP TABLE IF EXISTS UnsubscribeGcmPackages"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v3, "ALTER TABLE Packages RENAME TO OldPackages"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    aput-object v14, v3, v20

    const/4 v5, 0x1

    aput-object v13, v3, v5

    const-string v5, "params BLOB"

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const-string v5, "dynamicParams BLOB"

    const/4 v7, 0x3

    aput-object v5, v3, v7

    const-string v5, "weak INTEGER NOT NULL"

    const/4 v7, 0x4

    aput-object v5, v3, v7

    const-string v5, "androidPackageName TEXT NOT NULL"

    const/4 v7, 0x5

    aput-object v5, v3, v7

    const-string v5, "isSynced INTEGER"

    const/4 v7, 0x6

    aput-object v5, v3, v7

    .line 82
    move-object/from16 v5, v25

    invoke-static {v5, v3}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    aput-object v24, v7, v20

    .line 84
    move-object/from16 v3, v24

    invoke-static {v5, v3, v7}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string v7, "INSERT INTO Packages(packageName,version,params,dynamicParams,weak,androidPackageName,isSynced) SELECT packageName,version,params,dynamicParams,weak,androidPackageName,isSynced FROM OldPackages;"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v7, "DROP TABLE OldPackages;"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_7

    .line 75
    :cond_13
    move-object/from16 v3, v24

    move-object/from16 v5, v25

    .line 87
    :goto_7
    const/16 v7, 0x11

    if-ge v1, v7, :cond_14

    const/16 v7, 0x11

    if-lt v2, v7, :cond_14

    .line 88
    const-string v7, "ALTER TABLE Packages ADD COLUMN serializedDeclarativeRegInfo BLOB DEFAULT NULL"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_14
    const/16 v7, 0x12

    if-ge v1, v7, :cond_15

    const/16 v7, 0x12

    if-lt v2, v7, :cond_15

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    aput-object v4, v7, v20

    const-string v8, "isolationkey TEXT NOT NULL DEFAULT \'\'"

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string v8, "namespace INTEGER NOT NULL"

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const-string v8, "instance INTEGER NOT NULL"

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 89
    const-string v8, "GenericDimensions"

    invoke-static {v8, v7}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v7, v10, [Ljava/lang/String;

    aput-object v6, v7, v20

    const-string v8, "isolationkey"

    const/4 v10, 0x1

    aput-object v8, v7, v10

    .line 91
    const-string v8, "GenericDimensions"

    const-string v12, "configPackageIsolationKey"

    invoke-static {v8, v12, v7}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v7, v10, [Ljava/lang/String;

    aput-object v6, v7, v20

    .line 93
    const-string v8, "LogSources"

    invoke-static {v8, v6, v7}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v7, v10, [Ljava/lang/String;

    aput-object v3, v7, v20

    .line 94
    invoke-static {v5, v3, v7}, Lbps;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_15
    const/16 v3, 0x13

    if-ge v1, v3, :cond_16

    const/16 v3, 0x13

    if-lt v2, v3, :cond_16

    .line 95
    const-string v3, "DROP TABLE GcmState;"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_16
    const/16 v3, 0x14

    if-ge v1, v3, :cond_17

    const/16 v3, 0x14

    if-lt v2, v3, :cond_17

    .line 96
    const-string v3, "ALTER TABLE ExperimentTokens ADD COLUMN tokensTag BLOB DEFAULT NULL"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_17
    const/16 v3, 0x15

    if-ge v1, v3, :cond_19

    const/16 v3, 0x15

    if-lt v2, v3, :cond_19

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v4, v3, v20

    const/4 v4, 0x1

    aput-object v11, v3, v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    aput-object v6, v8, v20

    aput-object v9, v8, v4

    .line 97
    invoke-static {v8}, Lbps;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 105
    :cond_18
    new-instance v4, Ljava/lang/String;

    .line 97
    invoke-direct {v4, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 98
    const-string v4, "MultiCommitApplicationStates"

    invoke-static {v4, v3}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_19
    const/16 v3, 0x16

    if-ge v1, v3, :cond_1a

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v14, v3, v20

    const-string v4, "servingVersion INTEGER NOT NULL DEFAULT 0"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 100
    const-string v4, "LastSyncAfterRequest"

    invoke-static {v4, v3}, Lbps;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v3, "ExperimentTokens"

    const-string v4, "flagsHash"

    const-string v6, " INTEGER DEFAULT NULL"

    invoke-static {v0, v3, v4, v6}, Lbps;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/16 v3, 0x17

    if-ge v1, v3, :cond_1b

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1b

    .line 103
    const-string v3, "configTier"

    const-string v4, " INTEGER DEFAULT NULL"

    invoke-static {v0, v5, v3, v4}, Lbps;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/16 v3, 0x18

    if-ge v1, v3, :cond_1c

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1c

    .line 104
    const-string v3, "baselineCl"

    const-string v4, " INTEGER DEFAULT NULL"

    invoke-static {v0, v5, v3, v4}, Lbps;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/16 v3, 0x19

    if-ge v1, v3, :cond_1d

    const/16 v1, 0x19

    if-lt v2, v1, :cond_1d

    .line 105
    const-string v1, "heterodyneInfo"

    const-string v2, " BLOB DEFAULT NULL"

    invoke-static {v0, v5, v1, v2}, Lbps;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method
