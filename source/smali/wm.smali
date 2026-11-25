.class public final Lwm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lwf;

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwf;

    invoke-direct {v0}, Lwf;-><init>()V

    sput-object v0, Lwm;->a:Lwf;

    const/4 v0, 0x0

    sput v0, Lwm;->b:I

    sput v0, Lwm;->c:I

    return-void
.end method

.method public static a(Lvx;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lvx;->N()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lvx;->O()I

    move-result v1

    iget-object v2, p0, Lvx;->T:Lvx;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Lvx;->N()I

    :cond_1
    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lvx;->O()I

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_7

    .line 5
    invoke-virtual {p0}, Lvx;->e()Z

    move-result v7

    if-nez v7, :cond_7

    if-eq v0, v2, :cond_7

    if-ne v0, v4, :cond_5

    iget v0, p0, Lvx;->s:I

    if-nez v0, :cond_4

    iget v0, p0, Lvx;->W:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p0, v5}, Lvx;->G(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 11
    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    nop

    .line 6
    :goto_0
    if-ne v0, v4, :cond_6

    iget v7, p0, Lvx;->s:I

    if-ne v7, v6, :cond_6

    .line 7
    invoke-virtual {p0}, Lvx;->j()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lvx;->H(II)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    .line 11
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    nop

    :goto_1
    const/4 v7, 0x1

    .line 7
    :goto_2
    if-eq v1, v6, :cond_a

    .line 8
    invoke-virtual {p0}, Lvx;->f()Z

    move-result v8

    if-nez v8, :cond_a

    if-eq v1, v2, :cond_a

    if-ne v1, v4, :cond_8

    iget v1, p0, Lvx;->t:I

    if-nez v1, :cond_8

    iget v1, p0, Lvx;->W:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_8

    .line 9
    invoke-virtual {p0, v6}, Lvx;->G(I)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    if-ne v0, v4, :cond_9

    iget v0, p0, Lvx;->t:I

    if-ne v0, v6, :cond_9

    .line 10
    invoke-virtual {p0}, Lvx;->h()I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lvx;->H(II)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    .line 11
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const/4 v0, 0x1

    :goto_3
    iget p0, p0, Lvx;->W:F

    cmpl-float p0, p0, v3

    if-lez p0, :cond_c

    if-nez v7, :cond_b

    if-nez v0, :cond_b

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    return v6

    :cond_c
    :goto_4
    if-eqz v7, :cond_d

    if-eqz v0, :cond_d

    return v6

    :cond_d
    return v5
.end method

.method public static b(ILvx;Lwz;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-boolean v3, v0, Lvx;->n:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    sget v3, Lwm;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lwm;->b:I

    instance-of v3, v0, Lvy;

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lvx;->K()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p1 .. p1}, Lwm;->a(Lvx;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lwf;

    invoke-direct {v3}, Lwf;-><init>()V

    .line 2
    invoke-static {v0, v1, v3}, Lvy;->X(Lvx;Lwz;Lwf;)V

    :cond_1
    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v3}, Lvx;->L(I)Lvw;

    move-result-object v3

    const/4 v5, 0x4

    .line 4
    invoke-virtual {v0, v5}, Lvx;->L(I)Lvw;

    move-result-object v5

    .line 5
    invoke-virtual {v3}, Lvw;->a()I

    move-result v6

    .line 6
    invoke-virtual {v5}, Lvw;->a()I

    move-result v7

    iget-object v8, v3, Lvw;->a:Ljava/util/HashSet;

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x3

    if-eqz v8, :cond_f

    iget-boolean v3, v3, Lvw;->c:Z

    if-eqz v3, :cond_f

    .line 7
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvw;

    .line 8
    iget-object v12, v8, Lvw;->d:Lvx;

    add-int/lit8 v13, p0, 0x1

    .line 9
    invoke-static {v12}, Lwm;->a(Lvx;)Z

    move-result v14

    invoke-virtual {v12}, Lvx;->K()Z

    move-result v15

    if-eqz v15, :cond_3

    if-eqz v14, :cond_3

    new-instance v15, Lwf;

    invoke-direct {v15}, Lwf;-><init>()V

    .line 10
    invoke-static {v12, v1, v15}, Lvy;->X(Lvx;Lwz;Lwf;)V

    .line 11
    :cond_3
    invoke-virtual {v12}, Lvx;->N()I

    move-result v15

    if-ne v15, v11, :cond_8

    if-eqz v14, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v12}, Lvx;->N()I

    move-result v14

    if-ne v14, v11, :cond_2

    iget v14, v12, Lvx;->w:I

    if-ltz v14, :cond_2

    iget v14, v12, Lvx;->v:I

    if-ltz v14, :cond_2

    iget v14, v12, Lvx;->ag:I

    if-eq v14, v10, :cond_5

    iget v14, v12, Lvx;->s:I

    if-nez v14, :cond_2

    iget v14, v12, Lvx;->W:F

    cmpl-float v14, v14, v9

    if-nez v14, :cond_2

    .line 24
    :cond_5
    invoke-virtual {v12}, Lvx;->I()Z

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v12, Lvx;->J:Lvw;

    if-ne v8, v14, :cond_6

    iget-object v15, v12, Lvx;->L:Lvw;

    .line 25
    iget-object v15, v15, Lvw;->e:Lvw;

    if-eqz v15, :cond_6

    iget-boolean v15, v15, Lvw;->c:Z

    if-nez v15, :cond_7

    :cond_6
    iget-object v15, v12, Lvx;->L:Lvw;

    if-ne v8, v15, :cond_2

    iget-object v8, v14, Lvw;->e:Lvw;

    if-eqz v8, :cond_2

    iget-boolean v8, v8, Lvw;->c:Z

    if-eqz v8, :cond_2

    .line 26
    :cond_7
    invoke-virtual {v12}, Lvx;->I()Z

    move-result v8

    if-nez v8, :cond_2

    .line 27
    invoke-static {v13, v0, v1, v12, v2}, Lwm;->f(ILvx;Lwz;Lvx;Z)V

    goto :goto_0

    .line 11
    :cond_8
    :goto_1
    invoke-virtual {v12}, Lvx;->K()Z

    move-result v14

    if-nez v14, :cond_e

    iget-object v14, v12, Lvx;->J:Lvw;

    if-ne v8, v14, :cond_9

    iget-object v15, v12, Lvx;->L:Lvw;

    .line 12
    iget-object v15, v15, Lvw;->e:Lvw;

    if-nez v15, :cond_9

    .line 20
    invoke-virtual {v14}, Lvw;->b()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v12}, Lvx;->j()I

    move-result v14

    add-int/2addr v14, v8

    .line 21
    invoke-virtual {v12, v8, v14}, Lvx;->w(II)V

    .line 22
    invoke-static {v13, v12, v1, v2}, Lwm;->b(ILvx;Lwz;Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v15, v12, Lvx;->L:Lvw;

    if-ne v8, v15, :cond_a

    .line 13
    iget-object v9, v14, Lvw;->e:Lvw;

    if-nez v9, :cond_a

    .line 17
    invoke-virtual {v15}, Lvw;->b()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {v12}, Lvx;->j()I

    move-result v9

    sub-int v9, v8, v9

    .line 18
    invoke-virtual {v12, v9, v8}, Lvx;->w(II)V

    .line 19
    invoke-static {v13, v12, v1, v2}, Lwm;->b(ILvx;Lwz;Z)V

    goto :goto_2

    :cond_a
    if-ne v8, v14, :cond_d

    .line 14
    iget-object v8, v15, Lvw;->e:Lvw;

    if-eqz v8, :cond_c

    iget-boolean v8, v8, Lvw;->c:Z

    if-eqz v8, :cond_c

    .line 15
    invoke-virtual {v12}, Lvx;->I()Z

    move-result v8

    if-nez v8, :cond_b

    .line 16
    invoke-static {v13, v1, v12, v2}, Lwm;->e(ILwz;Lvx;Z)V

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 15
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 14
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 19
    :cond_d
    :goto_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 11
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 28
    :cond_f
    instance-of v3, v0, Lwa;

    if-nez v3, :cond_1c

    iget-object v3, v5, Lvw;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1b

    iget-boolean v5, v5, Lvw;->c:Z

    if-eqz v5, :cond_1b

    .line 29
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvw;

    .line 30
    iget-object v6, v5, Lvw;->d:Lvx;

    add-int/lit8 v8, p0, 0x1

    .line 31
    invoke-static {v6}, Lwm;->a(Lvx;)Z

    move-result v9

    invoke-virtual {v6}, Lvx;->K()Z

    move-result v12

    if-eqz v12, :cond_11

    if-eqz v9, :cond_11

    new-instance v12, Lwf;

    invoke-direct {v12}, Lwf;-><init>()V

    .line 32
    invoke-static {v6, v1, v12}, Lvy;->X(Lvx;Lwz;Lwf;)V

    :cond_11
    iget-object v12, v6, Lvx;->J:Lvw;

    const/4 v13, 0x0

    if-ne v5, v12, :cond_13

    iget-object v14, v6, Lvx;->L:Lvw;

    .line 33
    iget-object v14, v14, Lvw;->e:Lvw;

    if-eqz v14, :cond_13

    iget-boolean v14, v14, Lvw;->c:Z

    if-nez v14, :cond_12

    goto :goto_4

    .line 48
    :cond_12
    const/4 v13, 0x1

    goto :goto_5

    .line 33
    :cond_13
    :goto_4
    iget-object v14, v6, Lvx;->L:Lvw;

    if-ne v5, v14, :cond_14

    iget-object v12, v12, Lvw;->e:Lvw;

    if-eqz v12, :cond_14

    iget-boolean v12, v12, Lvw;->c:Z

    if-eqz v12, :cond_14

    const/4 v13, 0x1

    goto :goto_5

    .line 48
    :cond_14
    nop

    .line 34
    :goto_5
    invoke-virtual {v6}, Lvx;->N()I

    move-result v12

    if-ne v12, v11, :cond_18

    if-eqz v9, :cond_15

    const/4 v9, 0x0

    goto :goto_7

    .line 45
    :cond_15
    invoke-virtual {v6}, Lvx;->N()I

    move-result v5

    if-ne v5, v11, :cond_17

    iget v5, v6, Lvx;->w:I

    if-ltz v5, :cond_17

    iget v5, v6, Lvx;->v:I

    if-ltz v5, :cond_17

    iget v5, v6, Lvx;->ag:I

    if-eq v5, v10, :cond_16

    iget v5, v6, Lvx;->s:I

    if-nez v5, :cond_17

    iget v5, v6, Lvx;->W:F

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-nez v5, :cond_10

    goto :goto_6

    :cond_16
    const/4 v9, 0x0

    .line 46
    :goto_6
    invoke-virtual {v6}, Lvx;->I()Z

    move-result v5

    if-nez v5, :cond_10

    if-eqz v13, :cond_10

    .line 47
    invoke-virtual {v6}, Lvx;->I()Z

    move-result v5

    if-nez v5, :cond_10

    .line 48
    invoke-static {v8, v0, v1, v6, v2}, Lwm;->f(ILvx;Lwz;Lvx;Z)V

    goto :goto_3

    .line 45
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 34
    :cond_18
    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v6}, Lvx;->K()Z

    move-result v12

    if-nez v12, :cond_10

    iget-object v12, v6, Lvx;->J:Lvw;

    if-ne v5, v12, :cond_19

    iget-object v14, v6, Lvx;->L:Lvw;

    .line 35
    iget-object v14, v14, Lvw;->e:Lvw;

    if-nez v14, :cond_19

    .line 42
    invoke-virtual {v12}, Lvw;->b()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v6}, Lvx;->j()I

    move-result v12

    add-int/2addr v12, v5

    .line 43
    invoke-virtual {v6, v5, v12}, Lvx;->w(II)V

    .line 44
    invoke-static {v8, v6, v1, v2}, Lwm;->b(ILvx;Lwz;Z)V

    goto/16 :goto_3

    :cond_19
    iget-object v14, v6, Lvx;->L:Lvw;

    if-ne v5, v14, :cond_1a

    .line 36
    iget-object v5, v12, Lvw;->e:Lvw;

    if-nez v5, :cond_1a

    .line 39
    invoke-virtual {v14}, Lvw;->b()I

    move-result v5

    sub-int v5, v7, v5

    invoke-virtual {v6}, Lvx;->j()I

    move-result v12

    sub-int v12, v5, v12

    .line 40
    invoke-virtual {v6, v12, v5}, Lvx;->w(II)V

    .line 41
    invoke-static {v8, v6, v1, v2}, Lwm;->b(ILvx;Lwz;Z)V

    goto/16 :goto_3

    :cond_1a
    if-eqz v13, :cond_10

    .line 37
    invoke-virtual {v6}, Lvx;->I()Z

    move-result v5

    if-nez v5, :cond_10

    .line 38
    invoke-static {v8, v1, v6, v2}, Lwm;->e(ILwz;Lvx;Z)V

    goto/16 :goto_3

    .line 48
    :cond_1b
    iput-boolean v4, v0, Lvx;->n:Z

    :cond_1c
    return-void
.end method

.method public static c(ILvx;Lwz;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lvx;->o:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget v2, Lwm;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lwm;->c:I

    instance-of v2, v0, Lvy;

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lvx;->K()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lwm;->a(Lvx;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lwf;

    invoke-direct {v2}, Lwf;-><init>()V

    .line 2
    invoke-static {v0, v1, v2}, Lvy;->X(Lvx;Lwz;Lwf;)V

    :cond_1
    nop

    .line 3
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lvx;->L(I)Lvw;

    move-result-object v4

    const/4 v5, 0x5

    .line 4
    invoke-virtual {v0, v5}, Lvx;->L(I)Lvw;

    move-result-object v5

    .line 5
    invoke-virtual {v4}, Lvw;->a()I

    move-result v6

    .line 6
    invoke-virtual {v5}, Lvw;->a()I

    move-result v7

    iget-object v8, v4, Lvw;->a:Ljava/util/HashSet;

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v8, :cond_b

    iget-boolean v4, v4, Lvw;->c:Z

    if-eqz v4, :cond_b

    .line 7
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvw;

    .line 8
    iget-object v11, v8, Lvw;->d:Lvx;

    add-int/lit8 v12, p0, 0x1

    .line 9
    invoke-static {v11}, Lwm;->a(Lvx;)Z

    move-result v13

    invoke-virtual {v11}, Lvx;->K()Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v13, :cond_3

    new-instance v14, Lwf;

    invoke-direct {v14}, Lwf;-><init>()V

    .line 10
    invoke-static {v11, v1, v14}, Lvy;->X(Lvx;Lwz;Lwf;)V

    .line 11
    :cond_3
    invoke-virtual {v11}, Lvx;->O()I

    move-result v14

    if-ne v14, v2, :cond_8

    if-eqz v13, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v11}, Lvx;->O()I

    move-result v13

    if-ne v13, v2, :cond_2

    iget v13, v11, Lvx;->z:I

    if-ltz v13, :cond_2

    iget v13, v11, Lvx;->y:I

    if-ltz v13, :cond_2

    iget v13, v11, Lvx;->ag:I

    if-eq v13, v10, :cond_5

    iget v13, v11, Lvx;->t:I

    if-nez v13, :cond_2

    iget v13, v11, Lvx;->W:F

    cmpl-float v13, v13, v9

    if-nez v13, :cond_2

    .line 23
    :cond_5
    invoke-virtual {v11}, Lvx;->J()Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v11, Lvx;->K:Lvw;

    if-ne v8, v13, :cond_6

    iget-object v14, v11, Lvx;->M:Lvw;

    .line 24
    iget-object v14, v14, Lvw;->e:Lvw;

    if-eqz v14, :cond_6

    iget-boolean v14, v14, Lvw;->c:Z

    if-nez v14, :cond_7

    :cond_6
    iget-object v14, v11, Lvx;->M:Lvw;

    if-ne v8, v14, :cond_2

    iget-object v8, v13, Lvw;->e:Lvw;

    if-eqz v8, :cond_2

    iget-boolean v8, v8, Lvw;->c:Z

    if-eqz v8, :cond_2

    .line 25
    :cond_7
    invoke-virtual {v11}, Lvx;->J()Z

    move-result v8

    if-nez v8, :cond_2

    .line 26
    invoke-static {v12, v0, v1, v11}, Lwm;->h(ILvx;Lwz;Lvx;)V

    goto :goto_0

    .line 11
    :cond_8
    :goto_1
    invoke-virtual {v11}, Lvx;->K()Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v11, Lvx;->K:Lvw;

    if-ne v8, v13, :cond_9

    iget-object v14, v11, Lvx;->M:Lvw;

    .line 12
    iget-object v14, v14, Lvw;->e:Lvw;

    if-nez v14, :cond_9

    .line 19
    invoke-virtual {v13}, Lvw;->b()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v11}, Lvx;->h()I

    move-result v13

    add-int/2addr v13, v8

    .line 20
    invoke-virtual {v11, v8, v13}, Lvx;->x(II)V

    .line 21
    invoke-static {v12, v11, v1}, Lwm;->c(ILvx;Lwz;)V

    goto/16 :goto_0

    :cond_9
    iget-object v14, v11, Lvx;->M:Lvw;

    if-ne v8, v14, :cond_a

    .line 13
    iget-object v15, v14, Lvw;->e:Lvw;

    if-nez v15, :cond_a

    .line 16
    invoke-virtual {v14}, Lvw;->b()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {v11}, Lvx;->h()I

    move-result v13

    sub-int v13, v8, v13

    .line 17
    invoke-virtual {v11, v13, v8}, Lvx;->x(II)V

    .line 18
    invoke-static {v12, v11, v1}, Lwm;->c(ILvx;Lwz;)V

    goto/16 :goto_0

    :cond_a
    if-ne v8, v13, :cond_2

    .line 14
    iget-object v8, v14, Lvw;->e:Lvw;

    if-eqz v8, :cond_2

    iget-boolean v8, v8, Lvw;->c:Z

    if-eqz v8, :cond_2

    .line 15
    invoke-static {v12, v1, v11}, Lwm;->g(ILwz;Lvx;)V

    goto/16 :goto_0

    .line 27
    :cond_b
    instance-of v4, v0, Lwa;

    if-nez v4, :cond_1c

    iget-object v4, v5, Lvw;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_16

    iget-boolean v5, v5, Lvw;->c:Z

    if-eqz v5, :cond_16

    .line 28
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvw;

    .line 29
    iget-object v6, v5, Lvw;->d:Lvx;

    add-int/lit8 v8, p0, 0x1

    .line 30
    invoke-static {v6}, Lwm;->a(Lvx;)Z

    move-result v11

    invoke-virtual {v6}, Lvx;->K()Z

    move-result v12

    if-eqz v12, :cond_d

    if-eqz v11, :cond_d

    new-instance v12, Lwf;

    invoke-direct {v12}, Lwf;-><init>()V

    .line 31
    invoke-static {v6, v1, v12}, Lvy;->X(Lvx;Lwz;Lwf;)V

    :cond_d
    iget-object v12, v6, Lvx;->K:Lvw;

    const/4 v13, 0x0

    if-ne v5, v12, :cond_f

    iget-object v14, v6, Lvx;->M:Lvw;

    .line 32
    iget-object v14, v14, Lvw;->e:Lvw;

    if-eqz v14, :cond_f

    iget-boolean v14, v14, Lvw;->c:Z

    if-nez v14, :cond_e

    goto :goto_3

    .line 47
    :cond_e
    const/4 v13, 0x1

    goto :goto_4

    .line 32
    :cond_f
    :goto_3
    iget-object v14, v6, Lvx;->M:Lvw;

    if-ne v5, v14, :cond_10

    iget-object v12, v12, Lvw;->e:Lvw;

    if-eqz v12, :cond_10

    iget-boolean v12, v12, Lvw;->c:Z

    if-eqz v12, :cond_10

    const/4 v13, 0x1

    goto :goto_4

    .line 47
    :cond_10
    nop

    .line 33
    :goto_4
    invoke-virtual {v6}, Lvx;->O()I

    move-result v12

    if-ne v12, v2, :cond_13

    if-eqz v11, :cond_11

    goto :goto_5

    .line 44
    :cond_11
    invoke-virtual {v6}, Lvx;->O()I

    move-result v5

    if-ne v5, v2, :cond_c

    iget v5, v6, Lvx;->z:I

    if-ltz v5, :cond_c

    iget v5, v6, Lvx;->y:I

    if-ltz v5, :cond_c

    iget v5, v6, Lvx;->ag:I

    if-eq v5, v10, :cond_12

    iget v5, v6, Lvx;->t:I

    if-nez v5, :cond_c

    iget v5, v6, Lvx;->W:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_c

    .line 45
    :cond_12
    invoke-virtual {v6}, Lvx;->J()Z

    move-result v5

    if-nez v5, :cond_c

    if-eqz v13, :cond_c

    .line 46
    invoke-virtual {v6}, Lvx;->J()Z

    move-result v5

    if-nez v5, :cond_c

    .line 47
    invoke-static {v8, v0, v1, v6}, Lwm;->h(ILvx;Lwz;Lvx;)V

    goto :goto_2

    .line 33
    :cond_13
    :goto_5
    invoke-virtual {v6}, Lvx;->K()Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v6, Lvx;->K:Lvw;

    if-ne v5, v11, :cond_14

    iget-object v12, v6, Lvx;->M:Lvw;

    .line 34
    iget-object v12, v12, Lvw;->e:Lvw;

    if-nez v12, :cond_14

    .line 41
    invoke-virtual {v11}, Lvw;->b()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v6}, Lvx;->h()I

    move-result v11

    add-int/2addr v11, v5

    .line 42
    invoke-virtual {v6, v5, v11}, Lvx;->x(II)V

    .line 43
    invoke-static {v8, v6, v1}, Lwm;->c(ILvx;Lwz;)V

    goto/16 :goto_2

    :cond_14
    iget-object v12, v6, Lvx;->M:Lvw;

    if-ne v5, v12, :cond_15

    .line 35
    iget-object v5, v11, Lvw;->e:Lvw;

    if-nez v5, :cond_15

    .line 38
    invoke-virtual {v12}, Lvw;->b()I

    move-result v5

    sub-int v5, v7, v5

    invoke-virtual {v6}, Lvx;->h()I

    move-result v11

    sub-int v11, v5, v11

    .line 39
    invoke-virtual {v6, v11, v5}, Lvx;->x(II)V

    .line 40
    invoke-static {v8, v6, v1}, Lwm;->c(ILvx;Lwz;)V

    goto/16 :goto_2

    :cond_15
    if-eqz v13, :cond_c

    .line 36
    invoke-virtual {v6}, Lvx;->J()Z

    move-result v5

    if-nez v5, :cond_c

    .line 37
    invoke-static {v8, v1, v6}, Lwm;->g(ILwz;Lvx;)V

    goto/16 :goto_2

    .line 47
    :cond_16
    const/4 v4, 0x6

    .line 48
    invoke-virtual {v0, v4}, Lvx;->L(I)Lvw;

    move-result-object v4

    iget-object v5, v4, Lvw;->a:Ljava/util/HashSet;

    if-eqz v5, :cond_1b

    iget-boolean v5, v4, Lvw;->c:Z

    if-eqz v5, :cond_1b

    .line 49
    invoke-virtual {v4}, Lvw;->a()I

    move-result v5

    iget-object v4, v4, Lvw;->a:Ljava/util/HashSet;

    .line 50
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvw;

    .line 51
    iget-object v7, v6, Lvw;->d:Lvx;

    add-int/lit8 v8, p0, 0x1

    .line 52
    invoke-static {v7}, Lwm;->a(Lvx;)Z

    move-result v9

    invoke-virtual {v7}, Lvx;->K()Z

    move-result v10

    if-eqz v10, :cond_18

    if-eqz v9, :cond_18

    new-instance v10, Lwf;

    invoke-direct {v10}, Lwf;-><init>()V

    .line 53
    invoke-static {v7, v1, v10}, Lvy;->X(Lvx;Lwz;Lwf;)V

    .line 54
    :cond_18
    invoke-virtual {v7}, Lvx;->O()I

    move-result v10

    if-ne v10, v2, :cond_19

    if-eqz v9, :cond_17

    :cond_19
    invoke-virtual {v7}, Lvx;->K()Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, v7, Lvx;->N:Lvw;

    if-ne v6, v9, :cond_17

    .line 55
    invoke-virtual {v6}, Lvw;->b()I

    move-result v6

    add-int/2addr v6, v5

    iget-boolean v9, v7, Lvx;->F:Z

    if-eqz v9, :cond_1a

    iget v9, v7, Lvx;->aa:I

    sub-int v9, v6, v9

    iget v10, v7, Lvx;->V:I

    iput v9, v7, Lvx;->Z:I

    iget-object v11, v7, Lvx;->K:Lvw;

    .line 56
    invoke-virtual {v11, v9}, Lvw;->e(I)V

    iget-object v11, v7, Lvx;->M:Lvw;

    add-int/2addr v9, v10

    .line 57
    invoke-virtual {v11, v9}, Lvw;->e(I)V

    iget-object v9, v7, Lvx;->N:Lvw;

    .line 58
    invoke-virtual {v9, v6}, Lvw;->e(I)V

    iput-boolean v3, v7, Lvx;->m:Z

    .line 59
    :cond_1a
    :try_start_0
    invoke-static {v8, v7, v1}, Lwm;->c(ILvx;Lwz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_1b
    iput-boolean v3, v0, Lvx;->o:Z

    :cond_1c
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public static d(Lvu;Lwz;IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvu;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 2
    invoke-static {v0, p0, p1, p3}, Lwm;->b(ILvx;Lwz;Z)V

    return-void

    :cond_0
    nop

    .line 3
    invoke-static {v0, p0, p1}, Lwm;->c(ILvx;Lwz;)V

    :cond_1
    return-void
.end method

.method private static e(ILwz;Lvx;Z)V
    .locals 6

    .line 1
    iget v0, p2, Lvx;->ad:F

    iget-object v1, p2, Lvx;->J:Lvw;

    iget-object v1, v1, Lvw;->e:Lvw;

    invoke-virtual {v1}, Lvw;->a()I

    move-result v1

    iget-object v2, p2, Lvx;->L:Lvw;

    .line 2
    iget-object v2, v2, Lvw;->e:Lvw;

    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    iget-object v3, p2, Lvx;->J:Lvw;

    .line 3
    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p2, Lvx;->L:Lvw;

    .line 4
    invoke-virtual {v4}, Lvw;->b()I

    move-result v4

    sub-int v4, v2, v4

    if-ne v1, v2, :cond_0

    move v4, v2

    :cond_0
    if-ne v1, v2, :cond_1

    move v3, v1

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_2
    invoke-virtual {p2}, Lvx;->j()I

    move-result v1

    sub-int v2, v4, v3

    sub-int/2addr v2, v1

    if-le v3, v4, :cond_3

    sub-int v2, v3, v4

    sub-int/2addr v2, v1

    :cond_3
    if-lez v2, :cond_4

    int-to-float v2, v2

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_0

    .line 6
    :cond_4
    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 4
    :goto_0
    add-int/2addr v0, v3

    add-int v2, v0, v1

    if-le v3, v4, :cond_5

    sub-int v2, v0, v1

    goto :goto_1

    .line 6
    :cond_5
    nop

    .line 5
    :goto_1
    invoke-virtual {p2, v0, v2}, Lvx;->w(II)V

    add-int/lit8 p0, p0, 0x1

    .line 6
    invoke-static {p0, p2, p1, p3}, Lwm;->b(ILvx;Lwz;Z)V

    return-void
.end method

.method private static f(ILvx;Lwz;Lvx;Z)V
    .locals 7

    .line 1
    iget v0, p3, Lvx;->ad:F

    iget-object v1, p3, Lvx;->J:Lvw;

    iget-object v1, v1, Lvw;->e:Lvw;

    invoke-virtual {v1}, Lvw;->a()I

    move-result v1

    iget-object v2, p3, Lvx;->J:Lvw;

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p3, Lvx;->L:Lvw;

    .line 2
    iget-object v2, v2, Lvw;->e:Lvw;

    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    iget-object v3, p3, Lvx;->L:Lvw;

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_5

    invoke-virtual {p3}, Lvx;->j()I

    move-result v3

    iget v4, p3, Lvx;->ag:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lvx;->s:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 3
    instance-of v3, p1, Lvy;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1}, Lvx;->j()I

    move-result p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Lvx;->T:Lvx;

    .line 4
    invoke-virtual {p1}, Lvx;->j()I

    move-result p1

    .line 5
    :goto_0
    iget v3, p3, Lvx;->ad:F

    mul-float v3, v3, v6

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    goto :goto_1

    .line 4
    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v2, v1

    .line 5
    :cond_2
    :goto_1
    iget p1, p3, Lvx;->v:I

    .line 6
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p3, Lvx;->w:I

    if-lez p1, :cond_4

    .line 7
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 4
    :cond_3
    nop

    .line 7
    :cond_4
    :goto_2
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p1, v2

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v3, v1

    .line 8
    invoke-virtual {p3, v1, v3}, Lvx;->w(II)V

    add-int/lit8 p0, p0, 0x1

    .line 9
    invoke-static {p0, p3, p2, p4}, Lwm;->b(ILvx;Lwz;Z)V

    return-void

    .line 4
    :cond_5
    return-void
.end method

.method private static g(ILwz;Lvx;)V
    .locals 6

    .line 1
    iget v0, p2, Lvx;->ae:F

    iget-object v1, p2, Lvx;->K:Lvw;

    iget-object v1, v1, Lvw;->e:Lvw;

    invoke-virtual {v1}, Lvw;->a()I

    move-result v1

    iget-object v2, p2, Lvx;->M:Lvw;

    .line 2
    iget-object v2, v2, Lvw;->e:Lvw;

    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    iget-object v3, p2, Lvx;->K:Lvw;

    .line 3
    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p2, Lvx;->M:Lvw;

    .line 4
    invoke-virtual {v4}, Lvw;->b()I

    move-result v4

    sub-int v4, v2, v4

    if-ne v1, v2, :cond_0

    move v4, v2

    :cond_0
    if-ne v1, v2, :cond_1

    move v3, v1

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_2
    invoke-virtual {p2}, Lvx;->h()I

    move-result v1

    sub-int v2, v4, v3

    sub-int/2addr v2, v1

    if-le v3, v4, :cond_3

    sub-int v2, v3, v4

    sub-int/2addr v2, v1

    :cond_3
    if-lez v2, :cond_4

    int-to-float v2, v2

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_0

    .line 6
    :cond_4
    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 4
    :goto_0
    add-int v2, v3, v0

    add-int v5, v2, v1

    if-le v3, v4, :cond_5

    sub-int v2, v3, v0

    sub-int v5, v2, v1

    goto :goto_1

    .line 6
    :cond_5
    nop

    .line 5
    :goto_1
    invoke-virtual {p2, v2, v5}, Lvx;->x(II)V

    add-int/lit8 p0, p0, 0x1

    .line 6
    invoke-static {p0, p2, p1}, Lwm;->c(ILvx;Lwz;)V

    return-void
.end method

.method private static h(ILvx;Lwz;Lvx;)V
    .locals 7

    .line 1
    iget v0, p3, Lvx;->ae:F

    iget-object v1, p3, Lvx;->K:Lvw;

    iget-object v1, v1, Lvw;->e:Lvw;

    invoke-virtual {v1}, Lvw;->a()I

    move-result v1

    iget-object v2, p3, Lvx;->K:Lvw;

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p3, Lvx;->M:Lvw;

    .line 2
    iget-object v2, v2, Lvw;->e:Lvw;

    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    iget-object v3, p3, Lvx;->M:Lvw;

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_5

    invoke-virtual {p3}, Lvx;->h()I

    move-result v3

    iget v4, p3, Lvx;->ag:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lvx;->t:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 3
    instance-of v3, p1, Lvy;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1}, Lvx;->h()I

    move-result p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Lvx;->T:Lvx;

    .line 4
    invoke-virtual {p1}, Lvx;->h()I

    move-result p1

    .line 5
    :goto_0
    mul-float v3, v0, v6

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    goto :goto_1

    .line 4
    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v2, v1

    .line 5
    :cond_2
    :goto_1
    iget p1, p3, Lvx;->y:I

    .line 6
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p3, Lvx;->z:I

    if-lez p1, :cond_4

    .line 7
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 4
    :cond_3
    nop

    .line 7
    :cond_4
    :goto_2
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p1, v2

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v3, v1

    .line 8
    invoke-virtual {p3, v1, v3}, Lvx;->x(II)V

    add-int/lit8 p0, p0, 0x1

    .line 9
    invoke-static {p0, p3, p2}, Lwm;->c(ILvx;Lwz;)V

    return-void

    .line 4
    :cond_5
    return-void
.end method
