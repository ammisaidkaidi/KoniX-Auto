.class public final Lhr;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/view/View;Lgp;)Lgp;
    .locals 1

    .line 1
    iget-object v0, p1, Lgp;->a:Lgn;

    invoke-interface {v0}, Lgn;->d()Landroid/view/ContentInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lgp;

    new-instance v0, Lgm;

    .line 3
    invoke-direct {v0, p0}, Lgm;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {p1, v0}, Lgp;-><init>(Lgn;)V

    return-object p1
.end method

.method public static b(Landroid/view/View;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lvy;Lvn;Ljava/util/ArrayList;I)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    iget v1, v0, Lvy;->at:I

    .line 2
    iget-object v2, v0, Lvy;->aw:[Lvv;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Lvy;->au:I

    .line 4
    iget-object v2, v0, Lvy;->av:[Lvv;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x2

    .line 2
    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_74

    .line 5
    aget-object v1, v15, v9

    iget-boolean v2, v1, Lvv;->t:Z

    const/4 v3, 0x3

    const/16 v8, 0x8

    const/16 v17, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_18

    iget v2, v1, Lvv;->o:I

    add-int/2addr v2, v2

    iget-object v5, v1, Lvv;->a:Lvx;

    move-object v6, v5

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_13

    iget v13, v1, Lvv;->i:I

    add-int/2addr v13, v7

    iput v13, v1, Lvv;->i:I

    iget-object v13, v5, Lvx;->am:[Lvx;

    iget v4, v1, Lvv;->o:I

    .line 6
    aput-object v17, v13, v4

    iget-object v13, v5, Lvx;->al:[Lvx;

    .line 7
    aput-object v17, v13, v4

    iget v13, v5, Lvx;->ag:I

    if-eq v13, v8, :cond_d

    iget v13, v1, Lvv;->l:I

    add-int/2addr v13, v7

    iput v13, v1, Lvv;->l:I

    .line 8
    invoke-virtual {v5, v4}, Lvx;->M(I)I

    move-result v4

    if-eq v4, v3, :cond_2

    iget v4, v1, Lvv;->m:I

    iget v13, v1, Lvv;->o:I

    if-nez v13, :cond_1

    invoke-virtual {v5}, Lvx;->j()I

    move-result v13

    goto :goto_3

    .line 20
    :cond_1
    invoke-virtual {v5}, Lvx;->h()I

    move-result v13

    .line 8
    :goto_3
    add-int/2addr v4, v13

    iput v4, v1, Lvv;->m:I

    :cond_2
    iget v4, v1, Lvv;->m:I

    iget-object v13, v5, Lvx;->R:[Lvw;

    .line 9
    aget-object v13, v13, v2

    invoke-virtual {v13}, Lvw;->b()I

    move-result v13

    add-int/2addr v4, v13

    iput v4, v1, Lvv;->m:I

    add-int/lit8 v13, v2, 0x1

    iget-object v8, v5, Lvx;->R:[Lvw;

    .line 10
    aget-object v8, v8, v13

    invoke-virtual {v8}, Lvw;->b()I

    move-result v8

    add-int/2addr v4, v8

    iput v4, v1, Lvv;->m:I

    iget v4, v1, Lvv;->n:I

    iget-object v8, v5, Lvx;->R:[Lvw;

    .line 11
    aget-object v8, v8, v2

    invoke-virtual {v8}, Lvw;->b()I

    move-result v8

    add-int/2addr v4, v8

    iput v4, v1, Lvv;->n:I

    iget-object v8, v5, Lvx;->R:[Lvw;

    .line 12
    aget-object v8, v8, v13

    invoke-virtual {v8}, Lvw;->b()I

    move-result v8

    add-int/2addr v4, v8

    iput v4, v1, Lvv;->n:I

    iget-object v4, v1, Lvv;->b:Lvx;

    if-nez v4, :cond_3

    iput-object v5, v1, Lvv;->b:Lvx;

    :cond_3
    iput-object v5, v1, Lvv;->d:Lvx;

    iget-object v4, v5, Lvx;->ap:[I

    iget v8, v1, Lvv;->o:I

    .line 13
    aget v4, v4, v8

    if-ne v4, v3, :cond_d

    iget-object v4, v5, Lvx;->u:[I

    aget v4, v4, v8

    if-eqz v4, :cond_4

    if-eq v4, v3, :cond_4

    if-ne v4, v12, :cond_c

    const/4 v4, 0x2

    :cond_4
    iget v13, v1, Lvv;->j:I

    add-int/2addr v13, v7

    iput v13, v1, Lvv;->j:I

    iget-object v13, v5, Lvx;->ak:[F

    .line 14
    aget v8, v13, v8

    const/4 v13, 0x0

    cmpl-float v21, v8, v13

    if-lez v21, :cond_5

    iget v13, v1, Lvv;->k:F

    add-float/2addr v13, v8

    iput v13, v1, Lvv;->k:F

    :cond_5
    iget v13, v5, Lvx;->ag:I

    const/16 v12, 0x8

    if-eq v13, v12, :cond_9

    if-eqz v4, :cond_6

    if-ne v4, v3, :cond_9

    :cond_6
    const/4 v4, 0x0

    cmpg-float v8, v8, v4

    if-gez v8, :cond_7

    iput-boolean v7, v1, Lvv;->q:Z

    goto :goto_4

    .line 20
    :cond_7
    iput-boolean v7, v1, Lvv;->r:Z

    .line 14
    :goto_4
    iget-object v4, v1, Lvv;->h:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lvv;->h:Ljava/util/ArrayList;

    :cond_8
    iget-object v4, v1, Lvv;->h:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v4, v1, Lvv;->f:Lvx;

    if-nez v4, :cond_a

    iput-object v5, v1, Lvv;->f:Lvx;

    :cond_a
    iget-object v4, v1, Lvv;->g:Lvx;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lvx;->al:[Lvx;

    iget v8, v1, Lvv;->o:I

    .line 17
    aput-object v5, v4, v8

    :cond_b
    iput-object v5, v1, Lvv;->g:Lvx;

    :cond_c
    iget v4, v1, Lvv;->o:I

    :cond_d
    if-eq v6, v5, :cond_e

    iget-object v4, v6, Lvx;->am:[Lvx;

    iget v6, v1, Lvv;->o:I

    .line 18
    aput-object v5, v4, v6

    :cond_e
    iget-object v4, v5, Lvx;->R:[Lvw;

    add-int/lit8 v6, v2, 0x1

    .line 19
    aget-object v4, v4, v6

    iget-object v4, v4, Lvw;->e:Lvw;

    if-eqz v4, :cond_f

    iget-object v4, v4, Lvw;->d:Lvx;

    iget-object v6, v4, Lvx;->R:[Lvw;

    .line 20
    aget-object v6, v6, v2

    iget-object v6, v6, Lvw;->e:Lvw;

    if-eqz v6, :cond_f

    iget-object v6, v6, Lvw;->d:Lvx;

    if-eq v6, v5, :cond_10

    :cond_f
    move-object/from16 v4, v17

    :cond_10
    if-eqz v4, :cond_11

    const/4 v6, 0x0

    goto :goto_5

    :cond_11
    const/4 v6, 0x1

    :goto_5
    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move-object v4, v5

    :goto_6
    move/from16 v18, v6

    const/16 v8, 0x8

    const/4 v12, 0x2

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_2

    :cond_13
    iget-object v4, v1, Lvv;->b:Lvx;

    if-eqz v4, :cond_14

    iget v6, v1, Lvv;->m:I

    iget-object v4, v4, Lvx;->R:[Lvw;

    .line 21
    aget-object v4, v4, v2

    invoke-virtual {v4}, Lvw;->b()I

    move-result v4

    sub-int/2addr v6, v4

    iput v6, v1, Lvv;->m:I

    :cond_14
    iget-object v4, v1, Lvv;->d:Lvx;

    if-eqz v4, :cond_15

    iget v6, v1, Lvv;->m:I

    iget-object v4, v4, Lvx;->R:[Lvw;

    add-int/lit8 v2, v2, 0x1

    .line 22
    aget-object v2, v4, v2

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    sub-int/2addr v6, v2

    iput v6, v1, Lvv;->m:I

    :cond_15
    iput-object v5, v1, Lvv;->c:Lvx;

    iget v2, v1, Lvv;->o:I

    if-nez v2, :cond_16

    iget-boolean v2, v1, Lvv;->p:Z

    if-eqz v2, :cond_16

    iget-object v2, v1, Lvv;->c:Lvx;

    iput-object v2, v1, Lvv;->e:Lvx;

    goto :goto_7

    .line 34
    :cond_16
    iget-object v2, v1, Lvv;->a:Lvx;

    iput-object v2, v1, Lvv;->e:Lvx;

    .line 22
    :goto_7
    iget-boolean v2, v1, Lvv;->r:Z

    if-eqz v2, :cond_17

    iget-boolean v2, v1, Lvv;->q:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_8

    .line 34
    :cond_17
    const/4 v2, 0x0

    .line 22
    :goto_8
    iput-boolean v2, v1, Lvv;->s:Z

    :cond_18
    iput-boolean v7, v1, Lvv;->t:Z

    if-eqz v11, :cond_1a

    .line 23
    iget-object v2, v1, Lvv;->a:Lvx;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    move/from16 v26, v9

    move/from16 v29, v14

    move-object/from16 v30, v15

    const/16 v18, 0x0

    goto/16 :goto_49

    .line 24
    :cond_1a
    :goto_9
    iget-object v12, v1, Lvv;->a:Lvx;

    .line 25
    iget-object v13, v1, Lvv;->c:Lvx;

    .line 26
    iget-object v8, v1, Lvv;->b:Lvx;

    .line 27
    iget-object v6, v1, Lvv;->d:Lvx;

    .line 28
    iget-object v2, v1, Lvv;->e:Lvx;

    .line 29
    iget v4, v1, Lvv;->k:F

    .line 30
    iget-object v5, v1, Lvv;->f:Lvx;

    .line 31
    iget-object v5, v1, Lvv;->g:Lvx;

    .line 32
    iget-object v5, v0, Lvy;->ap:[I

    aget v5, v5, p3

    if-nez p3, :cond_1e

    .line 33
    iget v3, v2, Lvx;->ai:I

    if-nez v3, :cond_1b

    const/16 v22, 0x1

    goto :goto_a

    .line 53
    :cond_1b
    const/16 v22, 0x0

    .line 33
    :goto_a
    if-ne v3, v7, :cond_1c

    const/16 v23, 0x1

    goto :goto_b

    .line 53
    :cond_1c
    const/16 v23, 0x0

    .line 33
    :goto_b
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1d

    const/4 v3, 0x1

    goto :goto_c

    .line 53
    :cond_1d
    const/4 v3, 0x0

    .line 33
    :goto_c
    move-object v7, v12

    move/from16 v25, v23

    move/from16 v23, v22

    move/from16 v22, v4

    const/4 v4, 0x0

    goto :goto_10

    .line 34
    :cond_1e
    iget v3, v2, Lvx;->aj:I

    if-nez v3, :cond_1f

    const/4 v7, 0x1

    goto :goto_d

    :cond_1f
    const/4 v7, 0x0

    :goto_d
    move/from16 v22, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    const/4 v4, 0x1

    goto :goto_e

    :cond_20
    const/4 v4, 0x0

    :goto_e
    move/from16 v23, v4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    const/4 v3, 0x1

    goto :goto_f

    :cond_21
    const/4 v3, 0x0

    :goto_f
    move/from16 v25, v23

    const/4 v4, 0x0

    move/from16 v23, v7

    move-object v7, v12

    .line 33
    :goto_10
    move/from16 v26, v9

    if-nez v4, :cond_2f

    iget-object v4, v7, Lvx;->R:[Lvw;

    .line 35
    aget-object v4, v4, v16

    const/4 v9, 0x1

    if-eq v9, v3, :cond_22

    const/16 v28, 0x4

    goto :goto_11

    .line 41
    :cond_22
    const/16 v28, 0x1

    .line 36
    :goto_11
    invoke-virtual {v4}, Lvw;->b()I

    move-result v9

    iget-object v11, v7, Lvx;->ap:[I

    .line 37
    aget v11, v11, p3

    move/from16 v29, v14

    const/4 v14, 0x3

    if-ne v11, v14, :cond_23

    iget-object v11, v7, Lvx;->u:[I

    aget v11, v11, p3

    if-nez v11, :cond_23

    const/4 v11, 0x1

    goto :goto_12

    .line 41
    :cond_23
    const/4 v11, 0x0

    .line 38
    :goto_12
    iget-object v14, v4, Lvw;->e:Lvw;

    if-eqz v14, :cond_24

    if-eq v7, v12, :cond_24

    invoke-virtual {v14}, Lvw;->b()I

    move-result v14

    add-int/2addr v9, v14

    :cond_24
    if-eqz v3, :cond_25

    if-eq v7, v12, :cond_25

    if-eq v7, v8, :cond_25

    const/16 v28, 0x8

    .line 39
    :cond_25
    iget-object v14, v4, Lvw;->e:Lvw;

    if-eqz v14, :cond_28

    if-ne v7, v8, :cond_26

    .line 40
    move-object/from16 v30, v15

    iget-object v15, v4, Lvw;->h:Lvs;

    iget-object v14, v14, Lvw;->h:Lvs;

    move-object/from16 v31, v2

    const/4 v2, 0x6

    invoke-virtual {v10, v15, v14, v9, v2}, Lvn;->g(Lvs;Lvs;II)V

    goto :goto_13

    .line 41
    :cond_26
    move-object/from16 v31, v2

    move-object/from16 v30, v15

    iget-object v2, v4, Lvw;->h:Lvs;

    iget-object v14, v14, Lvw;->h:Lvs;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v14, v9, v15}, Lvn;->g(Lvs;Lvs;II)V

    .line 40
    :goto_13
    if-eqz v11, :cond_27

    if-nez v3, :cond_27

    const/4 v2, 0x5

    goto :goto_14

    .line 42
    :cond_27
    move/from16 v2, v28

    :goto_14
    iget-object v11, v4, Lvw;->h:Lvs;

    iget-object v4, v4, Lvw;->e:Lvw;

    iget-object v4, v4, Lvw;->h:Lvs;

    invoke-virtual {v10, v11, v4, v9, v2}, Lvn;->m(Lvs;Lvs;II)V

    goto :goto_15

    .line 39
    :cond_28
    move-object/from16 v31, v2

    move-object/from16 v30, v15

    .line 42
    :goto_15
    const/4 v2, 0x2

    if-ne v5, v2, :cond_2a

    iget v2, v7, Lvx;->ag:I

    const/16 v4, 0x8

    if-eq v2, v4, :cond_29

    iget-object v2, v7, Lvx;->ap:[I

    .line 43
    aget v2, v2, p3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_29

    iget-object v2, v7, Lvx;->R:[Lvw;

    add-int/lit8 v4, v16, 0x1

    .line 44
    aget-object v4, v2, v4

    iget-object v4, v4, Lvw;->h:Lvs;

    aget-object v2, v2, v16

    iget-object v2, v2, Lvw;->h:Lvs;

    const/4 v9, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v2, v11, v9}, Lvn;->g(Lvs;Lvs;II)V

    :cond_29
    iget-object v2, v7, Lvx;->R:[Lvw;

    .line 45
    aget-object v2, v2, v16

    iget-object v2, v2, Lvw;->h:Lvs;

    iget-object v4, v0, Lvy;->R:[Lvw;

    aget-object v4, v4, v16

    iget-object v4, v4, Lvw;->h:Lvs;

    const/16 v9, 0x8

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v4, v11, v9}, Lvn;->g(Lvs;Lvs;II)V

    :cond_2a
    iget-object v2, v7, Lvx;->R:[Lvw;

    add-int/lit8 v4, v16, 0x1

    .line 46
    aget-object v2, v2, v4

    iget-object v2, v2, Lvw;->e:Lvw;

    if-eqz v2, :cond_2b

    iget-object v2, v2, Lvw;->d:Lvx;

    iget-object v4, v2, Lvx;->R:[Lvw;

    .line 47
    aget-object v4, v4, v16

    iget-object v4, v4, Lvw;->e:Lvw;

    if-eqz v4, :cond_2b

    iget-object v4, v4, Lvw;->d:Lvx;

    if-eq v4, v7, :cond_2c

    :cond_2b
    move-object/from16 v2, v17

    :cond_2c
    if-eqz v2, :cond_2d

    const/4 v4, 0x0

    goto :goto_16

    :cond_2d
    const/4 v4, 0x1

    :goto_16
    move-object/from16 v11, p2

    if-eqz v2, :cond_2e

    move-object v7, v2

    :cond_2e
    move/from16 v9, v26

    move/from16 v14, v29

    move-object/from16 v15, v30

    move-object/from16 v2, v31

    goto/16 :goto_10

    .line 41
    :cond_2f
    move-object/from16 v31, v2

    move/from16 v29, v14

    move-object/from16 v30, v15

    if-eqz v6, :cond_34

    add-int/lit8 v2, v16, 0x1

    .line 48
    iget-object v4, v13, Lvx;->R:[Lvw;

    aget-object v4, v4, v2

    iget-object v4, v4, Lvw;->e:Lvw;

    if-eqz v4, :cond_33

    iget-object v4, v6, Lvx;->R:[Lvw;

    .line 49
    aget-object v4, v4, v2

    iget-object v7, v6, Lvx;->ap:[I

    .line 50
    aget v7, v7, p3

    const/4 v9, 0x3

    if-ne v7, v9, :cond_31

    iget-object v7, v6, Lvx;->u:[I

    aget v7, v7, p3

    if-nez v7, :cond_31

    if-nez v3, :cond_31

    .line 51
    iget-object v7, v4, Lvw;->e:Lvw;

    iget-object v9, v7, Lvw;->d:Lvx;

    if-ne v9, v0, :cond_30

    .line 54
    iget-object v9, v4, Lvw;->h:Lvs;

    iget-object v7, v7, Lvw;->h:Lvs;

    invoke-virtual {v4}, Lvw;->b()I

    move-result v11

    neg-int v11, v11

    const/4 v14, 0x5

    invoke-virtual {v10, v9, v7, v11, v14}, Lvn;->m(Lvs;Lvs;II)V

    goto :goto_18

    .line 51
    :cond_30
    const/4 v14, 0x5

    goto :goto_17

    .line 50
    :cond_31
    const/4 v14, 0x5

    .line 107
    :goto_17
    if-eqz v3, :cond_32

    .line 52
    iget-object v7, v4, Lvw;->e:Lvw;

    iget-object v9, v7, Lvw;->d:Lvx;

    if-ne v9, v0, :cond_32

    .line 53
    iget-object v9, v4, Lvw;->h:Lvs;

    iget-object v7, v7, Lvw;->h:Lvs;

    invoke-virtual {v4}, Lvw;->b()I

    move-result v11

    neg-int v11, v11

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v7, v11, v15}, Lvn;->m(Lvs;Lvs;II)V

    .line 55
    :cond_32
    :goto_18
    iget-object v7, v4, Lvw;->h:Lvs;

    iget-object v9, v13, Lvx;->R:[Lvw;

    aget-object v2, v9, v2

    iget-object v2, v2, Lvw;->e:Lvw;

    iget-object v2, v2, Lvw;->h:Lvs;

    .line 56
    invoke-virtual {v4}, Lvw;->b()I

    move-result v4

    neg-int v4, v4

    .line 55
    const/4 v9, 0x6

    invoke-virtual {v10, v7, v2, v4, v9}, Lvn;->h(Lvs;Lvs;II)V

    goto :goto_19

    .line 48
    :cond_33
    const/4 v14, 0x5

    goto :goto_19

    .line 41
    :cond_34
    const/4 v14, 0x5

    .line 55
    :goto_19
    const/4 v11, 0x2

    if-ne v5, v11, :cond_35

    .line 57
    iget-object v2, v0, Lvy;->R:[Lvw;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lvw;->h:Lvs;

    iget-object v5, v13, Lvx;->R:[Lvw;

    aget-object v4, v5, v4

    iget-object v5, v4, Lvw;->h:Lvs;

    .line 58
    invoke-virtual {v4}, Lvw;->b()I

    move-result v4

    .line 57
    const/16 v7, 0x8

    invoke-virtual {v10, v2, v5, v4, v7}, Lvn;->g(Lvs;Lvs;II)V

    .line 59
    :cond_35
    iget-object v2, v1, Lvv;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_41

    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_40

    .line 61
    iget-boolean v5, v1, Lvv;->q:Z

    if-eqz v5, :cond_36

    iget-boolean v5, v1, Lvv;->s:Z

    if-nez v5, :cond_36

    .line 62
    iget v5, v1, Lvv;->j:I

    int-to-float v5, v5

    goto :goto_1a

    .line 83
    :cond_36
    nop

    .line 62
    move/from16 v5, v22

    :goto_1a
    move-object/from16 v15, v17

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1b
    if-ge v7, v4, :cond_3f

    .line 63
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v11, v21

    check-cast v11, Lvx;

    .line 64
    iget-object v14, v11, Lvx;->ak:[F

    aget v14, v14, p3

    const/16 v19, 0x0

    cmpg-float v21, v14, v19

    if-gez v21, :cond_38

    .line 65
    iget-boolean v14, v1, Lvv;->s:Z

    if-eqz v14, :cond_37

    .line 85
    iget-object v0, v11, Lvx;->R:[Lvw;

    add-int/lit8 v11, v16, 0x1

    aget-object v11, v0, v11

    iget-object v11, v11, Lvw;->h:Lvs;

    aget-object v0, v0, v16

    iget-object v0, v0, Lvw;->h:Lvs;

    move-object/from16 v21, v2

    const/4 v2, 0x0

    const/4 v14, 0x4

    invoke-virtual {v10, v11, v0, v2, v14}, Lvn;->m(Lvs;Lvs;II)V

    const/4 v11, 0x0

    const/16 v22, 0x4

    goto :goto_1d

    :cond_37
    move-object/from16 v21, v2

    const/4 v14, 0x4

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v22, 0x4

    goto :goto_1c

    .line 64
    :cond_38
    move-object/from16 v21, v2

    const/16 v22, 0x4

    .line 85
    :goto_1c
    const/4 v2, 0x0

    cmpl-float v27, v14, v2

    if-nez v27, :cond_39

    .line 66
    iget-object v0, v11, Lvx;->R:[Lvw;

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v0, v2

    iget-object v2, v2, Lvw;->h:Lvs;

    aget-object v0, v0, v16

    iget-object v0, v0, Lvw;->h:Lvs;

    const/4 v11, 0x0

    const/16 v14, 0x8

    invoke-virtual {v10, v2, v0, v11, v14}, Lvn;->m(Lvs;Lvs;II)V

    .line 85
    :goto_1d
    move-object/from16 v33, v1

    move/from16 v32, v4

    move-object/from16 v19, v13

    const/16 v18, 0x0

    goto/16 :goto_21

    .line 66
    :cond_39
    const/16 v18, 0x0

    if-eqz v15, :cond_3e

    iget-object v2, v15, Lvx;->R:[Lvw;

    .line 67
    aget-object v15, v2, v16

    iget-object v15, v15, Lvw;->h:Lvs;

    add-int/lit8 v27, v16, 0x1

    .line 68
    aget-object v2, v2, v27

    iget-object v2, v2, Lvw;->h:Lvs;

    .line 69
    iget-object v0, v11, Lvx;->R:[Lvw;

    move/from16 v32, v4

    aget-object v4, v0, v16

    iget-object v4, v4, Lvw;->h:Lvs;

    .line 70
    aget-object v0, v0, v27

    iget-object v0, v0, Lvw;->h:Lvs;

    .line 71
    move-object/from16 v27, v11

    invoke-virtual/range {p1 .. p1}, Lvn;->a()Lvl;

    move-result-object v11

    move-object/from16 v33, v1

    const/4 v1, 0x0

    iput v1, v11, Lvl;->b:F

    move-object/from16 v19, v13

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v34, v5, v1

    if-eqz v34, :cond_3d

    cmpl-float v34, v9, v14

    if-nez v34, :cond_3a

    goto :goto_1e

    .line 84
    :cond_3a
    cmpl-float v34, v9, v1

    if-nez v34, :cond_3b

    iget-object v0, v11, Lvl;->e:Lvk;

    .line 76
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v15, v4}, Lvk;->g(Lvs;F)V

    iget-object v0, v11, Lvl;->e:Lvk;

    .line 77
    invoke-virtual {v0, v2, v13}, Lvk;->g(Lvs;F)V

    goto :goto_1f

    :cond_3b
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v28, v14, v1

    if-nez v28, :cond_3c

    iget-object v2, v11, Lvl;->e:Lvk;

    .line 78
    invoke-virtual {v2, v4, v13}, Lvk;->g(Lvs;F)V

    iget-object v2, v11, Lvl;->e:Lvk;

    .line 79
    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v2, v0, v4}, Lvk;->g(Lvs;F)V

    goto :goto_1f

    :cond_3c
    const/high16 v1, -0x40800000    # -1.0f

    div-float/2addr v9, v5

    div-float v28, v14, v5

    div-float v9, v9, v28

    iget-object v1, v11, Lvl;->e:Lvk;

    .line 80
    invoke-virtual {v1, v15, v13}, Lvk;->g(Lvs;F)V

    iget-object v1, v11, Lvl;->e:Lvk;

    .line 81
    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v13}, Lvk;->g(Lvs;F)V

    iget-object v1, v11, Lvl;->e:Lvk;

    .line 82
    invoke-virtual {v1, v0, v9}, Lvk;->g(Lvs;F)V

    iget-object v0, v11, Lvl;->e:Lvk;

    neg-float v1, v9

    .line 83
    invoke-virtual {v0, v4, v1}, Lvk;->g(Lvs;F)V

    goto :goto_1f

    .line 71
    :cond_3d
    :goto_1e
    iget-object v1, v11, Lvl;->e:Lvk;

    .line 72
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v15, v9}, Lvk;->g(Lvs;F)V

    iget-object v1, v11, Lvl;->e:Lvk;

    .line 73
    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v13}, Lvk;->g(Lvs;F)V

    iget-object v1, v11, Lvl;->e:Lvk;

    .line 74
    invoke-virtual {v1, v0, v9}, Lvk;->g(Lvs;F)V

    iget-object v0, v11, Lvl;->e:Lvk;

    .line 75
    invoke-virtual {v0, v4, v13}, Lvk;->g(Lvs;F)V

    .line 84
    :goto_1f
    invoke-virtual {v10, v11}, Lvn;->e(Lvl;)V

    goto :goto_20

    .line 83
    :cond_3e
    move-object/from16 v33, v1

    move/from16 v32, v4

    move-object/from16 v27, v11

    move-object/from16 v19, v13

    .line 85
    :goto_20
    move v9, v14

    move-object/from16 v15, v27

    :goto_21
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x2

    const/4 v14, 0x5

    move-object/from16 v0, p0

    move-object/from16 v13, v19

    move-object/from16 v2, v21

    move/from16 v4, v32

    move-object/from16 v1, v33

    goto/16 :goto_1b

    .line 62
    :cond_3f
    move-object/from16 v33, v1

    move-object/from16 v19, v13

    const/16 v18, 0x0

    const/16 v22, 0x4

    goto :goto_22

    .line 60
    :cond_40
    move-object/from16 v33, v1

    move-object/from16 v19, v13

    const/16 v18, 0x0

    const/16 v22, 0x4

    goto :goto_22

    .line 59
    :cond_41
    move-object/from16 v33, v1

    move-object/from16 v19, v13

    const/16 v18, 0x0

    const/16 v22, 0x4

    .line 83
    :goto_22
    if-eqz v8, :cond_49

    if-eq v8, v6, :cond_43

    if-eqz v3, :cond_42

    goto :goto_23

    :cond_42
    move-object v14, v6

    move-object v0, v8

    move-object/from16 v11, v19

    move/from16 v15, v26

    goto/16 :goto_28

    :cond_43
    :goto_23
    iget-object v0, v12, Lvx;->R:[Lvw;

    .line 128
    aget-object v0, v0, v16

    add-int/lit8 v1, v16, 0x1

    .line 129
    move-object/from16 v11, v19

    iget-object v2, v11, Lvx;->R:[Lvw;

    aget-object v2, v2, v1

    .line 130
    iget-object v0, v0, Lvw;->e:Lvw;

    if-eqz v0, :cond_44

    iget-object v0, v0, Lvw;->h:Lvs;

    move-object v3, v0

    goto :goto_24

    .line 135
    :cond_44
    move-object/from16 v3, v17

    .line 131
    :goto_24
    iget-object v0, v2, Lvw;->e:Lvw;

    if-eqz v0, :cond_45

    iget-object v0, v0, Lvw;->h:Lvs;

    goto :goto_25

    .line 135
    :cond_45
    move-object/from16 v0, v17

    .line 131
    :goto_25
    iget-object v4, v8, Lvx;->R:[Lvw;

    .line 132
    aget-object v4, v4, v16

    if-eqz v6, :cond_46

    iget-object v2, v6, Lvx;->R:[Lvw;

    .line 133
    aget-object v2, v2, v1

    goto :goto_26

    .line 135
    :cond_46
    nop

    .line 133
    :goto_26
    if-eqz v3, :cond_48

    if-eqz v0, :cond_48

    if-nez p3, :cond_47

    .line 134
    move-object/from16 v1, v31

    iget v1, v1, Lvx;->ad:F

    move v5, v1

    goto :goto_27

    .line 135
    :cond_47
    move-object/from16 v1, v31

    iget v1, v1, Lvx;->ae:F

    move v5, v1

    .line 136
    :goto_27
    invoke-virtual {v4}, Lvw;->b()I

    move-result v7

    .line 137
    invoke-virtual {v2}, Lvw;->b()I

    move-result v9

    .line 138
    iget-object v4, v4, Lvw;->h:Lvs;

    iget-object v12, v2, Lvw;->h:Lvs;

    const/4 v13, 0x7

    move-object/from16 v1, p1

    move-object v2, v4

    move v4, v7

    move-object v14, v6

    move-object v6, v0

    move-object v7, v12

    move-object v0, v8

    move v8, v9

    move/from16 v15, v26

    move v9, v13

    invoke-virtual/range {v1 .. v9}, Lvn;->d(Lvs;Lvs;IFLvs;Lvs;II)V

    goto/16 :goto_43

    .line 133
    :cond_48
    move-object v14, v6

    move-object v0, v8

    move/from16 v15, v26

    goto/16 :goto_43

    .line 83
    :cond_49
    move-object v14, v6

    move-object v0, v8

    move-object/from16 v11, v19

    move/from16 v15, v26

    .line 135
    :goto_28
    if-eqz v23, :cond_5c

    if-eqz v0, :cond_5c

    .line 110
    move-object/from16 v1, v33

    iget v2, v1, Lvv;->j:I

    if-lez v2, :cond_4a

    iget v1, v1, Lvv;->i:I

    if-ne v1, v2, :cond_4a

    const/4 v13, 0x1

    goto :goto_29

    .line 117
    :cond_4a
    const/4 v13, 0x0

    .line 110
    :goto_29
    move-object v8, v0

    move-object v9, v8

    :goto_2a
    if-eqz v9, :cond_5b

    iget-object v1, v9, Lvx;->am:[Lvx;

    .line 111
    aget-object v1, v1, p3

    move-object v7, v1

    :goto_2b
    if-eqz v7, :cond_4b

    iget v1, v7, Lvx;->ag:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_4c

    iget-object v1, v7, Lvx;->am:[Lvx;

    .line 112
    aget-object v7, v1, p3

    goto :goto_2b

    .line 111
    :cond_4b
    const/16 v6, 0x8

    .line 112
    :cond_4c
    if-nez v7, :cond_4e

    if-ne v9, v14, :cond_4d

    goto :goto_2c

    :cond_4d
    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move/from16 v20, v13

    move/from16 v26, v15

    const/4 v15, 0x5

    move-object v13, v9

    goto/16 :goto_34

    :cond_4e
    :goto_2c
    iget-object v1, v9, Lvx;->R:[Lvw;

    .line 113
    aget-object v1, v1, v16

    .line 114
    iget-object v2, v1, Lvw;->h:Lvs;

    .line 115
    iget-object v3, v1, Lvw;->e:Lvw;

    if-eqz v3, :cond_4f

    iget-object v3, v3, Lvw;->h:Lvs;

    goto :goto_2d

    .line 117
    :cond_4f
    move-object/from16 v3, v17

    .line 115
    :goto_2d
    if-eq v8, v9, :cond_50

    iget-object v3, v8, Lvx;->R:[Lvw;

    add-int/lit8 v4, v16, 0x1

    .line 116
    aget-object v3, v3, v4

    iget-object v3, v3, Lvw;->h:Lvs;

    goto :goto_2e

    .line 122
    :cond_50
    if-ne v9, v0, :cond_52

    iget-object v3, v12, Lvx;->R:[Lvw;

    .line 117
    aget-object v3, v3, v16

    iget-object v3, v3, Lvw;->e:Lvw;

    if-eqz v3, :cond_51

    iget-object v3, v3, Lvw;->h:Lvs;

    goto :goto_2e

    :cond_51
    move-object/from16 v3, v17

    .line 118
    :cond_52
    :goto_2e
    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    add-int/lit8 v4, v16, 0x1

    iget-object v5, v9, Lvx;->R:[Lvw;

    .line 119
    aget-object v5, v5, v4

    invoke-virtual {v5}, Lvw;->b()I

    move-result v5

    if-eqz v7, :cond_53

    iget-object v6, v7, Lvx;->R:[Lvw;

    .line 120
    aget-object v6, v6, v16

    .line 121
    move-object/from16 v19, v7

    iget-object v7, v6, Lvw;->h:Lvs;

    goto :goto_2f

    .line 122
    :cond_53
    move-object/from16 v19, v7

    iget-object v6, v11, Lvx;->R:[Lvw;

    aget-object v6, v6, v4

    iget-object v6, v6, Lvw;->e:Lvw;

    if-eqz v6, :cond_54

    iget-object v7, v6, Lvw;->h:Lvs;

    goto :goto_2f

    :cond_54
    move-object/from16 v7, v17

    .line 121
    :goto_2f
    move/from16 v26, v15

    iget-object v15, v9, Lvx;->R:[Lvw;

    .line 123
    aget-object v15, v15, v4

    iget-object v15, v15, Lvw;->h:Lvs;

    if-eqz v6, :cond_55

    invoke-virtual {v6}, Lvw;->b()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_30

    .line 127
    :cond_55
    nop

    .line 123
    :goto_30
    iget-object v6, v8, Lvx;->R:[Lvw;

    .line 124
    aget-object v6, v6, v4

    invoke-virtual {v6}, Lvw;->b()I

    move-result v6

    add-int/2addr v1, v6

    if-eqz v2, :cond_59

    if-eqz v3, :cond_59

    if-eqz v7, :cond_59

    if-eqz v15, :cond_59

    if-ne v9, v0, :cond_56

    iget-object v1, v0, Lvx;->R:[Lvw;

    .line 125
    aget-object v1, v1, v16

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    move v6, v1

    goto :goto_31

    .line 124
    :cond_56
    move v6, v1

    .line 125
    :goto_31
    if-ne v9, v14, :cond_57

    .line 126
    iget-object v1, v14, Lvx;->R:[Lvw;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    move/from16 v21, v1

    goto :goto_32

    .line 125
    :cond_57
    move/from16 v21, v5

    .line 126
    :goto_32
    const/4 v5, 0x1

    if-eq v5, v13, :cond_58

    const/16 v22, 0x5

    goto :goto_33

    .line 127
    :cond_58
    const/16 v22, 0x8

    .line 126
    :goto_33
    const/high16 v24, 0x3f000000    # 0.5f

    .line 127
    move-object/from16 v1, p1

    move v4, v6

    const/16 v27, 0x1

    move/from16 v5, v24

    const/16 v20, 0x8

    move-object v6, v7

    move-object v7, v15

    move-object v15, v8

    move/from16 v8, v21

    move/from16 v20, v13

    move-object/from16 v21, v15

    const/4 v15, 0x5

    move-object v13, v9

    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, Lvn;->d(Lvs;Lvs;IFLvs;Lvs;II)V

    goto :goto_34

    .line 124
    :cond_59
    move-object/from16 v21, v8

    move/from16 v20, v13

    const/4 v15, 0x5

    move-object v13, v9

    .line 127
    :goto_34
    iget v1, v13, Lvx;->ag:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_5a

    move-object v8, v13

    goto :goto_35

    :cond_5a
    move-object/from16 v8, v21

    :goto_35
    move-object/from16 v9, v19

    move/from16 v13, v20

    move/from16 v15, v26

    goto/16 :goto_2a

    .line 110
    :cond_5b
    move/from16 v26, v15

    goto/16 :goto_43

    .line 135
    :cond_5c
    move/from16 v26, v15

    move-object/from16 v1, v33

    const/16 v9, 0x8

    const/4 v15, 0x5

    .line 117
    if-eqz v25, :cond_6b

    if-eqz v0, :cond_6b

    .line 86
    iget v2, v1, Lvv;->j:I

    if-lez v2, :cond_5d

    iget v1, v1, Lvv;->i:I

    if-ne v1, v2, :cond_5d

    const/4 v13, 0x1

    goto :goto_36

    .line 107
    :cond_5d
    const/4 v13, 0x0

    .line 86
    :goto_36
    move-object v7, v0

    move-object v8, v7

    :goto_37
    if-eqz v8, :cond_68

    iget-object v1, v8, Lvx;->am:[Lvx;

    .line 87
    aget-object v1, v1, p3

    :goto_38
    if-eqz v1, :cond_5e

    iget v2, v1, Lvx;->ag:I

    if-ne v2, v9, :cond_5e

    iget-object v1, v1, Lvx;->am:[Lvx;

    .line 88
    aget-object v1, v1, p3

    goto :goto_38

    :cond_5e
    if-eq v8, v0, :cond_66

    if-eq v8, v14, :cond_66

    if-eqz v1, :cond_66

    if-ne v1, v14, :cond_5f

    move-object/from16 v6, v17

    goto :goto_39

    :cond_5f
    move-object v6, v1

    :goto_39
    iget-object v1, v8, Lvx;->R:[Lvw;

    .line 89
    aget-object v1, v1, v16

    .line 90
    iget-object v2, v1, Lvw;->h:Lvs;

    .line 91
    iget-object v3, v1, Lvw;->e:Lvw;

    add-int/lit8 v3, v16, 0x1

    iget-object v4, v7, Lvx;->R:[Lvw;

    .line 92
    aget-object v4, v4, v3

    iget-object v4, v4, Lvw;->h:Lvs;

    .line 93
    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    iget-object v5, v8, Lvx;->R:[Lvw;

    .line 94
    aget-object v5, v5, v3

    invoke-virtual {v5}, Lvw;->b()I

    move-result v5

    if-eqz v6, :cond_61

    iget-object v9, v6, Lvx;->R:[Lvw;

    .line 95
    aget-object v9, v9, v16

    .line 96
    iget-object v15, v9, Lvw;->h:Lvs;

    .line 97
    move-object/from16 v19, v6

    iget-object v6, v9, Lvw;->e:Lvw;

    if-eqz v6, :cond_60

    iget-object v6, v6, Lvw;->h:Lvs;

    goto :goto_3a

    .line 101
    :cond_60
    move-object/from16 v6, v17

    .line 97
    :goto_3a
    move-object/from16 v35, v15

    move-object v15, v6

    move-object/from16 v6, v35

    goto :goto_3c

    .line 98
    :cond_61
    move-object/from16 v19, v6

    iget-object v6, v14, Lvx;->R:[Lvw;

    aget-object v9, v6, v16

    if-eqz v9, :cond_62

    iget-object v6, v9, Lvw;->h:Lvs;

    goto :goto_3b

    .line 99
    :cond_62
    move-object/from16 v6, v17

    .line 98
    :goto_3b
    iget-object v15, v8, Lvx;->R:[Lvw;

    .line 99
    aget-object v15, v15, v3

    iget-object v15, v15, Lvw;->h:Lvs;

    .line 97
    :goto_3c
    if-eqz v9, :cond_63

    invoke-virtual {v9}, Lvw;->b()I

    move-result v9

    add-int/2addr v5, v9

    move v9, v5

    goto :goto_3d

    .line 101
    :cond_63
    move v9, v5

    .line 97
    :goto_3d
    iget-object v5, v7, Lvx;->R:[Lvw;

    .line 100
    aget-object v3, v5, v3

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    add-int v5, v1, v3

    const/4 v3, 0x1

    if-eq v3, v13, :cond_64

    const/16 v20, 0x4

    goto :goto_3e

    .line 101
    :cond_64
    const/16 v20, 0x8

    .line 100
    :goto_3e
    if-eqz v2, :cond_65

    if-eqz v4, :cond_65

    if-eqz v6, :cond_65

    if-eqz v15, :cond_65

    const/high16 v21, 0x3f000000    # 0.5f

    .line 101
    move-object/from16 v1, p1

    const/16 v24, 0x1

    move-object v3, v4

    move v4, v5

    move/from16 v5, v21

    move-object/from16 v21, v7

    move-object v7, v15

    move-object v15, v8

    move v8, v9

    move/from16 v27, v13

    const/16 v13, 0x8

    move/from16 v9, v20

    invoke-virtual/range {v1 .. v9}, Lvn;->d(Lvs;Lvs;IFLvs;Lvs;II)V

    goto :goto_3f

    .line 100
    :cond_65
    move-object/from16 v21, v7

    move-object v15, v8

    move/from16 v27, v13

    const/16 v13, 0x8

    const/16 v24, 0x1

    .line 101
    :goto_3f
    move-object/from16 v8, v19

    goto :goto_40

    .line 88
    :cond_66
    move-object/from16 v21, v7

    move-object v15, v8

    move/from16 v27, v13

    const/16 v13, 0x8

    const/16 v24, 0x1

    .line 101
    move-object v8, v1

    :goto_40
    iget v1, v15, Lvx;->ag:I

    if-eq v1, v13, :cond_67

    move-object v7, v15

    goto :goto_41

    :cond_67
    move-object/from16 v7, v21

    :goto_41
    move/from16 v13, v27

    const/16 v9, 0x8

    const/4 v15, 0x5

    goto/16 :goto_37

    .line 99
    :cond_68
    iget-object v1, v0, Lvx;->R:[Lvw;

    .line 102
    aget-object v1, v1, v16

    iget-object v2, v12, Lvx;->R:[Lvw;

    .line 103
    aget-object v2, v2, v16

    iget-object v2, v2, Lvw;->e:Lvw;

    add-int/lit8 v3, v16, 0x1

    .line 104
    iget-object v4, v14, Lvx;->R:[Lvw;

    aget-object v12, v4, v3

    .line 105
    iget-object v4, v11, Lvx;->R:[Lvw;

    aget-object v3, v4, v3

    iget-object v13, v3, Lvw;->e:Lvw;

    if-eqz v2, :cond_6a

    if-eq v0, v14, :cond_69

    .line 106
    iget-object v3, v1, Lvw;->h:Lvs;

    iget-object v2, v2, Lvw;->h:Lvs;

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v10, v3, v2, v1, v4}, Lvn;->m(Lvs;Lvs;II)V

    goto :goto_42

    .line 109
    :cond_69
    if-eqz v13, :cond_6a

    .line 107
    iget-object v3, v1, Lvw;->h:Lvs;

    iget-object v4, v2, Lvw;->h:Lvs;

    invoke-virtual {v1}, Lvw;->b()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, v12, Lvw;->h:Lvs;

    iget-object v8, v13, Lvw;->h:Lvs;

    .line 108
    invoke-virtual {v12}, Lvw;->b()I

    move-result v9

    const/4 v15, 0x5

    .line 107
    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v15

    invoke-virtual/range {v1 .. v9}, Lvn;->d(Lvs;Lvs;IFLvs;Lvs;II)V

    .line 106
    :cond_6a
    :goto_42
    if-eqz v13, :cond_6b

    if-eq v0, v14, :cond_6b

    .line 109
    iget-object v1, v12, Lvw;->h:Lvs;

    iget-object v2, v13, Lvw;->h:Lvs;

    invoke-virtual {v12}, Lvw;->b()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x5

    invoke-virtual {v10, v1, v2, v3, v4}, Lvn;->m(Lvs;Lvs;II)V

    .line 138
    :cond_6b
    :goto_43
    if-nez v23, :cond_6c

    if-eqz v25, :cond_73

    :cond_6c
    if-eqz v0, :cond_73

    if-eq v0, v14, :cond_73

    iget-object v1, v0, Lvx;->R:[Lvw;

    .line 139
    aget-object v2, v1, v16

    if-nez v14, :cond_6d

    move-object v8, v0

    goto :goto_44

    .line 148
    :cond_6d
    move-object v8, v14

    .line 139
    :goto_44
    add-int/lit8 v3, v16, 0x1

    iget-object v4, v8, Lvx;->R:[Lvw;

    .line 140
    aget-object v4, v4, v3

    .line 141
    iget-object v5, v2, Lvw;->e:Lvw;

    if-eqz v5, :cond_6e

    iget-object v5, v5, Lvw;->h:Lvs;

    goto :goto_45

    .line 148
    :cond_6e
    move-object/from16 v5, v17

    .line 142
    :goto_45
    iget-object v6, v4, Lvw;->e:Lvw;

    if-eqz v6, :cond_6f

    iget-object v6, v6, Lvw;->h:Lvs;

    goto :goto_46

    .line 148
    :cond_6f
    move-object/from16 v6, v17

    .line 142
    :goto_46
    if-eq v11, v8, :cond_71

    .line 143
    iget-object v6, v11, Lvx;->R:[Lvw;

    aget-object v6, v6, v3

    .line 144
    iget-object v6, v6, Lvw;->e:Lvw;

    if-eqz v6, :cond_70

    iget-object v6, v6, Lvw;->h:Lvs;

    goto :goto_47

    .line 148
    :cond_70
    move-object/from16 v6, v17

    .line 144
    :cond_71
    :goto_47
    if-ne v0, v8, :cond_72

    .line 145
    aget-object v4, v1, v3

    goto :goto_48

    .line 148
    :cond_72
    nop

    .line 145
    :goto_48
    if-eqz v5, :cond_73

    if-eqz v6, :cond_73

    .line 146
    invoke-virtual {v2}, Lvw;->b()I

    move-result v0

    iget-object v1, v8, Lvx;->R:[Lvw;

    .line 147
    aget-object v1, v1, v3

    invoke-virtual {v1}, Lvw;->b()I

    move-result v8

    .line 148
    iget-object v2, v2, Lvw;->h:Lvs;

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v9, v4, Lvw;->h:Lvs;

    const/4 v11, 0x5

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v0

    move v5, v7

    move-object v7, v9

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lvn;->d(Lvs;Lvs;IFLvs;Lvs;II)V

    :cond_73
    :goto_49
    add-int/lit8 v9, v26, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v29

    move-object/from16 v15, v30

    goto/16 :goto_1

    .line 34
    :cond_74
    return-void
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static f(ZLjava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Landroid/os/Handler;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "null current looper"

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x24

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Must be called on "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread, but got "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static h()V
    .locals 1

    .line 1
    const-string v0, "Must not be called on the main application thread"

    invoke-static {v0}, Lhr;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(ZLjava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "Given String is empty or null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
