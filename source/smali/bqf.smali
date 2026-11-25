.class public final Lbqf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field private static final e:Ljava/lang/Object;

.field private static final f:[B


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lbps;

.field public final d:Ldhq;

.field private final g:Lbqh;

.field private final h:Ldny;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/gms/phenotype/core/sync/HeterodyneSyncer"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbqf;->a:Lcsz;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbqf;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lbqf;->f:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbps;Lbqh;Ldhq;Ldny;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbqf;->b:Landroid/content/Context;

    iput-object p2, p0, Lbqf;->c:Lbps;

    iput-object p3, p0, Lbqf;->g:Lbqh;

    iput-object p4, p0, Lbqf;->d:Ldhq;

    iput-object p5, p0, Lbqf;->h:Ldny;

    return-void
.end method

.method static a(Ldbe;)I
    .locals 8

    .line 1
    iget-object p0, p0, Ldbe;->c:Lddr;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldbn;

    iget-object v3, v2, Ldbn;->a:Ldbo;

    if-nez v3, :cond_0

    .line 2
    sget-object v3, Ldbo;->d:Ldbo;

    :cond_0
    iget-wide v3, v3, Ldbo;->b:J

    iget-object v5, v2, Ldbn;->a:Ldbo;

    if-nez v5, :cond_1

    sget-object v5, Ldbo;->d:Ldbo;

    :cond_1
    iget-wide v5, v5, Ldbo;->b:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v4, v3

    iget-object v2, v2, Ldbn;->a:Ldbo;

    if-nez v2, :cond_2

    sget-object v2, Ldbo;->d:Ldbo;

    :cond_2
    iget-object v2, v2, Ldbo;->c:Ldcl;

    .line 3
    invoke-virtual {v2}, Ldcl;->C()[B

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    mul-int/lit8 v4, v4, 0x1f

    aget-byte v6, v2, v5

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    mul-int/lit8 v1, v1, 0x11

    xor-int/2addr v1, v4

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static b([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 3
    const-string v4, "@google.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lbqe;)I
    .locals 2

    invoke-virtual {p0}, Lbqe;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lbqe;->a:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lbqe;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lbqe;->b:I

    iget v1, p0, Lbqe;->a:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lbqe;->f:I

    iget p0, p0, Lbqe;->g:I

    sub-int p0, v0, p0

    if-ge p0, v0, :cond_1

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method public static final g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;
    .locals 10

    .line 1
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "user"

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const-string v2, "ApplicationStates"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 3
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 5
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :cond_2
    :goto_1
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static final h(Lbqe;)Lddf;
    .locals 5

    .line 1
    sget-object v0, Ldgy;->i:Ldgy;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget v1, p0, Lbqe;->e:I

    iget-boolean v2, v0, Lddf;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_0
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v2, Ldgy;

    iget v4, v2, Ldgy;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Ldgy;->a:I

    iput v1, v2, Ldgy;->f:I

    invoke-virtual {p0}, Lbqe;->a()I

    move-result v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_1
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 6
    check-cast v2, Ldgy;

    iget v3, v2, Ldgy;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Ldgy;->a:I

    iput v1, v2, Ldgy;->g:I

    iget v1, p0, Lbqe;->g:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Ldgy;->a:I

    iput v1, v2, Ldgy;->h:I

    iget v1, p0, Lbqe;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ldgy;->a:I

    iput v1, v2, Ldgy;->b:I

    iget v1, p0, Lbqe;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ldgy;->a:I

    iput v1, v2, Ldgy;->c:I

    iget v1, p0, Lbqe;->d:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ldgy;->a:I

    iput v1, v2, Ldgy;->d:I

    iget p0, p0, Lbqe;->f:I

    or-int/lit8 v1, v3, 0x8

    iput v1, v2, Ldgy;->a:I

    iput p0, v2, Ldgy;->e:I

    return-object v0
.end method

.method public static final j(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    invoke-static {}, Ldmi;->b()Ldgo;

    move-result-object v0

    iget-object v0, v0, Ldgo;->a:Lddp;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Ldmi;->b()Ldgo;

    move-result-object v0

    iget-object v0, v0, Ldgo;->a:Lddp;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    return-void

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lbqf;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const/16 v0, 0x2c9

    const-string v1, "com/google/android/gms/phenotype/core/sync/HeterodyneSyncer"

    const-string v2, "maybeRunGarbageCollection"

    const-string v3, "HeterodyneSyncer.java"

    invoke-interface {p0, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string v0, "Garbage collection failed"

    invoke-interface {p0, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void
.end method

.method private static l(Ljava/util/LinkedHashMap;Ldbp;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p1, Ldbp;->d:Ldbi;

    if-nez p1, :cond_0

    sget-object p1, Ldbi;->c:Ldbi;

    :cond_0
    iget p1, p1, Ldbi;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string p0, ""

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lbqf;->m(Ljava/util/LinkedHashMap;I)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1
    :goto_0
    return-object p0
.end method

.method private static m(Ljava/util/LinkedHashMap;I)Ljava/util/Map$Entry;
    .locals 6

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_0

    .line 4
    return-object v5

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "j: %d is out of range for a map with size of %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "i: %d is out of range for a map with size of %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v3

    :goto_1
    goto :goto_0
.end method

.method private static n()Ljava/util/logging/Level;
    .locals 1

    .line 1
    sget-object v0, Ldlz;->a:Ldlz;

    .line 2
    invoke-virtual {v0}, Ldlz;->b()Ldma;

    move-result-object v0

    invoke-interface {v0}, Ldma;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    :goto_0
    return-object v0
.end method

.method private static o(Landroid/database/sqlite/SQLiteDatabase;Ldbe;Ljava/lang/String;JLjava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p1, Ldbe;->b:Ldbp;

    if-nez v0, :cond_0

    sget-object v0, Ldbp;->f:Ldbp;

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .line 2
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p1, Ldbe;->c:Lddr;

    .line 3
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4
    invoke-static {p1}, Lbqf;->a(Ldbe;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string v2, "configHash"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    nop

    .line 6
    const-string p1, "flagsHash"

    invoke-virtual {v1, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "servingVersion"

    invoke-virtual {v1, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    iget-object p3, v0, Ldbp;->b:Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p3, p1, p4

    const/4 p3, 0x1

    iget-wide v2, v0, Ldbp;->c:J

    .line 8
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p1, p3

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 9
    const-string p3, "ExperimentTokens"

    const-string p5, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0"

    invoke-virtual {p0, p3, v1, p5, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, v0, Ldbp;->b:Ljava/lang/String;

    .line 10
    const-string p5, "packageName"

    invoke-virtual {v1, p5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string p1, "user"

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p1, v0, Ldbp;->c:J

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "version"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "isCommitted"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array p1, p4, [B

    .line 14
    const-string p2, "experimentToken"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 15
    const-string p1, "serverToken"

    const-string p2, ""

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x4

    .line 16
    invoke-virtual {p0, p3, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method private static p(Landroid/database/sqlite/SQLiteDatabase;Ldbp;Ljava/lang/String;J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "servingVersion"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/String;

    iget-object p4, p1, Ldbp;->b:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, p3, v1

    iget-wide v1, p1, Ldbp;->c:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const/4 p1, 0x2

    aput-object p2, p3, p1

    .line 4
    const-string p1, "ExperimentTokens"

    const-string p2, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static final q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p4, v0, p1

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 2
    const-string p1, "Flags"

    const-string p2, "packageName = ? AND version = ? AND user = ? AND partitionId = ? AND committed = 0"

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static final r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;Ldbh;Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p5, Ldbh;->a:Ldbp;

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Ldbp;->f:Ldbp;

    :cond_0
    iget-object v1, v1, Ldbp;->b:Ljava/lang/String;

    .line 3
    const-string v2, "fromPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p5, Ldbh;->a:Ldbp;

    if-nez v1, :cond_1

    sget-object v1, Ldbp;->f:Ldbp;

    :cond_1
    iget-wide v1, v1, Ldbp;->c:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5
    const-string v2, "fromVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    const-string v1, "fromUser"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string p4, "toPackageName"

    invoke-virtual {v0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "toVersion"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isCommitted"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object p1, p5, Ldbh;->b:Ldcl;

    .line 10
    invoke-virtual {p1}, Ldcl;->C()[B

    move-result-object p1

    .line 11
    const-string p2, "token"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget p1, p5, Ldbh;->c:I

    invoke-static {p1}, Lhj;->j(I)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 13
    const-string p2, "provenance"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 14
    const-string p2, "CrossLoggedExperimentTokens"

    invoke-virtual {p0, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private static final s(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Ldbe;)Z
    .locals 27

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v8, p3

    iget-object v1, v8, Ldbe;->b:Ldbp;

    if-nez v1, :cond_0

    sget-object v1, Ldbp;->f:Ldbp;

    :cond_0
    iget-object v11, v1, Ldbp;->b:Ljava/lang/String;

    iget-object v1, v8, Ldbe;->b:Ldbp;

    if-nez v1, :cond_1

    sget-object v1, Ldbp;->f:Ldbp;

    :cond_1
    iget-wide v12, v1, Ldbp;->c:J

    iget-object v1, v8, Ldbe;->c:Lddr;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v15, "ApplicationTags"

    const/4 v5, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ldbn;

    iget v1, v2, Ldbn;->c:I

    invoke-static {v1}, Lhj;->h(I)I

    move-result v1

    if-eqz v1, :cond_4

    if-ne v1, v3, :cond_4

    iget-object v1, v2, Ldbn;->a:Ldbo;

    if-nez v1, :cond_2

    .line 3
    sget-object v1, Ldbo;->d:Ldbo;

    :cond_2
    iget-wide v6, v1, Ldbo;->b:J

    .line 4
    move-object/from16 v1, p1

    move-object/from16 v18, v14

    move-object v14, v2

    move-object v2, v11

    const/4 v10, 0x1

    move-wide v3, v12

    const/4 v10, 0x0

    move-object/from16 v5, p0

    const/4 v10, 0x4

    invoke-static/range {v1 .. v7}, Lbqf;->q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;J)V

    iget-object v1, v14, Ldbn;->a:Ldbo;

    new-array v1, v10, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    .line 5
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v7, 0x2

    aput-object v0, v1, v7

    iget-object v2, v14, Ldbn;->a:Ldbo;

    if-nez v2, :cond_3

    sget-object v2, Ldbo;->d:Ldbo;

    :cond_3
    iget-wide v2, v2, Ldbo;->b:J

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x3

    aput-object v2, v1, v14

    .line 7
    const-string v2, "packageName = ? AND version = ? AND user = ? AND partitionId = ?"

    invoke-virtual {v9, v15, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v10, p2

    move-object/from16 v14, v18

    goto :goto_0

    .line 2
    :cond_4
    move-object/from16 v18, v14

    move-object/from16 v10, p2

    goto :goto_0

    .line 7
    :cond_5
    const/4 v7, 0x2

    const/4 v10, 0x4

    const/4 v14, 0x3

    iget-object v1, v8, Ldbe;->c:Lddr;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v6, 0x6

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldbn;

    iget-object v3, v2, Ldbn;->b:Lddr;

    .line 9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldbm;

    iget-boolean v5, v4, Ldbm;->h:Z

    if-eqz v5, :cond_8

    iget-object v5, v4, Ldbm;->a:Ljava/lang/String;

    iget-object v5, v2, Ldbn;->a:Ldbo;

    if-nez v5, :cond_6

    .line 10
    sget-object v5, Ldbo;->d:Ldbo;

    :cond_6
    move-object/from16 v18, v15

    iget-wide v14, v5, Ldbo;->b:J

    new-array v5, v6, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v11, v5, v14

    .line 11
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v5, v15

    aput-object v0, v5, v7

    iget-object v14, v2, Ldbn;->a:Ldbo;

    if-nez v14, :cond_7

    sget-object v14, Ldbo;->d:Ldbo;

    :cond_7
    iget-wide v14, v14, Ldbo;->b:J

    .line 12
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v5, v15

    iget-object v14, v4, Ldbm;->a:Ljava/lang/String;

    aput-object v14, v5, v10

    iget v4, v4, Ldbm;->i:I

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x5

    aput-object v4, v5, v14

    .line 14
    const-string v4, "Flags"

    const-string v15, "packageName = ? AND version = ? AND user = ? AND partitionId = ? AND name = ? AND flagType = ? AND committed = 0"

    invoke-virtual {v9, v4, v15, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v15, v18

    const/4 v14, 0x3

    goto :goto_2

    .line 9
    :cond_8
    move-object/from16 v18, v15

    const/4 v14, 0x5

    const/4 v14, 0x3

    goto :goto_2

    :cond_9
    move-object/from16 v18, v15

    const/4 v14, 0x3

    goto :goto_1

    .line 14
    :cond_a
    move-object/from16 v18, v15

    const/4 v14, 0x5

    iget-object v1, v8, Ldbe;->c:Lddr;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v17, 0x0

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ldbn;

    iget v1, v8, Ldbn;->c:I

    invoke-static {v1}, Lhj;->h(I)I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_5

    .line 46
    :cond_b
    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    :goto_4
    const/16 v17, 0x1

    goto :goto_3

    .line 15
    :cond_c
    :goto_5
    iget-object v1, v8, Ldbn;->a:Ldbo;

    if-nez v1, :cond_d

    .line 16
    sget-object v1, Ldbo;->d:Ldbo;

    :cond_d
    iget-wide v4, v1, Ldbo;->b:J

    iget-object v1, v8, Ldbn;->a:Ldbo;

    if-nez v1, :cond_e

    sget-object v1, Ldbo;->d:Ldbo;

    :cond_e
    iget-object v1, v1, Ldbo;->c:Ldcl;

    .line 17
    invoke-virtual {v1}, Ldcl;->C()[B

    move-result-object v3

    if-eqz v3, :cond_1b

    array-length v1, v3

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v14, "tag"

    const/16 v16, 0x0

    aput-object v14, v2, v16

    new-array v6, v10, [Ljava/lang/String;

    aput-object v11, v6, v16

    .line 18
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x3

    aput-object v0, v6, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 19
    const-string v23, "ApplicationTags"

    const-string v24, "packageName = ? AND version = ? AND partitionId = ? AND user = ?"

    move-object/from16 v1, p1

    move-object/from16 v25, v2

    move-object/from16 v2, v23

    move-object v10, v3

    move-object/from16 v3, v25

    move-wide/from16 v25, v4

    move-object/from16 v4, v24

    move-object v5, v6

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 p3, v15

    move-object v15, v8

    move-object/from16 v8, v22

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 20
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 21
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v10, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_11

    if-eqz v1, :cond_f

    .line 22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object/from16 v3, p2

    move-object/from16 v10, v18

    const/4 v15, 0x3

    goto/16 :goto_c

    .line 21
    :cond_f
    move-object/from16 v3, p2

    move-object/from16 v10, v18

    const/4 v15, 0x3

    goto/16 :goto_c

    .line 20
    :cond_10
    const/4 v8, 0x0

    .line 22
    :cond_11
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 23
    :cond_12
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    .line 24
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 25
    const-string v4, "packageName"

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v4, "version"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    const-string v1, "partitionId"

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    const-string v1, "user"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v1, 0x0

    .line 30
    move-object/from16 v10, v18

    const/4 v14, 0x5

    invoke-virtual {v9, v10, v1, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    iget v1, v15, Ldbn;->c:I

    invoke-static {v1}, Lhj;->h(I)I

    move-result v1

    if-nez v1, :cond_13

    const/4 v6, 0x1

    goto :goto_6

    .line 46
    :cond_13
    const/4 v6, 0x1

    if-ne v1, v6, :cond_14

    .line 31
    :goto_6
    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v12

    move-object/from16 v5, p0

    const/16 v16, 0x1

    move-wide/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lbqf;->q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;J)V

    goto :goto_7

    .line 46
    :cond_14
    const/16 v16, 0x1

    .line 31
    :goto_7
    iget-object v1, v15, Ldbn;->b:Lddr;

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldbm;

    iget-boolean v3, v2, Ldbm;->h:Z

    if-nez v3, :cond_18

    .line 33
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 34
    move-object/from16 v3, p2

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 35
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget v6, v2, Ldbm;->i:I

    int-to-long v6, v6

    .line 36
    const/4 v15, 0x3

    invoke-virtual {v3, v15, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 37
    move-wide/from16 v6, v25

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 38
    invoke-virtual {v3, v14, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget-object v5, v2, Ldbm;->a:Ljava/lang/String;

    .line 39
    const/4 v8, 0x6

    invoke-virtual {v3, v8, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v5, 0x7

    .line 40
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget v5, v2, Ldbm;->g:I

    invoke-static {v5}, Lhj;->i(I)I

    move-result v5

    if-nez v5, :cond_15

    const/4 v5, 0x1

    :cond_15
    add-int/lit8 v5, v5, -0x1

    packed-switch v5, :pswitch_data_0

    sget-object v5, Lbqf;->a:Lcsz;

    invoke-virtual {v5}, Lcsv;->c()Lctq;

    move-result-object v5

    const/16 v8, 0x918

    .line 48
    const-string v9, "com/google/android/gms/phenotype/core/sync/HeterodyneSyncer"

    const-string v4, "updateFlag"

    const-string v14, "HeterodyneSyncer.java"

    invoke-interface {v5, v9, v4, v8, v14}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v4

    check-cast v4, Lcsx;

    iget-object v2, v2, Ldbm;->a:Ljava/lang/String;

    const-string v5, "Value type not set for flag %s, ignoring"

    invoke-interface {v4, v5, v2}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v9, p1

    move-wide/from16 v25, v6

    const/4 v8, 0x0

    const/4 v14, 0x5

    const/16 v16, 0x1

    goto :goto_8

    .line 44
    :pswitch_0
    iget-object v5, v2, Ldbm;->f:Ldbl;

    if-nez v5, :cond_16

    .line 45
    sget-object v5, Ldbl;->b:Ldbl;

    :cond_16
    const/16 v8, 0xc

    iget-object v5, v5, Ldbl;->a:Ldcl;

    .line 46
    invoke-virtual {v5}, Ldcl;->C()[B

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_a

    .line 43
    :pswitch_1
    const/16 v5, 0xb

    iget-object v8, v2, Ldbm;->e:Ljava/lang/String;

    .line 44
    invoke-virtual {v3, v5, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_a

    .line 42
    :pswitch_2
    const/16 v5, 0xa

    iget-wide v8, v2, Ldbm;->d:D

    .line 43
    invoke-virtual {v3, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_a

    .line 47
    :pswitch_3
    iget-boolean v5, v2, Ldbm;->c:Z

    if-eq v4, v5, :cond_17

    goto :goto_9

    .line 42
    :cond_17
    const-wide/16 v8, 0x1

    .line 47
    :goto_9
    const/16 v5, 0x9

    .line 42
    invoke-virtual {v3, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_a

    .line 48
    :pswitch_4
    const/16 v5, 0x8

    iget-wide v8, v2, Ldbm;->b:J

    .line 41
    invoke-virtual {v3, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_a
    iget-object v2, v2, Ldbm;->a:Ljava/lang/String;

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    move-object/from16 v9, p1

    move-wide/from16 v25, v6

    const/4 v8, 0x0

    const/16 v16, 0x1

    goto/16 :goto_8

    .line 32
    :cond_18
    move-object/from16 v3, p2

    move-wide/from16 v6, v25

    const/4 v15, 0x3

    move-object/from16 v9, p1

    const/4 v8, 0x0

    const/4 v14, 0x5

    const/16 v16, 0x1

    goto/16 :goto_8

    .line 46
    :cond_19
    move-object/from16 v3, p2

    const/4 v15, 0x3

    move-object/from16 v9, p1

    move-object/from16 v15, p3

    move-object/from16 v18, v10

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v10, 0x4

    const/4 v14, 0x5

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1a

    .line 49
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    :cond_1a
    :goto_b
    throw v2

    .line 17
    :cond_1b
    move-object/from16 v3, p2

    move-object/from16 p3, v15

    move-object/from16 v10, v18

    const/4 v15, 0x3

    .line 15
    :goto_c
    move-object/from16 v9, p1

    move-object/from16 v15, p3

    move-object/from16 v18, v10

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v10, 0x4

    const/4 v14, 0x5

    goto/16 :goto_3

    .line 46
    :cond_1c
    return v17

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final t(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;Ldbe;JLjava/util/List;)Z
    .locals 30

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-wide/from16 v12, p6

    invoke-static {}, Ldmi;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    .line 2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lqx;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-static {v1}, Lqx;->l(Landroid/database/Cursor;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v15, v1

    goto :goto_1

    .line 25
    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 28
    :catchall_1
    move-exception v0

    .line 2
    :goto_0
    throw v2

    .line 25
    :cond_0
    const/4 v15, 0x0

    .line 5
    :goto_1
    sget-object v1, Ldmi;->a:Ldmi;

    .line 6
    invoke-virtual {v1}, Ldmi;->c()Ldmj;

    move-result-object v1

    invoke-interface {v1}, Ldmj;->h()Z

    move-result v16

    iget v1, v11, Ldbe;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, v11, Ldbe;->g:Ldcl;

    .line 7
    invoke-virtual {v1}, Ldcl;->C()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, v11, Ldbe;->g:Ldcl;

    .line 8
    invoke-virtual {v1}, Ldcl;->C()[B

    move-result-object v1

    move-object v8, v1

    goto :goto_2

    .line 25
    :cond_1
    const/4 v8, 0x0

    .line 8
    :goto_2
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz v16, :cond_2

    if-nez v8, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v17, 0x2

    goto/16 :goto_a

    .line 25
    :cond_2
    iget v1, v11, Ldbe;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_14

    .line 13
    :cond_3
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    const-string v2, "experimentToken"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v14, "serverToken"

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    move-object/from16 v17, v8

    const-string v8, "configHash"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    move-object/from16 v18, v8

    const-string v8, "tokensTag"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    aput-object v9, v1, v4

    .line 20
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v1, v5

    const/16 v19, 0x2

    aput-object v10, v1, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 21
    const-string v23, "ExperimentTokens"

    const-string v24, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0"

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v2

    move-object/from16 v2, v23

    move-object/from16 v27, v3

    move-object v3, v7

    const/4 v7, 0x0

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v28, v8

    move-object/from16 v19, v14

    move-object/from16 v14, v17

    move-object/from16 v29, v18

    move-object/from16 v8, v22

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 22
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v11, Ldbe;->d:Ldcl;

    .line 23
    invoke-virtual {v2}, Ldcl;->C()[B

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v11, Ldbe;->e:Ljava/lang/String;

    .line 24
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v4, ""

    if-nez v2, :cond_5

    if-nez v3, :cond_4

    goto :goto_4

    .line 46
    :cond_4
    move-object v2, v4

    goto :goto_3

    .line 25
    :cond_5
    if-nez v3, :cond_6

    move-object v3, v4

    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v5, 0x1

    const/4 v6, 0x3

    goto :goto_5

    .line 24
    :cond_7
    :goto_4
    if-eqz v16, :cond_9

    .line 26
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    .line 46
    :cond_8
    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x3

    const/4 v5, 0x0

    goto :goto_5

    .line 25
    :cond_a
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x1

    .line 26
    :goto_5
    nop

    .line 27
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    .line 25
    :cond_b
    const/4 v4, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 27
    :goto_6
    if-eqz v1, :cond_c

    .line 29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v16, :cond_f

    if-nez v5, :cond_f

    .line 47
    invoke-static {}, Ldmi;->g()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 50
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    const/16 v17, 0x2

    move-wide/from16 v4, p6

    const/4 v14, 0x3

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lbqf;->o(Landroid/database/sqlite/SQLiteDatabase;Ldbe;Ljava/lang/String;JLjava/lang/Integer;)V

    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_d
    const/4 v14, 0x3

    const/16 v17, 0x2

    iget-object v1, v11, Ldbe;->b:Ldbp;

    if-nez v1, :cond_e

    .line 48
    sget-object v1, Ldbp;->f:Ldbp;

    .line 49
    :cond_e
    invoke-static {v0, v1, v10, v12, v13}, Lbqf;->p(Landroid/database/sqlite/SQLiteDatabase;Ldbp;Ljava/lang/String;J)V

    const/4 v12, 0x0

    goto/16 :goto_b

    .line 29
    :cond_f
    const/16 v17, 0x2

    .line 49
    new-array v1, v6, [Ljava/lang/String;

    aput-object v9, v1, v7

    .line 30
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    aput-object v10, v1, v17

    .line 31
    const-string v3, "ExperimentTokens"

    const-string v4, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, v11, Ldbe;->c:Lddr;

    .line 32
    invoke-interface {v1}, Lddr;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 33
    invoke-static/range {p5 .. p5}, Lbqf;->a(Ldbe;)I

    move-result v2

    goto :goto_7

    .line 46
    :cond_10
    nop

    .line 33
    :goto_7
    new-instance v1, Landroid/content/ContentValues;

    .line 34
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string v4, "packageName"

    invoke-virtual {v1, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v4, "version"

    move-object/from16 v6, v27

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    const-string v4, "user"

    invoke-virtual {v1, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "isCommitted"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v11, Ldbe;->d:Ldcl;

    .line 39
    invoke-virtual {v4}, Ldcl;->C()[B

    move-result-object v4

    .line 40
    move-object/from16 v6, v26

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v4, v11, Ldbe;->e:Ljava/lang/String;

    .line 41
    move-object/from16 v6, v19

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v29

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "servingVersion"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    move-object/from16 v2, v28

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 45
    const-string v2, "flagsHash"

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v16, :cond_12

    if-eqz v14, :cond_11

    const/4 v5, 0x1

    goto :goto_8

    .line 46
    :cond_11
    const/4 v5, 0x0

    goto :goto_8

    :cond_12
    nop

    .line 45
    :goto_8
    nop

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v12, v5

    const/4 v14, 0x3

    goto :goto_b

    .line 2
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_13

    .line 28
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    :cond_13
    :goto_9
    throw v2

    .line 25
    :cond_14
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v17, 0x2

    .line 9
    :goto_a
    invoke-static {}, Ldmi;->g()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 12
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-wide/from16 v4, p6

    const/4 v14, 0x3

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lbqf;->o(Landroid/database/sqlite/SQLiteDatabase;Ldbe;Ljava/lang/String;JLjava/lang/Integer;)V

    const/4 v12, 0x0

    goto :goto_b

    .line 56
    :cond_15
    const/4 v14, 0x3

    iget-object v1, v11, Ldbe;->b:Ldbp;

    if-nez v1, :cond_16

    .line 10
    sget-object v1, Ldbp;->f:Ldbp;

    .line 11
    :cond_16
    invoke-static {v0, v1, v10, v12, v13}, Lbqf;->p(Landroid/database/sqlite/SQLiteDatabase;Ldbp;Ljava/lang/String;J)V

    const/4 v12, 0x0

    .line 12
    :goto_b
    if-eqz v12, :cond_18

    iget-object v1, v11, Ldbe;->b:Ldbp;

    if-nez v1, :cond_17

    .line 51
    sget-object v1, Ldbp;->f:Ldbp;

    :cond_17
    new-array v2, v14, [Ljava/lang/String;

    aput-object v10, v2, v7

    iget-object v3, v1, Ldbp;->b:Ljava/lang/String;

    aput-object v3, v2, v8

    iget-wide v3, v1, Ldbp;->c:J

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v17

    .line 53
    const-string v1, "CrossLoggedExperimentTokens"

    const-string v3, "fromUser = ? AND toPackageName = ? AND toVersion = ? AND isCommitted != 1"

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    move-object/from16 v1, p8

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v11, Ldbe;->f:Lddr;

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ldbh;

    const/4 v7, 0x0

    .line 56
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lbqf;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;Ldbh;Z)V

    goto :goto_c

    :cond_18
    return v12
.end method


# virtual methods
.method public final varargs c(Ljava/util/LinkedHashMap;[Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "oauth2:https://www.googleapis.com/auth/experimentsandconfigs"

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p2, v3

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 27
    :cond_0
    :try_start_0
    iget-object v6, p0, Lbqf;->d:Ldhq;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lbpt; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v6, v6, Ldhq;->a:Landroid/content/Context;

    .line 2
    new-instance v7, Landroid/accounts/Account;

    const-string v8, "com.google"

    .line 3
    invoke-direct {v7, v4, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v7}, Lbhq;->e(Landroid/accounts/Account;)V

    const-string v8, "Calling this from your main thread can lead to deadlock"

    .line 5
    invoke-static {v8}, Lhr;->i(Ljava/lang/String;)V

    const-string v8, "Scope cannot be empty or null."

    .line 6
    invoke-static {v0, v8}, Lhr;->l(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {v7}, Lbhq;->e(Landroid/accounts/Account;)V

    .line 8
    invoke-static {v6}, Lbhq;->g(Landroid/content/Context;)V

    new-instance v8, Landroid/os/Bundle;

    .line 9
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v10, "clientPackageName"

    .line 11
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lbhq;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lbhq;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v9, "service_connection_start_time_millis"

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15
    invoke-static {v6}, Lcei;->f(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Ldlh;->c()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v6}, Lbhq;->f(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 17
    invoke-static {v6}, Lhm;->c(Landroid/content/Context;)Lbhs;

    move-result-object v9

    const-string v10, "Scope cannot be null!"

    .line 18
    invoke-static {v0, v10}, Lhr;->l(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lbmc;->a()Lbmb;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Lbjb;

    sget-object v12, Lbhl;->b:Lbjb;

    aput-object v12, v11, v2

    iput-object v11, v10, Lbmb;->b:[Lbjb;

    new-instance v11, Lbhv;

    invoke-direct {v11, v7, v8}, Lbhv;-><init>(Landroid/accounts/Account;Landroid/os/Bundle;)V

    iput-object v11, v10, Lbmb;->a:Lblx;

    const/16 v11, 0x5e8

    iput v11, v10, Lbmb;->c:I

    .line 19
    invoke-virtual {v10}, Lbmb;->a()Lbmc;

    move-result-object v10

    .line 17
    check-cast v9, Lbkc;

    .line 20
    invoke-virtual {v9, v10}, Lbkc;->d(Lbmc;)Lbrh;

    move-result-object v9

    const-string v10, "token retrieval"
    :try_end_1
    .catch Lbhm; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lbpt; {:try_start_1 .. :try_end_1} :catch_2

    .line 21
    :try_start_2
    invoke-static {v9, v10}, Lbhq;->c(Lbrh;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 22
    invoke-static {v9}, Lbhq;->h(Ljava/lang/Object;)V

    .line 23
    invoke-static {v9}, Lbhq;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v6
    :try_end_2
    .catch Lbjz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lbhm; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lbpt; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 26
    :catch_0
    move-exception v9

    .line 24
    :try_start_3
    invoke-static {v9, v10}, Lbhq;->d(Lbjz;Ljava/lang/String;)V

    .line 23
    :cond_2
    new-instance v9, Lbhn;

    invoke-direct {v9, v7, v8}, Lbhn;-><init>(Landroid/accounts/Account;Landroid/os/Bundle;)V

    sget-object v7, Lbhq;->c:Landroid/content/ComponentName;

    .line 25
    invoke-static {v6, v7, v9}, Lbhq;->b(Landroid/content/Context;Landroid/content/ComponentName;Lbhp;)Ljava/lang/Object;

    move-result-object v6

    .line 23
    :goto_1
    check-cast v6, Lcom/google/android/gms/auth/TokenData;

    iget-object v5, v6, Lcom/google/android/gms/auth/TokenData;->b:Ljava/lang/String;
    :try_end_3
    .catch Lbhm; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lbpt; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 26
    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_2

    .line 25
    :catch_3
    move-exception v6

    :try_start_4
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Failed getting auth token due to a transient error"

    .line 26
    invoke-direct {v7, v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Lbpt; {:try_start_4 .. :try_end_4} :catch_2

    .line 1
    :goto_2
    if-eqz v5, :cond_3

    .line 27
    invoke-virtual {p1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 25
    :cond_4
    return-void
.end method

.method final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbqf;->c:Lbps;

    invoke-virtual {v0}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "VACUUM"

    .line 2
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lbqf;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x978

    const-string v2, "com/google/android/gms/phenotype/core/sync/HeterodyneSyncer"

    const-string v3, "vacuum"

    const-string v4, "HeterodyneSyncer.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "SQLException when vacuuming:"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    return-void
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lbqf;->d:Ldhq;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, v0, Ldhq;->a:Landroid/content/Context;

    const-string v1, "Calling this from your main thread can lead to deadlock"

    invoke-static {v1}, Lhr;->i(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lbhq;->g(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    .line 3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "clientPackageName"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lbhq;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lbhq;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {v0}, Lcei;->f(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Ldlh;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lbhq;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {v0}, Lhm;->c(Landroid/content/Context;)Lbhs;

    move-result-object v2

    new-instance v3, Lbia;

    invoke-direct {v3}, Lbia;-><init>()V

    iput-object p1, v3, Lbia;->b:Ljava/lang/String;

    invoke-static {}, Lbmc;->a()Lbmb;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lbjb;

    const/4 v6, 0x0

    sget-object v7, Lbhl;->b:Lbjb;

    aput-object v7, v5, v6

    iput-object v5, v4, Lbmb;->b:[Lbjb;

    new-instance v5, Lbhw;

    invoke-direct {v5, v3}, Lbhw;-><init>(Lbia;)V

    iput-object v5, v4, Lbmb;->a:Lblx;

    const/16 v3, 0x5e9

    iput v3, v4, Lbmb;->c:I

    .line 11
    invoke-virtual {v4}, Lbmb;->a()Lbmc;

    move-result-object v3

    .line 10
    check-cast v2, Lbkc;

    .line 12
    invoke-virtual {v2, v3}, Lbkc;->d(Lbmc;)Lbrh;

    move-result-object v2

    const-string v3, "clear token"
    :try_end_1
    .catch Lbhm; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 13
    :try_start_2
    invoke-static {v2, v3}, Lbhq;->c(Lbrh;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lbjz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lbhm; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 15
    :catch_0
    move-exception v2

    .line 14
    :try_start_3
    invoke-static {v2, v3}, Lbhq;->d(Lbjz;Ljava/lang/String;)V

    .line 13
    :cond_1
    new-instance v2, Lbho;

    invoke-direct {v2, p1, v1}, Lbho;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Lbhq;->c:Landroid/content/ComponentName;

    .line 15
    invoke-static {v0, p1, v2}, Lbhq;->b(Landroid/content/Context;Landroid/content/ComponentName;Lbhp;)Ljava/lang/Object;
    :try_end_3
    .catch Lbhm; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_1
    move-exception p1

    return-void

    :catch_2
    move-exception p1

    return-void
.end method

.method final i(Ljava/util/List;ZLjava/util/LinkedHashMap;Z)Ldbj;
    .locals 38

    .line 1
    move-object/from16 v1, p0

    const-string v2, "already-closed"

    const-string v3, "re-open"

    sget-object v0, Ldbj;->h:Ldbj;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    .line 3
    sget-object v4, Ldbf;->g:Ldbf;

    .line 4
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p4, :cond_2

    .line 5
    invoke-static/range {p1 .. p1}, Lfv;->J(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eq v7, v9, :cond_0

    const-wide/16 v9, 0x1

    goto :goto_0

    .line 136
    :cond_0
    const-wide/16 v9, 0x0

    .line 5
    :goto_0
    iget-boolean v11, v4, Lddf;->c:Z

    if-eqz v11, :cond_1

    .line 6
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v8, v4, Lddf;->c:Z

    :cond_1
    iget-object v11, v4, Lddf;->b:Lddk;

    .line 7
    check-cast v11, Ldbf;

    iget v12, v11, Ldbf;->a:I

    or-int/2addr v12, v6

    iput v12, v11, Ldbf;->a:I

    iput-wide v9, v11, Ldbf;->b:J

    :cond_2
    iget-boolean v9, v0, Lddf;->c:Z

    if-eqz v9, :cond_3

    .line 8
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v8, v0, Lddf;->c:Z

    :cond_3
    iget-object v9, v0, Lddf;->b:Lddk;

    .line 9
    check-cast v9, Ldbj;

    iput v7, v9, Ldbj;->e:I

    iget v10, v9, Ldbj;->a:I

    const/4 v11, 0x4

    or-int/2addr v10, v11

    iput v10, v9, Ldbj;->a:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v9, Ldbj;->a:I

    const-string v12, "com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection"

    iput-object v12, v9, Ldbj;->f:Ljava/lang/String;

    or-int/lit8 v10, v10, 0x10

    iput v10, v9, Ldbj;->a:I

    const/16 v10, 0xce4

    iput v10, v9, Ldbj;->g:I

    .line 10
    sget-object v9, Ldgs;->d:Ldgs;

    .line 11
    invoke-virtual {v9}, Lddk;->n()Lddf;

    move-result-object v9

    iget-boolean v10, v9, Lddf;->c:Z

    if-eqz v10, :cond_4

    .line 12
    invoke-virtual {v9}, Lddf;->k()V

    iput-boolean v8, v9, Lddf;->c:Z

    :cond_4
    iget-object v10, v9, Lddf;->b:Lddk;

    .line 13
    check-cast v10, Ldgs;

    iput v11, v10, Ldgs;->b:I

    iget v12, v10, Ldgs;->a:I

    or-int/2addr v12, v7

    iput v12, v10, Ldgs;->a:I

    iget-object v10, v1, Lbqf;->h:Ldny;

    check-cast v10, Lcey;

    .line 14
    invoke-virtual {v10}, Lcey;->b()Ldgr;

    move-result-object v10

    iget-boolean v12, v9, Lddf;->c:Z

    if-eqz v12, :cond_5

    .line 15
    invoke-virtual {v9}, Lddf;->k()V

    iput-boolean v8, v9, Lddf;->c:Z

    :cond_5
    iget-object v12, v9, Lddf;->b:Lddk;

    .line 16
    check-cast v12, Ldgs;

    .line 17
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v12, Ldgs;->c:Ldgr;

    iget v10, v12, Ldgs;->a:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v12, Ldgs;->a:I

    .line 18
    invoke-virtual {v9}, Lddf;->f()Lddk;

    move-result-object v9

    check-cast v9, Ldgs;

    iget-boolean v10, v4, Lddf;->c:Z

    if-eqz v10, :cond_6

    .line 19
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v8, v4, Lddf;->c:Z

    :cond_6
    iget-object v10, v4, Lddf;->b:Lddk;

    .line 20
    check-cast v10, Ldbf;

    .line 21
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v10, Ldbf;->c:Ldgs;

    iget v9, v10, Ldbf;->a:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v10, Ldbf;->a:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v10, Ldbf;->a:I

    move/from16 v9, p2

    iput-boolean v9, v10, Ldbf;->f:Z

    iget-object v9, v1, Lbqf;->c:Lbps;

    .line 22
    invoke-virtual {v9}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 23
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/String;

    const-string v13, "packageName"

    aput-object v13, v12, v8

    const-string v13, "version"

    aput-object v13, v12, v7

    const-string v13, "params"

    aput-object v13, v12, v6

    const-string v13, "dynamicParams"

    const/4 v15, 0x3

    aput-object v13, v12, v15

    const-string v13, "baselineCl"

    aput-object v13, v12, v11

    .line 25
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 26
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-static {}, Lbps;->a()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1b

    const/16 v13, 0x19

    if-lt v12, v13, :cond_7

    :try_start_1
    sget-object v12, Ldmi;->a:Ldmi;

    .line 28
    invoke-virtual {v12}, Ldmi;->c()Ldmj;

    move-result-object v12

    invoke-interface {v12}, Ldmj;->m()Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_7

    const/16 v20, 0x1

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    goto/16 :goto_22

    :cond_7
    const/16 v20, 0x0

    .line 28
    :goto_1
    const-string v14, "heterodyneInfo"

    if-eqz v20, :cond_8

    .line 29
    :try_start_2
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :try_start_3
    const-string v13, "Packages"

    new-array v12, v8, [Ljava/lang/String;

    .line 30
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    .line 31
    move-object v12, v9

    move-object/from16 v22, v14

    move-object v14, v10

    const/4 v10, 0x3

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1b

    :try_start_4
    new-instance v15, Lcqc;

    .line 32
    invoke-direct {v15}, Lcqc;-><init>()V

    move-object v12, v5

    .line 33
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_18

    if-eqz v13, :cond_32

    .line 34
    :try_start_5
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v8, "__internal."

    .line 35
    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 36
    move-object/from16 v16, v12

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 37
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 38
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    if-eqz v18, :cond_9

    move-object/from16 v23, v18

    goto :goto_3

    :cond_9
    move-object/from16 v23, v17

    .line 39
    :goto_3
    const/4 v8, 0x4

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    if-eqz v20, :cond_a

    .line 40
    move-object/from16 v8, v22

    :try_start_6
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 161
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    move-object/from16 v30, v14

    goto/16 :goto_1f

    .line 56
    :cond_a
    move-object/from16 v8, v22

    const/4 v10, 0x0

    .line 41
    :goto_4
    :try_start_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    move-object/from16 v18, v16

    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_30

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 42
    sget-object v16, Ldbd;->h:Ldbd;

    .line 43
    invoke-virtual/range {v16 .. v16}, Lddk;->n()Lddf;

    move-result-object v7

    .line 44
    sget-object v16, Ldbp;->f:Ldbp;

    .line 45
    invoke-virtual/range {v16 .. v16}, Lddk;->n()Lddf;

    move-result-object v1

    move-object/from16 v27, v8

    iget-boolean v8, v1, Lddf;->c:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    if-eqz v8, :cond_b

    .line 44
    :try_start_8
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v1, Lddf;->c:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_b
    :try_start_9
    iget-object v8, v1, Lddf;->b:Lddk;

    .line 46
    check-cast v8, Ldbp;

    .line 47
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    move-object/from16 v17, v14

    :try_start_a
    iget v14, v8, Ldbp;->a:I

    const/16 v16, 0x1

    or-int/lit8 v14, v14, 0x1

    iput v14, v8, Ldbp;->a:I

    iput-object v13, v8, Ldbp;->b:Ljava/lang/String;

    or-int/lit8 v14, v14, 0x2

    iput v14, v8, Ldbp;->a:I

    iput-wide v11, v8, Ldbp;->c:J

    .line 48
    sget-object v8, Ldbi;->c:Ldbi;

    .line 49
    invoke-virtual {v8}, Lddk;->n()Lddf;

    move-result-object v8

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    move-object/from16 v28, v5

    if-eqz v14, :cond_d

    :try_start_b
    iget-boolean v14, v8, Lddf;->c:Z

    if-eqz v14, :cond_c

    .line 51
    invoke-virtual {v8}, Lddf;->k()V

    const/4 v14, 0x0

    iput-boolean v14, v8, Lddf;->c:Z

    :cond_c
    iget-object v14, v8, Lddf;->b:Lddk;

    .line 52
    check-cast v14, Ldbi;

    iget v5, v14, Ldbi;->a:I

    const/16 v16, 0x1

    or-int/lit8 v5, v5, 0x1

    iput v5, v14, Ldbi;->a:I

    const/4 v5, -0x1

    iput v5, v14, Ldbi;->b:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-wide/from16 v30, v11

    goto :goto_7

    .line 161
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    move-object/from16 v30, v17

    goto/16 :goto_1f

    .line 53
    :cond_d
    :try_start_c
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v14, -0x1

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    const/16 v26, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 54
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v29, v5

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-boolean v5, v8, Lddf;->c:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    if-eqz v5, :cond_e

    .line 55
    :try_start_d
    invoke-virtual {v8}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v8, Lddf;->c:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_e
    :try_start_e
    iget-object v5, v8, Lddf;->b:Lddk;

    .line 56
    check-cast v5, Ldbi;

    move-wide/from16 v30, v11

    iget v11, v5, Ldbi;->a:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v5, Ldbi;->a:I

    iput v14, v5, Ldbi;->b:I

    .line 52
    :goto_7
    iget-boolean v5, v1, Lddf;->c:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    if-eqz v5, :cond_f

    .line 57
    :try_start_f
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v1, Lddf;->c:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_f
    :try_start_10
    iget-object v5, v1, Lddf;->b:Lddk;

    .line 58
    check-cast v5, Ldbp;

    invoke-virtual {v8}, Lddf;->f()Lddk;

    move-result-object v8

    check-cast v8, Ldbi;

    .line 59
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v5, Ldbp;->d:Ldbi;

    iget v8, v5, Ldbp;->a:I

    const/4 v11, 0x4

    or-int/2addr v8, v11

    iput v8, v5, Ldbp;->a:I

    .line 60
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-boolean v5, v1, Lddf;->c:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    if-eqz v5, :cond_10

    .line 61
    :try_start_11
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v1, Lddf;->c:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_10
    :try_start_12
    iget-object v5, v1, Lddf;->b:Lddk;

    .line 62
    check-cast v5, Ldbp;

    iget v14, v5, Ldbp;->a:I

    or-int/lit8 v14, v14, 0x8

    iput v14, v5, Ldbp;->a:I

    iput-wide v11, v5, Ldbp;->e:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    if-eqz v10, :cond_12

    .line 63
    :try_start_13
    invoke-static {v10}, Ldcl;->t([B)Ldcl;

    move-result-object v5

    iget-boolean v11, v7, Lddf;->c:Z

    if-eqz v11, :cond_11

    invoke-virtual {v7}, Lddf;->k()V

    const/4 v11, 0x0

    iput-boolean v11, v7, Lddf;->c:Z

    :cond_11
    iget-object v11, v7, Lddf;->b:Lddk;

    .line 64
    check-cast v11, Ldbd;

    iget v12, v11, Ldbd;->a:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v11, Ldbd;->a:I

    iput-object v5, v11, Ldbd;->f:Ldcl;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 65
    :cond_12
    :try_start_14
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldbp;

    iget-boolean v5, v7, Lddf;->c:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    if-eqz v5, :cond_13

    .line 66
    :try_start_15
    invoke-virtual {v7}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v7, Lddf;->c:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :cond_13
    :try_start_16
    iget-object v5, v7, Lddf;->b:Lddk;

    .line 67
    check-cast v5, Ldbd;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v5, Ldbd;->b:Ldbp;

    iget v11, v5, Ldbd;->a:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v5, Ldbd;->a:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    if-eqz v23, :cond_15

    .line 69
    :try_start_17
    invoke-static/range {v23 .. v23}, Ldcl;->t([B)Ldcl;

    move-result-object v5

    iget-boolean v11, v7, Lddf;->c:Z

    if-eqz v11, :cond_14

    invoke-virtual {v7}, Lddf;->k()V

    const/4 v11, 0x0

    iput-boolean v11, v7, Lddf;->c:Z

    :cond_14
    iget-object v11, v7, Lddf;->b:Lddk;

    .line 70
    check-cast v11, Ldbd;

    iget v12, v11, Ldbd;->a:I

    const/4 v14, 0x2

    or-int/2addr v12, v14

    iput v12, v11, Ldbd;->a:I

    iput-object v5, v11, Ldbd;->c:Ldcl;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 71
    :cond_15
    :try_start_18
    invoke-static {}, Ldmi;->d()Z

    move-result v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    .line 72
    move-wide/from16 v32, v30

    move-object v12, v9

    move-object v11, v13

    move-object v8, v15

    move-object/from16 v30, v17

    move-wide/from16 v14, v32

    move-object/from16 v16, v6

    move/from16 v17, v5

    :try_start_19
    invoke-static/range {v12 .. v17}, Lqx;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 73
    const/4 v12, 0x1

    :try_start_1a
    invoke-static {v12}, Lex;->r(Z)V

    .line 74
    invoke-static {v5}, Lqx;->l(Landroid/database/Cursor;)I

    move-result v15

    .line 75
    const/4 v12, -0x1

    invoke-interface {v5, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-wide/from16 v13, v32

    long-to-int v12, v13

    const/16 v16, 0x1

    const-string v17, "flagsHash"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 76
    move/from16 v19, v12

    move-object v12, v9

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-wide v2, v13

    move-object v13, v11

    move/from16 v14, v19

    move-object/from16 v33, v10

    move v10, v15

    move-object v15, v6

    :try_start_1b
    invoke-static/range {v12 .. v17}, Lbpi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 77
    :try_start_1c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 79
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    if-eqz v12, :cond_16

    .line 78
    :try_start_1d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 117
    :cond_16
    goto :goto_8

    :cond_17
    if-eqz v12, :cond_18

    .line 78
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :cond_18
    const/4 v14, 0x0

    :goto_8
    if-nez v14, :cond_19

    const/4 v10, 0x1

    goto :goto_9

    .line 117
    :cond_19
    if-ne v10, v14, :cond_1a

    const/4 v10, 0x1

    goto :goto_9

    :cond_1a
    const/4 v10, 0x0

    .line 80
    :goto_9
    :try_start_1e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    if-nez v10, :cond_1d

    .line 81
    invoke-static {v9, v11, v6, v2, v3}, Lbps;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    .line 82
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    if-eqz v5, :cond_1d

    move-object v5, v11

    goto :goto_d

    .line 72
    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_1b

    .line 76
    :try_start_1f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    goto :goto_a

    .line 160
    :catchall_4
    move-exception v0

    .line 76
    :cond_1b
    :goto_a
    :try_start_20
    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 122
    :catchall_5
    move-exception v0

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    :goto_b
    move-object v1, v0

    .line 72
    :try_start_21
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_c

    .line 160
    :catchall_7
    move-exception v0

    .line 72
    :goto_c
    :try_start_22
    throw v1

    .line 161
    :catchall_8
    move-exception v0

    goto/16 :goto_12

    .line 71
    :cond_1c
    move-object/from16 v32, v3

    move-object/from16 v33, v10

    move-object v11, v13

    move-object v8, v15

    move-wide/from16 v36, v30

    move-object/from16 v31, v2

    move-object/from16 v30, v17

    move-wide/from16 v2, v36

    .line 83
    :cond_1d
    move-object/from16 v5, v18

    :goto_d
    sget-object v10, Ldlz;->a:Ldlz;

    .line 84
    invoke-virtual {v10}, Ldlz;->b()Ldma;

    move-result-object v10

    invoke-interface {v10}, Ldma;->c()Z

    move-result v10

    if-nez v10, :cond_2b

    const-string v13, "ExperimentTokens"

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/String;

    const-string v10, "tokensTag"

    const/4 v12, 0x0

    aput-object v10, v14, v12

    const-string v15, "packageName = ? AND user = ? AND version = ? AND isCommitted = 0"

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/String;

    iget-object v10, v7, Lddf;->b:Lddk;

    .line 85
    check-cast v10, Ldbd;

    iget-object v10, v10, Ldbd;->b:Ldbp;

    if-nez v10, :cond_1e

    sget-object v10, Ldbp;->f:Ldbp;

    :cond_1e
    iget-object v10, v10, Ldbp;->b:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v10, v12, v16

    const/4 v10, 0x1

    aput-object v6, v12, v10

    iget-object v10, v7, Lddf;->b:Lddk;

    .line 86
    check-cast v10, Ldbd;

    iget-object v10, v10, Ldbd;->b:Ldbp;

    if-nez v10, :cond_1f

    sget-object v10, Ldbp;->f:Ldbp;

    :cond_1f
    move-wide/from16 v34, v2

    iget-wide v2, v10, Ldbp;->c:J

    .line 87
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v12, v3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 88
    move-object v2, v12

    move-object v12, v9

    move-object/from16 v16, v2

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    .line 89
    :try_start_23
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 90
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    if-eqz v10, :cond_21

    .line 91
    invoke-static {v10}, Ldcl;->t([B)Ldcl;

    move-result-object v3

    iget-boolean v10, v7, Lddf;->c:Z

    if-eqz v10, :cond_20

    invoke-virtual {v7}, Lddf;->k()V

    const/4 v10, 0x0

    iput-boolean v10, v7, Lddf;->c:Z

    :cond_20
    iget-object v10, v7, Lddf;->b:Lddk;

    .line 92
    check-cast v10, Ldbd;

    iget v12, v10, Ldbd;->a:I

    const/4 v13, 0x4

    or-int/2addr v12, v13

    iput v12, v10, Ldbd;->a:I

    iput-object v3, v10, Ldbd;->e:Ldcl;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :cond_21
    if-eqz v2, :cond_22

    .line 93
    :try_start_24
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_22
    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/String;

    const-string v2, "partitionId"

    const/4 v3, 0x0

    aput-object v2, v14, v3

    const-string v2, "tag"

    const/4 v3, 0x1

    aput-object v2, v14, v3

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    iget-object v10, v1, Ldbp;->b:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v3, v12

    const/4 v10, 0x1

    aput-object v6, v3, v10

    iget-wide v12, v1, Ldbp;->c:J

    .line 94
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v3, v6

    const-string v13, "ApplicationTags"

    const-string v15, "packageName = ? AND user = ? AND version = ?"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 95
    move-object v12, v9

    move-object/from16 v16, v3

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    .line 96
    :try_start_25
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v3

    .line 97
    :goto_e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 98
    sget-object v6, Ldbo;->d:Ldbo;

    .line 99
    invoke-virtual {v6}, Lddk;->n()Lddf;

    move-result-object v6

    .line 100
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iget-boolean v10, v6, Lddf;->c:Z

    if-eqz v10, :cond_23

    invoke-virtual {v6}, Lddf;->k()V

    const/4 v10, 0x0

    iput-boolean v10, v6, Lddf;->c:Z

    :cond_23
    iget-object v10, v6, Lddf;->b:Lddk;

    .line 101
    check-cast v10, Ldbo;

    iget v14, v10, Ldbo;->a:I

    const/4 v15, 0x1

    or-int/2addr v14, v15

    iput v14, v10, Ldbo;->a:I

    iput-wide v12, v10, Ldbo;->b:J

    .line 102
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Ldcl;->t([B)Ldcl;

    move-result-object v10

    iget-boolean v12, v6, Lddf;->c:Z

    if-eqz v12, :cond_24

    .line 103
    invoke-virtual {v6}, Lddf;->k()V

    const/4 v12, 0x0

    iput-boolean v12, v6, Lddf;->c:Z

    :cond_24
    iget-object v12, v6, Lddf;->b:Lddk;

    .line 104
    check-cast v12, Ldbo;

    iget v13, v12, Ldbo;->a:I

    const/4 v14, 0x2

    or-int/2addr v13, v14

    iput v13, v12, Ldbo;->a:I

    iput-object v10, v12, Ldbo;->c:Ldcl;

    .line 105
    invoke-virtual {v6}, Lddf;->f()Lddk;

    move-result-object v6

    check-cast v6, Ldbo;

    .line 106
    invoke-virtual {v3, v6}, Lcqc;->g(Ljava/lang/Object;)V

    goto :goto_e

    .line 107
    :cond_25
    invoke-virtual {v3}, Lcqc;->f()Lcqh;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    if-eqz v1, :cond_26

    .line 108
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_26
    iget-boolean v1, v7, Lddf;->c:Z

    if-eqz v1, :cond_27

    .line 109
    invoke-virtual {v7}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v7, Lddf;->c:Z

    :cond_27
    iget-object v1, v7, Lddf;->b:Lddk;

    .line 110
    check-cast v1, Ldbd;

    iget-object v6, v1, Ldbd;->d:Lddr;

    .line 111
    invoke-interface {v6}, Lddr;->c()Z

    move-result v10

    if-nez v10, :cond_28

    .line 112
    invoke-static {v6}, Lddk;->z(Lddr;)Lddr;

    move-result-object v6

    iput-object v6, v1, Ldbd;->d:Lddr;

    :cond_28
    iget-object v1, v1, Ldbd;->d:Lddr;

    .line 113
    invoke-static {v3, v1}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    goto :goto_11

    .line 118
    :catchall_9
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_29

    .line 119
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    goto :goto_f

    .line 160
    :catchall_a
    move-exception v0

    .line 119
    :cond_29
    :goto_f
    :try_start_28
    throw v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    .line 76
    :catchall_b
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_2a

    .line 118
    :try_start_29
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    goto :goto_10

    .line 160
    :catchall_c
    move-exception v0

    .line 118
    :cond_2a
    :goto_10
    :try_start_2a
    throw v1

    .line 84
    :cond_2b
    move-wide/from16 v34, v2

    const/4 v2, 0x3

    .line 114
    :goto_11
    invoke-static {}, Ldmi;->e()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-boolean v1, v7, Lddf;->c:Z

    if-eqz v1, :cond_2c

    .line 115
    invoke-virtual {v7}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v7, Lddf;->c:Z

    :cond_2c
    iget-object v1, v7, Lddf;->b:Lddk;

    .line 116
    check-cast v1, Ldbd;

    iget v3, v1, Ldbd;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Ldbd;->a:I

    const/4 v3, 0x1

    iput-boolean v3, v1, Ldbd;->g:Z

    .line 117
    :cond_2d
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldbd;

    invoke-virtual {v8, v1}, Lcqc;->g(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    move-object/from16 v18, v5

    move-object v15, v8

    move-object v13, v11

    move-object/from16 v8, v27

    move-object/from16 v5, v28

    move-object/from16 v14, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v10, v33

    move-wide/from16 v11, v34

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_5

    .line 54
    :cond_2e
    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object v3, v8

    move-object/from16 v33, v10

    move-wide/from16 v34, v11

    move-object v11, v13

    move-object v8, v15

    move-object/from16 v30, v17

    const/4 v2, 0x3

    const/4 v12, -0x1

    move-object/from16 v5, v29

    move-object/from16 v2, v31

    move-wide/from16 v11, v34

    move-object v8, v3

    move-object/from16 v3, v32

    goto/16 :goto_6

    .line 119
    :cond_2f
    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v17

    new-instance v0, Ljava/lang/AssertionError;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const-string v2, "Impossible State: Could not find key %s in map"

    .line 120
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    .line 161
    :catchall_d
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    goto/16 :goto_1f

    :catchall_e
    move-exception v0

    move-object/from16 v30, v17

    goto :goto_12

    .line 41
    :cond_30
    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v28, v5

    move-object/from16 v27, v8

    move-object/from16 v30, v14

    move-object v8, v15

    const/4 v2, 0x3

    move-object/from16 v1, p0

    move-object/from16 v12, v18

    move-object/from16 v22, v27

    move-object/from16 v2, v31

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x4

    goto/16 :goto_2

    .line 35
    :cond_31
    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v28, v5

    move-object/from16 v16, v12

    move-object/from16 v30, v14

    move-object v8, v15

    move-object/from16 v27, v22

    const/4 v2, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x4

    goto/16 :goto_2

    .line 161
    :catchall_f
    move-exception v0

    move-object/from16 v30, v14

    :goto_12
    move-object v1, v0

    move-object v4, v2

    goto/16 :goto_1f

    .line 121
    :cond_32
    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v16, v12

    move-object/from16 v30, v14

    move-object v8, v15

    :try_start_2b
    invoke-virtual {v8}, Lcqc;->f()Lcqh;

    move-result-object v1

    move-object/from16 v5, v16

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_17

    if-eqz v30, :cond_33

    .line 123
    :try_start_2c
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    goto :goto_13

    .line 136
    :catchall_10
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    goto/16 :goto_22

    .line 124
    :cond_33
    :goto_13
    :try_start_2d
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    iget-boolean v3, v0, Lddf;->c:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    if-eqz v3, :cond_34

    :try_start_2e
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lddf;->c:Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_10

    :cond_34
    :try_start_2f
    iget-object v3, v0, Lddf;->b:Lddk;

    .line 125
    check-cast v3, Ldbj;

    iget-object v5, v3, Ldbj;->c:Lddr;

    .line 126
    invoke-interface {v5}, Lddr;->c()Z

    move-result v6
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    if-nez v6, :cond_35

    .line 127
    :try_start_30
    invoke-static {v5}, Lddk;->z(Lddr;)Lddr;

    move-result-object v5

    iput-object v5, v3, Ldbj;->c:Lddr;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_10

    :cond_35
    :try_start_31
    iget-object v3, v3, Ldbj;->c:Lddr;

    .line 128
    invoke-static {v2, v3}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 129
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_16

    if-nez v2, :cond_38

    :try_start_32
    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_36

    .line 130
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_36
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 131
    check-cast v2, Ldbj;

    const/16 v3, 0x14

    iput v3, v2, Ldbj;->e:I

    iget v3, v2, Ldbj;->a:I

    const/4 v5, 0x4

    or-int/2addr v3, v5

    iput v3, v2, Ldbj;->a:I

    .line 130
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_37

    .line 132
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_37
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 133
    check-cast v2, Ldbj;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldbj;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ldbj;->a:I

    iput-object v1, v2, Ldbj;->f:Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_10

    .line 135
    :cond_38
    :try_start_33
    invoke-static {}, Ldmi;->f()Z

    move-result v1
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_16

    if-nez v1, :cond_3f

    if-eqz p4, :cond_39

    :try_start_34
    const-string v1, "ALL_USERS"

    goto :goto_14

    .line 136
    :cond_39
    invoke-static/range {p1 .. p1}, Lfv;->J(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    :goto_14
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const-string v3, "bytesTag"

    const/4 v5, 0x0

    aput-object v3, v14, v5

    new-array v3, v2, [Ljava/lang/String;

    aput-object v1, v3, v5

    const-string v13, "RequestTags"

    const-string v15, "user = ?"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 137
    move-object v12, v9

    move-object/from16 v16, v3

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_10

    .line 138
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 139
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_11

    if-eqz v1, :cond_3b

    .line 140
    :goto_15
    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_10

    :cond_3a
    goto :goto_16

    .line 149
    :cond_3b
    goto :goto_16

    :cond_3c
    :try_start_37
    sget-object v3, Lbqf;->f:[B
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_11

    if-eqz v1, :cond_3a

    .line 140
    goto :goto_15

    .line 142
    :goto_16
    :try_start_38
    invoke-static {v3}, Ldcl;->t([B)Ldcl;

    move-result-object v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_3d

    .line 143
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_3d
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 144
    check-cast v2, Ldbj;

    iget v3, v2, Ldbj;->a:I

    const/4 v5, 0x2

    or-int/2addr v3, v5

    iput v3, v2, Ldbj;->a:I

    iput-object v1, v2, Ldbj;->d:Ldcl;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_10

    goto :goto_18

    .line 120
    :catchall_11
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_3e

    .line 141
    :try_start_39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_12

    goto :goto_17

    .line 160
    :catchall_12
    move-exception v0

    .line 141
    :cond_3e
    :goto_17
    :try_start_3a
    throw v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_10

    .line 144
    :cond_3f
    :goto_18
    const/4 v1, 0x1

    :try_start_3b
    new-array v14, v1, [Ljava/lang/String;

    const-string v1, "token"

    const/4 v2, 0x0

    aput-object v1, v14, v2

    const-string v13, "DogfoodsToken"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 145
    move-object v12, v9

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_16

    .line 146
    :try_start_3c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_14

    if-eqz v2, :cond_42

    .line 147
    const/4 v2, 0x0

    :try_start_3d
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_13

    if-eqz v3, :cond_42

    if-eqz v1, :cond_41

    .line 149
    :goto_19
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_10

    :cond_40
    goto :goto_1a

    .line 157
    :cond_41
    goto :goto_1a

    .line 141
    :catchall_13
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    goto :goto_1c

    .line 157
    :cond_42
    :try_start_3f
    sget-object v3, Lbqf;->f:[B
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_14

    if-eqz v1, :cond_40

    .line 149
    goto :goto_19

    .line 150
    :goto_1a
    :try_start_40
    invoke-static {v3}, Ldcl;->t([B)Ldcl;

    move-result-object v1

    iget-boolean v2, v4, Lddf;->c:Z
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_16

    if-eqz v2, :cond_43

    :try_start_41
    invoke-virtual {v4}, Lddf;->k()V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lddf;->c:Z
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_10

    :cond_43
    :try_start_42
    iget-object v2, v4, Lddf;->b:Lddk;

    .line 151
    check-cast v2, Ldbf;

    iget v3, v2, Ldbf;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Ldbf;->a:I

    iput-object v1, v2, Ldbf;->e:Ldcl;

    iget-boolean v1, v0, Lddf;->c:Z
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_16

    if-eqz v1, :cond_44

    .line 152
    :try_start_43
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lddf;->c:Z
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_10

    :cond_44
    :try_start_44
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 153
    check-cast v1, Ldbj;

    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Ldbf;

    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Ldbj;->b:Ldbf;

    iget v2, v1, Ldbj;->a:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v1, Ldbj;->a:I

    .line 155
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 156
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ldbj;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_16

    .line 157
    :try_start_45
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_45
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_45} :catch_0

    goto :goto_1b

    .line 148
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 158
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 159
    move-object/from16 v3, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object/from16 v4, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 157
    :goto_1b
    return-object v1

    .line 160
    :cond_45
    throw v2

    .line 141
    :catchall_14
    move-exception v0

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    move-object v2, v0

    :goto_1c
    if-eqz v1, :cond_46

    .line 148
    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_15

    goto :goto_1d

    .line 160
    :catchall_15
    move-exception v0

    .line 148
    :cond_46
    :goto_1d
    :try_start_47
    throw v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1a

    .line 136
    :catchall_16
    move-exception v0

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    goto :goto_21

    .line 161
    :catchall_17
    move-exception v0

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    goto :goto_1e

    :catchall_18
    move-exception v0

    move-object v4, v2

    move-object/from16 v30, v14

    :goto_1e
    move-object v1, v0

    :goto_1f
    if-eqz v30, :cond_47

    .line 122
    :try_start_48
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_19

    goto :goto_20

    .line 160
    :catchall_19
    move-exception v0

    .line 122
    :cond_47
    :goto_20
    :try_start_49
    throw v1
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_1a

    .line 136
    :catchall_1a
    move-exception v0

    goto :goto_21

    :catchall_1b
    move-exception v0

    move-object v4, v2

    :goto_21
    move-object v1, v0

    .line 157
    :goto_22
    :try_start_4a
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_4a .. :try_end_4a} :catch_1

    goto :goto_23

    .line 160
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 158
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_24

    .line 161
    :cond_48
    :goto_23
    throw v1

    .line 160
    :cond_49
    :goto_24
    goto :goto_26

    :goto_25
    throw v2

    :goto_26
    goto :goto_25
.end method

.method public final k(Ljava/util/Set;Ljava/util/List;ZLddf;Lbqe;Ljava/util/LinkedHashMap;Z)V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    if-eqz v5, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static/range {p2 .. p2}, Lfv;->J(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1
    :goto_0
    if-eqz v5, :cond_1

    const/4 v9, 0x4

    goto :goto_1

    .line 27
    :cond_1
    const-string v13, ""

    .line 3
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    goto :goto_1

    :cond_2
    const/4 v9, 0x3

    .line 1
    :goto_1
    iget-boolean v13, v2, Lddf;->c:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_3

    .line 4
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    iput-boolean v14, v2, Lddf;->c:Z

    :cond_3
    iget-object v13, v2, Lddf;->b:Lddk;

    .line 5
    check-cast v13, Ldgw;

    sget-object v15, Ldgw;->h:Ldgw;

    add-int/lit8 v9, v9, -0x1

    iput v9, v13, Ldgw;->b:I

    iget v9, v13, Ldgw;->a:I

    const/4 v15, 0x1

    or-int/2addr v9, v15

    iput v9, v13, Ldgw;->a:I

    sget-object v9, Lbqf;->e:Ljava/lang/Object;

    monitor-enter v9

    .line 6
    move-object/from16 v13, p2

    move/from16 v8, p3

    :try_start_0
    invoke-virtual {v1, v13, v8, v4, v5}, Lbqf;->i(Ljava/util/List;ZLjava/util/LinkedHashMap;Z)Ldbj;

    move-result-object v8

    const-string v10, "+"

    .line 7
    invoke-virtual/range {p6 .. p6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lbqf;->c:Lbps;

    .line 8
    invoke-virtual {v12}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    invoke-static {v12}, Lre;->g(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_28

    :try_start_1
    sget-object v12, Lbqf;->a:Lcsz;

    .line 9
    invoke-static {}, Lbqf;->n()Ljava/util/logging/Level;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcsz;->f(Ljava/util/logging/Level;)Lcsx;

    move-result-object v11

    const-string v12, "com/google/android/gms/phenotype/core/sync/HeterodyneSyncer"

    const-string v14, "sendRequest"

    const-string v15, "HeterodyneSyncer.java"

    const/16 v13, 0x4da

    invoke-interface {v11, v12, v14, v13, v15}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v11

    check-cast v11, Lcsx;

    const-string v12, "Heterodyne Request: %s"

    invoke-interface {v11, v12, v8}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_26

    :try_start_2
    iget-object v13, v1, Lbqf;->g:Lbqh;

    iget-object v14, v13, Lbqh;->a:Lbqg;

    iget-object v14, v14, Lbqg;->a:Ljava/lang/String;

    iget v15, v8, Ldbj;->e:I

    invoke-static {v15}, Lhi;->i(I)I

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    :cond_4
    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_24

    move-wide/from16 v24, v6

    add-int/lit8 v6, v23, 0xe

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?r="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    sget-object v7, Ldmi;->a:Ldmi;

    .line 13
    invoke-virtual {v7}, Ldmi;->c()Ldmj;

    move-result-object v7

    invoke-interface {v7}, Ldmj;->i()Z

    move-result v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_23

    if-eqz v7, :cond_5

    :try_start_4
    iget v7, v8, Ldbj;->g:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0xe

    new-instance v15, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&c="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 223
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    goto/16 :goto_42

    .line 226
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    goto/16 :goto_41

    .line 15
    :cond_5
    :goto_2
    :try_start_5
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object v6, Ldlz;->a:Ldlz;

    .line 17
    invoke-virtual {v6}, Ldlz;->b()Ldma;

    move-result-object v6

    invoke-interface {v6}, Ldma;->b()Z

    move-result v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_23

    if-nez v6, :cond_7

    :try_start_6
    const-string v6, "https"

    .line 16
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot contact server without HTTPS: "

    iget-object v6, v13, Lbqh;->a:Lbqg;

    iget-object v6, v6, Lbqg;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 220
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 224
    :cond_6
    new-instance v6, Ljava/lang/String;

    .line 220
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_3
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 18
    :cond_7
    :try_start_7
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 19
    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_23

    :try_start_8
    sget-object v7, Ldmi;->a:Ldmi;

    .line 20
    invoke-virtual {v7}, Ldmi;->c()Ldmj;

    move-result-object v7

    invoke-interface {v7}, Ldmj;->a()J

    move-result-wide v13

    long-to-int v7, v13

    .line 21
    const/16 v13, 0x7530

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget-object v7, Ldmi;->a:Ldmi;

    .line 22
    invoke-virtual {v7}, Ldmi;->c()Ldmj;

    move-result-object v7

    invoke-interface {v7}, Ldmj;->b()J

    move-result-wide v14

    long-to-int v7, v14

    .line 23
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 24
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 25
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_22

    if-eqz v10, :cond_9

    .line 26
    :try_start_9
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "Authorization"

    const-string v13, "Bearer "

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_8

    .line 27
    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 47
    :cond_8
    new-instance v10, Ljava/lang/String;

    .line 27
    invoke-direct {v10, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v6, v7, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 220
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    goto/16 :goto_3c

    .line 27
    :cond_9
    :goto_5
    :try_start_a
    sget-object v7, Ldmi;->a:Ldmi;

    .line 28
    invoke-virtual {v7}, Ldmi;->c()Ldmj;

    move-result-object v7

    invoke-interface {v7}, Ldmj;->p()V

    sget-object v7, Ldmi;->a:Ldmi;

    .line 29
    invoke-virtual {v7}, Ldmi;->c()Ldmj;

    move-result-object v7

    invoke-interface {v7}, Ldmj;->q()V

    sget-object v7, Ldmi;->a:Ldmi;

    .line 30
    invoke-virtual {v7}, Ldmi;->c()Ldmj;

    move-result-object v7

    invoke-interface {v7}, Ldmj;->r()V

    const-string v7, "Content-Type"

    const-string v10, "application/x-protobuf"

    .line 31
    invoke-virtual {v6, v7, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Encoding"

    const-string v10, "gzip"

    .line 32
    invoke-virtual {v6, v7, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    new-instance v10, Ljava/io/BufferedOutputStream;

    .line 34
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_22

    .line 35
    :try_start_b
    invoke-virtual {v8, v7}, Ldbv;->g(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1f

    .line 36
    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 37
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_22

    const/16 v10, 0x12c

    const/16 v13, 0x191

    const/16 v14, 0xc8

    if-lt v7, v14, :cond_a

    if-ge v7, v10, :cond_a

    .line 38
    :try_start_d
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v13}, Lcxg;->a(Ljava/io/InputStream;)[B

    move-result-object v13

    .line 39
    invoke-static {}, Ldcz;->b()Ldcz;

    move-result-object v15

    .line 40
    sget-object v10, Ldbk;->f:Ldbk;

    .line 41
    invoke-static {v10, v13, v15}, Lddk;->r(Lddk;[BLdcz;)Lddk;

    move-result-object v10

    check-cast v10, Ldbk;

    const-string v13, "Retry-After"

    .line 42
    const/4 v15, 0x0

    invoke-virtual {v6, v13, v15}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v13, 0x1

    goto :goto_6

    .line 47
    :cond_a
    if-ne v7, v13, :cond_b

    const/16 v7, 0x191

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    const/4 v13, 0x1

    .line 43
    :goto_6
    :try_start_e
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_23

    if-nez v13, :cond_e

    if-eqz v5, :cond_d

    .line 48
    :try_start_f
    invoke-virtual/range {p6 .. p6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v15}, Lbqf;->f(Ljava/lang/String;)V

    goto :goto_7

    .line 50
    :cond_c
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, v3, Lbqe;->g:I

    goto :goto_9

    .line 51
    :cond_d
    invoke-static/range {p2 .. p2}, Lfv;->J(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lbqf;->f(Ljava/lang/String;)V

    const/4 v6, 0x1

    iput v6, v3, Lbqe;->g:I

    goto :goto_9

    :cond_e
    if-eqz v10, :cond_f

    iget-object v6, v10, Ldbk;->e:Lddp;

    .line 45
    invoke-interface {v6}, Lddp;->size()I

    move-result v6

    if-lez v6, :cond_f

    iget-object v6, v10, Ldbk;->e:Lddp;

    .line 46
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 47
    invoke-static {v4, v15}, Lbqf;->m(Ljava/util/LinkedHashMap;I)Ljava/util/Map$Entry;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v15}, Lbqf;->f(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :cond_f
    :goto_9
    const/4 v15, 0x5

    if-nez v13, :cond_11

    iget-boolean v13, v2, Lddf;->c:Z

    if-eqz v13, :cond_10

    .line 52
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v13, 0x0

    iput-boolean v13, v2, Lddf;->c:Z

    :cond_10
    iget-object v13, v2, Lddf;->b:Lddk;

    .line 53
    check-cast v13, Ldgw;

    const/4 v6, 0x3

    iput v6, v13, Ldgw;->c:I

    iget v6, v13, Ldgw;->a:I

    const/16 v18, 0x2

    or-int/lit8 v6, v6, 0x2

    iput v6, v13, Ldgw;->a:I

    goto/16 :goto_b

    .line 111
    :cond_11
    if-nez v7, :cond_13

    iget-boolean v6, v2, Lddf;->c:Z

    if-eqz v6, :cond_12

    .line 54
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v6, 0x0

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_12
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 55
    check-cast v6, Ldgw;

    const/4 v13, 0x4

    iput v13, v6, Ldgw;->c:I

    iget v13, v6, Ldgw;->a:I

    const/16 v18, 0x2

    or-int/lit8 v13, v13, 0x2

    iput v13, v6, Ldgw;->a:I

    goto :goto_b

    :cond_13
    if-lt v7, v14, :cond_18

    const/16 v6, 0x12c

    if-lt v7, v6, :cond_14

    goto :goto_a

    .line 57
    :cond_14
    if-nez v10, :cond_16

    iget-boolean v6, v2, Lddf;->c:Z

    if-eqz v6, :cond_15

    .line 58
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v6, 0x0

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_15
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 59
    check-cast v6, Ldgw;

    iput v15, v6, Ldgw;->c:I

    iget v13, v6, Ldgw;->a:I

    const/16 v18, 0x2

    or-int/lit8 v13, v13, 0x2

    iput v13, v6, Ldgw;->a:I

    goto :goto_b

    :cond_16
    iget-object v6, v10, Ldbk;->e:Lddp;

    .line 60
    invoke-interface {v6}, Lddp;->size()I

    move-result v6

    if-lez v6, :cond_1a

    iget-boolean v6, v2, Lddf;->c:Z

    if-eqz v6, :cond_17

    .line 61
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v6, 0x0

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_17
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 62
    check-cast v6, Ldgw;

    const/16 v13, 0x9

    iput v13, v6, Ldgw;->c:I

    iget v13, v6, Ldgw;->a:I

    const/16 v18, 0x2

    or-int/lit8 v13, v13, 0x2

    iput v13, v6, Ldgw;->a:I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_b

    .line 55
    :cond_18
    :goto_a
    :try_start_10
    iget-boolean v6, v2, Lddf;->c:Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_23

    if-eqz v6, :cond_19

    .line 56
    :try_start_11
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v6, 0x0

    iput-boolean v6, v2, Lddf;->c:Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_19
    :try_start_12
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 57
    check-cast v6, Ldgw;

    const/4 v13, 0x6

    iput v13, v6, Ldgw;->c:I

    iget v13, v6, Ldgw;->a:I

    const/16 v18, 0x2

    or-int/lit8 v13, v13, 0x2

    iput v13, v6, Ldgw;->a:I

    .line 53
    :cond_1a
    :goto_b
    sget-object v6, Ldmi;->a:Ldmi;

    .line 63
    invoke-virtual {v6}, Ldmi;->c()Ldmj;

    move-result-object v6

    invoke-interface {v6}, Ldmj;->j()Z

    move-result v6
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_23

    if-eqz v6, :cond_1c

    if-eq v7, v14, :cond_1c

    :try_start_13
    iget-boolean v6, v2, Lddf;->c:Z

    if-eqz v6, :cond_1b

    .line 64
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v6, 0x0

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_1b
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 65
    check-cast v6, Ldgw;

    iget v13, v6, Ldgw;->a:I

    const/4 v14, 0x4

    or-int/2addr v13, v14

    iput v13, v6, Ldgw;->a:I

    iput v7, v6, Ldgw;->d:I

    :cond_1c
    if-nez v10, :cond_1e

    new-instance v4, Lbpt;

    const-string v5, "Null server response, http status code %d: %s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v6, v2, Lddf;->b:Lddk;

    .line 66
    check-cast v6, Ldgw;

    iget v6, v6, Ldgw;->d:I

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    iget-object v6, v2, Lddf;->b:Lddk;

    .line 68
    check-cast v6, Ldgw;

    iget v6, v6, Ldgw;->c:I

    invoke-static {v6}, Ldpx;->t(I)I

    move-result v6

    if-nez v6, :cond_1d

    const/4 v6, 0x1

    :cond_1d
    add-int/lit8 v6, v6, -0x1

    .line 69
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    .line 70
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x7340

    invoke-direct {v4, v6, v5}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_1e
    :try_start_14
    sget-object v6, Lbqf;->a:Lcsz;

    .line 71
    invoke-static {}, Lbqf;->n()Ljava/util/logging/Level;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcsz;->f(Ljava/util/logging/Level;)Lcsx;

    move-result-object v6

    const-string v7, "com/google/android/gms/phenotype/core/sync/HeterodyneSyncer"

    const-string v13, "sendRequest"

    const/16 v14, 0x520

    const-string v15, "HeterodyneSyncer.java"

    invoke-interface {v6, v7, v13, v14, v15}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v6

    check-cast v6, Lcsx;

    const-string v7, "Heterodyne Response: %s"

    invoke-interface {v6, v7, v10}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_23

    .line 72
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v11

    long-to-int v7, v6

    iget-boolean v6, v2, Lddf;->c:Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1e

    if-eqz v6, :cond_1f

    .line 73
    :try_start_16
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v6, 0x0

    iput-boolean v6, v2, Lddf;->c:Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_c

    .line 225
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    goto/16 :goto_48

    .line 219
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    goto/16 :goto_47

    .line 73
    :cond_1f
    :goto_c
    :try_start_17
    iget-object v6, v2, Lddf;->b:Lddk;

    .line 74
    check-cast v6, Ldgw;

    iget v11, v6, Ldgw;->a:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v6, Ldgw;->a:I

    iput v7, v6, Ldgw;->e:I

    iget-object v6, v10, Ldbk;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_1e

    if-nez v6, :cond_23

    if-eqz v8, :cond_23

    :try_start_18
    iget-object v6, v8, Ldbj;->b:Ldbf;

    if-nez v6, :cond_20

    .line 76
    sget-object v6, Ldbf;->g:Ldbf;

    :cond_20
    iget-object v6, v6, Ldbf;->d:Ljava/lang/String;
    :try_end_18
    .catch Lbpt; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_d

    .line 33
    :catch_2
    move-exception v0

    move-object v6, v0

    :try_start_19
    sget-object v7, Ldmi;->a:Ldmi;

    .line 77
    invoke-virtual {v7}, Ldmi;->c()Ldmj;

    move-result-object v7

    invoke-interface {v7}, Ldmj;->n()Z

    move-result v7

    if-eqz v7, :cond_22

    iget-boolean v4, v2, Lddf;->c:Z

    if-eqz v4, :cond_21

    .line 78
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v2, Lddf;->c:Z

    :cond_21
    iget-object v4, v2, Lddf;->b:Lddk;

    .line 79
    check-cast v4, Ldgw;

    const/16 v5, 0xb

    iput v5, v4, Ldgw;->c:I

    iget v5, v4, Ldgw;->a:I

    const/4 v7, 0x2

    or-int/2addr v5, v7

    iput v5, v4, Ldgw;->a:I

    .line 80
    throw v6

    .line 135
    :cond_22
    sget-object v7, Lbqf;->a:Lcsz;

    invoke-virtual {v7}, Lcsv;->c()Lctq;

    move-result-object v7

    .line 81
    invoke-interface {v7, v6}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v6

    check-cast v6, Lcsx;

    const-string v7, "com/google/android/gms/phenotype/core/sync/HeterodyneSyncer"

    const-string v11, "processResponse"

    const/16 v12, 0x5d8

    const-string v13, "HeterodyneSyncer.java"

    invoke-interface {v6, v7, v11, v12, v13}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v6

    check-cast v6, Lcsx;

    const-string v7, "Skip setting Pseudonymous ID error."

    invoke-interface {v6, v7}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 76
    :cond_23
    :goto_d
    :try_start_1a
    iget-object v6, v1, Lbqf;->c:Lbps;

    .line 82
    invoke-virtual {v6}, Lbps;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 83
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1e

    .line 84
    :try_start_1b
    invoke-static {v6}, Lre;->g(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v11
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1d

    cmp-long v7, v11, v19

    if-eqz v7, :cond_25

    :try_start_1c
    iget-boolean v4, v2, Lddf;->c:Z

    if-eqz v4, :cond_24

    .line 85
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v2, Lddf;->c:Z

    :cond_24
    iget-object v4, v2, Lddf;->b:Lddk;

    .line 86
    check-cast v4, Ldgw;

    const/4 v5, 0x7

    iput v5, v4, Ldgw;->c:I

    iget v5, v4, Ldgw;->a:I

    const/4 v7, 0x2

    or-int/2addr v5, v7

    iput v5, v4, Ldgw;->a:I

    new-instance v4, Lbpt;

    new-array v5, v7, [Ljava/lang/Object;

    .line 87
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const-string v7, "Bad change count. Expecting %d, got %d"

    .line 88
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x7340

    invoke-direct {v4, v7, v5}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 80
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    goto/16 :goto_39

    .line 88
    :cond_25
    :try_start_1d
    iget-wide v11, v10, Ldbk;->d:J

    new-instance v7, Landroid/content/ContentValues;

    .line 89
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "key"

    .line 90
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 91
    invoke-virtual {v7, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "servertimestamp"

    .line 92
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "LastFetch"

    .line 93
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v15, v7, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/String;

    const-string v7, "servertimestamp"

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const-string v27, "LastFetch"

    const-string v29, "key = 0"

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 94
    move-object/from16 v26, v6

    move-object/from16 v28, v13

    invoke-virtual/range {v26 .. v33}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 95
    :try_start_1e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1a

    if-eqz v13, :cond_26

    .line 96
    const/4 v13, 0x0

    :try_start_1f
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    goto :goto_e

    .line 203
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    goto/16 :goto_36

    .line 111
    :cond_26
    const-wide/16 v19, 0x0

    .line 96
    :goto_e
    if-eqz v7, :cond_27

    .line 98
    :try_start_20
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_27
    cmp-long v7, v19, v11

    if-lez v7, :cond_2b

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/String;

    const-string v7, "servertimestamp"

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const-string v27, "LastFetch"

    const-string v29, "key = 2"

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 99
    move-object/from16 v26, v6

    move-object/from16 v28, v11

    invoke-virtual/range {v26 .. v33}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 100
    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_28

    .line 101
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto :goto_f

    .line 111
    :cond_28
    const-wide/16 v12, 0x0

    .line 101
    :goto_f
    if-eqz v7, :cond_29

    .line 103
    :try_start_22
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_29
    cmp-long v7, v12, v19

    if-eqz v7, :cond_2b

    new-instance v7, Landroid/content/ContentValues;

    .line 104
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "key"

    .line 105
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 106
    invoke-virtual {v7, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "servertimestamp"

    invoke-virtual {v7, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "LastFetch"

    .line 108
    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v14, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    move-object v15, v11

    goto :goto_11

    .line 97
    :catchall_5
    move-exception v0

    move-object v4, v0

    if-eqz v7, :cond_2a

    .line 102
    :try_start_23
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    goto :goto_10

    .line 81
    :catchall_6
    move-exception v0

    .line 102
    :cond_2a
    :goto_10
    :try_start_24
    throw v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    .line 111
    :cond_2b
    const/4 v15, 0x0

    .line 109
    :goto_11
    :try_start_25
    invoke-static {}, Ldmi;->f()Z

    move-result v7

    if-eqz v7, :cond_2c

    const/4 v1, 0x0

    const/4 v14, 0x0

    goto/16 :goto_18

    .line 219
    :cond_2c
    iget-object v7, v10, Ldbk;->b:Ldcl;

    .line 110
    invoke-virtual {v7}, Ldcl;->d()I

    move-result v7
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1d

    if-nez v7, :cond_2d

    const/4 v1, 0x0

    const/4 v14, 0x0

    goto/16 :goto_18

    :cond_2d
    if-eqz v5, :cond_2e

    :try_start_26
    const-string v7, "ALL_USERS"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    goto :goto_12

    .line 111
    :cond_2e
    :try_start_27
    invoke-static/range {p2 .. p2}, Lfv;->J(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 110
    :goto_12
    new-instance v11, Landroid/content/ContentValues;

    .line 112
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "user"

    .line 113
    invoke-virtual {v11, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "bytesTag"

    iget-object v13, v10, Ldbk;->b:Ldcl;

    .line 114
    invoke-virtual {v13}, Ldcl;->C()[B

    move-result-object v13

    .line 115
    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    new-instance v12, Ljava/util/HashMap;

    .line 116
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    const-string v13, "user"

    const/16 v21, 0x0

    aput-object v13, v14, v21

    const-string v13, "bytesTag"

    const/16 v22, 0x1

    aput-object v13, v14, v22

    const-string v27, "RequestTags"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 117
    move-object/from16 v26, v6

    move-object/from16 v28, v14

    invoke-virtual/range {v26 .. v33}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1d

    .line 118
    :goto_13
    :try_start_28
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_18

    if-eqz v14, :cond_2f

    .line 119
    const/4 v14, 0x0

    :try_start_29
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    goto :goto_13

    .line 204
    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v15, v9

    move-object/from16 v3, p4

    goto/16 :goto_34

    .line 120
    :cond_2f
    :try_start_2a
    invoke-interface {v12, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    if-eqz v1, :cond_32

    .line 121
    :try_start_2b
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v2, v10, Ldbk;->b:Ldcl;

    invoke-virtual {v2}, Ldcl;->C()[B

    move-result-object v2

    .line 122
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    if-eqz v1, :cond_31

    if-eqz v13, :cond_30

    .line 123
    :try_start_2c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    goto :goto_14

    .line 80
    :catchall_8
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v15, v9

    move-object/from16 v3, p4

    goto/16 :goto_39

    .line 123
    :cond_30
    :goto_14
    const/4 v1, 0x0

    const/4 v14, 0x0

    goto :goto_18

    :cond_31
    const/4 v1, 0x1

    :try_start_2d
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v2, v1

    const-string v1, "RequestTags"

    const-string v14, "user = ?"

    .line 124
    invoke-virtual {v6, v1, v11, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    goto :goto_15

    .line 134
    :cond_32
    :try_start_2e
    const-string v1, "RequestTags"

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 124
    :goto_15
    const-string v1, "ALL_USERS"

    .line 126
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    if-eqz v1, :cond_36

    .line 127
    :try_start_2f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v7, Landroid/content/ContentValues;

    .line 128
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "user"

    .line 129
    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "bytesTag"

    sget-object v14, Lbpq;->a:[B

    .line 130
    invoke-virtual {v7, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 131
    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 132
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    sget-object v11, Lbpq;->a:[B

    invoke-static {v2, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_33

    :cond_34
    const-string v2, "RequestTags"

    .line 133
    const/4 v11, 0x5

    const/4 v14, 0x0

    invoke-virtual {v6, v2, v14, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    goto :goto_16

    .line 127
    :cond_35
    const/4 v14, 0x0

    goto :goto_17

    .line 123
    :cond_36
    const/4 v14, 0x0

    const/4 v1, 0x1

    :try_start_30
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "ALL_USERS"

    const/4 v7, 0x0

    aput-object v1, v2, v7

    const-string v1, "RequestTags"

    const-string v7, "user = ?"

    .line 134
    invoke-virtual {v6, v1, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_17

    .line 133
    :goto_17
    if-eqz v13, :cond_37

    .line 123
    :try_start_31
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_8

    :cond_37
    const/4 v1, 0x1

    .line 109
    :goto_18
    :try_start_32
    iget-object v2, v10, Ldbk;->a:Lddr;

    .line 136
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-gtz v2, :cond_39

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    goto :goto_19

    .line 219
    :cond_38
    const/4 v1, 0x0

    goto :goto_19

    :cond_39
    const/4 v1, 0x1

    .line 136
    :goto_19
    new-instance v2, Ljava/util/HashSet;

    .line 137
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_16

    if-eqz v1, :cond_54

    :try_start_33
    const-string v1, "INSERT OR REPLACE INTO Flags(packageName, version, flagType, partitionId, user, name, committed, intVal, boolVal, floatVal, stringVal, extensionVal) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 138
    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_f

    :try_start_34
    const-string v7, "__sync"

    .line 139
    invoke-static {v6, v7}, Lre;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v11

    .line 140
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v11, Ljava/util/ArrayList;

    .line 141
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v10, Ldbk;->a:Lddr;

    .line 142
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_d

    if-eqz v13, :cond_45

    :try_start_35
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldbe;

    iget-object v14, v13, Ldbe;->b:Ldbp;

    if-nez v14, :cond_3a

    .line 143
    sget-object v14, Ldbp;->f:Ldbp;

    :cond_3a
    iget-object v14, v14, Ldbp;->b:Ljava/lang/String;

    move-object/from16 v16, v7

    iget-object v7, v13, Ldbe;->b:Ldbp;

    if-nez v7, :cond_3b

    sget-object v7, Ldbp;->f:Ldbp;

    :cond_3b
    move-object/from16 v17, v8

    iget-wide v7, v7, Ldbp;->c:J

    move-object/from16 v23, v12

    iget-object v12, v13, Ldbe;->b:Ldbp;

    if-nez v12, :cond_3c

    sget-object v12, Ldbp;->f:Ldbp;

    .line 144
    :cond_3c
    invoke-static {v4, v12}, Lbqf;->l(Ljava/util/LinkedHashMap;Ldbp;)Ljava/lang/String;

    move-result-object v12

    .line 145
    invoke-static {}, Ldmi;->e()Z

    move-result v26

    if-eqz v26, :cond_40

    if-eqz v5, :cond_40

    iget-object v5, v13, Ldbe;->h:Ldbg;

    if-nez v5, :cond_3d

    .line 146
    sget-object v5, Ldbg;->b:Ldbg;

    :cond_3d
    iget v5, v5, Ldbg;->a:I

    invoke-static {v5}, Lhi;->h(I)I

    move-result v5

    if-nez v5, :cond_3e

    move-object/from16 v35, v15

    goto :goto_1c

    .line 153
    :cond_3e
    move-object/from16 v35, v15

    const/4 v15, 0x3

    if-ne v5, v15, :cond_41

    const-string v5, ""

    .line 149
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 150
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v36, v5

    move-object/from16 v5, v26

    check-cast v5, Ljava/lang/String;

    .line 151
    invoke-static {v5, v6, v1, v13}, Lbqf;->s(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Ldbe;)Z

    move-result v26

    or-int v12, v12, v26

    iget-wide v3, v10, Ldbk;->d:J

    .line 152
    move-object/from16 v26, v6

    move-object/from16 v27, v14

    move-wide/from16 v28, v7

    move-object/from16 v30, v5

    move-object/from16 v31, v13

    move-wide/from16 v32, v3

    move-object/from16 v34, v11

    invoke-static/range {v26 .. v34}, Lbqf;->t(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;Ldbe;JLjava/util/List;)Z

    move-result v3

    or-int/2addr v15, v3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, v36

    goto :goto_1b

    :cond_3f
    const/4 v12, 0x0

    const/4 v15, 0x0

    goto :goto_1d

    .line 145
    :cond_40
    move-object/from16 v35, v15

    .line 147
    :cond_41
    :goto_1c
    invoke-static {v12, v6, v1, v13}, Lbqf;->s(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Ldbe;)Z

    move-result v3

    iget-wide v4, v10, Ldbk;->d:J

    .line 148
    move-object/from16 v26, v6

    move-object/from16 v27, v14

    move-wide/from16 v28, v7

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-wide/from16 v32, v4

    move-object/from16 v34, v11

    invoke-static/range {v26 .. v34}, Lbqf;->t(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;Ldbe;JLjava/util/List;)Z

    move-result v4

    move v12, v3

    move v15, v4

    :cond_42
    :goto_1d
    if-nez v15, :cond_44

    if-eqz v12, :cond_43

    goto :goto_1e

    :cond_43
    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v12, v23

    move-object/from16 v15, v35

    goto/16 :goto_1a

    .line 153
    :cond_44
    :goto_1e
    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_9

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v12, v23

    move-object/from16 v15, v35

    goto/16 :goto_1a

    .line 102
    :catchall_9
    move-exception v0

    move-object v2, v0

    move-object v15, v9

    goto/16 :goto_26

    .line 154
    :cond_45
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v35, v15

    :try_start_36
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_d

    if-eqz v4, :cond_46

    :try_start_37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 155
    invoke-static {v6, v4}, Lre;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_9

    goto :goto_1f

    .line 156
    :cond_46
    :try_start_38
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldbe;

    iget-object v5, v4, Ldbe;->b:Ldbp;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_d

    if-nez v5, :cond_47

    .line 157
    :try_start_39
    sget-object v5, Ldbp;->f:Ldbp;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_9

    .line 158
    :cond_47
    move-object/from16 v7, p6

    :try_start_3a
    invoke-static {v7, v5}, Lbqf;->l(Ljava/util/LinkedHashMap;Ldbp;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v4, Ldbe;->f:Lddr;

    .line 159
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_21
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldbh;

    const-string v27, "ExperimentTokens"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const-string v12, "isCommitted"

    const/4 v14, 0x0

    aput-object v12, v13, v14

    const-string v29, "packageName = ? AND version = ? AND user = ? AND isCommitted = 1"

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/String;

    iget-object v12, v11, Ldbh;->a:Ldbp;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_d

    if-nez v12, :cond_48

    :try_start_3b
    sget-object v12, Ldbp;->f:Ldbp;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_9

    :cond_48
    :try_start_3c
    iget-object v12, v12, Ldbp;->b:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    iget-object v12, v11, Ldbh;->a:Ldbp;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_d

    if-nez v12, :cond_49

    :try_start_3d
    sget-object v12, Ldbp;->f:Ldbp;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_9

    :cond_49
    move-object/from16 p7, v8

    move-object v15, v9

    :try_start_3e
    iget-wide v8, v12, Ldbp;->c:J

    .line 160
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v14, v9

    const/4 v8, 0x2

    aput-object v5, v14, v8

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 161
    move-object/from16 v26, v6

    move-object/from16 v28, v13

    move-object/from16 v30, v14

    invoke-virtual/range {v26 .. v33}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_c

    .line 162
    :try_start_3f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_a

    if-eqz v9, :cond_4d

    if-eqz v8, :cond_4a

    .line 163
    :try_start_40
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4a
    iget-object v8, v4, Ldbe;->b:Ldbp;

    if-nez v8, :cond_4b

    sget-object v8, Ldbp;->f:Ldbp;

    :cond_4b
    iget-object v8, v8, Ldbp;->b:Ljava/lang/String;

    iget-object v9, v4, Ldbe;->b:Ldbp;

    if-nez v9, :cond_4c

    sget-object v9, Ldbp;->f:Ldbp;

    :cond_4c
    iget-wide v12, v9, Ldbp;->c:J

    const/16 v32, 0x1

    .line 164
    move-object/from16 v26, v6

    move-object/from16 v27, v8

    move-wide/from16 v28, v12

    move-object/from16 v30, v5

    move-object/from16 v31, v11

    invoke-static/range {v26 .. v32}, Lbqf;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;Ldbh;Z)V

    goto :goto_22

    :cond_4d
    if-eqz v8, :cond_4e

    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_c

    move-object/from16 v8, p7

    move-object v9, v15

    goto :goto_21

    .line 164
    :cond_4e
    :goto_22
    move-object/from16 v8, p7

    move-object v9, v15

    goto/16 :goto_21

    .line 138
    :catchall_a
    move-exception v0

    move-object v2, v0

    if-eqz v8, :cond_4f

    .line 165
    :try_start_41
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_b

    goto :goto_23

    .line 81
    :catchall_b
    move-exception v0

    .line 165
    :cond_4f
    :goto_23
    :try_start_42
    throw v2
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_c

    .line 102
    :catchall_c
    move-exception v0

    goto :goto_25

    .line 159
    :cond_50
    move-object v15, v9

    goto/16 :goto_20

    .line 163
    :cond_51
    move-object/from16 v7, p6

    move-object v15, v9

    if-eqz v1, :cond_52

    .line 166
    :try_start_43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_15

    goto :goto_24

    .line 219
    :cond_52
    nop

    .line 166
    :goto_24
    move-object/from16 v8, v16

    goto :goto_29

    .line 102
    :catchall_d
    move-exception v0

    move-object v15, v9

    :goto_25
    move-object v2, v0

    :goto_26
    if-eqz v1, :cond_53

    .line 138
    :try_start_44
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_e

    goto :goto_27

    .line 81
    :catchall_e
    move-exception v0

    .line 138
    :cond_53
    :goto_27
    :try_start_45
    throw v2

    .line 80
    :catchall_f
    move-exception v0

    move-object v15, v9

    :goto_28
    move-object/from16 v3, p4

    move-object/from16 v2, p5

    goto/16 :goto_38

    .line 219
    :cond_54
    move-object v7, v4

    move-object/from16 v17, v8

    move-object/from16 v35, v15

    move-object v15, v9

    move-object v8, v14

    .line 166
    :goto_29
    if-eqz v17, :cond_64

    move-object/from16 v1, v17

    iget-object v3, v1, Ldbj;->c:Lddr;

    .line 167
    invoke-interface {v3}, Lddr;->size()I

    move-result v3

    if-lez v3, :cond_64

    new-instance v3, Ljava/util/HashSet;

    .line 168
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    .line 169
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v10, Ldbk;->a:Lddr;

    .line 170
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldbe;

    iget-object v9, v9, Ldbe;->b:Ldbp;

    if-nez v9, :cond_55

    .line 171
    sget-object v9, Ldbp;->f:Ldbp;

    .line 172
    :cond_55
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_56
    iget-object v5, v1, Ldbj;->c:Lddr;

    .line 173
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_57
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldbd;

    iget-object v9, v9, Ldbd;->b:Ldbp;

    if-nez v9, :cond_58

    .line 174
    sget-object v9, Ldbp;->f:Ldbp;

    :cond_58
    iget-object v11, v10, Ldbk;->e:Lddp;

    iget-object v12, v9, Ldbp;->d:Ldbi;

    if-nez v12, :cond_59

    .line 175
    sget-object v12, Ldbi;->c:Ldbi;

    :cond_59
    iget v12, v12, Ldbi;->b:I

    .line 176
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_57

    .line 177
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_57

    .line 178
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 179
    :cond_5a
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldbp;

    iget-object v5, v10, Ldbk;->e:Lddp;

    iget-object v9, v4, Ldbp;->d:Ldbi;

    if-nez v9, :cond_5b

    .line 180
    sget-object v9, Ldbi;->c:Ldbi;

    :cond_5b
    iget v9, v9, Ldbi;->b:I

    .line 181
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 182
    invoke-static {v7, v4}, Lbqf;->l(Ljava/util/LinkedHashMap;Ldbp;)Ljava/lang/String;

    move-result-object v5

    iget-wide v11, v10, Ldbk;->d:J

    .line 183
    invoke-static {v6, v4, v5, v11, v12}, Lbqf;->p(Landroid/database/sqlite/SQLiteDatabase;Ldbp;Ljava/lang/String;J)V

    .line 184
    invoke-static {}, Ldmi;->d()Z

    move-result v9

    if-nez v9, :cond_5d

    sget-object v9, Ldmi;->a:Ldmi;

    .line 185
    invoke-virtual {v9}, Ldmi;->c()Ldmj;

    move-result-object v9

    invoke-interface {v9}, Ldmj;->e()Z

    move-result v9

    if-eqz v9, :cond_5c

    new-instance v9, Landroid/content/ContentValues;

    .line 186
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "flagsHash"

    .line 187
    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/String;

    iget-object v13, v4, Ldbp;->b:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    iget-wide v13, v4, Ldbp;->c:J

    .line 188
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x1

    aput-object v4, v12, v13

    const/4 v4, 0x2

    aput-object v5, v12, v4

    const-string v4, "ExperimentTokens"

    const-string v5, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0"

    .line 189
    invoke-virtual {v6, v4, v9, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2c

    .line 185
    :cond_5c
    const/4 v11, 0x3

    const/4 v13, 0x1

    goto :goto_2c

    .line 184
    :cond_5d
    const/4 v11, 0x3

    const/4 v13, 0x1

    goto :goto_2c

    .line 181
    :cond_5e
    const/4 v11, 0x3

    const/4 v13, 0x1

    goto :goto_2c

    .line 189
    :cond_5f
    new-instance v3, Ljava/util/HashSet;

    .line 190
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v1, Ldbj;->c:Lddr;

    .line 191
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_60
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldbd;

    iget-object v4, v4, Ldbd;->b:Ldbp;

    if-nez v4, :cond_61

    .line 192
    sget-object v4, Ldbp;->f:Ldbp;

    :cond_61
    iget-object v5, v10, Ldbk;->e:Lddp;

    iget-object v7, v4, Ldbp;->d:Ldbi;

    if-nez v7, :cond_62

    .line 193
    sget-object v7, Ldbi;->c:Ldbi;

    :cond_62
    iget v7, v7, Ldbi;->b:I

    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    iget-object v4, v4, Ldbp;->b:Ljava/lang/String;

    .line 195
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 196
    :cond_63
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    invoke-static {v6, v3}, Lbpp;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_2e

    .line 198
    :cond_64
    move-object/from16 v1, p1

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 199
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_15

    :try_start_46
    iget-object v1, v10, Ldbk;->e:Lddp;

    .line 200
    invoke-interface {v1}, Lddp;->size()I

    move-result v1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_5
    .catchall {:try_start_46 .. :try_end_46} :catchall_14

    if-lez v1, :cond_65

    :try_start_47
    iget-object v1, v10, Ldbk;->e:Lddp;

    .line 201
    invoke-interface {v1}, Lddp;->size()I

    move-result v1
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_3
    .catchall {:try_start_47 .. :try_end_47} :catchall_10

    move-object/from16 v2, p5

    :try_start_48
    iput v1, v2, Lbqe;->g:I

    goto :goto_2f

    .line 225
    :catchall_10
    move-exception v0

    move-object/from16 v2, p5

    goto/16 :goto_31

    .line 219
    :catch_3
    move-exception v0

    move-object/from16 v2, p5

    goto/16 :goto_32

    .line 200
    :cond_65
    move-object/from16 v2, p5

    .line 202
    :goto_2f
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object v1, Lbpc;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_4
    .catchall {:try_start_48 .. :try_end_48} :catchall_13

    .line 204
    :try_start_49
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_11

    if-eqz v35, :cond_66

    .line 205
    :try_start_4a
    sget-object v1, Ldmf;->a:Ldmf;

    .line 206
    invoke-virtual {v1}, Ldmf;->b()Ldmg;

    move-result-object v1

    invoke-interface {v1}, Ldmg;->a()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 207
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    :cond_66
    if-eqz v8, :cond_67

    .line 208
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v1, Ldlz;->a:Ldlz;

    .line 209
    invoke-virtual {v1}, Ldlz;->b()Ldma;

    move-result-object v1

    invoke-interface {v1}, Ldma;->a()J

    move-result-wide v5

    .line 208
    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_67

    .line 210
    invoke-virtual/range {p0 .. p0}, Lbqf;->d()V

    :cond_67
    iget-object v1, v10, Ldbk;->e:Lddp;

    .line 211
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_4
    .catchall {:try_start_4a .. :try_end_4a} :catchall_13

    if-nez v1, :cond_69

    move-object/from16 v3, p4

    :try_start_4b
    iget-boolean v1, v3, Lddf;->c:Z

    if-eqz v1, :cond_68

    .line 212
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v3, Lddf;->c:Z

    :cond_68
    iget-object v1, v3, Lddf;->b:Lddk;

    .line 213
    check-cast v1, Ldgw;

    const/16 v4, 0x9

    iput v4, v1, Ldgw;->c:I

    iget v4, v1, Ldgw;->a:I

    const/4 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v1, Ldgw;->a:I

    new-instance v1, Lbpt;

    const-string v4, "Partial authentication failure"

    .line 214
    const/16 v5, 0x7340

    invoke-direct {v1, v5, v4}, Lbpt;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_a
    .catchall {:try_start_4b .. :try_end_4b} :catchall_27

    .line 215
    :cond_69
    move-object/from16 v3, p4

    :try_start_4c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v24

    long-to-int v1, v4

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_6a

    .line 216
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_6a
    iget-object v3, v3, Lddf;->b:Lddk;

    .line 217
    check-cast v3, Ldgw;

    iget v4, v3, Ldgw;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ldgw;->a:I

    iput v1, v3, Ldgw;->f:I

    .line 218
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v2, Lbqe;->e:I

    .line 219
    monitor-exit v15
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_29

    return-void

    .line 165
    :catchall_11
    move-exception v0

    move-object/from16 v3, p4

    :goto_30
    move-object v4, v0

    .line 204
    :try_start_4d
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_12

    :try_start_4e
    throw v4
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4e} :catch_a
    .catchall {:try_start_4e .. :try_end_4e} :catchall_27

    .line 165
    :catchall_12
    move-exception v0

    goto :goto_30

    .line 225
    :catchall_13
    move-exception v0

    :goto_31
    move-object/from16 v3, p4

    goto/16 :goto_44

    .line 219
    :catch_4
    move-exception v0

    :goto_32
    move-object/from16 v3, p4

    goto/16 :goto_46

    .line 225
    :catchall_14
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    goto/16 :goto_44

    .line 219
    :catch_5
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    goto/16 :goto_46

    .line 80
    :catchall_15
    move-exception v0

    goto/16 :goto_28

    :catchall_16
    move-exception v0

    move-object v2, v3

    move-object v15, v9

    move-object/from16 v3, p4

    goto :goto_38

    .line 204
    :catchall_17
    move-exception v0

    move-object v2, v3

    move-object v15, v9

    move-object/from16 v3, p4

    goto :goto_33

    :catchall_18
    move-exception v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_33
    move-object v1, v0

    :goto_34
    if-eqz v13, :cond_6b

    .line 135
    :try_start_4f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_19

    goto :goto_35

    .line 81
    :catchall_19
    move-exception v0

    .line 135
    :cond_6b
    :goto_35
    :try_start_50
    throw v1
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1c

    .line 203
    :catchall_1a
    move-exception v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    move-object v1, v0

    :goto_36
    if-eqz v7, :cond_6c

    .line 97
    :try_start_51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_1b

    goto :goto_37

    .line 81
    :catchall_1b
    move-exception v0

    .line 97
    :cond_6c
    :goto_37
    :try_start_52
    throw v1
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_1c

    .line 80
    :catchall_1c
    move-exception v0

    goto :goto_38

    :catchall_1d
    move-exception v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_38
    move-object v1, v0

    :goto_39
    :try_start_53
    iget-object v4, v10, Ldbk;->e:Lddp;

    .line 200
    invoke-interface {v4}, Lddp;->size()I

    move-result v4

    if-lez v4, :cond_6d

    iget-object v4, v10, Ldbk;->e:Lddp;

    .line 201
    invoke-interface {v4}, Lddp;->size()I

    move-result v4

    iput v4, v2, Lbqe;->g:I

    .line 202
    :cond_6d
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 203
    throw v1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_a
    .catchall {:try_start_53 .. :try_end_53} :catchall_27

    .line 225
    :catchall_1e
    move-exception v0

    goto/16 :goto_43

    .line 219
    :catch_6
    move-exception v0

    goto/16 :goto_45

    .line 44
    :catchall_1f
    move-exception v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    move-object v1, v0

    .line 33
    :try_start_54
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_20

    goto :goto_3a

    .line 135
    :catchall_20
    move-exception v0

    .line 33
    :goto_3a
    :try_start_55
    throw v1
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_21

    .line 220
    :catchall_21
    move-exception v0

    goto :goto_3b

    :catchall_22
    move-exception v0

    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_3b
    move-object v1, v0

    .line 43
    :goto_3c
    :try_start_56
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 44
    throw v1
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_56} :catch_7
    .catchall {:try_start_56 .. :try_end_56} :catchall_25

    .line 226
    :catch_7
    move-exception v0

    goto :goto_40

    .line 223
    :catchall_23
    move-exception v0

    goto :goto_3d

    .line 226
    :catch_8
    move-exception v0

    goto :goto_3f

    .line 223
    :catchall_24
    move-exception v0

    move-wide/from16 v24, v6

    :goto_3d
    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_3e
    move-object v1, v0

    goto :goto_42

    .line 226
    :catch_9
    move-exception v0

    move-wide/from16 v24, v6

    :goto_3f
    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_40
    move-object v1, v0

    :goto_41
    :try_start_57
    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_6e

    .line 221
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_6e
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 222
    check-cast v4, Ldgw;

    const/4 v5, 0x2

    iput v5, v4, Ldgw;->c:I

    iget v6, v4, Ldgw;->a:I

    or-int/2addr v5, v6

    iput v5, v4, Ldgw;->a:I

    .line 223
    throw v1
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_25

    :catchall_25
    move-exception v0

    goto :goto_3e

    .line 72
    :goto_42
    :try_start_58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v11

    long-to-int v5, v4

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_6f

    .line 73
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_6f
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 74
    check-cast v4, Ldgw;

    iget v6, v4, Ldgw;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v4, Ldgw;->a:I

    iput v5, v4, Ldgw;->e:I

    .line 224
    throw v1
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_58} :catch_a
    .catchall {:try_start_58 .. :try_end_58} :catchall_27

    .line 219
    :catch_a
    move-exception v0

    goto :goto_46

    .line 225
    :catchall_26
    move-exception v0

    move-wide/from16 v24, v6

    :goto_43
    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_44
    move-object v1, v0

    goto :goto_48

    .line 219
    :catch_b
    move-exception v0

    move-wide/from16 v24, v6

    :goto_45
    move-object v15, v9

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_46
    move-object v1, v0

    :goto_47
    :try_start_59
    new-instance v4, Lbpt;

    const-string v5, "Network error"

    .line 225
    const/16 v6, 0x7340

    invoke-direct {v4, v6, v5, v1}, Lbpt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_27

    :catchall_27
    move-exception v0

    goto :goto_44

    .line 215
    :goto_48
    :try_start_5a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v24

    long-to-int v5, v4

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_70

    .line 216
    invoke-virtual/range {p4 .. p4}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_70
    iget-object v3, v3, Lddf;->b:Lddk;

    .line 217
    check-cast v3, Ldgw;

    iget v4, v3, Ldgw;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ldgw;->a:I

    iput v5, v3, Ldgw;->f:I

    .line 218
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lbqe;->e:I

    .line 226
    throw v1

    .line 2
    :catchall_28
    move-exception v0

    move-object v15, v9

    :goto_49
    move-object v1, v0

    .line 219
    monitor-exit v15
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_29

    throw v1

    .line 2
    :catchall_29
    move-exception v0

    goto :goto_49
.end method
