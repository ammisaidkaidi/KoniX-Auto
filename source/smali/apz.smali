.class public final Lapz;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 26

    .line 1
    move/from16 v0, p1

    const-string v1, "MenuItem"

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 6
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    const-string v4, "MenuItems"

    .line 7
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, v4}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_a

    .line 9
    invoke-interface {v2, v5, v6, v1}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v4, Lamu;->c:[I

    move-object/from16 v8, p0

    invoke-virtual {v8, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v9, 0x6

    const/4 v10, -0x1

    .line 11
    :try_start_2
    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/16 v10, 0xc

    .line 12
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    .line 13
    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0x8

    .line 14
    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    const/16 v14, 0x9

    .line 15
    invoke-virtual {v4, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    const/16 v15, 0xb

    .line 16
    const/4 v6, 0x1

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    const/16 v7, 0xe

    .line 17
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/16 v6, 0xa

    .line 18
    invoke-virtual {v4, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 19
    invoke-virtual {v4, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 20
    move-object/from16 v17, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 21
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    .line 22
    invoke-virtual {v4, v13, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 23
    move-object/from16 v19, v3

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 24
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    const/4 v8, 0x4

    .line 25
    invoke-virtual {v4, v8, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    move/from16 v21, v3

    const/16 v3, 0xd

    .line 26
    invoke-virtual {v4, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v13, 0x7

    .line 27
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v13, :cond_2

    .line 28
    move-object/from16 v23, v4

    :try_start_3
    invoke-static/range {p0 .. p0}, Laro;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    .line 43
    move/from16 v25, v0

    move/from16 v24, v5

    const/4 v5, 0x1

    :try_start_4
    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Lapu;

    const/16 v22, 0x0

    aput-object v5, v0, v22

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 29
    invoke-virtual {v5, v13, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v5, Lapy;

    .line 30
    invoke-direct {v5, v0, v4}, Lapy;-><init>(Ljava/lang/reflect/Method;Landroid/app/Activity;)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "OnClick method "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(MenuItem) not found in your activity"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t find an activity for the MenuItem"

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 32
    :cond_2
    move/from16 v25, v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    const/4 v5, 0x0

    .line 30
    :goto_1
    if-nez v8, :cond_3

    .line 31
    sget-object v0, Lapr;->a:Lapr;

    goto :goto_2

    .line 32
    :cond_3
    sget-object v0, Lapr;->b:Lapr;

    .line 33
    :goto_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 34
    const/4 v4, 0x3

    const/4 v8, 0x0

    invoke-interface {v2, v4, v8, v1}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static/range {p0 .. p0}, Lapu;->a(Landroid/content/Context;)Lapq;

    move-result-object v4

    iput v9, v4, Lapq;->f:I

    iput-object v10, v4, Lapq;->g:Ljava/lang/CharSequence;

    iput-object v11, v4, Lapq;->h:Landroid/graphics/drawable/Drawable;

    iput-object v5, v4, Lapq;->i:Lapt;

    iput v3, v4, Lapq;->t:I

    iput-boolean v15, v4, Lapq;->k:Z

    iput-boolean v7, v4, Lapq;->o:Z

    iput-boolean v6, v4, Lapq;->l:Z

    iput-object v0, v4, Lapq;->j:Lapr;

    if-eqz v12, :cond_4

    iget-object v0, v4, Lapq;->a:Landroid/content/Context;

    const v3, 0x7f100031

    .line 36
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lapq;->b:Ljava/lang/String;

    iget-object v0, v4, Lapq;->a:Landroid/content/Context;

    const v3, 0x7f08006c

    .line 37
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lapq;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lapq;->r:Z

    iget-object v0, v4, Lapq;->b:Ljava/lang/String;

    iput-object v0, v4, Lapq;->g:Ljava/lang/CharSequence;

    iget-object v0, v4, Lapq;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, v4, Lapq;->h:Landroid/graphics/drawable/Drawable;

    :cond_4
    if-eqz v14, :cond_5

    iget-object v0, v4, Lapq;->a:Landroid/content/Context;

    const v3, 0x7f100032

    .line 38
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lapq;->c:Ljava/lang/String;

    iget-object v0, v4, Lapq;->a:Landroid/content/Context;

    const v3, 0x7f08006e

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lapq;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lapq;->s:Z

    iget-object v0, v4, Lapq;->c:Ljava/lang/String;

    iput-object v0, v4, Lapq;->g:Ljava/lang/CharSequence;

    iget-object v0, v4, Lapq;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, v4, Lapq;->h:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x40

    iput v0, v4, Lapq;->t:I

    :cond_5
    if-nez v16, :cond_6

    if-eqz v18, :cond_7

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, v4, Lapq;->m:Z

    move/from16 v0, v25

    iput-boolean v0, v4, Lapq;->n:Z

    :cond_7
    if-nez v24, :cond_8

    if-eqz v20, :cond_9

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, v4, Lapq;->p:Z

    move/from16 v0, v21

    iput-boolean v0, v4, Lapq;->q:Z

    .line 40
    :cond_9
    invoke-virtual {v4}, Lapq;->a()Lapu;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    move-object/from16 v3, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v8

    move-object/from16 v0, v17

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 2
    :catchall_1
    move-exception v0

    move-object/from16 v23, v4

    .line 41
    :goto_3
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 32
    :cond_a
    if-eqz v2, :cond_b

    .line 46
    :try_start_7
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_b
    return-object v3

    .line 47
    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_c

    .line 2
    :try_start_8
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 44
    :catchall_3
    move-exception v0

    .line 2
    :cond_c
    :goto_4
    :try_start_9
    throw v1
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 46
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    .line 47
    const-string v2, "Unable to parse Menu Items"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method
