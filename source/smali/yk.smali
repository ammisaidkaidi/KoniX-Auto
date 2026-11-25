.class public final Lyk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lvh;

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Ljava/lang/Object;

.field public static final d:Lvi;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lvh;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lvh;-><init>(I)V

    sput-object v0, Lyk;->a:Lvh;

    new-instance v9, Lcdx;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Lcdx;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x2710

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v1, Lyk;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyk;->c:Ljava/lang/Object;

    new-instance v0, Lvi;

    invoke-direct {v0}, Lvi;-><init>()V

    sput-object v0, Lyk;->d:Lvi;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lye;I)Lyj;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "result_code"

    const-string v3, "font_italic"

    const-string v4, "font_weight"

    const-string v5, "font_ttc_index"

    const-string v6, "file_id"

    const-string v7, "_id"

    const-string v8, "content"

    sget-object v9, Lyk;->a:Lvh;

    invoke-virtual {v9, v0}, Lvh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Typeface;

    if-nez v9, :cond_19

    .line 2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget-object v11, v1, Lye;->a:Ljava/lang/String;

    .line 3
    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v13

    if-eqz v13, :cond_18

    .line 5
    iget-object v14, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Lye;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 8
    iget-object v11, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v14, 0x40

    invoke-virtual {v10, v11, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 9
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v11, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 11
    :goto_0
    array-length v15, v10

    if-ge v14, v15, :cond_0

    .line 12
    aget-object v15, v10, v14

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    sget-object v10, Lyd;->a:Ljava/util/Comparator;

    .line 13
    invoke-static {v11, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v10, v1, Lye;->d:Ljava/util/List;

    const/4 v14, 0x0

    .line 14
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x0

    if-ge v14, v15, :cond_4

    new-instance v15, Ljava/util/ArrayList;

    .line 15
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v9, Lyd;->a:Ljava/util/Comparator;

    .line 16
    invoke-static {v15, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    if-eq v9, v12, :cond_1

    move-object/from16 v19, v10

    goto :goto_3

    :cond_1
    const/4 v9, 0x0

    .line 18
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_3

    .line 19
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    check-cast v10, [B

    invoke-static {v12, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v19

    goto :goto_2

    .line 17
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v19

    const/4 v12, 0x0

    goto :goto_1

    .line 19
    :cond_3
    goto :goto_4

    .line 50
    :cond_4
    move-object/from16 v13, v16

    .line 19
    :goto_4
    const/4 v9, 0x1

    if-nez v13, :cond_5

    move-object/from16 v2, v16

    const/4 v1, 0x1

    const/4 v13, 0x0

    goto/16 :goto_c

    .line 20
    :cond_5
    iget-object v10, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/net/Uri$Builder;

    .line 22
    invoke-direct {v12}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v12, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 23
    invoke-virtual {v12, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 24
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    new-instance v13, Landroid/net/Uri$Builder;

    .line 25
    invoke-direct {v13}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v13, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 26
    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v10, "file"

    .line 27
    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 28
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x7

    :try_start_1
    new-array v10, v10, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v10, v13

    aput-object v6, v10, v9

    const/4 v13, 0x2

    aput-object v5, v10, v13

    const/4 v13, 0x3

    const-string v14, "font_variation_settings"

    aput-object v14, v10, v13

    const/4 v13, 0x4

    aput-object v4, v10, v13

    const/4 v13, 0x5

    aput-object v3, v10, v13

    const/4 v13, 0x6

    aput-object v2, v10, v13

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v21, "query = ?"

    new-array v13, v9, [Ljava/lang/String;

    iget-object v1, v1, Lye;->c:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v12

    move-object/from16 v20, v10

    move-object/from16 v22, v13

    invoke-virtual/range {v18 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_c

    .line 30
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_c

    .line 31
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    new-instance v11, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 34
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 35
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 36
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 37
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 38
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, -0x1

    if-eq v2, v10, :cond_6

    .line 39
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v23, v13

    goto :goto_6

    .line 44
    :cond_6
    const/16 v23, 0x0

    .line 39
    :goto_6
    if-eq v5, v10, :cond_7

    .line 40
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v20, v13

    goto :goto_7

    .line 44
    :cond_7
    const/16 v20, 0x0

    .line 40
    :goto_7
    if-ne v6, v10, :cond_8

    .line 41
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 42
    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v19, v10

    goto :goto_8

    .line 43
    :cond_8
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 44
    invoke-static {v8, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v19, v10

    .line 42
    :goto_8
    const/4 v10, -0x1

    if-eq v4, v10, :cond_9

    .line 45
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v21, v10

    goto :goto_9

    .line 48
    :cond_9
    const/16 v10, 0x190

    const/16 v21, 0x190

    .line 45
    :goto_9
    const/4 v10, -0x1

    if-eq v3, v10, :cond_a

    .line 46
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v9, :cond_a

    const/16 v22, 0x1

    goto :goto_a

    .line 48
    :cond_a
    const/16 v22, 0x0

    .line 46
    :goto_a
    new-instance v10, Lyl;

    .line 47
    move-object/from16 v18, v10

    invoke-direct/range {v18 .. v23}, Lyl;-><init>(Landroid/net/Uri;IIZI)V

    .line 48
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 44
    :cond_b
    goto :goto_b

    .line 55
    :catchall_0
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_f

    .line 50
    :cond_c
    nop

    .line 44
    :goto_b
    if-eqz v1, :cond_d

    .line 49
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    const/4 v13, 0x0

    new-array v1, v13, [Lyl;

    .line 50
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [Lyl;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v2, v16

    const/4 v1, 0x0

    .line 19
    :goto_c
    const/4 v3, -0x3

    if-eqz v1, :cond_e

    const/4 v12, -0x2

    goto :goto_e

    .line 54
    :cond_e
    if-eqz v2, :cond_13

    array-length v1, v2

    if-nez v1, :cond_f

    const/4 v12, 0x1

    goto :goto_e

    :cond_f
    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_12

    .line 51
    aget-object v5, v2, v4

    iget v5, v5, Lyl;->e:I

    if-eqz v5, :cond_11

    if-gez v5, :cond_10

    const/4 v12, -0x3

    goto :goto_e

    :cond_10
    move v12, v5

    goto :goto_e

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_12
    const/4 v12, 0x0

    goto :goto_e

    :cond_13
    const/4 v12, 0x1

    .line 19
    :goto_e
    if-nez v12, :cond_15

    .line 52
    sget-object v1, Lek;->a:Ler;

    .line 53
    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-virtual {v1, v4, v2, v5}, Ler;->b(Landroid/content/Context;[Lyl;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_14

    sget-object v2, Lyk;->a:Lvh;

    .line 54
    invoke-virtual {v2, v0, v1}, Lvh;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lyj;

    invoke-direct {v0, v1}, Lyj;-><init>(Landroid/graphics/Typeface;)V

    return-object v0

    :cond_14
    new-instance v0, Lyj;

    invoke-direct {v0, v3}, Lyj;-><init>(I)V

    return-object v0

    :cond_15
    new-instance v0, Lyj;

    invoke-direct {v0, v12}, Lyj;-><init>(I)V

    return-object v0

    .line 50
    :catchall_1
    move-exception v0

    :goto_f
    if-eqz v16, :cond_16

    .line 49
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_16
    throw v0

    .line 6
    :cond_17
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found content provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but package was not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lye;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_18
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "No package found for authority: "

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    :catch_0
    move-exception v0

    new-instance v0, Lyj;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lyj;-><init>(I)V

    return-object v0

    :cond_19
    new-instance v0, Lyj;

    invoke-direct {v0, v9}, Lyj;-><init>(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method public static b(Lye;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lye;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
