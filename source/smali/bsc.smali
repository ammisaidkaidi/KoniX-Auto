.class public final Lbsc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:I


# instance fields
.field public final a:Landroid/util/LruCache;

.field public b:Ldqj;

.field private final d:Landroid/util/LruCache;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DEFAULT"

    invoke-static {v0}, Lr;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbsc;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/LruCache;Landroid/util/LruCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsc;->e:Landroid/content/Context;

    const p1, 0x7f0f000d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lbsc;->f:Ljava/lang/Integer;

    iput-object p2, p0, Lbsc;->d:Landroid/util/LruCache;

    iput-object p3, p0, Lbsc;->a:Landroid/util/LruCache;

    return-void
.end method

.method private static e(Ljava/util/List;Lcqh;)Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcqh;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v2, v3, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqd;

    iget v2, v1, Ldqd;->a:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    iget v2, v1, Ldqd;->c:I

    goto :goto_1

    .line 10
    :cond_0
    sget v2, Lbsc;->c:I

    .line 5
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    .line 6
    invoke-virtual {v1, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lddf;

    .line 8
    invoke-virtual {v3, v1}, Lddf;->n(Lddk;)V

    iget-boolean v1, v3, Lddf;->c:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v5, v3, Lddf;->c:Z

    :cond_1
    iget-object v1, v3, Lddf;->b:Lddk;

    .line 9
    check-cast v1, Ldqd;

    iget v4, v1, Ldqd;->a:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v1, Ldqd;->a:I

    iput v5, v1, Ldqd;->c:I

    .line 6
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldqd;

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_2
    new-instance p0, Lbsb;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v5

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1}, Lcqh;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 12
    const-string p1, "CollectionBasisHolder index(%d) exceeds list size(%d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbsb;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(I)Ldqg;
    .locals 2

    .line 1
    iget-object v0, p0, Lbsc;->d:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqg;

    if-nez v0, :cond_2

    iget-object v0, p0, Lbsc;->b:Ldqj;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lbsc;->c()Ldqj;

    move-result-object v0

    iput-object v0, p0, Lbsc;->b:Ldqj;

    :cond_0
    iget-object v0, p0, Lbsc;->b:Ldqj;

    iget-object v0, v0, Ldqj;->a:Ldem;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqg;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbsc;->d:Landroid/util/LruCache;

    .line 5
    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    nop

    .line 4
    :goto_0
    return-object v0
.end method

.method public final b(I)Ldqg;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbsc;->a(I)Ldqg;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final c()Ldqj;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    iget-object v0, v1, Lbsc;->e:Landroid/content/Context;

    if-eqz v0, :cond_17

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, v1, Lbsc;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-static {v2}, Ldcp;->H(Ljava/io/InputStream;)Ldcp;

    move-result-object v0

    .line 3
    sget-object v3, Ldqj;->f:Ldqj;

    .line 4
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 5
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lddf;->m(Ldcp;Ldcz;)V

    .line 6
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldqj;

    iget-object v3, v0, Ldqj;->c:Lddr;

    iget-object v4, v0, Ldqj;->d:Lddp;

    .line 7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_15

    .line 9
    new-instance v5, Ljava/util/HashMap;

    .line 10
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v0, Ldqj;->e:Lddr;

    .line 11
    invoke-static {v6}, Lcqh;->n(Ljava/util/Collection;)Lcqh;

    move-result-object v6

    .line 12
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 14
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldqg;

    iget-object v12, v11, Ldqg;->e:Lddp;

    .line 17
    invoke-static {v12, v6}, Lbsc;->e(Ljava/util/List;Lcqh;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v11, Ldqg;->f:Lddp;

    iget-object v14, v11, Ldqg;->g:Lddq;

    .line 18
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    .line 19
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "TagNumbersList[%d] and CollectionBasisFieldList[%d] must have same size"

    if-ne v15, v7, :cond_e

    .line 91
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    .line 20
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 22
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 23
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 24
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 25
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 26
    invoke-static/range {v16 .. v16}, Lcqh;->q(Ljava/lang/Object;)Lcqh;

    move-result-object v9

    .line 27
    invoke-static {v9, v6}, Lbsc;->e(Ljava/util/List;Lcqh;)Ljava/util/Map;

    move-result-object v9

    .line 28
    sget-object v16, Ldqc;->e:Ldqc;

    .line 29
    invoke-virtual/range {v16 .. v16}, Lddk;->n()Lddf;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v9}, Lddf;->ah(Ljava/util/Map;)V

    .line 31
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldqc;

    .line 32
    invoke-interface {v7, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    goto :goto_1

    :cond_0
    iget-object v1, v11, Ldqg;->c:Lddr;

    iget-object v9, v11, Ldqg;->d:Lddq;

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ne v13, v14, :cond_d

    .line 34
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v13, 0x5

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 37
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldqc;

    iget-object v15, v14, Ldqc;->d:Lddp;

    .line 39
    invoke-static {v15, v6}, Lbsc;->e(Ljava/util/List;Lcqh;)Ljava/util/Map;

    move-result-object v15

    .line 40
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 49
    invoke-virtual {v14, v13}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v13

    .line 50
    check-cast v13, Lddf;

    .line 51
    invoke-virtual {v13, v14}, Lddf;->n(Lddk;)V

    .line 49
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldqc;

    invoke-virtual {v13, v14}, Lddf;->n(Lddk;)V

    invoke-virtual {v13}, Lddf;->f()Lddk;

    move-result-object v13

    check-cast v13, Ldqc;

    goto :goto_3

    .line 52
    :cond_1
    nop

    .line 41
    invoke-virtual {v14, v13}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v13

    .line 42
    check-cast v13, Lddf;

    .line 43
    invoke-virtual {v13, v14}, Lddf;->n(Lddk;)V

    .line 44
    invoke-virtual {v13, v15}, Lddf;->ah(Ljava/util/Map;)V

    iget-boolean v14, v13, Lddf;->c:Z

    if-eqz v14, :cond_2

    .line 45
    invoke-virtual {v13}, Lddf;->k()V

    const/4 v14, 0x0

    iput-boolean v14, v13, Lddf;->c:Z

    :cond_2
    iget-object v14, v13, Lddf;->b:Lddk;

    .line 46
    check-cast v14, Ldqc;

    .line 47
    invoke-static {}, Ldqc;->u()Lddp;

    move-result-object v15

    iput-object v15, v14, Ldqc;->d:Lddp;

    .line 48
    invoke-virtual {v13}, Lddf;->f()Lddk;

    move-result-object v13

    check-cast v13, Ldqc;

    .line 52
    :goto_3
    invoke-interface {v7, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 48
    :cond_3
    nop

    .line 53
    invoke-virtual {v11, v13}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v1

    .line 54
    check-cast v1, Lddf;

    .line 55
    invoke-virtual {v1, v11}, Lddf;->n(Lddk;)V

    iget-boolean v8, v1, Lddf;->c:Z

    if-eqz v8, :cond_4

    .line 56
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v1, Lddf;->c:Z

    :cond_4
    iget-object v8, v1, Lddf;->b:Lddk;

    .line 57
    check-cast v8, Ldqg;

    iget-object v9, v8, Ldqg;->a:Ldem;

    iget-boolean v11, v9, Ldem;->b:Z

    if-nez v11, :cond_5

    .line 58
    invoke-virtual {v9}, Ldem;->a()Ldem;

    move-result-object v9

    iput-object v9, v8, Ldqg;->a:Ldem;

    :cond_5
    iget-object v8, v8, Ldqg;->a:Ldem;

    .line 57
    invoke-interface {v8, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v8, v1, Lddf;->c:Z

    if-eqz v8, :cond_6

    .line 59
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v1, Lddf;->c:Z

    :cond_6
    iget-object v8, v1, Lddf;->b:Lddk;

    .line 60
    check-cast v8, Ldqg;

    .line 61
    invoke-static {}, Ldqg;->u()Lddp;

    move-result-object v9

    iput-object v9, v8, Ldqg;->e:Lddp;

    iget-boolean v8, v1, Lddf;->c:Z

    if-eqz v8, :cond_7

    .line 62
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v1, Lddf;->c:Z

    :cond_7
    iget-object v8, v1, Lddf;->b:Lddk;

    .line 63
    check-cast v8, Ldqg;

    iget-object v9, v8, Ldqg;->b:Ldem;

    iget-boolean v11, v9, Ldem;->b:Z

    if-nez v11, :cond_8

    .line 64
    invoke-virtual {v9}, Ldem;->a()Ldem;

    move-result-object v9

    iput-object v9, v8, Ldqg;->b:Ldem;

    :cond_8
    iget-object v8, v8, Ldqg;->b:Ldem;

    .line 63
    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v7, v1, Lddf;->c:Z

    if-eqz v7, :cond_9

    .line 65
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v1, Lddf;->c:Z

    :cond_9
    iget-object v7, v1, Lddf;->b:Lddk;

    .line 66
    check-cast v7, Ldqg;

    .line 67
    invoke-static {}, Ldqg;->w()Lddq;

    move-result-object v8

    iput-object v8, v7, Ldqg;->d:Lddq;

    iget-boolean v7, v1, Lddf;->c:Z

    if-eqz v7, :cond_a

    .line 68
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v1, Lddf;->c:Z

    :cond_a
    iget-object v7, v1, Lddf;->b:Lddk;

    .line 69
    check-cast v7, Ldqg;

    .line 70
    invoke-static {}, Ldqg;->y()Lddr;

    move-result-object v8

    iput-object v8, v7, Ldqg;->c:Lddr;

    iget-boolean v7, v1, Lddf;->c:Z

    if-eqz v7, :cond_b

    .line 71
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v1, Lddf;->c:Z

    :cond_b
    iget-object v7, v1, Lddf;->b:Lddk;

    .line 72
    check-cast v7, Ldqg;

    .line 73
    invoke-static {}, Ldqg;->u()Lddp;

    move-result-object v8

    iput-object v8, v7, Ldqg;->f:Lddp;

    iget-boolean v7, v1, Lddf;->c:Z

    if-eqz v7, :cond_c

    .line 74
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v1, Lddf;->c:Z

    :cond_c
    iget-object v7, v1, Lddf;->b:Lddk;

    .line 75
    check-cast v7, Ldqg;

    .line 76
    invoke-static {}, Ldqg;->w()Lddq;

    move-result-object v8

    iput-object v8, v7, Ldqg;->g:Lddq;

    .line 77
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldqg;

    .line 78
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 33
    :cond_d
    new-instance v0, Lbsb;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 93
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_e
    new-instance v0, Lbsb;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 89
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 90
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 91
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_f
    sget-object v1, Ldqj;->f:Ldqj;

    .line 79
    invoke-virtual {v1}, Lddk;->n()Lddf;

    move-result-object v1

    iget-boolean v3, v1, Lddf;->c:Z

    if-eqz v3, :cond_10

    .line 80
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lddf;->c:Z

    :cond_10
    iget-object v3, v1, Lddf;->b:Lddk;

    .line 81
    check-cast v3, Ldqj;

    iget-object v4, v3, Ldqj;->a:Ldem;

    iget-boolean v6, v4, Ldem;->b:Z

    if-nez v6, :cond_11

    .line 82
    invoke-virtual {v4}, Ldem;->a()Ldem;

    move-result-object v4

    iput-object v4, v3, Ldqj;->a:Ldem;

    :cond_11
    iget-object v3, v3, Ldqj;->a:Ldem;

    .line 81
    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, v0, Ldqj;->b:Ldem;

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-boolean v3, v1, Lddf;->c:Z

    if-eqz v3, :cond_12

    .line 84
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lddf;->c:Z

    :cond_12
    iget-object v3, v1, Lddf;->b:Lddk;

    .line 85
    check-cast v3, Ldqj;

    iget-object v4, v3, Ldqj;->b:Ldem;

    iget-boolean v5, v4, Ldem;->b:Z

    if-nez v5, :cond_13

    .line 86
    invoke-virtual {v4}, Ldem;->a()Ldem;

    move-result-object v4

    iput-object v4, v3, Ldqj;->b:Ldem;

    :cond_13
    iget-object v3, v3, Ldqj;->b:Ldem;

    .line 85
    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldqj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_14

    .line 88
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_14
    return-object v0

    .line 7
    :cond_15
    :try_start_4
    new-instance v0, Lbsb;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "ProtoHashNamesList[%d] and MessagesList[%d] must have same size"

    .line 9
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsb;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_16

    .line 1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :cond_16
    :goto_4
    :try_start_6
    throw v1
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 95
    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    .line 94
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :cond_17
    new-instance v0, Ljava/io/IOException;

    .line 95
    const-string v1, "No context to load resource from"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final d(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbsc;->a(I)Ldqg;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
