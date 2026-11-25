.class public Lvx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public A:F

.field B:I

.field C:F

.field public final D:[I

.field public E:F

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public final J:Lvw;

.field public final K:Lvw;

.field public final L:Lvw;

.field public final M:Lvw;

.field public final N:Lvw;

.field final O:Lvw;

.field final P:Lvw;

.field public final Q:Lvw;

.field public final R:[Lvw;

.field protected final S:Ljava/util/ArrayList;

.field public T:Lvx;

.field U:I

.field public V:I

.field public W:F

.field public X:I

.field public Y:I

.field public Z:I

.field private a:Z

.field public aa:I

.field public ab:I

.field public ac:I

.field public ad:F

.field public ae:F

.field public af:Ljava/lang/Object;

.field public ag:I

.field public ah:Ljava/lang/String;

.field public ai:I

.field public aj:I

.field public final ak:[F

.field public final al:[Lvx;

.field public final am:[Lvx;

.field public an:I

.field public ao:I

.field public final ap:[I

.field private b:Z

.field private final c:[Z

.field public e:Z

.field public f:Lwh;

.field public g:Lwh;

.field public h:Lwp;

.field public i:Lwr;

.field public final j:[Z

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final u:[I

.field public v:I

.field public w:I

.field public x:F

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lvx;->e:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lvx;->h:Lwp;

    iput-object v2, v0, Lvx;->i:Lwr;

    const/4 v3, 0x2

    new-array v4, v3, [Z

    fill-array-data v4, :array_0

    iput-object v4, v0, Lvx;->j:[Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lvx;->a:Z

    const/4 v5, -0x1

    iput v5, v0, Lvx;->k:I

    iput v5, v0, Lvx;->l:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-boolean v1, v0, Lvx;->b:Z

    iput-boolean v1, v0, Lvx;->m:Z

    iput-boolean v1, v0, Lvx;->n:Z

    iput-boolean v1, v0, Lvx;->o:Z

    iput v5, v0, Lvx;->p:I

    iput v5, v0, Lvx;->q:I

    iput v1, v0, Lvx;->r:I

    iput v1, v0, Lvx;->s:I

    iput v1, v0, Lvx;->t:I

    new-array v6, v3, [I

    iput-object v6, v0, Lvx;->u:[I

    iput v1, v0, Lvx;->v:I

    iput v1, v0, Lvx;->w:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lvx;->x:F

    iput v1, v0, Lvx;->y:I

    iput v1, v0, Lvx;->z:I

    iput v6, v0, Lvx;->A:F

    iput v5, v0, Lvx;->B:I

    iput v6, v0, Lvx;->C:F

    new-array v6, v3, [I

    fill-array-data v6, :array_1

    iput-object v6, v0, Lvx;->D:[I

    const/4 v6, 0x0

    iput v6, v0, Lvx;->E:F

    iput-boolean v1, v0, Lvx;->F:Z

    iput-boolean v1, v0, Lvx;->G:Z

    iput v1, v0, Lvx;->H:I

    iput v1, v0, Lvx;->I:I

    new-instance v7, Lvw;

    invoke-direct {v7, v0, v3}, Lvw;-><init>(Lvx;I)V

    iput-object v7, v0, Lvx;->J:Lvw;

    new-instance v8, Lvw;

    const/4 v9, 0x3

    invoke-direct {v8, v0, v9}, Lvw;-><init>(Lvx;I)V

    iput-object v8, v0, Lvx;->K:Lvw;

    new-instance v10, Lvw;

    const/4 v11, 0x4

    invoke-direct {v10, v0, v11}, Lvw;-><init>(Lvx;I)V

    iput-object v10, v0, Lvx;->L:Lvw;

    new-instance v12, Lvw;

    const/4 v13, 0x5

    invoke-direct {v12, v0, v13}, Lvw;-><init>(Lvx;I)V

    iput-object v12, v0, Lvx;->M:Lvw;

    new-instance v14, Lvw;

    const/4 v15, 0x6

    invoke-direct {v14, v0, v15}, Lvw;-><init>(Lvx;I)V

    iput-object v14, v0, Lvx;->N:Lvw;

    new-instance v5, Lvw;

    const/16 v6, 0x8

    invoke-direct {v5, v0, v6}, Lvw;-><init>(Lvx;I)V

    iput-object v5, v0, Lvx;->O:Lvw;

    new-instance v6, Lvw;

    const/16 v2, 0x9

    invoke-direct {v6, v0, v2}, Lvw;-><init>(Lvx;I)V

    iput-object v6, v0, Lvx;->P:Lvw;

    new-instance v2, Lvw;

    const/4 v13, 0x7

    invoke-direct {v2, v0, v13}, Lvw;-><init>(Lvx;I)V

    iput-object v2, v0, Lvx;->Q:Lvw;

    new-array v13, v15, [Lvw;

    aput-object v7, v13, v1

    aput-object v10, v13, v4

    aput-object v8, v13, v3

    aput-object v12, v13, v9

    aput-object v14, v13, v11

    const/4 v9, 0x5

    aput-object v2, v13, v9

    iput-object v13, v0, Lvx;->R:[Lvw;

    new-instance v9, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lvx;->S:Ljava/util/ArrayList;

    new-array v11, v3, [Z

    iput-object v11, v0, Lvx;->c:[Z

    new-array v11, v3, [I

    fill-array-data v11, :array_2

    iput-object v11, v0, Lvx;->ap:[I

    const/4 v11, 0x0

    iput-object v11, v0, Lvx;->T:Lvx;

    iput v1, v0, Lvx;->U:I

    iput v1, v0, Lvx;->V:I

    const/4 v11, 0x0

    iput v11, v0, Lvx;->W:F

    const/4 v11, -0x1

    iput v11, v0, Lvx;->X:I

    iput v1, v0, Lvx;->Y:I

    iput v1, v0, Lvx;->Z:I

    iput v1, v0, Lvx;->aa:I

    const/high16 v11, 0x3f000000    # 0.5f

    iput v11, v0, Lvx;->ad:F

    iput v11, v0, Lvx;->ae:F

    iput v1, v0, Lvx;->ag:I

    const/4 v11, 0x0

    iput-object v11, v0, Lvx;->ah:Ljava/lang/String;

    iput v1, v0, Lvx;->ai:I

    iput v1, v0, Lvx;->aj:I

    new-array v13, v3, [F

    fill-array-data v13, :array_3

    iput-object v13, v0, Lvx;->ak:[F

    new-array v13, v3, [Lvx;

    aput-object v11, v13, v1

    aput-object v11, v13, v4

    iput-object v13, v0, Lvx;->al:[Lvx;

    new-array v3, v3, [Lvx;

    aput-object v11, v3, v1

    aput-object v11, v3, v4

    iput-object v3, v0, Lvx;->am:[Lvx;

    const/4 v1, -0x1

    iput v1, v0, Lvx;->an:I

    iput v1, v0, Lvx;->ao:I

    .line 3
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private final a(I)Z
    .locals 3

    .line 1
    add-int/2addr p1, p1

    iget-object v0, p0, Lvx;->R:[Lvw;

    aget-object v1, v0, p1

    iget-object v2, v1, Lvw;->e:Lvw;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lvw;->e:Lvw;

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    iget-object v0, p1, Lvw;->e:Lvw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lvw;->e:Lvw;

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final c(Lvn;ZZZZLvs;Lvs;IZLvw;Lvw;IIIIFZZZZZIIIIFZ)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v9, p17

    move/from16 v8, p20

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    invoke-virtual {v10, v13}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v7

    .line 2
    invoke-virtual {v10, v14}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v6

    iget-object v5, v13, Lvw;->e:Lvw;

    .line 3
    invoke-virtual {v10, v5}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v5

    iget-object v12, v14, Lvw;->e:Lvw;

    .line 4
    invoke-virtual {v10, v12}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v12

    .line 5
    invoke-virtual/range {p10 .. p10}, Lvw;->h()Z

    move-result v22

    .line 6
    invoke-virtual/range {p11 .. p11}, Lvw;->h()Z

    move-result v23

    iget-object v2, v0, Lvx;->Q:Lvw;

    .line 7
    invoke-virtual {v2}, Lvw;->h()Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v22, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    .line 8
    :cond_0
    const/16 v16, 0x0

    .line 7
    :goto_0
    if-eqz v23, :cond_1

    add-int/lit8 v16, v16, 0x1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v16, v16, 0x1

    :cond_2
    move/from16 v25, v16

    if-ne v8, v9, :cond_3

    const/4 v8, 0x3

    goto :goto_1

    :cond_3
    move/from16 v8, p22

    :goto_1
    add-int/lit8 v16, p8, -0x1

    if-eqz p8, :cond_65

    const/4 v14, 0x4

    packed-switch v16, :pswitch_data_0

    const/16 v16, 0x0

    goto :goto_2

    .line 9
    :pswitch_0
    if-eq v8, v14, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    :pswitch_1
    const/16 v16, 0x0

    .line 7
    :goto_2
    iget v14, v0, Lvx;->k:I

    const/4 v11, -0x1

    if-eq v14, v11, :cond_5

    if-eqz p2, :cond_5

    iput v11, v0, Lvx;->k:I

    const/16 v16, 0x0

    goto :goto_3

    .line 9
    :cond_5
    nop

    .line 7
    move/from16 v14, p13

    :goto_3
    move/from16 p13, v14

    iget v14, v0, Lvx;->l:I

    if-eq v14, v11, :cond_6

    if-nez p2, :cond_6

    iput v11, v0, Lvx;->l:I

    const/16 v16, 0x0

    goto :goto_4

    .line 9
    :cond_6
    nop

    .line 7
    move/from16 v14, p13

    :goto_4
    iget v11, v0, Lvx;->ag:I

    move/from16 p13, v14

    const/16 v14, 0x8

    if-ne v11, v14, :cond_7

    const/16 v17, 0x0

    goto :goto_5

    .line 9
    :cond_7
    const/16 v17, 0x1

    .line 7
    :goto_5
    and-int v16, v17, v16

    if-ne v11, v14, :cond_8

    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    move/from16 v11, p13

    :goto_6
    if-eqz p27, :cond_b

    if-nez v22, :cond_9

    if-nez v23, :cond_9

    if-nez v2, :cond_9

    .line 10
    move/from16 v14, p12

    invoke-virtual {v10, v7, v14}, Lvn;->f(Lvs;I)V

    move-object/from16 v28, v12

    goto :goto_7

    .line 20
    :cond_9
    if-eqz v22, :cond_a

    if-nez v23, :cond_a

    .line 9
    invoke-virtual/range {p10 .. p10}, Lvw;->b()I

    move-result v14

    move-object/from16 v28, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v7, v5, v14, v12}, Lvn;->m(Lvs;Lvs;II)V

    goto :goto_7

    .line 20
    :cond_a
    move-object/from16 v28, v12

    goto :goto_7

    .line 7
    :cond_b
    move-object/from16 v28, v12

    .line 10
    :goto_7
    const/4 v12, 0x2

    if-nez v16, :cond_f

    if-eqz p9, :cond_e

    .line 11
    const/4 v11, 0x3

    const/4 v14, 0x0

    invoke-virtual {v10, v6, v7, v14, v11}, Lvn;->m(Lvs;Lvs;II)V

    if-lez v15, :cond_c

    .line 12
    const/16 v14, 0x8

    invoke-virtual {v10, v6, v7, v15, v14}, Lvn;->g(Lvs;Lvs;II)V

    goto :goto_8

    .line 11
    :cond_c
    const/16 v14, 0x8

    .line 12
    :goto_8
    const v11, 0x7fffffff

    if-ge v1, v11, :cond_d

    .line 13
    invoke-virtual {v10, v6, v7, v1, v14}, Lvn;->h(Lvs;Lvs;II)V

    goto :goto_9

    .line 66
    :cond_d
    goto :goto_9

    :cond_e
    const/16 v14, 0x8

    .line 14
    invoke-virtual {v10, v6, v7, v11, v14}, Lvn;->m(Lvs;Lvs;II)V

    .line 13
    :goto_9
    move/from16 v11, p5

    move/from16 v1, v25

    goto/16 :goto_12

    .line 14
    :cond_f
    move/from16 v1, v25

    if-eq v1, v12, :cond_12

    if-nez v9, :cond_12

    const/4 v14, 0x1

    if-eq v8, v14, :cond_10

    if-nez v8, :cond_12

    const/4 v8, 0x0

    goto :goto_a

    .line 17
    :cond_10
    nop

    .line 15
    :goto_a
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-lez v4, :cond_11

    .line 16
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_11
    nop

    .line 17
    const/16 v14, 0x8

    invoke-virtual {v10, v6, v7, v11, v14}, Lvn;->m(Lvs;Lvs;II)V

    move/from16 v11, p5

    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_12
    const/4 v14, -0x2

    if-ne v3, v14, :cond_13

    move v3, v11

    goto :goto_b

    .line 20
    :cond_13
    nop

    .line 17
    :goto_b
    if-ne v4, v14, :cond_14

    move v4, v11

    goto :goto_c

    .line 20
    :cond_14
    nop

    .line 17
    :goto_c
    if-lez v11, :cond_15

    const/4 v14, 0x1

    if-eq v8, v14, :cond_15

    const/4 v11, 0x0

    :cond_15
    if-lez v3, :cond_16

    .line 18
    const/16 v14, 0x8

    invoke-virtual {v10, v6, v7, v3, v14}, Lvn;->g(Lvs;Lvs;II)V

    .line 19
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_16
    if-lez v4, :cond_18

    if-eqz p3, :cond_17

    const/4 v14, 0x1

    if-ne v8, v14, :cond_17

    const/4 v14, 0x1

    goto :goto_d

    .line 30
    :cond_17
    nop

    .line 20
    const/16 v14, 0x8

    invoke-virtual {v10, v6, v7, v4, v14}, Lvn;->h(Lvs;Lvs;II)V

    move v14, v8

    .line 21
    :goto_d
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_e

    .line 20
    :cond_18
    move v14, v8

    .line 21
    :goto_e
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1b

    if-eqz p3, :cond_19

    .line 22
    const/16 v8, 0x8

    invoke-virtual {v10, v6, v7, v11, v8}, Lvn;->m(Lvs;Lvs;II)V

    const/4 v12, 0x5

    goto :goto_f

    :cond_19
    const/16 v8, 0x8

    if-eqz p19, :cond_1a

    .line 23
    const/4 v12, 0x5

    invoke-virtual {v10, v6, v7, v11, v12}, Lvn;->m(Lvs;Lvs;II)V

    .line 24
    invoke-virtual {v10, v6, v7, v11, v8}, Lvn;->h(Lvs;Lvs;II)V

    goto :goto_f

    :cond_1a
    const/4 v12, 0x5

    .line 25
    invoke-virtual {v10, v6, v7, v11, v12}, Lvn;->m(Lvs;Lvs;II)V

    .line 26
    invoke-virtual {v10, v6, v7, v11, v8}, Lvn;->h(Lvs;Lvs;II)V

    .line 13
    :goto_f
    move/from16 v11, p5

    move v8, v14

    goto :goto_12

    .line 26
    :cond_1b
    const/4 v12, 0x5

    const/4 v11, 0x2

    if-ne v8, v11, :cond_1e

    iget v8, v13, Lvw;->i:I

    const/4 v11, 0x3

    if-eq v8, v11, :cond_1d

    if-ne v8, v12, :cond_1c

    const/4 v12, 0x4

    goto :goto_10

    .line 31
    :cond_1c
    iget-object v8, v0, Lvx;->T:Lvx;

    .line 29
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Lvx;->L(I)Lvw;

    move-result-object v8

    invoke-virtual {v10, v8}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v8

    iget-object v11, v0, Lvx;->T:Lvx;

    .line 30
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lvx;->L(I)Lvw;

    move-result-object v11

    invoke-virtual {v10, v11}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v11

    move-object/from16 v20, v8

    move-object/from16 v19, v11

    goto :goto_11

    .line 26
    :cond_1d
    const/4 v12, 0x4

    :goto_10
    iget-object v8, v0, Lvx;->T:Lvx;

    .line 27
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Lvx;->L(I)Lvw;

    move-result-object v8

    invoke-virtual {v10, v8}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v8

    iget-object v11, v0, Lvx;->T:Lvx;

    .line 28
    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lvx;->L(I)Lvw;

    move-result-object v11

    invoke-virtual {v10, v11}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v11

    move-object/from16 v20, v8

    move-object/from16 v19, v11

    .line 31
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lvn;->a()Lvl;

    move-result-object v8

    move-object/from16 v16, v8

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v21, p26

    invoke-virtual/range {v16 .. v21}, Lvl;->g(Lvs;Lvs;Lvs;Lvs;F)V

    invoke-virtual {v10, v8}, Lvn;->e(Lvl;)V

    xor-int/lit8 v16, p3, 0x1

    move/from16 v11, p5

    move v8, v14

    goto :goto_12

    .line 30
    :cond_1e
    move v8, v14

    const/4 v11, 0x1

    .line 13
    :goto_12
    if-eqz p27, :cond_5f

    if-eqz p19, :cond_1f

    move-object/from16 v3, p6

    move-object/from16 v9, p7

    move-object v2, v6

    move-object v4, v7

    move/from16 p5, v11

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_35

    .line 36
    :cond_1f
    if-nez v22, :cond_20

    if-nez v23, :cond_20

    if-nez v2, :cond_20

    move/from16 v20, p3

    move-object v2, v6

    move/from16 p5, v11

    move-object/from16 v12, v28

    const/4 v7, 0x0

    const/4 v14, 0x5

    goto/16 :goto_33

    .line 73
    :cond_20
    if-eqz v22, :cond_22

    if-nez v23, :cond_22

    .line 69
    iget-object v1, v13, Lvw;->e:Lvw;

    iget-object v1, v1, Lvw;->d:Lvx;

    if-eqz p3, :cond_21

    .line 70
    instance-of v1, v1, Lvu;

    if-eqz v1, :cond_21

    const/16 v14, 0x8

    goto :goto_13

    :cond_21
    const/4 v14, 0x5

    :goto_13
    move/from16 v20, p3

    move-object v2, v6

    move/from16 p5, v11

    move-object/from16 v12, v28

    const/4 v7, 0x0

    goto/16 :goto_33

    :cond_22
    if-nez v22, :cond_24

    if-eqz v23, :cond_24

    .line 67
    invoke-virtual/range {p11 .. p11}, Lvw;->b()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v12, v28

    const/16 v2, 0x8

    invoke-virtual {v10, v6, v12, v1, v2}, Lvn;->m(Lvs;Lvs;II)V

    if-eqz p3, :cond_23

    .line 68
    move-object/from16 v2, p6

    const/4 v1, 0x5

    const/4 v14, 0x0

    invoke-virtual {v10, v7, v2, v14, v1}, Lvn;->g(Lvs;Lvs;II)V

    goto :goto_14

    :cond_23
    const/4 v14, 0x0

    :goto_14
    move/from16 v20, p3

    move-object v2, v6

    move/from16 p5, v11

    const/4 v7, 0x0

    const/4 v14, 0x5

    goto/16 :goto_33

    .line 70
    :cond_24
    move-object/from16 v2, p6

    move-object/from16 v12, v28

    const/4 v1, -0x1

    const/4 v14, 0x0

    .line 68
    if-eqz v22, :cond_5c

    if-eqz v23, :cond_5c

    .line 37
    iget-object v14, v13, Lvw;->e:Lvw;

    iget-object v14, v14, Lvw;->d:Lvx;

    .line 38
    move-object/from16 v1, p11

    iget-object v13, v1, Lvw;->e:Lvw;

    iget-object v13, v13, Lvw;->d:Lvx;

    iget-object v15, v0, Lvx;->T:Lvx;

    const/16 v17, 0x6

    if-eqz v16, :cond_3a

    if-nez v8, :cond_2a

    if-nez v4, :cond_27

    if-nez v3, :cond_27

    .line 39
    iget-boolean v3, v5, Lvs;->g:Z

    if-eqz v3, :cond_26

    iget-boolean v3, v12, Lvs;->g:Z

    if-nez v3, :cond_25

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    goto :goto_15

    .line 41
    :cond_25
    invoke-virtual/range {p10 .. p10}, Lvw;->b()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v10, v7, v5, v2, v3}, Lvn;->m(Lvs;Lvs;II)V

    .line 42
    invoke-virtual/range {p11 .. p11}, Lvw;->b()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v6, v12, v1, v3}, Lvn;->m(Lvs;Lvs;II)V

    return-void

    :cond_26
    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    goto :goto_15

    :cond_27
    move/from16 v18, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    .line 40
    :goto_15
    move/from16 p2, v3

    instance-of v3, v14, Lvu;

    if-nez v3, :cond_29

    instance-of v3, v13, Lvu;

    if-eqz v3, :cond_28

    move/from16 v3, p2

    move-object/from16 v4, p7

    move/from16 p5, v11

    move/from16 v24, v20

    move/from16 v26, v21

    const/4 v2, 0x0

    move v11, v8

    move/from16 v21, v18

    move/from16 v20, v19

    const/4 v8, 0x6

    const/16 v18, 0x1

    const/16 v19, 0x4

    goto/16 :goto_22

    .line 60
    :cond_28
    move/from16 v3, p2

    move/from16 p5, v11

    move/from16 v24, v20

    move/from16 v26, v21

    const/4 v2, 0x0

    move v11, v8

    move/from16 v21, v18

    move/from16 v20, v19

    const/4 v8, 0x6

    const/16 v18, 0x1

    move/from16 v19, v4

    move-object/from16 v4, p7

    goto/16 :goto_22

    :cond_29
    move/from16 v3, p2

    move-object/from16 v4, p7

    move/from16 p5, v11

    move/from16 v24, v20

    move/from16 v26, v21

    const/4 v2, 0x0

    move v11, v8

    move/from16 v21, v18

    move/from16 v20, v19

    const/4 v8, 0x6

    const/16 v18, 0x1

    const/16 v19, 0x4

    goto/16 :goto_22

    .line 42
    :cond_2a
    const/4 v2, 0x2

    if-ne v8, v2, :cond_2d

    .line 43
    instance-of v2, v14, Lvu;

    if-nez v2, :cond_2c

    instance-of v2, v13, Lvu;

    if-eqz v2, :cond_2b

    goto :goto_16

    :cond_2b
    move-object/from16 v4, p7

    move/from16 v21, v3

    move/from16 p5, v11

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/16 v18, 0x1

    const/16 v19, 0x5

    goto :goto_18

    :cond_2c
    :goto_16
    move-object/from16 v4, p7

    move/from16 v21, v3

    move/from16 p5, v11

    const/4 v2, 0x0

    const/4 v3, 0x5

    goto :goto_17

    :cond_2d
    const/4 v2, 0x1

    if-ne v8, v2, :cond_2e

    move-object/from16 v4, p7

    move/from16 v21, v3

    move/from16 p5, v11

    const/4 v2, 0x0

    const/16 v3, 0x8

    :goto_17
    const/16 v18, 0x1

    const/16 v19, 0x4

    :goto_18
    const/16 v20, 0x1

    const/16 v24, 0x0

    const/16 v26, 0x1

    :goto_19
    move v11, v8

    const/4 v8, 0x6

    goto/16 :goto_22

    :cond_2e
    const/4 v2, 0x3

    if-ne v8, v2, :cond_39

    iget v8, v0, Lvx;->B:I

    const/4 v2, -0x1

    if-ne v8, v2, :cond_31

    const/4 v2, 0x0

    if-eqz p20, :cond_30

    move-object/from16 v4, p7

    move/from16 v21, v3

    move/from16 p5, v11

    const/16 v3, 0x8

    if-eqz p3, :cond_2f

    const/4 v8, 0x5

    goto :goto_1a

    :cond_2f
    const/4 v8, 0x4

    goto :goto_1a

    :cond_30
    move-object/from16 v4, p7

    move/from16 v21, v3

    move/from16 p5, v11

    const/16 v3, 0x8

    const/16 v8, 0x8

    :goto_1a
    const/4 v11, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x5

    :goto_1b
    const/16 v20, 0x1

    :goto_1c
    const/16 v24, 0x1

    const/16 v26, 0x1

    goto/16 :goto_22

    :cond_31
    const/4 v2, 0x0

    if-eqz v9, :cond_34

    move/from16 v4, p23

    const/4 v8, 0x2

    if-eq v4, v8, :cond_33

    const/4 v8, 0x1

    if-ne v4, v8, :cond_32

    goto :goto_1d

    :cond_32
    const/4 v4, 0x5

    const/16 v18, 0x8

    goto :goto_1e

    :cond_33
    const/4 v8, 0x1

    :goto_1d
    const/4 v4, 0x4

    const/16 v18, 0x5

    :goto_1e
    move/from16 v21, v3

    move/from16 v19, v4

    move/from16 p5, v11

    move/from16 v3, v18

    const/4 v8, 0x6

    const/4 v11, 0x3

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v24, 0x1

    const/16 v26, 0x1

    move-object/from16 v4, p7

    goto/16 :goto_22

    :cond_34
    const/4 v8, 0x1

    if-lez v4, :cond_35

    move-object/from16 v4, p7

    move/from16 v21, v3

    move/from16 p5, v11

    const/4 v3, 0x5

    const/4 v8, 0x6

    goto :goto_1a

    :cond_35
    if-nez v4, :cond_38

    if-nez v3, :cond_38

    if-nez p20, :cond_36

    move-object/from16 v4, p7

    move/from16 p5, v11

    const/4 v3, 0x5

    const/4 v8, 0x6

    const/4 v11, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x8

    :goto_1f
    const/16 v20, 0x1

    const/16 v21, 0x0

    goto :goto_1c

    :cond_36
    if-eq v14, v15, :cond_37

    if-eq v13, v15, :cond_37

    const/4 v3, 0x4

    goto :goto_20

    :cond_37
    const/4 v3, 0x5

    :goto_20
    move-object/from16 v4, p7

    move/from16 p5, v11

    const/4 v8, 0x6

    const/4 v11, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x4

    goto :goto_1f

    :cond_38
    move-object/from16 v4, p7

    move/from16 v21, v3

    move/from16 p5, v11

    const/4 v3, 0x5

    const/4 v8, 0x6

    const/4 v11, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x4

    goto :goto_1b

    :cond_39
    const/4 v2, 0x0

    const/16 v18, 0x1

    move-object/from16 v4, p7

    move/from16 v21, v3

    move/from16 p5, v11

    const/4 v3, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    goto/16 :goto_19

    .line 44
    :cond_3a
    const/4 v2, 0x0

    const/16 v18, 0x1

    iget-boolean v4, v5, Lvs;->g:Z

    if-eqz v4, :cond_3d

    iget-boolean v4, v12, Lvs;->g:Z

    if-eqz v4, :cond_3d

    .line 62
    invoke-virtual/range {p10 .. p10}, Lvw;->b()I

    move-result v3

    .line 63
    invoke-virtual/range {p11 .. p11}, Lvw;->b()I

    move-result v4

    const/16 v8, 0x8

    .line 62
    move-object/from16 p17, p1

    move-object/from16 p18, v7

    move-object/from16 p19, v5

    move/from16 p20, v3

    move/from16 p21, p16

    move-object/from16 p22, v12

    move-object/from16 p23, v6

    move/from16 p24, v4

    move/from16 p25, v8

    invoke-virtual/range {p17 .. p25}, Lvn;->d(Lvs;Lvs;IFLvs;Lvs;II)V

    if-eqz p3, :cond_3c

    if-eqz v11, :cond_3c

    .line 64
    iget-object v3, v1, Lvw;->e:Lvw;

    if-eqz v3, :cond_3b

    .line 65
    invoke-virtual/range {p11 .. p11}, Lvw;->b()I

    move-result v8

    goto :goto_21

    .line 66
    :cond_3b
    const/4 v8, 0x0

    .line 65
    :goto_21
    move-object/from16 v4, p7

    if-eq v12, v4, :cond_3c

    .line 66
    const/4 v1, 0x5

    invoke-virtual {v10, v4, v6, v8, v1}, Lvn;->g(Lvs;Lvs;II)V

    :cond_3c
    return-void

    :cond_3d
    move-object/from16 v4, p7

    move/from16 v21, v3

    move/from16 p5, v11

    const/4 v3, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v24, 0x0

    const/16 v26, 0x1

    move v11, v8

    const/4 v8, 0x6

    .line 40
    :goto_22
    if-eqz v26, :cond_3e

    if-ne v5, v12, :cond_3e

    if-eq v14, v15, :cond_3e

    const/16 v22, 0x0

    const/16 v26, 0x0

    goto :goto_23

    .line 60
    :cond_3e
    const/16 v22, 0x1

    .line 40
    :goto_23
    if-eqz v20, :cond_41

    if-nez v16, :cond_3f

    if-nez p18, :cond_3f

    if-nez p20, :cond_3f

    move-object/from16 v2, p6

    if-ne v5, v2, :cond_40

    if-ne v12, v4, :cond_40

    const/16 v20, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v25, 0x8

    goto :goto_24

    .line 60
    :cond_3f
    move-object/from16 v2, p6

    :cond_40
    nop

    .line 45
    move/from16 v20, p3

    move/from16 v25, v8

    move/from16 v23, v22

    move/from16 v22, v3

    :goto_24
    invoke-virtual/range {p10 .. p10}, Lvw;->b()I

    move-result v8

    .line 46
    invoke-virtual/range {p11 .. p11}, Lvw;->b()I

    move-result v28

    .line 45
    move-object v3, v1

    move-object/from16 v1, p1

    move/from16 v27, v11

    move-object v11, v2

    move-object v2, v7

    move-object v3, v5

    move v4, v8

    move-object v8, v5

    move/from16 v5, p16

    move-object/from16 p9, v6

    move-object v6, v12

    move-object v11, v7

    move-object/from16 v7, p9

    move-object/from16 v18, v15

    move-object v15, v8

    move/from16 v8, v28

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Lvn;->d(Lvs;Lvs;IFLvs;Lvs;II)V

    move/from16 v3, v22

    move/from16 v8, v23

    goto :goto_25

    .line 60
    :cond_41
    move-object/from16 p9, v6

    move/from16 v27, v11

    move-object/from16 v18, v15

    move-object v15, v5

    move-object v11, v7

    move/from16 v20, p3

    move/from16 v8, v22

    .line 45
    :goto_25
    iget v1, v0, Lvx;->ag:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_43

    .line 47
    invoke-virtual/range {p11 .. p11}, Lvw;->g()Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_26

    .line 60
    :cond_42
    return-void

    .line 47
    :cond_43
    :goto_26
    if-eqz v26, :cond_46

    if-eqz v20, :cond_45

    if-eq v15, v12, :cond_45

    if-nez v16, :cond_45

    .line 48
    instance-of v1, v14, Lvu;

    if-nez v1, :cond_44

    instance-of v1, v13, Lvu;

    if-eqz v1, :cond_45

    const/4 v3, 0x6

    goto :goto_27

    .line 60
    :cond_44
    const/4 v3, 0x6

    goto :goto_27

    :cond_45
    nop

    .line 49
    :goto_27
    invoke-virtual/range {p10 .. p10}, Lvw;->b()I

    move-result v1

    invoke-virtual {v10, v11, v15, v1, v3}, Lvn;->g(Lvs;Lvs;II)V

    .line 50
    invoke-virtual/range {p11 .. p11}, Lvw;->b()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v2, p9

    invoke-virtual {v10, v2, v12, v1, v3}, Lvn;->h(Lvs;Lvs;II)V

    goto :goto_28

    .line 60
    :cond_46
    move-object/from16 v2, p9

    .line 50
    :goto_28
    if-eqz v20, :cond_47

    if-eqz p21, :cond_47

    .line 51
    instance-of v1, v14, Lvu;

    if-nez v1, :cond_47

    instance-of v1, v13, Lvu;

    if-nez v1, :cond_47

    move-object/from16 v1, v18

    if-eq v13, v1, :cond_48

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v8, 0x1

    goto :goto_29

    .line 60
    :cond_47
    move-object/from16 v1, v18

    :cond_48
    nop

    .line 51
    move/from16 v4, v19

    :goto_29
    if-eqz v8, :cond_56

    if-eqz v24, :cond_51

    move/from16 v5, p20

    if-eqz v5, :cond_49

    if-eqz p4, :cond_52

    :cond_49
    if-eq v14, v1, :cond_4b

    if-ne v13, v1, :cond_4a

    goto :goto_2a

    .line 60
    :cond_4a
    move/from16 v17, v4

    goto :goto_2a

    :cond_4b
    nop

    .line 52
    :goto_2a
    instance-of v6, v14, Lwa;

    if-nez v6, :cond_4c

    instance-of v6, v13, Lwa;

    if-eqz v6, :cond_4d

    const/16 v17, 0x5

    goto :goto_2b

    .line 60
    :cond_4c
    const/16 v17, 0x5

    .line 53
    :cond_4d
    :goto_2b
    instance-of v6, v14, Lvu;

    if-nez v6, :cond_4e

    instance-of v6, v13, Lvu;

    if-eqz v6, :cond_4f

    const/16 v17, 0x5

    goto :goto_2c

    .line 60
    :cond_4e
    const/16 v17, 0x5

    .line 53
    :cond_4f
    :goto_2c
    const/4 v6, 0x1

    if-ne v6, v5, :cond_50

    const/4 v6, 0x5

    goto :goto_2d

    :cond_50
    move/from16 v6, v17

    .line 54
    :goto_2d
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2e

    .line 60
    :cond_51
    move/from16 v5, p20

    :cond_52
    nop

    .line 54
    :goto_2e
    if-eqz v20, :cond_55

    .line 55
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p17, :cond_54

    if-nez v5, :cond_54

    if-eq v14, v1, :cond_53

    if-ne v13, v1, :cond_54

    const/4 v14, 0x4

    goto :goto_2f

    .line 60
    :cond_53
    const/4 v14, 0x4

    goto :goto_2f

    .line 56
    :cond_54
    move v14, v3

    goto :goto_2f

    .line 54
    :cond_55
    move v14, v4

    .line 56
    :goto_2f
    invoke-virtual/range {p10 .. p10}, Lvw;->b()I

    move-result v1

    invoke-virtual {v10, v11, v15, v1, v14}, Lvn;->m(Lvs;Lvs;II)V

    .line 57
    invoke-virtual/range {p11 .. p11}, Lvw;->b()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v2, v12, v1, v14}, Lvn;->m(Lvs;Lvs;II)V

    :cond_56
    if-eqz v20, :cond_58

    move-object/from16 v3, p6

    move-object v4, v11

    if-ne v3, v15, :cond_57

    .line 58
    invoke-virtual/range {p10 .. p10}, Lvw;->b()I

    move-result v8

    goto :goto_30

    .line 60
    :cond_57
    const/4 v8, 0x0

    .line 58
    :goto_30
    if-eq v15, v3, :cond_59

    .line 59
    const/4 v1, 0x5

    invoke-virtual {v10, v4, v3, v8, v1}, Lvn;->g(Lvs;Lvs;II)V

    goto :goto_31

    .line 57
    :cond_58
    move-object v4, v11

    .line 59
    :cond_59
    :goto_31
    if-eqz v20, :cond_5b

    if-eqz v16, :cond_5b

    if-nez p14, :cond_5b

    if-nez v21, :cond_5b

    move/from16 v8, v27

    const/4 v5, 0x3

    if-ne v8, v5, :cond_5a

    .line 61
    const/16 v1, 0x8

    const/4 v7, 0x0

    invoke-virtual {v10, v2, v4, v7, v1}, Lvn;->g(Lvs;Lvs;II)V

    const/4 v14, 0x5

    goto :goto_33

    :cond_5a
    const/4 v7, 0x0

    .line 60
    const/4 v1, 0x5

    invoke-virtual {v10, v2, v4, v7, v1}, Lvn;->g(Lvs;Lvs;II)V

    goto :goto_32

    :cond_5b
    const/4 v1, 0x5

    const/4 v7, 0x0

    :goto_32
    const/4 v14, 0x5

    goto :goto_33

    .line 66
    :cond_5c
    move-object v2, v6

    move/from16 p5, v11

    const/4 v1, 0x5

    const/4 v7, 0x0

    move/from16 v20, p3

    const/4 v14, 0x5

    .line 36
    :goto_33
    if-eqz v20, :cond_5e

    if-eqz p5, :cond_5e

    .line 71
    move-object/from16 v1, p11

    iget-object v3, v1, Lvw;->e:Lvw;

    if-eqz v3, :cond_5d

    .line 72
    invoke-virtual/range {p11 .. p11}, Lvw;->b()I

    move-result v8

    goto :goto_34

    .line 73
    :cond_5d
    const/4 v8, 0x0

    .line 72
    :goto_34
    move-object/from16 v9, p7

    if-eq v12, v9, :cond_5e

    .line 73
    invoke-virtual {v10, v9, v2, v8, v14}, Lvn;->g(Lvs;Lvs;II)V

    :cond_5e
    return-void

    .line 13
    :cond_5f
    move-object/from16 v3, p6

    move-object/from16 v9, p7

    move-object v2, v6

    move-object v4, v7

    move/from16 p5, v11

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_35
    const/4 v8, 0x2

    if-ge v1, v8, :cond_64

    if-eqz p3, :cond_64

    if-eqz p5, :cond_64

    .line 32
    const/16 v1, 0x8

    invoke-virtual {v10, v4, v3, v7, v1}, Lvn;->g(Lvs;Lvs;II)V

    if-nez p2, :cond_61

    iget-object v1, v0, Lvx;->N:Lvw;

    .line 33
    iget-object v1, v1, Lvw;->e:Lvw;

    if-nez v1, :cond_60

    const/4 v8, 0x1

    goto :goto_36

    .line 36
    :cond_60
    const/4 v8, 0x0

    goto :goto_36

    :cond_61
    const/4 v8, 0x1

    .line 33
    :goto_36
    if-nez p2, :cond_62

    iget-object v1, v0, Lvx;->N:Lvw;

    .line 34
    iget-object v1, v1, Lvw;->e:Lvw;

    if-eqz v1, :cond_62

    iget-object v1, v1, Lvw;->d:Lvx;

    iget v3, v1, Lvx;->W:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_64

    iget-object v1, v1, Lvx;->ap:[I

    .line 35
    aget v3, v1, v7

    if-ne v3, v5, :cond_64

    aget v1, v1, v6

    if-ne v1, v5, :cond_64

    goto :goto_37

    .line 36
    :cond_62
    if-nez v8, :cond_63

    goto :goto_38

    .line 35
    :cond_63
    :goto_37
    nop

    .line 36
    const/16 v1, 0x8

    invoke-virtual {v10, v9, v2, v7, v1}, Lvn;->g(Lvs;Lvs;II)V

    :cond_64
    :goto_38
    return-void

    .line 9
    :cond_65
    const/4 v1, 0x0

    .line 8
    goto :goto_3a

    :goto_39
    throw v1

    :goto_3a
    goto :goto_39

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final A(II)V
    .locals 0

    iput p1, p0, Lvx;->H:I

    iput p2, p0, Lvx;->I:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lvx;->a:Z

    return-void
.end method

.method public final B(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lvx;->ac:I

    return-void

    :cond_0
    iput p1, p0, Lvx;->ac:I

    return-void
.end method

.method public final C(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lvx;->ab:I

    return-void

    :cond_0
    iput p1, p0, Lvx;->ab:I

    return-void
.end method

.method public final D(I)V
    .locals 1

    iput p1, p0, Lvx;->U:I

    iget v0, p0, Lvx;->ab:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lvx;->U:I

    :cond_0
    return-void
.end method

.method public E(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lvx;->h:Lwp;

    iget-boolean v1, v0, Lwt;->h:Z

    and-int/2addr p1, v1

    iget-object v1, p0, Lvx;->i:Lwr;

    iget-boolean v2, v1, Lwt;->h:Z

    and-int/2addr p2, v2

    iget-object v2, v0, Lwp;->i:Lwk;

    iget v2, v2, Lwk;->f:I

    .line 2
    iget-object v3, v1, Lwr;->i:Lwk;

    iget v3, v3, Lwk;->f:I

    .line 3
    iget-object v0, v0, Lwp;->j:Lwk;

    iget v0, v0, Lwk;->f:I

    .line 4
    iget-object v1, v1, Lwr;->j:Lwk;

    iget v1, v1, Lwk;->f:I

    sub-int v4, v1, v3

    sub-int v5, v0, v2

    const/4 v6, 0x0

    if-ltz v5, :cond_1

    if-ltz v4, :cond_1

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_1

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_1

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    .line 6
    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    iput v2, p0, Lvx;->Y:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Lvx;->Z:I

    :cond_3
    iget v2, p0, Lvx;->ag:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iput v6, p0, Lvx;->U:I

    iput v6, p0, Lvx;->V:I

    return-void

    :cond_4
    const/4 v2, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lvx;->ap:[I

    .line 5
    aget p1, p1, v6

    if-ne p1, v2, :cond_6

    iget p1, p0, Lvx;->U:I

    if-lt v0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, p1

    goto :goto_1

    .line 6
    :cond_6
    nop

    .line 5
    :goto_1
    iput v0, p0, Lvx;->U:I

    iget p1, p0, Lvx;->ab:I

    if-ge v0, p1, :cond_7

    iput p1, p0, Lvx;->U:I

    :cond_7
    if-eqz p2, :cond_a

    iget-object p1, p0, Lvx;->ap:[I

    .line 6
    aget p1, p1, v2

    if-ne p1, v2, :cond_9

    iget p1, p0, Lvx;->V:I

    if-lt v1, p1, :cond_8

    goto :goto_2

    :cond_8
    move v1, p1

    :cond_9
    :goto_2
    iput v1, p0, Lvx;->V:I

    iget p1, p0, Lvx;->ac:I

    if-ge v1, p1, :cond_a

    iput p1, p0, Lvx;->V:I

    :cond_a
    return-void
.end method

.method final F()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lwd;

    if-nez v0, :cond_1

    instance-of v0, p0, Lwa;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final G(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lvx;->J:Lvw;

    iget-object p1, p1, Lvw;->e:Lvw;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lvx;->L:Lvw;

    iget-object v3, v3, Lvw;->e:Lvw;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    iget-object p1, p0, Lvx;->K:Lvw;

    .line 2
    iget-object p1, p1, Lvw;->e:Lvw;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iget-object v3, p0, Lvx;->M:Lvw;

    iget-object v3, v3, Lvw;->e:Lvw;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    add-int/2addr p1, v3

    iget-object v3, p0, Lvx;->N:Lvw;

    iget-object v3, v3, Lvw;->e:Lvw;

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method public final H(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lvx;->J:Lvw;

    iget-object p1, p1, Lvw;->e:Lvw;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lvw;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lvx;->L:Lvw;

    iget-object p1, p1, Lvw;->e:Lvw;

    if-eqz p1, :cond_3

    iget-boolean v2, p1, Lvw;->c:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lvw;->a()I

    move-result p1

    iget-object v2, p0, Lvx;->L:Lvw;

    .line 2
    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lvx;->J:Lvw;

    iget-object v2, v2, Lvw;->e:Lvw;

    .line 3
    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    iget-object v3, p0, Lvx;->J:Lvw;

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object p1, p0, Lvx;->K:Lvw;

    .line 4
    iget-object p1, p1, Lvw;->e:Lvw;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lvw;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lvx;->M:Lvw;

    iget-object p1, p1, Lvw;->e:Lvw;

    if-eqz p1, :cond_3

    iget-boolean v2, p1, Lvw;->c:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lvw;->a()I

    move-result p1

    iget-object v2, p0, Lvx;->M:Lvw;

    .line 5
    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lvx;->K:Lvw;

    iget-object v2, v2, Lvw;->e:Lvw;

    .line 6
    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    iget-object v3, p0, Lvx;->K:Lvw;

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_2

    return v0

    :cond_2
    return v1

    .line 3
    :cond_3
    return v1
.end method

.method public final I()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lvx;->J:Lvw;

    iget-object v1, v0, Lvw;->e:Lvw;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lvw;->e:Lvw;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lvx;->L:Lvw;

    iget-object v1, v0, Lvw;->e:Lvw;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lvw;->e:Lvw;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final J()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lvx;->K:Lvw;

    iget-object v1, v0, Lvw;->e:Lvw;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lvw;->e:Lvw;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lvx;->M:Lvw;

    iget-object v1, v0, Lvw;->e:Lvw;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lvw;->e:Lvw;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final K()Z
    .locals 2

    iget-boolean v0, p0, Lvx;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lvx;->ag:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public L(I)Lvw;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lvx;->Q:Lvw;

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lvx;->N:Lvw;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lvx;->M:Lvw;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lvx;->L:Lvw;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lvx;->K:Lvw;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lvx;->J:Lvw;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final M(I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lvx;->N()I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lvx;->O()I

    move-result p1

    return p1
.end method

.method public final N()I
    .locals 2

    .line 1
    iget-object v0, p0, Lvx;->ap:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final O()I
    .locals 2

    .line 1
    iget-object v0, p0, Lvx;->ap:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final P(ILvx;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvx;->L(I)Lvw;

    move-result-object p1

    invoke-virtual {p2, p3}, Lvx;->L(I)Lvw;

    move-result-object p2

    invoke-virtual {p1, p2, p4, p5}, Lvw;->j(Lvw;II)V

    return-void
.end method

.method public final Q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvx;->ap:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public final R(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvx;->ap:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public S(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lvx;->J:Lvw;

    invoke-static {v0}, Lvn;->o(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lvx;->K:Lvw;

    .line 2
    invoke-static {v1}, Lvn;->o(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lvx;->L:Lvw;

    .line 3
    invoke-static {v2}, Lvn;->o(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lvx;->M:Lvw;

    .line 4
    invoke-static {v3}, Lvn;->o(Ljava/lang/Object;)I

    move-result v3

    if-eqz p1, :cond_0

    iget-object v4, p0, Lvx;->h:Lwp;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lwp;->i:Lwk;

    .line 5
    iget-boolean v6, v5, Lwk;->i:Z

    if-eqz v6, :cond_0

    iget-object v4, v4, Lwp;->j:Lwk;

    iget-boolean v6, v4, Lwk;->i:Z

    if-eqz v6, :cond_0

    .line 6
    iget v0, v5, Lwk;->f:I

    .line 7
    iget v2, v4, Lwk;->f:I

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lvx;->i:Lwr;

    if-eqz p1, :cond_1

    iget-object v4, p1, Lwr;->i:Lwk;

    .line 8
    iget-boolean v5, v4, Lwk;->i:Z

    if-eqz v5, :cond_1

    iget-object p1, p1, Lwr;->j:Lwk;

    iget-boolean v5, p1, Lwk;->i:Z

    if-eqz v5, :cond_1

    .line 9
    iget v1, v4, Lwk;->f:I

    .line 10
    iget v3, p1, Lwk;->f:I

    goto :goto_0

    .line 15
    :cond_1
    nop

    .line 10
    :goto_0
    sub-int p1, v3, v1

    sub-int v4, v2, v0

    const/4 v5, 0x0

    if-ltz v4, :cond_3

    if-ltz p1, :cond_3

    const/high16 p1, -0x80000000

    if-eq v0, p1, :cond_3

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_3

    if-eq v1, p1, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v2, p1, :cond_3

    if-eq v2, v4, :cond_3

    if-eq v3, p1, :cond_3

    if-ne v3, v4, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_1

    .line 15
    :cond_2
    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_1
    sub-int/2addr v2, v0

    sub-int/2addr v3, v1

    iput v0, p0, Lvx;->Y:I

    iput v1, p0, Lvx;->Z:I

    iget p1, p0, Lvx;->ag:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    iput v5, p0, Lvx;->U:I

    iput v5, p0, Lvx;->V:I

    return-void

    :cond_4
    iget-object p1, p0, Lvx;->ap:[I

    .line 11
    aget v0, p1, v5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget v0, p0, Lvx;->U:I

    if-ge v2, v0, :cond_5

    move v2, v0

    const/4 v0, 0x1

    goto :goto_2

    .line 15
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    nop

    .line 11
    :goto_2
    nop

    .line 12
    aget p1, p1, v1

    if-ne p1, v1, :cond_8

    iget p1, p0, Lvx;->V:I

    if-lt v3, p1, :cond_7

    goto :goto_3

    :cond_7
    move v3, p1

    goto :goto_3

    .line 15
    :cond_8
    nop

    .line 12
    :goto_3
    iput v2, p0, Lvx;->U:I

    iput v3, p0, Lvx;->V:I

    iget p1, p0, Lvx;->ac:I

    if-ge v3, p1, :cond_9

    iput p1, p0, Lvx;->V:I

    :cond_9
    iget p1, p0, Lvx;->ab:I

    if-ge v2, p1, :cond_a

    iput p1, p0, Lvx;->U:I

    goto :goto_4

    .line 15
    :cond_a
    move p1, v2

    .line 12
    :goto_4
    iget v4, p0, Lvx;->w:I

    const/4 v5, 0x3

    if-lez v4, :cond_b

    if-ne v0, v5, :cond_b

    .line 13
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lvx;->U:I

    :cond_b
    iget p1, p0, Lvx;->z:I

    if-lez p1, :cond_c

    iget-object v0, p0, Lvx;->ap:[I

    .line 14
    aget v0, v0, v1

    if-ne v0, v5, :cond_c

    iget v0, p0, Lvx;->V:I

    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lvx;->V:I

    :cond_c
    iget p1, p0, Lvx;->U:I

    if-eq v2, p1, :cond_d

    iput p1, p0, Lvx;->k:I

    :cond_d
    iget p1, p0, Lvx;->V:I

    if-eq v3, p1, :cond_e

    iput p1, p0, Lvx;->l:I

    :cond_e
    return-void
.end method

.method public b(Lvn;Z)V
    .locals 51

    .line 1
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lvx;->J:Lvw;

    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v13

    iget-object v0, v15, Lvx;->L:Lvw;

    .line 2
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v12

    iget-object v0, v15, Lvx;->K:Lvw;

    .line 3
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v11

    iget-object v0, v15, Lvx;->M:Lvw;

    .line 4
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v10

    iget-object v0, v15, Lvx;->N:Lvw;

    .line 5
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v9

    iget-object v0, v15, Lvx;->T:Lvx;

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lvx;->ap:[I

    .line 6
    aget v1, v0, v6

    if-ne v1, v8, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    nop

    .line 7
    aget v0, v0, v7

    if-ne v0, v8, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_1
    iget v2, v15, Lvx;->r:I

    packed-switch v2, :pswitch_data_0

    move/from16 v28, v0

    move/from16 v29, v1

    goto :goto_3

    .line 11
    :pswitch_0
    move/from16 v28, v0

    goto :goto_2

    :pswitch_1
    move/from16 v29, v1

    const/16 v28, 0x0

    goto :goto_3

    :cond_2
    :pswitch_2
    const/16 v28, 0x0

    :goto_2
    const/16 v29, 0x0

    .line 7
    :goto_3
    iget v0, v15, Lvx;->ag:I

    const/16 v5, 0x8

    if-ne v0, v5, :cond_5

    iget-object v0, v15, Lvx;->S:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    iget-object v2, v15, Lvx;->S:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvw;

    .line 10
    invoke-virtual {v2}, Lvw;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    .line 19
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, v15, Lvx;->c:[Z

    .line 11
    aget-boolean v1, v0, v6

    if-nez v1, :cond_5

    aget-boolean v0, v0, v7

    if-nez v0, :cond_5

    return-void

    .line 10
    :cond_5
    :goto_5
    iget-boolean v0, v15, Lvx;->b:Z

    if-nez v0, :cond_6

    iget-boolean v0, v15, Lvx;->m:Z

    if-eqz v0, :cond_11

    goto :goto_6

    .line 33
    :cond_6
    iget v0, v15, Lvx;->Y:I

    .line 12
    invoke-virtual {v14, v13, v0}, Lvn;->f(Lvs;I)V

    iget v0, v15, Lvx;->Y:I

    iget v1, v15, Lvx;->U:I

    add-int/2addr v0, v1

    .line 13
    invoke-virtual {v14, v12, v0}, Lvn;->f(Lvs;I)V

    if-eqz v29, :cond_a

    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_a

    iget-object v1, v15, Lvx;->J:Lvw;

    check-cast v0, Lvy;

    iget-object v2, v0, Lvy;->aB:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_7

    .line 14
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {v1}, Lvw;->a()I

    move-result v2

    iget-object v3, v0, Lvy;->aB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw;

    invoke-virtual {v3}, Lvw;->a()I

    move-result v3

    if-le v2, v3, :cond_8

    :cond_7
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lvy;->aB:Ljava/lang/ref/WeakReference;

    :cond_8
    iget-object v1, v15, Lvx;->L:Lvw;

    iget-object v2, v0, Lvy;->aD:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_9

    .line 17
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 18
    invoke-virtual {v1}, Lvw;->a()I

    move-result v2

    iget-object v3, v0, Lvy;->aD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw;

    invoke-virtual {v3}, Lvw;->a()I

    move-result v3

    if-le v2, v3, :cond_a

    :cond_9
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lvy;->aD:Ljava/lang/ref/WeakReference;

    .line 10
    :cond_a
    :goto_6
    iget-boolean v0, v15, Lvx;->m:Z

    if-eqz v0, :cond_f

    iget v0, v15, Lvx;->Z:I

    .line 20
    invoke-virtual {v14, v11, v0}, Lvn;->f(Lvs;I)V

    iget v0, v15, Lvx;->Z:I

    iget v1, v15, Lvx;->V:I

    add-int/2addr v0, v1

    .line 21
    invoke-virtual {v14, v10, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->N:Lvw;

    .line 22
    invoke-virtual {v0}, Lvw;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v15, Lvx;->Z:I

    iget v1, v15, Lvx;->aa:I

    add-int/2addr v0, v1

    .line 23
    invoke-virtual {v14, v9, v0}, Lvn;->f(Lvs;I)V

    :cond_b
    if-eqz v28, :cond_f

    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_f

    iget-object v1, v15, Lvx;->K:Lvw;

    check-cast v0, Lvy;

    iget-object v2, v0, Lvy;->aA:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_c

    .line 24
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 25
    invoke-virtual {v1}, Lvw;->a()I

    move-result v2

    iget-object v3, v0, Lvy;->aA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw;

    invoke-virtual {v3}, Lvw;->a()I

    move-result v3

    if-le v2, v3, :cond_d

    :cond_c
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lvy;->aA:Ljava/lang/ref/WeakReference;

    :cond_d
    iget-object v1, v15, Lvx;->M:Lvw;

    iget-object v2, v0, Lvy;->aC:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_e

    .line 27
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 28
    invoke-virtual {v1}, Lvw;->a()I

    move-result v2

    iget-object v3, v0, Lvy;->aC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw;

    invoke-virtual {v3}, Lvw;->a()I

    move-result v3

    if-le v2, v3, :cond_f

    :cond_e
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 29
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lvy;->aC:Ljava/lang/ref/WeakReference;

    :cond_f
    iget-boolean v0, v15, Lvx;->b:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v15, Lvx;->m:Z

    if-nez v0, :cond_10

    goto :goto_7

    .line 33
    :cond_10
    iput-boolean v6, v15, Lvx;->b:Z

    iput-boolean v6, v15, Lvx;->m:Z

    return-void

    .line 29
    :cond_11
    :goto_7
    if-eqz p2, :cond_14

    iget-object v0, v15, Lvx;->h:Lwp;

    if-eqz v0, :cond_14

    iget-object v1, v15, Lvx;->i:Lwr;

    if-eqz v1, :cond_14

    iget-object v2, v0, Lwp;->i:Lwk;

    .line 30
    iget-boolean v3, v2, Lwk;->i:Z

    if-eqz v3, :cond_14

    iget-object v0, v0, Lwp;->j:Lwk;

    iget-boolean v0, v0, Lwk;->i:Z

    if-eqz v0, :cond_14

    iget-object v0, v1, Lwr;->i:Lwk;

    iget-boolean v0, v0, Lwk;->i:Z

    if-eqz v0, :cond_14

    iget-object v0, v1, Lwr;->j:Lwk;

    iget-boolean v0, v0, Lwk;->i:Z

    if-eqz v0, :cond_14

    .line 91
    iget v0, v2, Lwk;->f:I

    invoke-virtual {v14, v13, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->h:Lwp;

    .line 92
    iget-object v0, v0, Lwp;->j:Lwk;

    iget v0, v0, Lwk;->f:I

    invoke-virtual {v14, v12, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->i:Lwr;

    .line 93
    iget-object v0, v0, Lwr;->i:Lwk;

    iget v0, v0, Lwk;->f:I

    invoke-virtual {v14, v11, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->i:Lwr;

    .line 94
    iget-object v0, v0, Lwr;->j:Lwk;

    iget v0, v0, Lwk;->f:I

    invoke-virtual {v14, v10, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->i:Lwr;

    .line 95
    iget-object v0, v0, Lwr;->a:Lwk;

    iget v0, v0, Lwk;->f:I

    invoke-virtual {v14, v9, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_13

    if-eqz v29, :cond_12

    iget-object v0, v15, Lvx;->j:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_12

    .line 96
    invoke-virtual/range {p0 .. p0}, Lvx;->I()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v15, Lvx;->T:Lvx;

    .line 97
    iget-object v0, v0, Lvx;->L:Lvw;

    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    .line 98
    invoke-virtual {v14, v0, v12, v6, v5}, Lvn;->g(Lvs;Lvs;II)V

    :cond_12
    if-eqz v28, :cond_13

    iget-object v0, v15, Lvx;->j:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_13

    .line 99
    invoke-virtual/range {p0 .. p0}, Lvx;->J()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v15, Lvx;->T:Lvx;

    .line 100
    iget-object v0, v0, Lvx;->M:Lvw;

    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    .line 101
    invoke-virtual {v14, v0, v10, v6, v5}, Lvn;->g(Lvs;Lvs;II)V

    :cond_13
    iput-boolean v6, v15, Lvx;->b:Z

    iput-boolean v6, v15, Lvx;->m:Z

    return-void

    :cond_14
    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_19

    .line 31
    invoke-direct {v15, v6}, Lvx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v15, Lvx;->T:Lvx;

    check-cast v0, Lvy;

    .line 32
    invoke-virtual {v0, v15, v6}, Lvy;->a(Lvx;I)V

    const/4 v0, 0x1

    goto :goto_8

    .line 33
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lvx;->I()Z

    move-result v0

    .line 32
    :goto_8
    nop

    .line 34
    invoke-direct {v15, v7}, Lvx;->a(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v15, Lvx;->T:Lvx;

    check-cast v1, Lvy;

    .line 35
    invoke-virtual {v1, v15, v7}, Lvy;->a(Lvx;I)V

    const/4 v1, 0x1

    goto :goto_9

    .line 36
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lvx;->J()Z

    move-result v1

    .line 35
    :goto_9
    if-nez v0, :cond_17

    if-eqz v29, :cond_17

    iget v2, v15, Lvx;->ag:I

    if-eq v2, v5, :cond_17

    iget-object v2, v15, Lvx;->J:Lvw;

    .line 37
    iget-object v2, v2, Lvw;->e:Lvw;

    if-nez v2, :cond_17

    iget-object v2, v15, Lvx;->L:Lvw;

    iget-object v2, v2, Lvw;->e:Lvw;

    if-nez v2, :cond_17

    iget-object v2, v15, Lvx;->T:Lvx;

    .line 38
    iget-object v2, v2, Lvx;->L:Lvw;

    invoke-virtual {v14, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v2

    .line 39
    invoke-virtual {v14, v2, v12, v6, v7}, Lvn;->g(Lvs;Lvs;II)V

    :cond_17
    if-nez v1, :cond_18

    if-eqz v28, :cond_18

    iget v2, v15, Lvx;->ag:I

    if-eq v2, v5, :cond_18

    iget-object v2, v15, Lvx;->K:Lvw;

    .line 40
    iget-object v2, v2, Lvw;->e:Lvw;

    if-nez v2, :cond_18

    iget-object v2, v15, Lvx;->M:Lvw;

    iget-object v2, v2, Lvw;->e:Lvw;

    if-nez v2, :cond_18

    iget-object v2, v15, Lvx;->N:Lvw;

    if-nez v2, :cond_18

    iget-object v2, v15, Lvx;->T:Lvx;

    .line 41
    iget-object v2, v2, Lvx;->M:Lvw;

    invoke-virtual {v14, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v2

    .line 42
    invoke-virtual {v14, v2, v10, v6, v7}, Lvn;->g(Lvs;Lvs;II)V

    goto :goto_a

    .line 46
    :cond_18
    nop

    .line 42
    :goto_a
    move/from16 v31, v0

    move/from16 v30, v1

    goto :goto_b

    .line 33
    :cond_19
    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 42
    :goto_b
    iget v0, v15, Lvx;->U:I

    iget v1, v15, Lvx;->ab:I

    if-lt v0, v1, :cond_1a

    move v1, v0

    :cond_1a
    iget v2, v15, Lvx;->V:I

    iget v3, v15, Lvx;->ac:I

    if-lt v2, v3, :cond_1b

    move v3, v2

    :cond_1b
    iget-object v4, v15, Lvx;->ap:[I

    .line 43
    aget v8, v4, v6

    .line 44
    aget v4, v4, v7

    iget v7, v15, Lvx;->X:I

    iput v7, v15, Lvx;->B:I

    iget v6, v15, Lvx;->W:F

    iput v6, v15, Lvx;->C:F

    iget v5, v15, Lvx;->s:I

    move/from16 v20, v1

    iget v1, v15, Lvx;->t:I

    const/16 v21, 0x0

    move-object/from16 v22, v11

    cmpl-float v21, v6, v21

    if-lez v21, :cond_35

    iget v11, v15, Lvx;->ag:I

    move/from16 v25, v3

    const/16 v3, 0x8

    if-eq v11, v3, :cond_36

    const/4 v3, 0x3

    if-ne v8, v3, :cond_1d

    if-nez v5, :cond_1c

    const/4 v5, 0x3

    const/4 v11, 0x3

    goto :goto_c

    .line 46
    :cond_1c
    const/4 v11, 0x3

    goto :goto_c

    :cond_1d
    move v11, v8

    .line 44
    :goto_c
    if-ne v4, v3, :cond_1f

    if-nez v1, :cond_1e

    const/4 v1, 0x3

    const/16 v32, 0x3

    goto :goto_d

    .line 46
    :cond_1e
    const/16 v32, 0x3

    goto :goto_d

    :cond_1f
    move/from16 v32, v4

    .line 44
    :goto_d
    const/high16 v26, 0x3f800000    # 1.0f

    if-ne v11, v3, :cond_2e

    move-object/from16 v27, v9

    move/from16 v9, v32

    if-ne v9, v3, :cond_2f

    if-ne v5, v3, :cond_2f

    if-ne v1, v3, :cond_2d

    const/4 v0, -0x1

    if-ne v7, v0, :cond_22

    if-eq v8, v3, :cond_20

    if-ne v4, v3, :cond_20

    const/4 v0, 0x0

    iput v0, v15, Lvx;->B:I

    goto :goto_e

    .line 46
    :cond_20
    if-ne v8, v3, :cond_21

    if-eq v4, v3, :cond_21

    const/4 v0, 0x1

    iput v0, v15, Lvx;->B:I

    div-float v0, v26, v6

    iput v0, v15, Lvx;->C:F

    :cond_21
    const/4 v0, 0x1

    goto :goto_10

    :cond_22
    if-nez v7, :cond_25

    .line 44
    :goto_e
    iget-object v0, v15, Lvx;->K:Lvw;

    .line 45
    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v15, Lvx;->M:Lvw;

    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_f

    :cond_23
    const/4 v0, 0x1

    goto :goto_10

    :cond_24
    :goto_f
    const/4 v0, 0x1

    iput v0, v15, Lvx;->B:I

    goto :goto_11

    .line 46
    :cond_25
    const/4 v0, 0x1

    .line 50
    :goto_10
    iget v2, v15, Lvx;->B:I

    if-ne v2, v0, :cond_27

    iget-object v0, v15, Lvx;->J:Lvw;

    .line 46
    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v15, Lvx;->L:Lvw;

    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_26
    const/4 v0, 0x0

    iput v0, v15, Lvx;->B:I

    .line 45
    :cond_27
    :goto_11
    iget v0, v15, Lvx;->B:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2a

    iget-object v0, v15, Lvx;->K:Lvw;

    .line 47
    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v15, Lvx;->M:Lvw;

    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v15, Lvx;->J:Lvw;

    .line 48
    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v15, Lvx;->L:Lvw;

    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    iget-object v0, v15, Lvx;->K:Lvw;

    .line 49
    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v15, Lvx;->M:Lvw;

    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    iput v0, v15, Lvx;->B:I

    goto :goto_12

    .line 63
    :cond_29
    iget-object v0, v15, Lvx;->J:Lvw;

    .line 50
    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v15, Lvx;->L:Lvw;

    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, v15, Lvx;->C:F

    div-float v0, v26, v0

    iput v0, v15, Lvx;->C:F

    const/4 v0, 0x1

    iput v0, v15, Lvx;->B:I

    .line 49
    :cond_2a
    :goto_12
    iget v0, v15, Lvx;->B:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2c

    iget v2, v15, Lvx;->v:I

    if-lez v2, :cond_2b

    iget v3, v15, Lvx;->y:I

    if-nez v3, :cond_2b

    const/4 v0, 0x0

    iput v0, v15, Lvx;->B:I

    move/from16 v34, v1

    move/from16 v35, v5

    move/from16 v1, v20

    move/from16 v33, v25

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/16 v32, 0x1

    goto/16 :goto_17

    .line 63
    :cond_2b
    if-nez v2, :cond_2c

    iget v2, v15, Lvx;->y:I

    if-lez v2, :cond_2c

    iget v0, v15, Lvx;->C:F

    div-float v0, v26, v0

    iput v0, v15, Lvx;->C:F

    const/4 v0, 0x1

    iput v0, v15, Lvx;->B:I

    move/from16 v34, v1

    move/from16 v35, v5

    move/from16 v1, v20

    move/from16 v33, v25

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_13

    :cond_2c
    move v7, v0

    move/from16 v34, v1

    move/from16 v35, v5

    move/from16 v1, v20

    move/from16 v33, v25

    :goto_13
    const/16 v32, 0x1

    goto/16 :goto_17

    .line 46
    :cond_2d
    const/4 v3, 0x3

    goto :goto_14

    :cond_2e
    move-object/from16 v27, v9

    move/from16 v9, v32

    :cond_2f
    move v3, v5

    :goto_14
    const/4 v4, 0x3

    if-ne v11, v4, :cond_31

    if-ne v3, v4, :cond_31

    const/4 v0, 0x0

    iput v0, v15, Lvx;->B:I

    int-to-float v0, v2

    mul-float v6, v6, v0

    float-to-int v0, v6

    move/from16 v34, v1

    if-eq v9, v4, :cond_30

    move/from16 v33, v25

    const/4 v7, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x4

    goto :goto_15

    :cond_30
    move/from16 v35, v5

    move/from16 v33, v25

    const/4 v7, 0x0

    const/16 v32, 0x1

    :goto_15
    move v1, v0

    const/4 v0, 0x0

    goto :goto_17

    :cond_31
    if-ne v9, v4, :cond_34

    if-ne v1, v4, :cond_34

    const/4 v2, 0x1

    iput v2, v15, Lvx;->B:I

    const/4 v2, -0x1

    if-ne v7, v2, :cond_32

    div-float v6, v26, v6

    iput v6, v15, Lvx;->C:F

    :cond_32
    int-to-float v0, v0

    mul-float v6, v6, v0

    float-to-int v3, v6

    const/4 v0, 0x3

    if-eq v11, v0, :cond_33

    move/from16 v33, v3

    move/from16 v35, v5

    move/from16 v1, v20

    const/4 v0, 0x1

    const/4 v7, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x4

    goto :goto_17

    :cond_33
    move/from16 v34, v1

    move/from16 v33, v3

    move/from16 v35, v5

    move/from16 v1, v20

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_16

    :cond_34
    move/from16 v34, v1

    move/from16 v35, v5

    move v0, v7

    move/from16 v1, v20

    move/from16 v33, v25

    :goto_16
    const/16 v32, 0x1

    goto :goto_17

    :cond_35
    move/from16 v25, v3

    :cond_36
    move-object/from16 v27, v9

    move/from16 v34, v1

    move/from16 v35, v5

    move v0, v7

    move/from16 v1, v20

    move/from16 v33, v25

    const/16 v32, 0x0

    .line 49
    :goto_17
    iget-object v2, v15, Lvx;->u:[I

    const/4 v3, 0x0

    aput v35, v2, v3

    const/4 v3, 0x1

    aput v34, v2, v3

    if-eqz v32, :cond_38

    if-eqz v7, :cond_37

    const/4 v2, -0x1

    if-ne v7, v2, :cond_38

    const/16 v20, 0x1

    goto :goto_18

    .line 63
    :cond_37
    const/16 v20, 0x1

    goto :goto_18

    :cond_38
    const/16 v20, 0x0

    .line 49
    :goto_18
    if-eqz v32, :cond_3a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_39

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3a

    const/16 v36, 0x1

    goto :goto_19

    .line 63
    :cond_39
    const/16 v36, 0x1

    goto :goto_19

    :cond_3a
    const/16 v36, 0x0

    .line 49
    :goto_19
    iget-object v0, v15, Lvx;->ap:[I

    .line 51
    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3b

    instance-of v0, v15, Lvy;

    if-eqz v0, :cond_3b

    const/4 v9, 0x1

    goto :goto_1a

    .line 63
    :cond_3b
    const/4 v9, 0x0

    .line 51
    :goto_1a
    const/4 v0, 0x1

    if-eq v0, v9, :cond_3c

    move/from16 v37, v1

    goto :goto_1b

    .line 63
    :cond_3c
    const/16 v37, 0x0

    .line 51
    :goto_1b
    iget-object v1, v15, Lvx;->Q:Lvw;

    .line 52
    invoke-virtual {v1}, Lvw;->h()Z

    move-result v1

    xor-int/lit8 v38, v1, 0x1

    iget-object v1, v15, Lvx;->c:[Z

    .line 53
    const/4 v2, 0x0

    aget-boolean v39, v1, v2

    .line 54
    aget-boolean v40, v1, v0

    iget v0, v15, Lvx;->p:I

    const/16 v41, 0x0

    const/4 v8, 0x2

    if-eq v0, v8, :cond_45

    iget-boolean v0, v15, Lvx;->b:Z

    if-nez v0, :cond_45

    if-eqz p2, :cond_41

    iget-object v0, v15, Lvx;->h:Lwp;

    if-eqz v0, :cond_41

    iget-object v1, v0, Lwp;->i:Lwk;

    .line 55
    iget-boolean v2, v1, Lwk;->i:Z

    if-eqz v2, :cond_40

    iget-object v0, v0, Lwp;->j:Lwk;

    iget-boolean v0, v0, Lwk;->i:Z

    if-nez v0, :cond_3d

    const/16 v5, 0x8

    goto :goto_1c

    .line 59
    :cond_3d
    iget v0, v1, Lwk;->f:I

    invoke-virtual {v14, v13, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->h:Lwp;

    .line 60
    iget-object v0, v0, Lwp;->j:Lwk;

    iget v0, v0, Lwk;->f:I

    invoke-virtual {v14, v12, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_3f

    if-eqz v29, :cond_3f

    iget-object v0, v15, Lvx;->j:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3f

    .line 61
    invoke-virtual/range {p0 .. p0}, Lvx;->I()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, v15, Lvx;->T:Lvx;

    .line 62
    iget-object v0, v0, Lvx;->L:Lvw;

    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    .line 63
    const/16 v5, 0x8

    invoke-virtual {v14, v0, v12, v1, v5}, Lvn;->g(Lvs;Lvs;II)V

    move-object/from16 v49, v10

    move-object/from16 v43, v12

    move-object/from16 v45, v13

    move-object/from16 v50, v22

    move-object/from16 v48, v27

    goto/16 :goto_20

    .line 61
    :cond_3e
    const/16 v5, 0x8

    move-object/from16 v49, v10

    move-object/from16 v43, v12

    move-object/from16 v45, v13

    move-object/from16 v50, v22

    move-object/from16 v48, v27

    goto/16 :goto_20

    .line 60
    :cond_3f
    const/16 v5, 0x8

    move-object/from16 v49, v10

    move-object/from16 v43, v12

    move-object/from16 v45, v13

    move-object/from16 v50, v22

    move-object/from16 v48, v27

    goto/16 :goto_20

    .line 55
    :cond_40
    const/16 v5, 0x8

    goto :goto_1c

    .line 54
    :cond_41
    const/16 v5, 0x8

    .line 55
    :goto_1c
    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lvx;->L:Lvw;

    .line 56
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    move-object v7, v0

    goto :goto_1d

    .line 80
    :cond_42
    move-object/from16 v7, v41

    .line 56
    :goto_1d
    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lvx;->J:Lvw;

    .line 57
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    move-object v6, v0

    goto :goto_1e

    .line 80
    :cond_43
    move-object/from16 v6, v41

    .line 57
    :goto_1e
    iget-object v0, v15, Lvx;->j:[Z

    const/4 v11, 0x0

    aget-boolean v16, v0, v11

    iget-object v0, v15, Lvx;->ap:[I

    .line 58
    aget v18, v0, v11

    iget-object v4, v15, Lvx;->J:Lvw;

    iget-object v3, v15, Lvx;->L:Lvw;

    iget v1, v15, Lvx;->Y:I

    iget v2, v15, Lvx;->ab:I

    iget-object v5, v15, Lvx;->D:[I

    aget v42, v5, v11

    iget v5, v15, Lvx;->ad:F

    const/16 v17, 0x1

    aget v0, v0, v17

    const/4 v11, 0x3

    if-ne v0, v11, :cond_44

    const/16 v21, 0x1

    goto :goto_1f

    .line 80
    :cond_44
    const/16 v21, 0x0

    .line 58
    :goto_1f
    const/4 v0, 0x1

    move/from16 v44, v2

    move v2, v0

    iget v0, v15, Lvx;->v:I

    move/from16 v24, v0

    iget v0, v15, Lvx;->w:I

    move/from16 v25, v0

    iget v0, v15, Lvx;->x:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v45, v1

    move-object/from16 v1, p1

    move-object/from16 v46, v3

    move/from16 v3, v29

    move-object/from16 v47, v4

    move/from16 v4, v28

    move/from16 v19, v5

    move/from16 v5, v16

    move/from16 v8, v18

    move-object/from16 v48, v27

    move-object/from16 v49, v10

    move-object/from16 v10, v47

    move-object/from16 v50, v22

    move-object/from16 v11, v46

    move-object/from16 v43, v12

    move/from16 v12, v45

    move-object/from16 v45, v13

    move/from16 v13, v37

    move/from16 v14, v44

    move/from16 v15, v42

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v39

    move/from16 v22, v35

    move/from16 v23, v34

    move/from16 v27, v38

    invoke-direct/range {v0 .. v27}, Lvx;->c(Lvn;ZZZZLvs;Lvs;IZLvw;Lvw;IIIIFZZZZZIIIIFZ)V

    goto :goto_20

    .line 54
    :cond_45
    move-object/from16 v49, v10

    move-object/from16 v43, v12

    move-object/from16 v45, v13

    move-object/from16 v50, v22

    move-object/from16 v48, v27

    .line 58
    :goto_20
    if-eqz p2, :cond_49

    move-object/from16 v15, p0

    iget-object v0, v15, Lvx;->i:Lwr;

    if-eqz v0, :cond_48

    iget-object v1, v0, Lwr;->i:Lwk;

    .line 64
    iget-boolean v2, v1, Lwk;->i:Z

    if-eqz v2, :cond_48

    iget-object v0, v0, Lwr;->j:Lwk;

    iget-boolean v0, v0, Lwk;->i:Z

    if-eqz v0, :cond_48

    .line 65
    iget v0, v1, Lwk;->f:I

    move-object/from16 v14, p1

    move-object/from16 v13, v50

    invoke-virtual {v14, v13, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->i:Lwr;

    .line 66
    iget-object v0, v0, Lwr;->j:Lwk;

    iget v0, v0, Lwk;->f:I

    move-object/from16 v12, v49

    invoke-virtual {v14, v12, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->i:Lwr;

    .line 67
    iget-object v0, v0, Lwr;->a:Lwk;

    iget v0, v0, Lwk;->f:I

    move-object/from16 v1, v48

    invoke-virtual {v14, v1, v0}, Lvn;->f(Lvs;I)V

    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_47

    if-nez v30, :cond_47

    if-eqz v28, :cond_47

    iget-object v2, v15, Lvx;->j:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_46

    iget-object v0, v0, Lvx;->M:Lvw;

    .line 68
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    .line 69
    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, Lvn;->g(Lvs;Lvs;II)V

    const/4 v7, 0x0

    goto :goto_23

    .line 80
    :cond_46
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_21

    :cond_47
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_21
    const/4 v7, 0x0

    goto :goto_23

    :cond_48
    move-object/from16 v14, p1

    move-object/from16 v1, v48

    move-object/from16 v12, v49

    move-object/from16 v13, v50

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_22

    :cond_49
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v48

    move-object/from16 v12, v49

    move-object/from16 v13, v50

    :goto_22
    const/4 v7, 0x1

    .line 69
    :goto_23
    iget v0, v15, Lvx;->q:I

    const/4 v9, 0x5

    const/4 v8, 0x2

    if-ne v0, v8, :cond_4a

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    goto/16 :goto_2c

    .line 84
    :cond_4a
    if-eqz v7, :cond_55

    iget-boolean v0, v15, Lvx;->m:Z

    if-nez v0, :cond_55

    iget-object v0, v15, Lvx;->ap:[I

    .line 70
    aget v0, v0, v11

    if-ne v0, v8, :cond_4b

    instance-of v0, v15, Lvy;

    if-eqz v0, :cond_4b

    const/4 v7, 0x1

    goto :goto_24

    .line 80
    :cond_4b
    const/4 v7, 0x0

    .line 70
    :goto_24
    if-eq v11, v7, :cond_4c

    goto :goto_25

    .line 80
    :cond_4c
    const/16 v33, 0x0

    .line 70
    :goto_25
    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_4d

    iget-object v0, v0, Lvx;->M:Lvw;

    .line 71
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    move-object v6, v0

    goto :goto_26

    .line 80
    :cond_4d
    move-object/from16 v6, v41

    .line 71
    :goto_26
    iget-object v0, v15, Lvx;->T:Lvx;

    if-eqz v0, :cond_4e

    iget-object v0, v0, Lvx;->K:Lvw;

    .line 72
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    move-object/from16 v41, v0

    goto :goto_27

    .line 80
    :cond_4e
    nop

    .line 72
    :goto_27
    iget v0, v15, Lvx;->aa:I

    if-gtz v0, :cond_50

    iget v3, v15, Lvx;->ag:I

    if-ne v3, v2, :cond_4f

    goto :goto_28

    .line 80
    :cond_4f
    goto :goto_29

    .line 72
    :cond_50
    :goto_28
    iget-object v3, v15, Lvx;->N:Lvw;

    .line 73
    iget-object v4, v3, Lvw;->e:Lvw;

    if-eqz v4, :cond_52

    .line 74
    invoke-virtual {v14, v1, v13, v0, v2}, Lvn;->m(Lvs;Lvs;II)V

    iget-object v0, v15, Lvx;->N:Lvw;

    .line 75
    iget-object v0, v0, Lvw;->e:Lvw;

    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    iget-object v3, v15, Lvx;->N:Lvw;

    .line 76
    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    .line 77
    invoke-virtual {v14, v1, v0, v3, v2}, Lvn;->m(Lvs;Lvs;II)V

    if-eqz v28, :cond_51

    iget-object v0, v15, Lvx;->M:Lvw;

    .line 78
    invoke-virtual {v14, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    .line 79
    invoke-virtual {v14, v6, v0, v10, v9}, Lvn;->g(Lvs;Lvs;II)V

    const/16 v27, 0x0

    goto :goto_2a

    .line 82
    :cond_51
    const/16 v27, 0x0

    goto :goto_2a

    :cond_52
    iget v4, v15, Lvx;->ag:I

    if-ne v4, v2, :cond_53

    .line 81
    invoke-virtual {v3}, Lvw;->b()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Lvn;->m(Lvs;Lvs;II)V

    goto :goto_29

    :cond_53
    nop

    .line 80
    invoke-virtual {v14, v1, v13, v0, v2}, Lvn;->m(Lvs;Lvs;II)V

    .line 79
    :goto_29
    move/from16 v27, v38

    :goto_2a
    iget-object v0, v15, Lvx;->j:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Lvx;->ap:[I

    .line 82
    aget v16, v0, v11

    iget-object v4, v15, Lvx;->K:Lvw;

    iget-object v3, v15, Lvx;->M:Lvw;

    iget v1, v15, Lvx;->Z:I

    iget v2, v15, Lvx;->ac:I

    iget-object v8, v15, Lvx;->D:[I

    aget v17, v8, v11

    iget v8, v15, Lvx;->ae:F

    aget v0, v0, v10

    move/from16 v18, v2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_54

    const/16 v19, 0x1

    goto :goto_2b

    :cond_54
    const/16 v19, 0x0

    :goto_2b
    const/4 v0, 0x0

    move v2, v0

    iget v0, v15, Lvx;->y:I

    move/from16 v24, v0

    iget v0, v15, Lvx;->z:I

    move/from16 v25, v0

    iget v0, v15, Lvx;->A:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v21, v3

    move/from16 v3, v28

    move-object/from16 v22, v4

    move/from16 v4, v29

    move-object/from16 v23, v6

    move-object/from16 v6, v41

    move/from16 v28, v7

    move-object/from16 v7, v23

    move/from16 v23, v8

    move/from16 v8, v16

    move/from16 v9, v28

    move-object/from16 v10, v22

    move-object/from16 v11, v21

    move-object/from16 v28, v12

    move/from16 v12, v20

    move-object/from16 v29, v13

    move/from16 v13, v33

    move/from16 v14, v18

    move/from16 v15, v17

    move/from16 v16, v23

    move/from16 v17, v36

    move/from16 v18, v19

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v40

    move/from16 v22, v34

    move/from16 v23, v35

    invoke-direct/range {v0 .. v27}, Lvx;->c(Lvn;ZZZZLvs;Lvs;IZLvw;Lvw;IIIIFZZZZZIIIIFZ)V

    goto :goto_2c

    .line 84
    :cond_55
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    .line 69
    :goto_2c
    if-eqz v32, :cond_57

    move-object/from16 v6, p0

    iget v0, v6, Lvx;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_56

    iget v5, v6, Lvx;->C:F

    .line 83
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v43

    move-object/from16 v4, v45

    invoke-virtual/range {v0 .. v5}, Lvn;->n(Lvs;Lvs;Lvs;Lvs;F)V

    goto :goto_2d

    .line 86
    :cond_56
    iget v5, v6, Lvx;->C:F

    .line 84
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v45

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual/range {v0 .. v5}, Lvn;->n(Lvs;Lvs;Lvs;Lvs;F)V

    goto :goto_2d

    .line 69
    :cond_57
    move-object/from16 v6, p0

    .line 83
    :goto_2d
    iget-object v0, v6, Lvx;->Q:Lvw;

    .line 85
    invoke-virtual {v0}, Lvw;->h()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, v6, Lvx;->Q:Lvw;

    iget-object v0, v0, Lvw;->e:Lvw;

    iget-object v0, v0, Lvw;->d:Lvx;

    iget v1, v6, Lvx;->E:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    iget-object v3, v6, Lvx;->Q:Lvw;

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Lvx;->L(I)Lvw;

    move-result-object v5

    move-object/from16 v7, p1

    invoke-virtual {v7, v5}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v9

    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Lvx;->L(I)Lvw;

    move-result-object v8

    invoke-virtual {v7, v8}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v11

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lvx;->L(I)Lvw;

    move-result-object v10

    invoke-virtual {v7, v10}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v16

    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Lvx;->L(I)Lvw;

    move-result-object v12

    invoke-virtual {v7, v12}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v12

    invoke-virtual {v0, v4}, Lvx;->L(I)Lvw;

    move-result-object v4

    invoke-virtual {v7, v4}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v4

    invoke-virtual {v0, v5}, Lvx;->L(I)Lvw;

    move-result-object v5

    invoke-virtual {v7, v5}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v13

    invoke-virtual {v0, v8}, Lvx;->L(I)Lvw;

    move-result-object v5

    invoke-virtual {v7, v5}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v5

    invoke-virtual {v0, v10}, Lvx;->L(I)Lvw;

    move-result-object v0

    invoke-virtual {v7, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lvn;->a()Lvl;

    move-result-object v0

    double-to-float v1, v1

    float-to-double v1, v1

    move-object/from16 p2, v5

    int-to-double v5, v3

    .line 87
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 v19, v4

    mul-double v3, v17, v5

    double-to-float v15, v3

    .line 88
    move-object v10, v0

    invoke-virtual/range {v10 .. v15}, Lvl;->j(Lvs;Lvs;Lvs;Lvs;F)V

    .line 86
    invoke-virtual {v7, v0}, Lvn;->e(Lvl;)V

    invoke-virtual/range {p1 .. p1}, Lvn;->a()Lvl;

    move-result-object v0

    .line 89
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    double-to-float v13, v1

    .line 90
    move-object v8, v0

    move-object/from16 v10, v16

    move-object/from16 v11, v19

    move-object/from16 v12, p2

    invoke-virtual/range {v8 .. v13}, Lvl;->j(Lvs;Lvs;Lvs;Lvs;F)V

    .line 86
    invoke-virtual {v7, v0}, Lvn;->e(Lvl;)V

    :cond_58
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lvx;->b:Z

    iput-boolean v1, v0, Lvx;->m:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lvx;->ag:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 3

    iget-boolean v0, p0, Lvx;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lvx;->J:Lvw;

    iget-boolean v0, v0, Lvw;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvx;->L:Lvw;

    iget-boolean v0, v0, Lvw;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public f()Z
    .locals 3

    iget-boolean v0, p0, Lvx;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lvx;->K:Lvw;

    iget-boolean v0, v0, Lvw;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvx;->M:Lvw;

    iget-boolean v0, v0, Lvw;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final g()I
    .locals 2

    invoke-virtual {p0}, Lvx;->l()I

    move-result v0

    iget v1, p0, Lvx;->V:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Lvx;->ag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lvx;->V:I

    return v0
.end method

.method public final i()I
    .locals 2

    invoke-virtual {p0}, Lvx;->k()I

    move-result v0

    iget v1, p0, Lvx;->U:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final j()I
    .locals 2

    iget v0, p0, Lvx;->ag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lvx;->U:I

    return v0
.end method

.method public final k()I
    .locals 2

    iget-object v0, p0, Lvx;->T:Lvx;

    if-eqz v0, :cond_0

    check-cast v0, Lvy;

    iget v0, v0, Lvy;->ar:I

    iget v1, p0, Lvx;->Y:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lvx;->Y:I

    return v0
.end method

.method public final l()I
    .locals 2

    iget-object v0, p0, Lvx;->T:Lvx;

    if-eqz v0, :cond_0

    check-cast v0, Lvy;

    iget v0, v0, Lvy;->as:I

    iget v1, p0, Lvx;->Z:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lvx;->Z:I

    return v0
.end method

.method public final m(I)Lvx;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    iget-object p1, p0, Lvx;->L:Lvw;

    iget-object v0, p1, Lvw;->e:Lvw;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lvw;->e:Lvw;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lvw;->d:Lvx;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lvx;->M:Lvw;

    .line 2
    iget-object v0, p1, Lvw;->e:Lvw;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lvw;->e:Lvw;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lvw;->d:Lvx;

    return-object p1

    .line 1
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(I)Lvx;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    iget-object p1, p0, Lvx;->J:Lvw;

    iget-object v0, p1, Lvw;->e:Lvw;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lvw;->e:Lvw;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lvw;->d:Lvx;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lvx;->K:Lvw;

    .line 2
    iget-object v0, p1, Lvw;->e:Lvw;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lvw;->e:Lvw;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lvw;->d:Lvx;

    return-object p1

    .line 1
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final o(I)Lwt;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lvx;->h:Lwp;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lvx;->i:Lwr;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final p(Lvy;Lvn;Ljava/util/HashSet;IZ)V
    .locals 6

    .line 1
    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, p2, p0}, Lwc;->a(Lvy;Lvn;Lvx;)V

    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, Lvy;->W(I)Z

    move-result p5

    .line 4
    invoke-virtual {p0, p2, p5}, Lvx;->b(Lvn;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p4, p0, Lvx;->J:Lvw;

    iget-object p4, p4, Lvw;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_2

    .line 5
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lvw;

    .line 6
    iget-object v0, p5, Lvw;->d:Lvx;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lvx;->p(Lvy;Lvn;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lvx;->L:Lvw;

    iget-object p4, p4, Lvw;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_6

    .line 7
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lvw;

    .line 8
    iget-object v0, p5, Lvw;->d:Lvx;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lvx;->p(Lvy;Lvn;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p4, p0, Lvx;->K:Lvw;

    iget-object p4, p4, Lvw;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_4

    .line 9
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lvw;

    .line 10
    iget-object v0, p5, Lvw;->d:Lvx;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lvx;->p(Lvy;Lvn;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lvx;->M:Lvw;

    iget-object p4, p4, Lvw;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_5

    .line 11
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lvw;

    .line 12
    iget-object v0, p5, Lvw;->d:Lvx;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lvx;->p(Lvy;Lvn;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p4, p0, Lvx;->N:Lvw;

    iget-object p4, p4, Lvw;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_6

    .line 13
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lvw;

    .line 14
    iget-object v0, p5, Lvw;->d:Lvx;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lvx;->p(Lvy;Lvn;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 8
    :cond_6
    return-void

    .line 14
    :catchall_0
    move-exception p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final q(Lvn;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvx;->J:Lvw;

    invoke-virtual {p1, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    iget-object v0, p0, Lvx;->K:Lvw;

    .line 2
    invoke-virtual {p1, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    iget-object v0, p0, Lvx;->L:Lvw;

    .line 3
    invoke-virtual {p1, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    iget-object v0, p0, Lvx;->M:Lvw;

    .line 4
    invoke-virtual {p1, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    iget v0, p0, Lvx;->aa:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lvx;->N:Lvw;

    .line 5
    invoke-virtual {p1, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvx;->h:Lwp;

    if-nez v0, :cond_0

    new-instance v0, Lwp;

    invoke-direct {v0, p0}, Lwp;-><init>(Lvx;)V

    iput-object v0, p0, Lvx;->h:Lwp;

    :cond_0
    iget-object v0, p0, Lvx;->i:Lwr;

    if-nez v0, :cond_1

    new-instance v0, Lwr;

    .line 2
    invoke-direct {v0, p0}, Lwr;-><init>(Lvx;)V

    iput-object v0, p0, Lvx;->i:Lwr;

    :cond_1
    return-void
.end method

.method public s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvx;->J:Lvw;

    invoke-virtual {v0}, Lvw;->d()V

    iget-object v0, p0, Lvx;->K:Lvw;

    .line 2
    invoke-virtual {v0}, Lvw;->d()V

    iget-object v0, p0, Lvx;->L:Lvw;

    .line 3
    invoke-virtual {v0}, Lvw;->d()V

    iget-object v0, p0, Lvx;->M:Lvw;

    .line 4
    invoke-virtual {v0}, Lvw;->d()V

    iget-object v0, p0, Lvx;->N:Lvw;

    .line 5
    invoke-virtual {v0}, Lvw;->d()V

    iget-object v0, p0, Lvx;->O:Lvw;

    .line 6
    invoke-virtual {v0}, Lvw;->d()V

    iget-object v0, p0, Lvx;->P:Lvw;

    .line 7
    invoke-virtual {v0}, Lvw;->d()V

    iget-object v0, p0, Lvx;->Q:Lvw;

    .line 8
    invoke-virtual {v0}, Lvw;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvx;->T:Lvx;

    const/4 v1, 0x0

    iput v1, p0, Lvx;->E:F

    const/4 v2, 0x0

    iput v2, p0, Lvx;->U:I

    iput v2, p0, Lvx;->V:I

    iput v1, p0, Lvx;->W:F

    const/4 v1, -0x1

    iput v1, p0, Lvx;->X:I

    iput v2, p0, Lvx;->Y:I

    iput v2, p0, Lvx;->Z:I

    iput v2, p0, Lvx;->aa:I

    iput v2, p0, Lvx;->ab:I

    iput v2, p0, Lvx;->ac:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lvx;->ad:F

    iput v3, p0, Lvx;->ae:F

    iget-object v3, p0, Lvx;->ap:[I

    .line 9
    const/4 v4, 0x1

    aput v4, v3, v2

    .line 10
    aput v4, v3, v4

    iput-object v0, p0, Lvx;->af:Ljava/lang/Object;

    iput v2, p0, Lvx;->ag:I

    iput v2, p0, Lvx;->ai:I

    iput v2, p0, Lvx;->aj:I

    iget-object v0, p0, Lvx;->ak:[F

    .line 11
    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 12
    aput v3, v0, v4

    iput v1, p0, Lvx;->p:I

    iput v1, p0, Lvx;->q:I

    iget-object v0, p0, Lvx;->D:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v4

    iput v2, p0, Lvx;->s:I

    iput v2, p0, Lvx;->t:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lvx;->x:F

    iput v0, p0, Lvx;->A:F

    iput v3, p0, Lvx;->w:I

    iput v3, p0, Lvx;->z:I

    iput v2, p0, Lvx;->v:I

    iput v2, p0, Lvx;->y:I

    iput v1, p0, Lvx;->B:I

    iput v0, p0, Lvx;->C:F

    iget-object v0, p0, Lvx;->j:[Z

    aput-boolean v4, v0, v2

    aput-boolean v4, v0, v4

    iput-boolean v2, p0, Lvx;->G:Z

    iget-object v0, p0, Lvx;->c:[Z

    .line 13
    aput-boolean v2, v0, v2

    .line 14
    aput-boolean v2, v0, v4

    iput-boolean v4, p0, Lvx;->a:Z

    iget-object v0, p0, Lvx;->u:[I

    aput v2, v0, v2

    aput v2, v0, v4

    iput v1, p0, Lvx;->k:I

    iput v1, p0, Lvx;->l:I

    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvx;->b:Z

    iput-boolean v0, p0, Lvx;->m:Z

    iput-boolean v0, p0, Lvx;->n:Z

    iput-boolean v0, p0, Lvx;->o:Z

    iget-object v1, p0, Lvx;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lvx;->S:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw;

    iput-boolean v0, v3, Lvw;->c:Z

    iput v0, v3, Lvw;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lvx;->ah:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget v2, p0, Lvx;->Y:I

    iget v3, p0, Lvx;->Z:I

    iget v4, p0, Lvx;->U:I

    iget v5, p0, Lvx;->V:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x38

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lvm;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lvx;->J:Lvw;

    invoke-virtual {p1}, Lvw;->i()V

    iget-object p1, p0, Lvx;->K:Lvw;

    .line 2
    invoke-virtual {p1}, Lvw;->i()V

    iget-object p1, p0, Lvx;->L:Lvw;

    .line 3
    invoke-virtual {p1}, Lvw;->i()V

    iget-object p1, p0, Lvx;->M:Lvw;

    .line 4
    invoke-virtual {p1}, Lvw;->i()V

    iget-object p1, p0, Lvx;->N:Lvw;

    .line 5
    invoke-virtual {p1}, Lvw;->i()V

    iget-object p1, p0, Lvx;->Q:Lvw;

    .line 6
    invoke-virtual {p1}, Lvw;->i()V

    iget-object p1, p0, Lvx;->O:Lvw;

    .line 7
    invoke-virtual {p1}, Lvw;->i()V

    iget-object p1, p0, Lvx;->P:Lvw;

    .line 8
    invoke-virtual {p1}, Lvw;->i()V

    return-void
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lvx;->aa:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lvx;->F:Z

    return-void
.end method

.method public final w(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvx;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lvx;->J:Lvw;

    invoke-virtual {v0, p1}, Lvw;->e(I)V

    iget-object v0, p0, Lvx;->L:Lvw;

    .line 2
    invoke-virtual {v0, p2}, Lvw;->e(I)V

    iput p1, p0, Lvx;->Y:I

    sub-int/2addr p2, p1

    iput p2, p0, Lvx;->U:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lvx;->b:Z

    return-void
.end method

.method public final x(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvx;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lvx;->K:Lvw;

    invoke-virtual {v0, p1}, Lvw;->e(I)V

    iget-object v0, p0, Lvx;->M:Lvw;

    .line 2
    invoke-virtual {v0, p2}, Lvw;->e(I)V

    iput p1, p0, Lvx;->Z:I

    sub-int/2addr p2, p1

    iput p2, p0, Lvx;->V:I

    iget-boolean p2, p0, Lvx;->F:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lvx;->N:Lvw;

    iget v0, p0, Lvx;->aa:I

    add-int/2addr p1, v0

    .line 3
    invoke-virtual {p2, p1}, Lvw;->e(I)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lvx;->m:Z

    return-void
.end method

.method public final y(I)V
    .locals 1

    iput p1, p0, Lvx;->V:I

    iget v0, p0, Lvx;->ac:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lvx;->V:I

    :cond_0
    return-void
.end method

.method protected final z(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvx;->c:[Z

    aput-boolean p2, v0, p1

    return-void
.end method
