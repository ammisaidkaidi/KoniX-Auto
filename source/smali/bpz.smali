.class public final Lbpz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[Lbpb;

.field public static final b:Lboz;

.field private static final g:[Ljava/lang/String;


# instance fields
.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [Lbpb;

    sput-object v1, Lbpz;->a:[Lbpb;

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lbpz;->g:[Ljava/lang/String;

    new-instance v1, Lboz;

    new-array v5, v0, [Lboy;

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lboz;-><init>(Ljava/lang/String;Ljava/lang/String;[Lboy;Z[BJ)V

    sput-object v1, Lbpz;->b:Lboz;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbpz;->c:Ljava/lang/String;

    iput-object p2, p0, Lbpz;->d:Ljava/lang/String;

    iput-object p3, p0, Lbpz;->e:Ljava/lang/String;

    iput-object p4, p0, Lbpz;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16

    .line 1
    move-object/from16 v0, p1

    const-string v1, "version"

    const-class v2, Lbpz;

    const-string v3, "com.google.EMPTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    .line 2
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 3
    const-string v5, "getVersion_packageVersion"

    invoke-static {v3, v5, v0}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :try_start_0
    new-array v7, v3, [Ljava/lang/String;

    aput-object v1, v7, v4

    new-array v9, v3, [Ljava/lang/String;

    aput-object v0, v9, v4

    const-string v6, "Packages"

    const-string v8, "packageName = ?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 5
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6
    nop

    .line 7
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v5, :cond_1

    .line 9
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 10
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 13
    const-string v5, "getVersion_tokenVersion"

    invoke-static {v2, v5, v0}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-array v9, v3, [Ljava/lang/String;

    aput-object v1, v9, v4

    const/4 v1, 0x3

    new-array v11, v1, [Ljava/lang/String;

    aput-object v0, v11, v4

    .line 14
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v3

    const/4 v0, 0x2

    aput-object p2, v11, v0

    const-string v8, "ExperimentTokens"

    const-string v10, "packageName = ? AND version <= ? AND user = ? AND isCommitted = 0"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "version DESC"

    const-string v15, "1"

    .line 15
    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_2

    .line 19
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 20
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    :cond_3
    if-eqz v1, :cond_4

    .line 19
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 20
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v6

    .line 21
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_5

    .line 18
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :cond_5
    :goto_0
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 8
    :catchall_2
    move-exception v0

    .line 20
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 21
    throw v0

    .line 5
    :cond_6
    :try_start_9
    new-instance v0, Lbpt;

    .line 6
    invoke-direct {v0}, Lbpt;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 11
    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_7

    .line 8
    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_1

    .line 18
    :catchall_4
    move-exception v0

    .line 8
    :cond_7
    :goto_1
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 20
    :catchall_5
    move-exception v0

    .line 10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 11
    throw v0
.end method

.method public static b(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lbpy;Z)Lboz;
    .locals 9

    .line 1
    const-string v0, ", "

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpb;

    .line 5
    iget v2, v1, Lbpb;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lxp;->f(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    .line 6
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpb;

    .line 8
    iget v2, v1, Lbpb;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lxp;->f(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    .line 10
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 15
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    sget-object v5, Lbpz;->a:[Lbpb;

    if-eqz v3, :cond_2

    .line 16
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Lbpb;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [Lbpb;

    goto :goto_3

    .line 20
    :cond_2
    nop

    .line 16
    :goto_3
    sget-object v3, Lbpz;->g:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 17
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 18
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v7, v6, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbpb;

    .line 19
    iget-object v8, v8, Lbpb;->b:Ljava/lang/String;

    aput-object v8, v3, v6

    move v6, v7

    goto :goto_4

    :cond_3
    goto :goto_5

    .line 20
    :cond_4
    nop

    .line 19
    :goto_5
    new-instance v4, Lboy;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v4, v2, v5, v3}, Lboy;-><init>(I[Lbpb;[Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lboy;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [Lboy;

    new-instance p0, Lboz;

    iget-object v2, p3, Lbpy;->c:Ljava/lang/String;

    iget-object v5, p3, Lbpy;->b:[B

    iget-wide v6, p3, Lbpy;->d:J

    .line 22
    move-object v0, p0

    move-object v1, p2

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lboz;-><init>(Ljava/lang/String;Ljava/lang/String;[Lboy;Z[BJ)V

    return-object p0
.end method

.method public static c(Landroid/database/Cursor;)Lbpb;
    .locals 13

    .line 1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Lbpb;

    .line 4
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lbpb;-><init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V

    return-object v0

    :cond_0
    nop

    .line 5
    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v12, Lbpb;

    .line 6
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lbpb;-><init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V

    return-object v12

    :cond_2
    nop

    .line 7
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v12, Lbpb;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 8
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lbpb;-><init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V

    return-object v12

    :cond_3
    nop

    .line 9
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v12, Lbpb;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 10
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lbpb;-><init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V

    return-object v12

    :cond_4
    nop

    .line 11
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lbpb;

    .line 12
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-direct {v1, v2, p0, v11}, Lbpb;-><init>(Ljava/lang/String;[BI)V

    return-object v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Flag without value: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget v0, Lbtj;->a:I

    sget-object v0, Ldlq;->a:Ldlq;

    .line 2
    invoke-virtual {v0}, Ldlq;->b()Ldlr;

    move-result-object v0

    invoke-interface {v0}, Ldlr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldlq;->a:Ldlq;

    .line 3
    invoke-virtual {v0}, Ldlq;->b()Ldlr;

    move-result-object v0

    invoke-interface {v0}, Ldlr;->a()Ldgp;

    move-result-object v0

    iget-object v0, v0, Ldgp;->a:Lddr;

    .line 4
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)[Lbpb;
    .locals 15

    .line 1
    move-object/from16 v0, p1

    const-class v1, Lbpz;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 2
    const-string v3, "getUncommittedOverrides_allOverrides"

    invoke-static {v2, v3, v0}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v5, "FlagOverrides"

    .line 3
    sget-object v2, Lbpk;->b:Lcol;

    .line 4
    invoke-interface {v2}, Lcol;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "1"

    .line 5
    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 6
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    .line 7
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v4

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 8
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 11
    const-string v3, "getUncommittedOverrides_uncommittedOverridesAllUsers"

    invoke-static {v2, v3, v0}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    sget-object v2, Lbpk;->b:Lcol;

    .line 12
    invoke-interface {v2}, Lcol;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Ljava/lang/String;

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v9, v3

    const-string v6, "FlagOverrides"

    const-string v8, "packageName = ? AND user = \'*\' AND committed = 0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 13
    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 14
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getUncommittedOverrides_uncommittedOverridesForUser"

    .line 15
    invoke-static {v6, v7, v0}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    sget-object v6, Lbpk;->b:Lcol;

    .line 16
    invoke-interface {v6}, Lcol;->a()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, [Ljava/lang/String;

    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/String;

    aput-object v0, v11, v3

    aput-object p2, v11, v2

    const-string v8, "FlagOverrides"

    const-string v10, "packageName = ? AND user = ? AND committed = 0"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 17
    move-object v7, p0

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 18
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    add-int/2addr v6, v7

    if-nez v6, :cond_b

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getUncommittedOverrides_committedOverrides"

    .line 20
    invoke-static {v1, v3, v0}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    const-string v7, "FlagOverrides"

    sget-object v0, Lbpk;->b:Lcol;

    .line 21
    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;

    const-string v9, "packageName != ? AND committed = 1"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "1"

    .line 22
    move-object v6, p0

    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 23
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v0, :cond_6

    if-eqz v1, :cond_3

    .line 24
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 25
    :cond_3
    :try_start_b
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v2, :cond_4

    .line 26
    :try_start_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 27
    :cond_4
    :try_start_d
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v5, :cond_5

    .line 28
    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 29
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v4

    :cond_6
    :try_start_f
    sget-object v0, Lbpz;->a:[Lbpb;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v1, :cond_7

    .line 24
    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 25
    :cond_7
    :try_start_11
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v2, :cond_8

    .line 26
    :try_start_12
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 27
    :cond_8
    :try_start_13
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v5, :cond_9

    .line 28
    :try_start_14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 29
    :cond_9
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_a

    .line 30
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :cond_a
    :goto_1
    :try_start_16
    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 39
    :catchall_2
    move-exception v0

    .line 25
    :try_start_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 31
    throw v0

    .line 32
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Lbpb;

    .line 33
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 34
    invoke-static {v5}, Lbpz;->c(Landroid/database/Cursor;)Lbpb;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    .line 35
    aput-object v1, v0, v3

    move v3, v4

    goto :goto_2

    .line 36
    :cond_c
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 37
    invoke-static {v2}, Lbpz;->c(Landroid/database/Cursor;)Lbpb;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    .line 38
    aput-object v1, v0, v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move v3, v4

    goto :goto_3

    :cond_d
    if-eqz v2, :cond_e

    .line 26
    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 27
    :cond_e
    :try_start_19
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v5, :cond_9

    .line 28
    :try_start_1a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    goto :goto_0

    .line 40
    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_f

    .line 39
    :try_start_1b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    goto :goto_4

    .line 30
    :catchall_4
    move-exception v0

    .line 39
    :cond_f
    :goto_4
    :try_start_1c
    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 41
    :catchall_5
    move-exception v0

    .line 27
    :try_start_1d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 40
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 42
    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_10

    .line 41
    :try_start_1e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto :goto_5

    .line 30
    :catchall_7
    move-exception v0

    .line 41
    :cond_10
    :goto_5
    :try_start_1f
    throw v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 3
    :catchall_8
    move-exception v0

    .line 29
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 42
    throw v0

    .line 9
    :catchall_9
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_11

    .line 3
    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    goto :goto_6

    .line 30
    :catchall_a
    move-exception v0

    .line 3
    :cond_11
    :goto_6
    :try_start_21
    throw v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 29
    :catchall_b
    move-exception v0

    .line 8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 9
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public static f(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, " "

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method
