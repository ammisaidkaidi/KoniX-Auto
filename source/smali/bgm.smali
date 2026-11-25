.class public final Lbgm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcqw;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xd5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0xf0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x140

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x1e0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/Integer;

    invoke-static/range {v1 .. v7}, Lcqw;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lbgm;->a:Lcqw;

    return-void
.end method

.method public static a(IIFF)Lbgk;
    .locals 32

    .line 1
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p0

    int-to-double v3, v2

    float-to-double v5, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v3, v5

    const-wide v7, 0x4039666666666666L    # 25.4

    mul-double v5, v5, v7

    move/from16 v9, p1

    int-to-double v10, v9

    float-to-double v12, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v10, v12

    mul-double v7, v7, v12

    new-instance v14, Lbgl;

    div-float/2addr v0, v1

    float-to-double v12, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v15, v5, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double v17, v7, v10

    move-object v0, v14

    move/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v12

    move-wide v9, v15

    move-wide/from16 v11, v17

    invoke-direct/range {v0 .. v12}, Lbgl;-><init>(IIDDDDD)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x78

    :goto_0
    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_0

    int-to-double v2, v1

    iget-wide v4, v14, Lbgl;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v2, v4

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const-wide/high16 v6, 0x4064000000000000L    # 160.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v6

    iget v6, v14, Lbgl;->b:I

    iget v7, v14, Lbgl;->a:I

    iget-wide v8, v14, Lbgl;->d:D

    iget-wide v10, v14, Lbgl;->e:D

    const-wide/high16 v12, 0x4033000000000000L    # 19.0

    mul-double v12, v12, v2

    move-wide/from16 v24, v12

    mul-double v12, v12, v10

    move-wide/from16 v26, v12

    const-wide v15, 0x409db00000000000L    # 1900.0

    div-double/2addr v12, v15

    .line 3
    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v28

    iget-wide v12, v14, Lbgl;->e:D

    new-instance v15, Lbgk;

    move-wide/from16 v30, v12

    move-object v12, v15

    long-to-int v5, v4

    move-object v4, v15

    move v15, v5

    move-object/from16 p0, v4

    int-to-double v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v4, v2

    int-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v4, v2

    mul-double v20, v2, v8

    mul-double v22, v2, v10

    add-double v28, v28, v28

    const-wide v4, 0x40aadb7e58bd85d9L    # 3437.7467707849396

    mul-double v28, v28, v4

    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    mul-double v2, v2, v4

    mul-double v30, v30, v2

    move-object v13, v14

    move-object v2, v14

    move v14, v1

    invoke-direct/range {v12 .. v31}, Lbgk;-><init>(Lbgl;IIDDDDDDDD)V

    .line 4
    move-object/from16 v3, p0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move-object v14, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v3, 0x0

    move-wide v4, v1

    move-object v6, v3

    move-object v7, v6

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbgk;

    iget v9, v8, Lbgk;->b:I

    iget-wide v10, v8, Lbgk;->c:D

    const-wide v12, 0x4087600000000000L    # 748.0

    cmpg-double v14, v10, v12

    if-ltz v14, :cond_1

    iget-wide v10, v8, Lbgk;->d:D

    const-wide v12, 0x407c200000000000L    # 450.0

    cmpg-double v14, v10, v12

    if-ltz v14, :cond_1

    iget-wide v10, v8, Lbgk;->e:D

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    cmpg-double v14, v10, v12

    if-ltz v14, :cond_1

    iget-object v12, v8, Lbgk;->a:Lbgl;

    iget-wide v12, v8, Lbgk;->f:D

    const-wide v14, 0x402699999999999aL    # 11.3

    cmpg-double v16, v12, v14

    if-ltz v16, :cond_1

    const-wide v12, -0x3fd20a3d70a3d70aL    # -14.98

    add-double/2addr v10, v12

    .line 6
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    sget-object v12, Lbgm;->a:Lcqw;

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v9

    cmpg-double v12, v10, v1

    if-gez v12, :cond_2

    move-object v7, v8

    :cond_2
    cmpg-double v12, v10, v1

    if-gez v12, :cond_3

    move-wide v1, v10

    :cond_3
    if-eqz v9, :cond_1

    cmpg-double v9, v10, v4

    if-gez v9, :cond_1

    move-object v6, v8

    move-wide v4, v10

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    move-object v3, v6

    goto :goto_2

    :cond_5
    if-nez v7, :cond_6

    :goto_2
    return-object v3

    :cond_6
    return-object v7
.end method
