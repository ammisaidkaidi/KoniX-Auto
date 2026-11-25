.class final Lafv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/graphics/Matrix;


# instance fields
.field b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Paint;

.field final d:Laft;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/Boolean;

.field final l:Lvb;

.field private final m:Landroid/graphics/Path;

.field private final n:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/PathMeasure;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lafv;->a:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lafv;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lafv;->e:F

    iput v0, p0, Lafv;->f:F

    iput v0, p0, Lafv;->g:F

    iput v0, p0, Lafv;->h:F

    const/16 v0, 0xff

    iput v0, p0, Lafv;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lafv;->j:Ljava/lang/String;

    iput-object v0, p0, Lafv;->k:Ljava/lang/Boolean;

    new-instance v0, Lvb;

    invoke-direct {v0}, Lvb;-><init>()V

    iput-object v0, p0, Lafv;->l:Lvb;

    new-instance v0, Laft;

    .line 2
    invoke-direct {v0}, Laft;-><init>()V

    iput-object v0, p0, Lafv;->d:Laft;

    new-instance v0, Landroid/graphics/Path;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lafv;->m:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    .line 4
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lafv;->n:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Lafv;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lafv;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lafv;->e:F

    iput v0, p0, Lafv;->f:F

    iput v0, p0, Lafv;->g:F

    iput v0, p0, Lafv;->h:F

    const/16 v0, 0xff

    iput v0, p0, Lafv;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lafv;->j:Ljava/lang/String;

    iput-object v0, p0, Lafv;->k:Ljava/lang/Boolean;

    new-instance v0, Lvb;

    invoke-direct {v0}, Lvb;-><init>()V

    iput-object v0, p0, Lafv;->l:Lvb;

    new-instance v1, Laft;

    .line 6
    iget-object v2, p1, Lafv;->d:Laft;

    invoke-direct {v1, v2, v0}, Laft;-><init>(Laft;Lvb;)V

    iput-object v1, p0, Lafv;->d:Laft;

    new-instance v1, Landroid/graphics/Path;

    .line 7
    iget-object v2, p1, Lafv;->m:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lafv;->m:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    .line 8
    iget-object v2, p1, Lafv;->n:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lafv;->n:Landroid/graphics/Path;

    .line 9
    iget v1, p1, Lafv;->e:F

    iput v1, p0, Lafv;->e:F

    .line 10
    iget v1, p1, Lafv;->f:F

    iput v1, p0, Lafv;->f:F

    .line 11
    iget v1, p1, Lafv;->g:F

    iput v1, p0, Lafv;->g:F

    .line 12
    iget v1, p1, Lafv;->h:F

    iput v1, p0, Lafv;->h:F

    .line 13
    iget v1, p1, Lafv;->q:I

    const/4 v1, 0x0

    iput v1, p0, Lafv;->q:I

    .line 14
    iget v1, p1, Lafv;->i:I

    iput v1, p0, Lafv;->i:I

    .line 15
    iget-object v1, p1, Lafv;->j:Ljava/lang/String;

    iput-object v1, p0, Lafv;->j:Ljava/lang/String;

    .line 16
    iget-object v1, p1, Lafv;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0, v1, p0}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    iget-object p1, p1, Lafv;->k:Ljava/lang/Boolean;

    iput-object p1, p0, Lafv;->k:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Laft;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 36

    .line 1
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v0, v7, Laft;->a:Landroid/graphics/Matrix;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, v7, Laft;->a:Landroid/graphics/Matrix;

    iget-object v1, v7, Laft;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    :goto_0
    iget-object v0, v7, Laft;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_23

    .line 5
    iget-object v0, v7, Laft;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laga;

    .line 6
    instance-of v1, v0, Laft;

    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    check-cast v1, Laft;

    .line 8
    iget-object v2, v7, Laft;->a:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lafv;->a(Laft;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    move-object v0, v6

    move-object v2, v8

    move/from16 v30, v10

    const/4 v8, 0x0

    goto/16 :goto_1a

    .line 9
    :cond_0
    instance-of v1, v0, Lafu;

    if-eqz v1, :cond_21

    .line 10
    check-cast v0, Lafu;

    move/from16 v1, p4

    int-to-float v2, v1

    iget v3, v6, Lafv;->g:F

    div-float/2addr v2, v3

    move/from16 v3, p5

    int-to-float v4, v3

    iget v5, v6, Lafv;->h:F

    div-float/2addr v4, v5

    .line 11
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 12
    iget-object v11, v7, Laft;->a:Landroid/graphics/Matrix;

    iget-object v12, v6, Lafv;->o:Landroid/graphics/Matrix;

    .line 13
    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v12, v6, Lafv;->o:Landroid/graphics/Matrix;

    .line 14
    invoke-virtual {v12, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x4

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    .line 15
    invoke-virtual {v11, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget v11, v4, v9

    const/4 v12, 0x1

    aget v13, v4, v12

    float-to-double v14, v11

    float-to-double v2, v13

    .line 16
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const/4 v11, 0x2

    aget v13, v4, v11

    const/4 v14, 0x3

    aget v15, v4, v14

    float-to-double v11, v13

    float-to-double v14, v15

    .line 17
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    aget v14, v4, v9

    const/4 v15, 0x1

    aget v18, v4, v15

    const/4 v15, 0x2

    aget v19, v4, v15

    const/4 v13, 0x3

    aget v4, v4, v13

    mul-float v14, v14, v4

    mul-float v18, v18, v19

    sub-float v14, v14, v18

    double-to-float v2, v2

    double-to-float v3, v11

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 19
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v2

    goto :goto_1

    .line 104
    :cond_1
    const/4 v4, 0x0

    .line 19
    :goto_1
    cmpl-float v2, v4, v3

    if-eqz v2, :cond_20

    iget-object v2, v6, Lafv;->m:Landroid/graphics/Path;

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v11, v0, Lafu;->m:[Lej;

    if-eqz v11, :cond_11

    const/4 v12, 0x6

    new-array v14, v12, [F

    const/16 v15, 0x6d

    const/4 v12, 0x0

    :goto_2
    array-length v13, v11

    if-ge v12, v13, :cond_11

    .line 21
    aget-object v13, v11, v12

    iget-char v3, v13, Lej;->a:C

    iget-object v13, v13, Lej;->b:[F

    aget v19, v14, v9

    const/16 v16, 0x1

    aget v20, v14, v16

    const/16 v17, 0x2

    aget v21, v14, v17

    const/16 v18, 0x3

    aget v22, v14, v18

    const/16 v18, 0x4

    aget v9, v14, v18

    const/16 v28, 0x5

    aget v1, v14, v28

    sparse-switch v3, :sswitch_data_0

    const/16 v29, 0x2

    goto :goto_4

    .line 22
    :sswitch_0
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 23
    invoke-virtual {v2, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v20, v1

    move/from16 v22, v20

    move/from16 v19, v9

    move/from16 v21, v19

    goto :goto_3

    :sswitch_1
    const/16 v29, 0x4

    goto :goto_4

    :sswitch_2
    nop

    :goto_3
    const/16 v29, 0x2

    goto :goto_4

    :sswitch_3
    const/16 v29, 0x1

    goto :goto_4

    :sswitch_4
    const/16 v29, 0x6

    goto :goto_4

    :sswitch_5
    const/16 v18, 0x7

    const/16 v29, 0x7

    .line 21
    :goto_4
    move/from16 v31, v4

    move/from16 v30, v10

    move/from16 v7, v19

    move/from16 v10, v20

    const/4 v4, 0x0

    :goto_5
    move/from16 v32, v5

    array-length v5, v13

    if-ge v4, v5, :cond_10

    const/16 v5, 0x63

    sparse-switch v3, :sswitch_data_1

    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    goto/16 :goto_12

    .line 52
    :sswitch_6
    nop

    .line 24
    aget v5, v13, v4

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 25
    aget v5, v13, v4

    add-float/2addr v10, v5

    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    goto/16 :goto_12

    :sswitch_7
    const/16 v5, 0x71

    if-eq v15, v5, :cond_3

    const/16 v5, 0x74

    if-eq v15, v5, :cond_3

    const/16 v5, 0x51

    if-eq v15, v5, :cond_3

    const/16 v5, 0x54

    if-ne v15, v5, :cond_2

    goto :goto_6

    .line 28
    :cond_2
    const/4 v5, 0x0

    const/4 v15, 0x0

    goto :goto_7

    .line 25
    :cond_3
    :goto_6
    sub-float v5, v7, v21

    sub-float v15, v10, v22

    :goto_7
    add-int/lit8 v18, v4, 0x1

    .line 26
    move/from16 v33, v3

    aget v3, v13, v4

    aget v8, v13, v18

    invoke-virtual {v2, v5, v15, v3, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v5, v7

    add-float/2addr v15, v10

    .line 27
    aget v3, v13, v4

    add-float/2addr v7, v3

    .line 28
    aget v3, v13, v18

    add-float/2addr v10, v3

    move-object/from16 v34, v0

    move/from16 v21, v5

    move-object/from16 v35, v11

    move/from16 v22, v15

    goto/16 :goto_12

    :sswitch_8
    move/from16 v33, v3

    if-eq v15, v5, :cond_5

    const/16 v3, 0x73

    if-eq v15, v3, :cond_5

    const/16 v3, 0x43

    if-eq v15, v3, :cond_5

    const/16 v3, 0x53

    if-ne v15, v3, :cond_4

    goto :goto_8

    .line 33
    :cond_4
    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_9

    .line 28
    :cond_5
    :goto_8
    sub-float v3, v7, v21

    sub-float v5, v10, v22

    move/from16 v19, v3

    move/from16 v20, v5

    :goto_9
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v8, v4, 0x3

    .line 29
    aget v21, v13, v4

    aget v22, v13, v3

    aget v23, v13, v5

    aget v24, v13, v8

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 30
    aget v15, v13, v4

    add-float/2addr v15, v7

    .line 31
    aget v3, v13, v3

    add-float/2addr v3, v10

    .line 32
    aget v5, v13, v5

    add-float/2addr v7, v5

    .line 33
    aget v5, v13, v8

    add-float/2addr v10, v5

    move-object/from16 v34, v0

    move/from16 v22, v3

    move-object/from16 v35, v11

    move/from16 v21, v15

    goto/16 :goto_12

    :sswitch_9
    move/from16 v33, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v8, v4, 0x3

    .line 34
    aget v15, v13, v4

    move-object/from16 v34, v0

    aget v0, v13, v3

    aget v6, v13, v5

    move-object/from16 v35, v11

    aget v11, v13, v8

    invoke-virtual {v2, v15, v0, v6, v11}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 35
    aget v0, v13, v4

    add-float/2addr v0, v7

    .line 36
    aget v3, v13, v3

    add-float/2addr v3, v10

    .line 37
    aget v5, v13, v5

    add-float/2addr v7, v5

    .line 38
    aget v5, v13, v8

    add-float/2addr v10, v5

    move/from16 v21, v0

    move/from16 v22, v3

    goto/16 :goto_12

    .line 39
    :sswitch_a
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    aget v0, v13, v4

    add-float/2addr v7, v0

    add-int/lit8 v3, v4, 0x1

    .line 40
    aget v3, v13, v3

    add-float/2addr v10, v3

    if-lez v4, :cond_6

    .line 41
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_12

    .line 42
    :cond_6
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->rMoveTo(FF)V

    move v9, v7

    move v1, v10

    goto/16 :goto_12

    :sswitch_b
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x1

    .line 43
    aget v3, v13, v4

    aget v5, v13, v0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 44
    aget v3, v13, v4

    add-float/2addr v7, v3

    .line 45
    aget v0, v13, v0

    add-float/2addr v10, v0

    goto/16 :goto_12

    .line 46
    :sswitch_c
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    aget v0, v13, v4

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 47
    aget v0, v13, v4

    add-float/2addr v7, v0

    goto/16 :goto_12

    .line 21
    :sswitch_d
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x2

    add-int/lit8 v3, v4, 0x3

    add-int/lit8 v5, v4, 0x4

    add-int/lit8 v6, v4, 0x5

    .line 48
    aget v19, v13, v4

    add-int/lit8 v8, v4, 0x1

    aget v20, v13, v8

    aget v21, v13, v0

    aget v22, v13, v3

    aget v23, v13, v5

    aget v24, v13, v6

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 49
    aget v0, v13, v0

    add-float/2addr v0, v7

    .line 50
    aget v3, v13, v3

    add-float/2addr v3, v10

    .line 51
    aget v5, v13, v5

    add-float/2addr v7, v5

    .line 52
    aget v5, v13, v6

    add-float/2addr v10, v5

    move/from16 v21, v0

    move/from16 v22, v3

    goto/16 :goto_12

    .line 84
    :sswitch_e
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x5

    .line 53
    aget v3, v13, v0

    add-float v21, v3, v7

    add-int/lit8 v3, v4, 0x6

    aget v5, v13, v3

    add-float v22, v5, v10

    aget v23, v13, v4

    add-int/lit8 v5, v4, 0x1

    aget v24, v13, v5

    add-int/lit8 v5, v4, 0x2

    aget v25, v13, v5

    add-int/lit8 v5, v4, 0x3

    aget v5, v13, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_7

    const/16 v26, 0x1

    goto :goto_a

    .line 55
    :cond_7
    const/16 v26, 0x0

    .line 53
    :goto_a
    add-int/lit8 v5, v4, 0x4

    aget v5, v13, v5

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_8

    const/16 v27, 0x1

    goto :goto_b

    .line 55
    :cond_8
    const/16 v27, 0x0

    .line 53
    :goto_b
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v10

    invoke-static/range {v18 .. v27}, Lej;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 54
    aget v0, v13, v0

    add-float/2addr v7, v0

    .line 55
    aget v0, v13, v3

    add-float/2addr v10, v0

    move/from16 v21, v7

    move/from16 v22, v10

    goto/16 :goto_12

    .line 56
    :sswitch_f
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    aget v0, v13, v4

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    aget v10, v13, v4

    goto/16 :goto_12

    :sswitch_10
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    const/16 v0, 0x71

    if-eq v15, v0, :cond_a

    const/16 v0, 0x74

    if-eq v15, v0, :cond_a

    const/16 v0, 0x51

    if-eq v15, v0, :cond_a

    const/16 v0, 0x54

    if-ne v15, v0, :cond_9

    goto :goto_c

    .line 60
    :cond_9
    goto :goto_d

    .line 57
    :cond_a
    :goto_c
    add-float/2addr v7, v7

    sub-float v7, v7, v21

    add-float/2addr v10, v10

    sub-float v10, v10, v22

    :goto_d
    add-int/lit8 v0, v4, 0x1

    .line 58
    aget v3, v13, v4

    aget v5, v13, v0

    invoke-virtual {v2, v7, v10, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 59
    aget v3, v13, v4

    .line 60
    aget v0, v13, v0

    move/from16 v21, v7

    move/from16 v22, v10

    move v10, v0

    move v7, v3

    goto/16 :goto_12

    :sswitch_11
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    if-eq v15, v5, :cond_c

    const/16 v0, 0x73

    if-eq v15, v0, :cond_c

    const/16 v0, 0x43

    if-eq v15, v0, :cond_c

    const/16 v0, 0x53

    if-ne v15, v0, :cond_b

    goto :goto_e

    .line 65
    :cond_b
    move/from16 v19, v7

    move/from16 v20, v10

    goto :goto_f

    .line 60
    :cond_c
    :goto_e
    add-float/2addr v7, v7

    sub-float v7, v7, v21

    add-float/2addr v10, v10

    sub-float v10, v10, v22

    move/from16 v19, v7

    move/from16 v20, v10

    :goto_f
    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v5, v4, 0x3

    .line 61
    aget v21, v13, v4

    aget v22, v13, v0

    aget v23, v13, v3

    aget v24, v13, v5

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 62
    aget v6, v13, v4

    .line 63
    aget v0, v13, v0

    .line 64
    aget v7, v13, v3

    .line 65
    aget v10, v13, v5

    move/from16 v22, v0

    move/from16 v21, v6

    goto/16 :goto_12

    :sswitch_12
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v5, v4, 0x3

    .line 66
    aget v6, v13, v4

    aget v7, v13, v0

    aget v8, v13, v3

    aget v10, v13, v5

    invoke-virtual {v2, v6, v7, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 67
    aget v6, v13, v4

    .line 68
    aget v0, v13, v0

    .line 69
    aget v7, v13, v3

    .line 70
    aget v10, v13, v5

    move/from16 v22, v0

    move/from16 v21, v6

    goto/16 :goto_12

    .line 71
    :sswitch_13
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    aget v7, v13, v4

    add-int/lit8 v0, v4, 0x1

    .line 72
    aget v10, v13, v0

    if-lez v4, :cond_d

    .line 73
    invoke-virtual {v2, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_12

    .line 74
    :cond_d
    invoke-virtual {v2, v7, v10}, Landroid/graphics/Path;->moveTo(FF)V

    move v9, v7

    move v1, v10

    goto/16 :goto_12

    :sswitch_14
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x1

    .line 75
    aget v3, v13, v4

    aget v5, v13, v0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    aget v7, v13, v4

    .line 77
    aget v10, v13, v0

    goto/16 :goto_12

    .line 78
    :sswitch_15
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    aget v0, v13, v4

    invoke-virtual {v2, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    aget v7, v13, v4

    goto/16 :goto_12

    .line 47
    :sswitch_16
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x2

    add-int/lit8 v3, v4, 0x3

    add-int/lit8 v5, v4, 0x4

    add-int/lit8 v6, v4, 0x5

    .line 80
    aget v19, v13, v4

    add-int/lit8 v7, v4, 0x1

    aget v20, v13, v7

    aget v21, v13, v0

    aget v22, v13, v3

    aget v23, v13, v5

    aget v24, v13, v6

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 81
    aget v7, v13, v5

    .line 82
    aget v10, v13, v6

    .line 83
    aget v0, v13, v0

    .line 84
    aget v3, v13, v3

    move/from16 v21, v0

    move/from16 v22, v3

    goto :goto_12

    .line 79
    :sswitch_17
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x5

    .line 85
    aget v21, v13, v0

    add-int/lit8 v3, v4, 0x6

    aget v22, v13, v3

    aget v23, v13, v4

    add-int/lit8 v5, v4, 0x1

    aget v24, v13, v5

    add-int/lit8 v5, v4, 0x2

    aget v25, v13, v5

    add-int/lit8 v5, v4, 0x3

    aget v5, v13, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_e

    const/16 v26, 0x1

    goto :goto_10

    .line 87
    :cond_e
    const/16 v26, 0x0

    .line 85
    :goto_10
    add-int/lit8 v5, v4, 0x4

    aget v5, v13, v5

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_f

    const/16 v27, 0x1

    goto :goto_11

    .line 87
    :cond_f
    const/16 v27, 0x0

    .line 85
    :goto_11
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v10

    invoke-static/range {v18 .. v27}, Lej;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 86
    aget v7, v13, v0

    .line 87
    aget v10, v13, v3

    move/from16 v21, v7

    move/from16 v22, v10

    .line 21
    :goto_12
    add-int v4, v4, v29

    move-object/from16 v6, p0

    move-object/from16 v8, p3

    move/from16 v5, v32

    move/from16 v3, v33

    move v15, v3

    move-object/from16 v0, v34

    move-object/from16 v11, v35

    goto/16 :goto_5

    .line 87
    :cond_10
    move-object/from16 v34, v0

    move-object/from16 v35, v11

    const/4 v0, 0x0

    aput v7, v14, v0

    const/4 v0, 0x1

    aput v10, v14, v0

    const/4 v0, 0x2

    aput v21, v14, v0

    const/4 v3, 0x3

    aput v22, v14, v3

    const/4 v4, 0x4

    aput v9, v14, v4

    aput v1, v14, v28

    .line 88
    aget-object v1, v35, v12

    iget-char v15, v1, Lej;->a:C

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v1, p4

    move/from16 v10, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move-object/from16 v0, v34

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 20
    :cond_11
    move-object/from16 v34, v0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v30, v10

    .line 23
    move-object/from16 v0, p0

    iget-object v1, v0, Lafv;->m:Landroid/graphics/Path;

    iget-object v2, v0, Lafv;->n:Landroid/graphics/Path;

    .line 89
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 90
    invoke-virtual/range {v34 .. v34}, Lafu;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lafv;->n:Landroid/graphics/Path;

    .line 91
    move-object/from16 v3, v34

    iget v3, v3, Lafu;->o:I

    if-nez v3, :cond_12

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_13

    .line 93
    :cond_12
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 91
    :goto_13
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v2, v0, Lafv;->n:Landroid/graphics/Path;

    iget-object v3, v0, Lafv;->o:Landroid/graphics/Matrix;

    .line 92
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lafv;->n:Landroid/graphics/Path;

    .line 93
    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v8, 0x0

    goto/16 :goto_1a

    .line 94
    :cond_13
    move-object/from16 v2, p3

    move-object/from16 v3, v34

    check-cast v3, Lafs;

    .line 95
    iget v4, v3, Lafs;->g:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-nez v7, :cond_15

    iget v6, v3, Lafs;->h:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_14

    goto :goto_14

    :cond_14
    const/4 v8, 0x0

    goto :goto_16

    .line 96
    :cond_15
    :goto_14
    iget v6, v3, Lafs;->i:F

    add-float/2addr v4, v6

    rem-float/2addr v4, v5

    .line 97
    iget v7, v3, Lafs;->h:F

    add-float/2addr v7, v6

    rem-float/2addr v7, v5

    iget-object v5, v0, Lafv;->p:Landroid/graphics/PathMeasure;

    if-nez v5, :cond_16

    new-instance v5, Landroid/graphics/PathMeasure;

    .line 98
    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v5, v0, Lafv;->p:Landroid/graphics/PathMeasure;

    :cond_16
    iget-object v5, v0, Lafv;->p:Landroid/graphics/PathMeasure;

    iget-object v6, v0, Lafv;->m:Landroid/graphics/Path;

    .line 99
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v5, v0, Lafv;->p:Landroid/graphics/PathMeasure;

    .line 100
    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    mul-float v4, v4, v5

    mul-float v7, v7, v5

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    cmpl-float v6, v4, v7

    if-lez v6, :cond_17

    iget-object v6, v0, Lafv;->p:Landroid/graphics/PathMeasure;

    .line 102
    const/4 v9, 0x1

    invoke-virtual {v6, v4, v5, v1, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v4, v0, Lafv;->p:Landroid/graphics/PathMeasure;

    .line 103
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7, v1, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_15

    .line 117
    :cond_17
    const/4 v5, 0x0

    const/4 v9, 0x1

    iget-object v6, v0, Lafv;->p:Landroid/graphics/PathMeasure;

    .line 104
    invoke-virtual {v6, v4, v7, v1, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 103
    :goto_15
    nop

    .line 105
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_16
    iget-object v4, v0, Lafv;->n:Landroid/graphics/Path;

    iget-object v5, v0, Lafv;->o:Landroid/graphics/Matrix;

    .line 106
    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 107
    iget-object v1, v3, Lafs;->d:Ldu;

    invoke-virtual {v1}, Ldu;->e()Z

    move-result v1

    const/high16 v4, 0x437f0000    # 255.0f

    const/16 v5, 0xff

    const/4 v6, 0x0

    if-eqz v1, :cond_1b

    .line 108
    iget-object v1, v3, Lafs;->d:Ldu;

    iget-object v7, v0, Lafv;->c:Landroid/graphics/Paint;

    if-nez v7, :cond_18

    new-instance v7, Landroid/graphics/Paint;

    .line 109
    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lafv;->c:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 110
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_18
    iget-object v7, v0, Lafv;->c:Landroid/graphics/Paint;

    .line 111
    invoke-virtual {v1}, Ldu;->b()Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v1, v1, Ldu;->a:Landroid/graphics/Shader;

    iget-object v9, v0, Lafv;->o:Landroid/graphics/Matrix;

    .line 112
    invoke-virtual {v1, v9}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 113
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    iget v1, v3, Lafs;->f:F

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_17

    .line 136
    :cond_19
    nop

    .line 115
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 116
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v1, Ldu;->b:I

    .line 117
    iget v9, v3, Lafs;->f:F

    invoke-static {v1, v9}, Lafy;->a(IF)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    :goto_17
    nop

    .line 118
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, v0, Lafv;->n:Landroid/graphics/Path;

    .line 119
    iget v9, v3, Lafs;->o:I

    if-nez v9, :cond_1a

    sget-object v9, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_18

    .line 136
    :cond_1a
    sget-object v9, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 119
    :goto_18
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, v0, Lafv;->n:Landroid/graphics/Path;

    .line 120
    invoke-virtual {v2, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 121
    :cond_1b
    iget-object v1, v3, Lafs;->b:Ldu;

    invoke-virtual {v1}, Ldu;->e()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 122
    iget-object v1, v3, Lafs;->b:Ldu;

    iget-object v7, v0, Lafv;->b:Landroid/graphics/Paint;

    if-nez v7, :cond_1c

    new-instance v7, Landroid/graphics/Paint;

    .line 123
    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lafv;->b:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 124
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1c
    iget-object v7, v0, Lafv;->b:Landroid/graphics/Paint;

    .line 125
    iget-object v9, v3, Lafs;->k:Landroid/graphics/Paint$Join;

    if-eqz v9, :cond_1d

    .line 126
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 127
    :cond_1d
    iget-object v9, v3, Lafs;->j:Landroid/graphics/Paint$Cap;

    if-eqz v9, :cond_1e

    .line 128
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    :cond_1e
    iget v9, v3, Lafs;->l:F

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 130
    invoke-virtual {v1}, Ldu;->b()Z

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v1, v1, Ldu;->a:Landroid/graphics/Shader;

    iget-object v5, v0, Lafv;->o:Landroid/graphics/Matrix;

    .line 131
    invoke-virtual {v1, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 132
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    iget v1, v3, Lafs;->e:F

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_19

    .line 139
    :cond_1f
    nop

    .line 134
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 135
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v1, Ldu;->b:I

    .line 136
    iget v4, v3, Lafs;->e:F

    invoke-static {v1, v4}, Lafy;->a(IF)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    :goto_19
    nop

    .line 137
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 138
    iget v1, v3, Lafs;->c:F

    mul-float v5, v32, v31

    mul-float v1, v1, v5

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lafv;->n:Landroid/graphics/Path;

    .line 139
    invoke-virtual {v2, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1a

    .line 19
    :cond_20
    move-object v0, v6

    move-object v2, v8

    move/from16 v30, v10

    const/4 v8, 0x0

    goto :goto_1a

    .line 9
    :cond_21
    move-object v0, v6

    move-object v2, v8

    move/from16 v30, v10

    const/4 v8, 0x0

    .line 8
    :cond_22
    :goto_1a
    add-int/lit8 v10, v30, 0x1

    move-object/from16 v7, p1

    move-object v6, v0

    move-object v8, v2

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 140
    :cond_23
    move-object v0, v6

    move-object v2, v8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
        0x56 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
        0x76 -> :sswitch_3
        0x7a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_16
        0x48 -> :sswitch_15
        0x4c -> :sswitch_14
        0x4d -> :sswitch_13
        0x51 -> :sswitch_12
        0x53 -> :sswitch_11
        0x54 -> :sswitch_10
        0x56 -> :sswitch_f
        0x61 -> :sswitch_e
        0x63 -> :sswitch_d
        0x68 -> :sswitch_c
        0x6c -> :sswitch_b
        0x6d -> :sswitch_a
        0x71 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x76 -> :sswitch_6
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAlpha()F
    .locals 2

    invoke-virtual {p0}, Lafv;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    iget v0, p0, Lafv;->i:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lafv;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    iput p1, p0, Lafv;->i:I

    return-void
.end method
