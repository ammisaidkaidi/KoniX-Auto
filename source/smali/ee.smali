.class public final Lee;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/util/TypedValue;ILeb;)Landroid/graphics/Typeface;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4
    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lee;->b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILeb;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILeb;)Landroid/graphics/Typeface;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    const-string v2, "font-family"

    const-string v7, "ResourcesCompat"

    iget-object v3, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1a

    .line 4
    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5
    const-string v1, "res/"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Leb;->d()V

    return-object v9

    .line 7
    :cond_0
    sget-object v1, Lek;->b:Lvh;

    .line 8
    invoke-static {v0, v4, v5}, Lek;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lvh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-nez v1, :cond_19

    .line 9
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".xml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 10
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 11
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v3, v10, :cond_2

    if-eq v3, v11, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    nop

    .line 12
    invoke-interface {v1, v10, v9, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 15
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 16
    sget-object v3, Las;->b:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 17
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 18
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 19
    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 20
    invoke-virtual {v2, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 21
    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    const/16 v10, 0x1f4

    .line 22
    const/4 v11, 0x3

    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    .line 23
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 24
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v12, :cond_9

    if-eqz v14, :cond_9

    if-eqz v13, :cond_9

    .line 25
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 26
    invoke-static {v1}, Lr;->j(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_3
    if-nez v9, :cond_4

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 28
    :cond_4
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    goto :goto_4

    :cond_6
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    const/4 v3, 0x1

    if-ne v6, v3, :cond_8

    const/4 v3, 0x0

    .line 34
    :goto_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 35
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-eqz v9, :cond_7

    .line 36
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lr;->i([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 37
    :cond_8
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr;->i([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 27
    :goto_4
    :try_start_4
    new-instance v2, Ldy;

    new-instance v3, Lye;

    .line 39
    invoke-direct {v3, v12, v14, v13, v1}, Lye;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v2, v3, v15, v10, v11}, Ldy;-><init>(Lye;IILjava/lang/String;)V

    goto/16 :goto_d

    .line 76
    :catchall_0
    move-exception v0

    .line 31
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    throw v0

    .line 37
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    :goto_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v9, 0x3

    if-eq v6, v9, :cond_13

    .line 42
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_12

    .line 43
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v10, "font"

    .line 44
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 45
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    sget-object v10, Las;->c:[I

    .line 46
    invoke-virtual {v0, v6, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 47
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v12, v11, :cond_a

    const/4 v10, 0x1

    goto :goto_6

    .line 61
    :cond_a
    nop

    .line 47
    :goto_6
    const/16 v11, 0x190

    .line 48
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 49
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v11, v10, :cond_b

    const/4 v10, 0x2

    goto :goto_7

    .line 61
    :cond_b
    const/4 v10, 0x6

    .line 49
    :goto_7
    nop

    .line 50
    const/4 v12, 0x0

    invoke-virtual {v6, v10, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    if-ne v10, v11, :cond_c

    const/16 v19, 0x1

    goto :goto_8

    .line 61
    :cond_c
    const/16 v19, 0x0

    .line 50
    :goto_8
    nop

    .line 51
    const/16 v10, 0x9

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eq v11, v12, :cond_d

    const/4 v10, 0x3

    goto :goto_9

    .line 61
    :cond_d
    nop

    .line 51
    :goto_9
    nop

    .line 52
    const/4 v12, 0x7

    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eq v11, v13, :cond_e

    const/4 v12, 0x4

    goto :goto_a

    .line 61
    :cond_e
    nop

    .line 53
    :goto_a
    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 54
    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    .line 55
    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v12, v11, :cond_f

    const/4 v11, 0x0

    goto :goto_b

    .line 61
    :cond_f
    const/4 v11, 0x5

    .line 55
    :goto_b
    nop

    .line 56
    const/4 v13, 0x0

    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    .line 57
    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 58
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    :goto_c
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v11, 0x3

    if-eq v6, v11, :cond_10

    .line 60
    invoke-static {v1}, Lr;->j(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_10
    new-instance v6, Ldx;

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v22}, Ldx;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    .line 61
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 62
    :cond_11
    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v1}, Lr;->j(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 42
    :cond_12
    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_5

    .line 63
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x0

    goto :goto_d

    :cond_14
    new-instance v1, Ldw;

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ldx;

    .line 65
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ldx;

    invoke-direct {v1, v2}, Ldw;-><init>([Ldx;)V

    move-object v2, v1

    goto :goto_d

    .line 66
    :cond_15
    invoke-static {v1}, Lr;->j(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v2, 0x0

    .line 39
    :goto_d
    if-nez v2, :cond_16

    const-string v0, "Failed to find font-family tag"

    .line 67
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Leb;->d()V

    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_16
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lek;->d(Landroid/content/Context;Ldv;Landroid/content/res/Resources;IILeb;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 71
    :cond_17
    move-object/from16 v1, p0

    invoke-static {v1, v0, v4, v8, v5}, Lek;->b(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 72
    move-object/from16 v2, p5

    invoke-virtual {v2, v0}, Leb;->b(Landroid/graphics/Typeface;)V

    goto :goto_e

    .line 73
    :cond_18
    invoke-static {}, Leb;->d()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 72
    :goto_e
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to read xml resource "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 77
    :catch_1
    move-exception v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to parse xml resource "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_f
    invoke-static {}, Leb;->d()V

    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_19
    move-object v2, v6

    invoke-virtual {v2, v1}, Leb;->b(Landroid/graphics/Typeface;)V

    return-object v1

    .line 2
    :cond_1a
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is not a Font: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :goto_10
    throw v2

    :goto_11
    goto :goto_10
.end method
