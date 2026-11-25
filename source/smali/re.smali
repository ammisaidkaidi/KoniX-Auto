.class public Lre;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static d(Ljava/lang/String;)Ldbs;
    .locals 4

    .line 1
    sget-object v0, Ldlw;->a:Ldlw;

    .line 2
    invoke-virtual {v0}, Ldlw;->b()Ldlx;

    move-result-object v0

    invoke-interface {v0}, Ldlx;->a()Lcgz;

    move-result-object v0

    .line 3
    const-string v1, "_"

    const-string v2, "_u_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    const-string v2, "_d_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "#"

    const-string v2, "_p_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "ph_pkgcfg_"

    if-eqz v1, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 4
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    sget-object v1, Ldbs;->d:Ldbs;

    sget-object v2, Lbpu;->a:Lbpu;

    iget-object v3, v0, Lcgz;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcei;

    if-nez v3, :cond_1

    iget-object v3, v0, Lcgz;->b:Lceg;

    .line 7
    invoke-virtual {v3, p0, v1, v2}, Lceg;->d(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;

    move-result-object v3

    iget-object v0, v0, Lcgz;->a:Ljava/util/Map;

    .line 8
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_1
    nop

    .line 9
    :goto_1
    invoke-virtual {v3}, Lcei;->c()Ljava/lang/Object;

    move-result-object p0

    .line 10
    check-cast p0, Ldbs;

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lcoe;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    const-string v0, "com.google.EMPTY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    sget-object v0, Ldml;->a:Ldml;

    .line 5
    invoke-virtual {v0}, Ldml;->b()Ldmm;

    move-result-object v0

    invoke-interface {v0}, Ldmm;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 6
    :cond_1
    const-string v0, "com.google.android.apps.mobileutilities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 7
    :cond_2
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    move-object v2, p0

    move-object v1, p1

    goto :goto_0

    .line 12
    :cond_3
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v1, v3

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_0
    invoke-static {v2}, Lre;->d(Ljava/lang/String;)Ldbs;

    move-result-object v4

    iget v5, v4, Ldbs;->a:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    iget-object p0, v4, Ldbs;->c:Ldbq;

    if-nez p0, :cond_4

    .line 11
    sget-object p0, Ldbq;->b:Ldbq;

    :cond_4
    iget-boolean p0, p0, Ldbq;->a:Z

    if-eq v3, p0, :cond_5

    move-object p1, v1

    goto :goto_1

    .line 12
    :cond_5
    nop

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr p0, v3

    add-int/2addr p0, v1

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0

    .line 3
    :cond_7
    :goto_2
    return-object p0
.end method

.method public static f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    .line 1
    const-class v0, Lbps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChangeCount"

    invoke-static {v0, v1, p1}, Lafo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "count"

    const/4 v9, 0x0

    aput-object v1, v3, v9

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v9

    const-string v2, "ChangeCounts"

    const-string v4, "packageName = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    :goto_0
    if-eqz p0, :cond_1

    .line 6
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-wide v0

    .line 8
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 5
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :cond_2
    :goto_1
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 7
    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8
    throw p0
.end method

.method public static g(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2

    .line 1
    const-string v0, "__sync"

    invoke-static {p0, v0}, Lre;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lre;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    new-instance v2, Landroid/content/ContentValues;

    .line 2
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3
    const-string v3, "packageName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    const-string v3, "ChangeCounts"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p0, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    .line 6
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to increment change count for "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
