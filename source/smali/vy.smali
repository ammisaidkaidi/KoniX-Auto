.class public final Lvy;
.super Lwe;
.source "PG"


# instance fields
.field public final a:Lwg;

.field public aA:Ljava/lang/ref/WeakReference;

.field public aB:Ljava/lang/ref/WeakReference;

.field public aC:Ljava/lang/ref/WeakReference;

.field public aD:Ljava/lang/ref/WeakReference;

.field final aE:Ljava/util/HashSet;

.field public final aF:Lwf;

.field public aG:Lwz;

.field public final aq:Lvn;

.field public ar:I

.field public as:I

.field public at:I

.field public au:I

.field public av:[Lvv;

.field public aw:[Lvv;

.field public ax:I

.field public ay:Z

.field public az:Z

.field public final b:Lwj;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lwe;-><init>()V

    new-instance v0, Lwg;

    .line 2
    invoke-direct {v0, p0}, Lwg;-><init>(Lvy;)V

    iput-object v0, p0, Lvy;->a:Lwg;

    new-instance v0, Lwj;

    .line 3
    invoke-direct {v0, p0}, Lwj;-><init>(Lvy;)V

    iput-object v0, p0, Lvy;->b:Lwj;

    const/4 v0, 0x0

    iput-object v0, p0, Lvy;->aG:Lwz;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lvy;->d:Z

    new-instance v2, Lvn;

    .line 4
    invoke-direct {v2}, Lvn;-><init>()V

    iput-object v2, p0, Lvy;->aq:Lvn;

    iput v1, p0, Lvy;->at:I

    iput v1, p0, Lvy;->au:I

    const/4 v2, 0x4

    new-array v3, v2, [Lvv;

    iput-object v3, p0, Lvy;->av:[Lvv;

    new-array v2, v2, [Lvv;

    iput-object v2, p0, Lvy;->aw:[Lvv;

    const/16 v2, 0x101

    iput v2, p0, Lvy;->ax:I

    iput-boolean v1, p0, Lvy;->ay:Z

    iput-boolean v1, p0, Lvy;->az:Z

    iput-object v0, p0, Lvy;->aA:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lvy;->aB:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lvy;->aC:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lvy;->aD:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lvy;->aE:Ljava/util/HashSet;

    new-instance v0, Lwf;

    invoke-direct {v0}, Lwf;-><init>()V

    iput-object v0, p0, Lvy;->aF:Lwf;

    return-void
.end method

.method public static X(Lvx;Lwz;Lwf;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lvx;->ag:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    instance-of v0, p0, Lwa;

    if-nez v0, :cond_13

    instance-of v0, p0, Lvu;

    if-eqz v0, :cond_1

    goto/16 :goto_a

    .line 4
    :cond_1
    invoke-virtual {p0}, Lvx;->N()I

    move-result v0

    iput v0, p2, Lwf;->i:I

    .line 5
    invoke-virtual {p0}, Lvx;->O()I

    move-result v0

    iput v0, p2, Lwf;->j:I

    .line 6
    invoke-virtual {p0}, Lvx;->j()I

    move-result v0

    iput v0, p2, Lwf;->a:I

    .line 7
    invoke-virtual {p0}, Lvx;->h()I

    move-result v0

    iput v0, p2, Lwf;->b:I

    .line 8
    iput-boolean v2, p2, Lwf;->g:Z

    .line 9
    iput v2, p2, Lwf;->h:I

    .line 10
    iget v0, p2, Lwf;->i:I

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v4, p2, Lwf;->j:I

    if-ne v4, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 32
    :cond_3
    const/4 v1, 0x0

    .line 11
    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 12
    iget v5, p0, Lvx;->W:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    .line 32
    :cond_4
    const/4 v5, 0x0

    .line 12
    :goto_2
    if-eqz v1, :cond_5

    .line 13
    iget v6, p0, Lvx;->W:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    .line 32
    :cond_5
    const/4 v4, 0x0

    .line 13
    :goto_3
    const/4 v6, 0x2

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {p0, v2}, Lvx;->G(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lvx;->s:I

    if-nez v7, :cond_7

    if-nez v5, :cond_7

    .line 15
    iput v6, p2, Lwf;->i:I

    if-eqz v1, :cond_6

    .line 16
    iget v0, p0, Lvx;->t:I

    if-nez v0, :cond_6

    .line 17
    iput v3, p2, Lwf;->i:I

    const/4 v0, 0x0

    goto :goto_4

    .line 32
    :cond_6
    const/4 v0, 0x0

    .line 17
    :cond_7
    :goto_4
    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0, v3}, Lvx;->G(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lvx;->t:I

    if-nez v7, :cond_9

    if-nez v4, :cond_9

    .line 19
    iput v6, p2, Lwf;->j:I

    if-eqz v0, :cond_8

    .line 20
    iget v1, p0, Lvx;->s:I

    if-nez v1, :cond_8

    .line 21
    iput v3, p2, Lwf;->j:I

    const/4 v1, 0x0

    goto :goto_5

    .line 32
    :cond_8
    const/4 v1, 0x0

    .line 22
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lvx;->e()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 23
    iput v3, p2, Lwf;->i:I

    const/4 v0, 0x0

    .line 24
    :cond_a
    invoke-virtual {p0}, Lvx;->f()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 25
    iput v3, p2, Lwf;->j:I

    const/4 v1, 0x0

    :cond_b
    const/4 v7, 0x4

    if-eqz v5, :cond_e

    .line 26
    iget-object v5, p0, Lvx;->u:[I

    aget v5, v5, v2

    if-ne v5, v7, :cond_c

    .line 27
    iput v3, p2, Lwf;->i:I

    goto :goto_7

    .line 41
    :cond_c
    if-nez v1, :cond_e

    .line 28
    iget v1, p2, Lwf;->j:I

    if-ne v1, v3, :cond_d

    .line 29
    iget v1, p2, Lwf;->b:I

    goto :goto_6

    .line 34
    :cond_d
    nop

    .line 30
    iput v6, p2, Lwf;->i:I

    .line 31
    invoke-virtual {p1, p0, p2}, Lwz;->a(Lvx;Lwf;)V

    .line 32
    iget v1, p2, Lwf;->d:I

    .line 29
    :goto_6
    nop

    .line 33
    iput v3, p2, Lwf;->i:I

    iget v5, p0, Lvx;->W:F

    int-to-float v1, v1

    mul-float v5, v5, v1

    float-to-int v1, v5

    .line 34
    iput v1, p2, Lwf;->a:I

    .line 27
    :cond_e
    :goto_7
    if-eqz v4, :cond_12

    .line 35
    iget-object v1, p0, Lvx;->u:[I

    aget v1, v1, v3

    if-ne v1, v7, :cond_f

    .line 36
    iput v3, p2, Lwf;->j:I

    goto :goto_9

    .line 51
    :cond_f
    if-nez v0, :cond_12

    .line 37
    iget v0, p2, Lwf;->i:I

    if-ne v0, v3, :cond_10

    .line 38
    iget v0, p2, Lwf;->a:I

    goto :goto_8

    .line 43
    :cond_10
    nop

    .line 39
    iput v6, p2, Lwf;->j:I

    .line 40
    invoke-virtual {p1, p0, p2}, Lwz;->a(Lvx;Lwf;)V

    .line 41
    iget v0, p2, Lwf;->c:I

    .line 38
    :goto_8
    nop

    .line 42
    iput v3, p2, Lwf;->j:I

    iget v1, p0, Lvx;->X:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_11

    int-to-float v0, v0

    iget v1, p0, Lvx;->W:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 44
    iput v0, p2, Lwf;->b:I

    goto :goto_9

    :cond_11
    iget v1, p0, Lvx;->W:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 43
    iput v0, p2, Lwf;->b:I

    .line 45
    :cond_12
    :goto_9
    invoke-virtual {p1, p0, p2}, Lwz;->a(Lvx;Lwf;)V

    .line 46
    iget p1, p2, Lwf;->c:I

    invoke-virtual {p0, p1}, Lvx;->D(I)V

    .line 47
    iget p1, p2, Lwf;->d:I

    invoke-virtual {p0, p1}, Lvx;->y(I)V

    .line 48
    iget-boolean p1, p2, Lwf;->f:Z

    iput-boolean p1, p0, Lvx;->F:Z

    .line 49
    iget p1, p2, Lwf;->e:I

    invoke-virtual {p0, p1}, Lvx;->v(I)V

    .line 50
    iput v2, p2, Lwf;->h:I

    .line 51
    iget-boolean p0, p2, Lwf;->g:Z

    return-void

    .line 2
    :cond_13
    :goto_a
    iput v2, p2, Lwf;->c:I

    .line 3
    iput v2, p2, Lwf;->d:I

    return-void
.end method

.method private final Z(Lvw;Lvs;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvy;->aq:Lvn;

    invoke-virtual {v0, p1}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object p1

    iget-object v0, p0, Lvy;->aq:Lvn;

    .line 2
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p2, p1, v1, v2}, Lvn;->g(Lvs;Lvs;II)V

    return-void
.end method

.method private final aa(Lvw;Lvs;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvy;->aq:Lvn;

    invoke-virtual {v0, p1}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object p1

    iget-object v0, p0, Lvy;->aq:Lvn;

    .line 2
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p1, p2, v1, v2}, Lvn;->g(Lvs;Lvs;II)V

    return-void
.end method

.method private final ab()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lvy;->at:I

    iput v0, p0, Lvy;->au:I

    return-void
.end method


# virtual methods
.method public final E(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lwe;->E(ZZ)V

    iget-object v0, p0, Lvy;->aH:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lvy;->aH:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvx;

    .line 4
    invoke-virtual {v2, p1, p2}, Lvx;->E(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final T()V
    .locals 27

    .line 1
    move-object/from16 v7, p0

    const/4 v8, 0x0

    iput v8, v7, Lvy;->Y:I

    iput v8, v7, Lvy;->Z:I

    iput-boolean v8, v7, Lvy;->ay:Z

    iput-boolean v8, v7, Lvy;->az:Z

    iget-object v0, v7, Lvy;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v0

    .line 2
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v1

    .line 3
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, Lvy;->ap:[I

    .line 4
    const/4 v10, 0x1

    aget v3, v2, v10

    .line 5
    aget v2, v2, v8

    iget v4, v7, Lvy;->c:I

    const/4 v12, -0x1

    if-nez v4, :cond_20

    iget v4, v7, Lvy;->ax:I

    invoke-static {v4, v10}, Lwc;->b(II)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v7, Lvy;->aG:Lwz;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lvx;->N()I

    move-result v5

    .line 7
    invoke-virtual/range {p0 .. p0}, Lvx;->O()I

    move-result v6

    sput v8, Lwm;->b:I

    sput v8, Lwm;->c:I

    .line 8
    invoke-virtual/range {p0 .. p0}, Lvx;->t()V

    iget-object v13, v7, Lwe;->aH:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_0

    .line 10
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lvx;

    .line 11
    invoke-virtual/range {v16 .. v16}, Lvx;->t()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v15, v7, Lvy;->d:Z

    if-ne v5, v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v5

    .line 13
    invoke-virtual {v7, v8, v5}, Lvx;->w(II)V

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_1

    .line 35
    :cond_1
    iget-object v5, v7, Lvx;->J:Lvw;

    .line 12
    invoke-virtual {v5, v8}, Lvw;->e(I)V

    iput v8, v7, Lvx;->Y:I

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 13
    :goto_1
    const/high16 v18, 0x3f000000    # 0.5f

    if-ge v5, v14, :cond_8

    .line 14
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    check-cast v11, Lvx;

    .line 15
    instance-of v8, v11, Lwa;

    if-eqz v8, :cond_6

    .line 16
    check-cast v11, Lwa;

    iget v8, v11, Lwa;->aq:I

    if-ne v8, v10, :cond_5

    iget v8, v11, Lwa;->b:I

    if-eq v8, v12, :cond_2

    .line 21
    invoke-virtual {v11, v8}, Lwa;->a(I)V

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    iget v8, v11, Lwa;->c:I

    if-eq v8, v12, :cond_3

    .line 17
    invoke-virtual/range {p0 .. p0}, Lvx;->e()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v8

    iget v12, v11, Lwa;->c:I

    sub-int/2addr v8, v12

    .line 20
    invoke-virtual {v11, v8}, Lwa;->a(I)V

    const/16 v16, 0x1

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lvx;->e()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v11, Lwa;->a:F

    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v12

    int-to-float v12, v12

    mul-float v8, v8, v12

    add-float v8, v8, v18

    float-to-int v8, v8

    .line 19
    invoke-virtual {v11, v8}, Lwa;->a(I)V

    goto :goto_2

    :cond_4
    nop

    :goto_2
    const/16 v16, 0x1

    .line 21
    :cond_5
    :goto_3
    goto :goto_4

    .line 22
    :cond_6
    instance-of v8, v11, Lvu;

    if-eqz v8, :cond_7

    .line 23
    check-cast v11, Lvu;

    .line 24
    invoke-virtual {v11}, Lvu;->a()I

    move-result v8

    if-nez v8, :cond_7

    const/16 v17, 0x1

    goto :goto_4

    :cond_7
    nop

    .line 21
    :goto_4
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x1

    goto :goto_1

    .line 24
    :cond_8
    if-eqz v16, :cond_a

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v14, :cond_a

    .line 25
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvx;

    .line 26
    instance-of v11, v8, Lwa;

    if-eqz v11, :cond_9

    .line 27
    check-cast v8, Lwa;

    iget v11, v8, Lwa;->aq:I

    if-ne v11, v10, :cond_9

    .line 28
    const/4 v11, 0x0

    invoke-static {v11, v8, v4, v15}, Lwm;->b(ILvx;Lwz;Z)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    nop

    .line 29
    const/4 v5, 0x0

    invoke-static {v5, v7, v4, v15}, Lwm;->b(ILvx;Lwz;Z)V

    if-eqz v17, :cond_c

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v14, :cond_c

    .line 30
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvx;

    .line 31
    instance-of v11, v8, Lvu;

    if-eqz v11, :cond_b

    .line 32
    check-cast v8, Lvu;

    .line 33
    invoke-virtual {v8}, Lvu;->a()I

    move-result v11

    if-nez v11, :cond_b

    .line 34
    const/4 v11, 0x0

    invoke-static {v8, v4, v11, v15}, Lwm;->d(Lvu;Lwz;IZ)V

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    if-ne v6, v10, :cond_d

    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v5

    .line 36
    const/4 v6, 0x0

    invoke-virtual {v7, v6, v5}, Lvx;->x(II)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_7

    .line 72
    :cond_d
    const/4 v6, 0x0

    iget-object v5, v7, Lvx;->K:Lvw;

    .line 35
    invoke-virtual {v5, v6}, Lvw;->e(I)V

    iput v6, v7, Lvx;->Z:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 36
    :goto_7
    if-ge v6, v14, :cond_14

    .line 37
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvx;

    .line 38
    instance-of v12, v11, Lwa;

    if-eqz v12, :cond_12

    .line 39
    check-cast v11, Lwa;

    iget v12, v11, Lwa;->aq:I

    if-nez v12, :cond_11

    iget v5, v11, Lwa;->b:I

    const/4 v12, -0x1

    if-eq v5, v12, :cond_e

    .line 44
    invoke-virtual {v11, v5}, Lwa;->a(I)V

    const/4 v5, 0x1

    goto :goto_9

    :cond_e
    iget v5, v11, Lwa;->c:I

    if-eq v5, v12, :cond_f

    .line 40
    invoke-virtual/range {p0 .. p0}, Lvx;->f()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v5

    iget v12, v11, Lwa;->c:I

    sub-int/2addr v5, v12

    .line 43
    invoke-virtual {v11, v5}, Lwa;->a(I)V

    const/4 v5, 0x1

    goto :goto_9

    .line 41
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lvx;->f()Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, v11, Lwa;->a:F

    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v12

    int-to-float v12, v12

    mul-float v5, v5, v12

    add-float v5, v5, v18

    float-to-int v5, v5

    .line 42
    invoke-virtual {v11, v5}, Lwa;->a(I)V

    goto :goto_8

    :cond_10
    nop

    :goto_8
    const/4 v5, 0x1

    .line 44
    :cond_11
    :goto_9
    goto :goto_a

    .line 45
    :cond_12
    instance-of v12, v11, Lvu;

    if-eqz v12, :cond_13

    .line 46
    check-cast v11, Lvu;

    .line 47
    invoke-virtual {v11}, Lvu;->a()I

    move-result v11

    if-ne v11, v10, :cond_13

    const/4 v8, 0x1

    goto :goto_a

    :cond_13
    nop

    .line 44
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 47
    :cond_14
    if-eqz v5, :cond_16

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v14, :cond_16

    .line 48
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvx;

    .line 49
    instance-of v11, v6, Lwa;

    if-eqz v11, :cond_15

    .line 50
    check-cast v6, Lwa;

    iget v11, v6, Lwa;->aq:I

    if-nez v11, :cond_15

    .line 51
    invoke-static {v10, v6, v4}, Lwm;->c(ILvx;Lwz;)V

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_16
    nop

    .line 52
    const/4 v5, 0x0

    invoke-static {v5, v7, v4}, Lwm;->c(ILvx;Lwz;)V

    if-eqz v8, :cond_19

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v14, :cond_18

    .line 53
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvx;

    .line 54
    instance-of v8, v6, Lvu;

    if-eqz v8, :cond_17

    .line 55
    check-cast v6, Lvu;

    .line 56
    invoke-virtual {v6}, Lvu;->a()I

    move-result v8

    if-ne v8, v10, :cond_17

    .line 57
    invoke-static {v6, v4, v10, v15}, Lwm;->d(Lvu;Lwz;IZ)V

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_18
    const/4 v5, 0x0

    goto :goto_d

    .line 72
    :cond_19
    const/4 v5, 0x0

    .line 57
    :goto_d
    if-ge v5, v14, :cond_1d

    .line 58
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvx;

    .line 59
    invoke-virtual {v6}, Lvx;->K()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-static {v6}, Lwm;->a(Lvx;)Z

    move-result v8

    if-eqz v8, :cond_1c

    sget-object v8, Lwm;->a:Lwf;

    .line 60
    invoke-static {v6, v4, v8}, Lvy;->X(Lvx;Lwz;Lwf;)V

    .line 61
    instance-of v8, v6, Lwa;

    if-eqz v8, :cond_1b

    .line 62
    move-object v8, v6

    check-cast v8, Lwa;

    iget v8, v8, Lwa;->aq:I

    if-nez v8, :cond_1a

    .line 63
    const/4 v8, 0x0

    invoke-static {v8, v6, v4}, Lwm;->c(ILvx;Lwz;)V

    goto :goto_e

    :cond_1a
    const/4 v8, 0x0

    .line 64
    invoke-static {v8, v6, v4, v15}, Lwm;->b(ILvx;Lwz;Z)V

    goto :goto_e

    :cond_1b
    const/4 v8, 0x0

    .line 65
    invoke-static {v8, v6, v4, v15}, Lwm;->b(ILvx;Lwz;Z)V

    .line 66
    invoke-static {v8, v6, v4}, Lwm;->c(ILvx;Lwz;)V

    .line 63
    :cond_1c
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 66
    :cond_1d
    const/4 v4, 0x0

    :goto_f
    if-ge v4, v9, :cond_20

    iget-object v5, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvx;

    .line 68
    invoke-virtual {v5}, Lvx;->K()Z

    move-result v6

    if-eqz v6, :cond_1f

    instance-of v6, v5, Lwa;

    if-nez v6, :cond_1f

    instance-of v6, v5, Lvu;

    if-nez v6, :cond_1f

    instance-of v6, v5, Lwd;

    if-nez v6, :cond_1f

    iget-boolean v6, v5, Lvx;->G:Z

    .line 69
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lvx;->M(I)I

    move-result v8

    .line 70
    invoke-virtual {v5, v10}, Lvx;->M(I)I

    move-result v6

    const/4 v11, 0x3

    if-ne v8, v11, :cond_1e

    .line 71
    iget v8, v5, Lvx;->s:I

    if-eq v8, v10, :cond_1e

    if-ne v6, v11, :cond_1e

    iget v6, v5, Lvx;->t:I

    if-ne v6, v10, :cond_1f

    :cond_1e
    new-instance v6, Lwf;

    invoke-direct {v6}, Lwf;-><init>()V

    iget-object v8, v7, Lvy;->aG:Lwz;

    .line 72
    invoke-static {v5, v8, v6}, Lvy;->X(Lvx;Lwz;Lwf;)V

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 12
    :cond_20
    const/4 v11, 0x2

    if-le v9, v11, :cond_59

    if-eq v2, v11, :cond_22

    if-ne v3, v11, :cond_21

    const/4 v3, 0x2

    goto :goto_10

    .line 158
    :cond_21
    move v8, v0

    move v10, v2

    move v11, v3

    move/from16 v22, v9

    const/4 v0, 0x0

    move v9, v1

    goto/16 :goto_38

    :cond_22
    nop

    .line 12
    :goto_10
    iget v4, v7, Lvy;->ax:I

    const/16 v5, 0x400

    invoke-static {v4, v5}, Lwc;->b(II)Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, v7, Lvy;->aG:Lwz;

    iget-object v5, v7, Lwe;->aH:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v12, 0x0

    :goto_11
    if-ge v12, v6, :cond_25

    .line 74
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lvx;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lvx;->N()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lvx;->O()I

    move-result v15

    .line 76
    invoke-virtual {v13}, Lvx;->N()I

    move-result v11

    invoke-virtual {v13}, Lvx;->O()I

    move-result v8

    invoke-static {v14, v15, v11, v8}, Lio;->f(IIII)Z

    move-result v8

    if-nez v8, :cond_23

    move v8, v0

    move v10, v2

    move v11, v3

    move/from16 v22, v9

    const/4 v0, 0x0

    move v9, v1

    goto/16 :goto_38

    .line 77
    :cond_23
    instance-of v8, v13, Lvz;

    if-eqz v8, :cond_24

    move v8, v0

    move v10, v2

    move v11, v3

    move/from16 v22, v9

    const/4 v0, 0x0

    move v9, v1

    goto/16 :goto_38

    :cond_24
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x2

    goto :goto_11

    :cond_25
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_12
    if-ge v10, v6, :cond_37

    .line 78
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v9

    move-object/from16 v9, v21

    check-cast v9, Lvx;

    .line 79
    move/from16 v21, v1

    invoke-virtual/range {p0 .. p0}, Lvx;->N()I

    move-result v1

    move/from16 v23, v3

    invoke-virtual/range {p0 .. p0}, Lvx;->O()I

    move-result v3

    .line 80
    move/from16 v24, v0

    invoke-virtual {v9}, Lvx;->N()I

    move-result v0

    move/from16 v25, v2

    invoke-virtual {v9}, Lvx;->O()I

    move-result v2

    invoke-static {v1, v3, v0, v2}, Lio;->f(IIII)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, v7, Lvy;->aF:Lwf;

    .line 81
    invoke-static {v9, v4, v0}, Lvy;->X(Lvx;Lwz;Lwf;)V

    .line 82
    :cond_26
    instance-of v0, v9, Lwa;

    if-eqz v0, :cond_2a

    .line 83
    move-object v1, v9

    check-cast v1, Lwa;

    iget v2, v1, Lwa;->aq:I

    if-nez v2, :cond_28

    if-nez v12, :cond_27

    new-instance v12, Ljava/util/ArrayList;

    .line 84
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :cond_27
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    iget v2, v1, Lwa;->aq:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    if-nez v8, :cond_29

    new-instance v8, Ljava/util/ArrayList;

    .line 86
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 87
    :cond_29
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 101
    :cond_2a
    nop

    .line 88
    :goto_13
    instance-of v1, v9, Lwb;

    if-eqz v1, :cond_32

    .line 89
    instance-of v1, v9, Lvu;

    if-eqz v1, :cond_2f

    .line 90
    move-object v1, v9

    check-cast v1, Lvu;

    .line 91
    invoke-virtual {v1}, Lvu;->a()I

    move-result v2

    if-nez v2, :cond_2c

    if-nez v11, :cond_2b

    new-instance v11, Ljava/util/ArrayList;

    .line 92
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    goto :goto_14

    .line 107
    :cond_2b
    nop

    .line 93
    :goto_14
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 107
    :cond_2c
    nop

    .line 94
    :goto_15
    invoke-virtual {v1}, Lvu;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    if-nez v13, :cond_2d

    new-instance v13, Ljava/util/ArrayList;

    .line 95
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16

    .line 107
    :cond_2d
    nop

    .line 96
    :goto_16
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 107
    :cond_2e
    nop

    .line 96
    :goto_17
    goto :goto_1a

    .line 97
    :cond_2f
    move-object v1, v9

    check-cast v1, Lwb;

    if-nez v11, :cond_30

    new-instance v11, Ljava/util/ArrayList;

    .line 98
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    goto :goto_18

    .line 101
    :cond_30
    nop

    .line 99
    :goto_18
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_31

    new-instance v13, Ljava/util/ArrayList;

    .line 100
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_19

    .line 101
    :cond_31
    nop

    :goto_19
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_32
    nop

    .line 102
    :goto_1a
    iget-object v1, v9, Lvx;->J:Lvw;

    iget-object v1, v1, Lvw;->e:Lvw;

    if-nez v1, :cond_34

    iget-object v1, v9, Lvx;->L:Lvw;

    iget-object v1, v1, Lvw;->e:Lvw;

    if-nez v1, :cond_34

    if-nez v0, :cond_34

    instance-of v1, v9, Lvu;

    if-nez v1, :cond_34

    if-nez v14, :cond_33

    new-instance v14, Ljava/util/ArrayList;

    .line 103
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    .line 107
    :cond_33
    nop

    .line 104
    :goto_1b
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_34
    iget-object v1, v9, Lvx;->K:Lvw;

    iget-object v1, v1, Lvw;->e:Lvw;

    if-nez v1, :cond_36

    iget-object v1, v9, Lvx;->M:Lvw;

    iget-object v1, v1, Lvw;->e:Lvw;

    if-nez v1, :cond_36

    iget-object v1, v9, Lvx;->N:Lvw;

    iget-object v1, v1, Lvw;->e:Lvw;

    if-nez v1, :cond_36

    if-nez v0, :cond_36

    instance-of v0, v9, Lvu;

    if-nez v0, :cond_36

    if-nez v15, :cond_35

    new-instance v15, Ljava/util/ArrayList;

    .line 106
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1c

    .line 107
    :cond_35
    nop

    :goto_1c
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v21

    move/from16 v9, v22

    move/from16 v3, v23

    move/from16 v0, v24

    move/from16 v2, v25

    goto/16 :goto_12

    .line 101
    :cond_37
    move/from16 v24, v0

    move/from16 v21, v1

    move/from16 v25, v2

    move/from16 v23, v3

    move/from16 v22, v9

    new-instance v0, Ljava/util/ArrayList;

    .line 108
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_38

    .line 109
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_38

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 110
    check-cast v3, Lwa;

    .line 111
    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v9, v0, v4}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_38
    if-eqz v11, :cond_39

    .line 109
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_39

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 112
    check-cast v3, Lwb;

    .line 113
    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v8, v0, v4}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    move-result-object v9

    .line 114
    invoke-virtual {v3, v0, v8, v9}, Lwb;->T(Ljava/util/ArrayList;ILws;)V

    .line 115
    invoke-virtual {v9, v0}, Lws;->b(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_39
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lvx;->L(I)Lvw;

    move-result-object v2

    iget-object v1, v2, Lvw;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_3a

    .line 116
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvw;

    .line 117
    iget-object v2, v2, Lvw;->d:Lvx;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v3}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    goto :goto_1f

    :cond_3a
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Lvx;->L(I)Lvw;

    move-result-object v1

    iget-object v1, v1, Lvw;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_3b

    .line 118
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvw;

    .line 119
    iget-object v2, v2, Lvw;->d:Lvx;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v3}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    goto :goto_20

    :cond_3b
    const/4 v1, 0x7

    invoke-virtual {v7, v1}, Lvx;->L(I)Lvw;

    move-result-object v2

    iget-object v2, v2, Lvw;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3c

    .line 120
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw;

    .line 121
    iget-object v3, v3, Lvw;->d:Lvx;

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v8, v0, v4}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    goto :goto_21

    :cond_3c
    if-eqz v14, :cond_3d

    .line 109
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_3d

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 122
    check-cast v4, Lvx;

    .line 123
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v9, v0, v8}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_3d
    if-eqz v12, :cond_3e

    .line 109
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_3e

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 124
    check-cast v4, Lwa;

    .line 125
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v4, v9, v0, v8}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3e
    if-eqz v13, :cond_3f

    .line 109
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_3f

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 126
    check-cast v4, Lwb;

    .line 127
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v4, v9, v0, v8}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    move-result-object v10

    .line 128
    invoke-virtual {v4, v0, v9, v10}, Lwb;->T(Ljava/util/ArrayList;ILws;)V

    .line 129
    invoke-virtual {v10, v0}, Lws;->b(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3f
    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Lvx;->L(I)Lvw;

    move-result-object v3

    iget-object v2, v3, Lvw;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_40

    .line 130
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw;

    .line 131
    iget-object v3, v3, Lvw;->d:Lvx;

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v8, v0, v4}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    goto :goto_25

    :cond_40
    const/4 v2, 0x6

    invoke-virtual {v7, v2}, Lvx;->L(I)Lvw;

    move-result-object v2

    iget-object v2, v2, Lvw;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_41

    .line 132
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw;

    .line 133
    iget-object v3, v3, Lvw;->d:Lvx;

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v8, v0, v4}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    goto :goto_26

    :cond_41
    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Lvx;->L(I)Lvw;

    move-result-object v2

    iget-object v2, v2, Lvw;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_42

    .line 134
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw;

    .line 135
    iget-object v3, v3, Lvw;->d:Lvx;

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v8, v0, v4}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    goto :goto_27

    :cond_42
    invoke-virtual {v7, v1}, Lvx;->L(I)Lvw;

    move-result-object v1

    iget-object v1, v1, Lvw;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_43

    .line 136
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvw;

    .line 137
    iget-object v2, v2, Lvw;->d:Lvx;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v4, v0, v3}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    goto :goto_28

    :cond_43
    if-eqz v15, :cond_45

    .line 109
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_44

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 138
    check-cast v3, Lvx;

    .line 139
    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v8, v0, v4}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_44
    const/4 v1, 0x0

    goto :goto_2a

    .line 158
    :cond_45
    const/4 v1, 0x0

    .line 139
    :goto_2a
    if-ge v1, v6, :cond_47

    .line 140
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvx;

    iget-object v3, v2, Lvx;->ap:[I

    .line 141
    const/4 v4, 0x0

    aget v8, v3, v4

    const/4 v4, 0x3

    if-ne v8, v4, :cond_46

    const/4 v8, 0x1

    aget v3, v3, v8

    if-ne v3, v4, :cond_46

    .line 142
    iget v3, v2, Lvx;->an:I

    invoke-static {v0, v3}, Lio;->e(Ljava/util/ArrayList;I)Lws;

    move-result-object v3

    .line 143
    iget v2, v2, Lvx;->ao:I

    invoke-static {v0, v2}, Lio;->e(Ljava/util/ArrayList;I)Lws;

    move-result-object v2

    if-eqz v3, :cond_46

    if-eqz v2, :cond_46

    .line 144
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lws;->c(ILws;)V

    const/4 v4, 0x2

    iput v4, v2, Lws;->d:I

    .line 145
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 146
    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_48

    move/from16 v9, v21

    move/from16 v11, v23

    move/from16 v8, v24

    move/from16 v10, v25

    const/4 v0, 0x0

    goto/16 :goto_38

    .line 147
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lvx;->N()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4d

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2b
    if-ge v3, v1, :cond_4c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 148
    check-cast v5, Lws;

    iget v6, v5, Lws;->d:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_49

    goto :goto_2d

    :cond_49
    iget-object v6, v7, Lvy;->aq:Lvn;

    .line 149
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Lws;->a(Lvn;I)I

    move-result v6

    if-gt v6, v4, :cond_4a

    goto :goto_2c

    :cond_4a
    move-object v2, v5

    :goto_2c
    if-le v6, v4, :cond_4b

    move v4, v6

    .line 148
    :cond_4b
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 149
    :cond_4c
    if-eqz v2, :cond_4d

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lvx;->Q(I)V

    .line 151
    invoke-virtual {v7, v4}, Lvx;->D(I)V

    goto :goto_2e

    .line 158
    :cond_4d
    const/4 v2, 0x0

    .line 152
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lvx;->O()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_52

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2f
    if-ge v4, v1, :cond_51

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 153
    check-cast v6, Lws;

    iget v8, v6, Lws;->d:I

    if-nez v8, :cond_4e

    goto :goto_31

    :cond_4e
    iget-object v8, v7, Lvy;->aq:Lvn;

    .line 154
    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lws;->a(Lvn;I)I

    move-result v8

    if-gt v8, v5, :cond_4f

    goto :goto_30

    :cond_4f
    move-object v3, v6

    :goto_30
    if-le v8, v5, :cond_50

    move v5, v8

    .line 153
    :cond_50
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 154
    :cond_51
    if-eqz v3, :cond_52

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lvx;->R(I)V

    .line 156
    invoke-virtual {v7, v5}, Lvx;->y(I)V

    goto :goto_32

    .line 158
    :cond_52
    const/4 v3, 0x0

    .line 156
    :goto_32
    if-nez v2, :cond_54

    if-eqz v3, :cond_53

    goto :goto_33

    .line 158
    :cond_53
    move/from16 v9, v21

    move/from16 v11, v23

    move/from16 v8, v24

    move/from16 v10, v25

    goto/16 :goto_37

    .line 156
    :cond_54
    :goto_33
    move/from16 v0, v25

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v0

    move/from16 v1, v24

    if-ge v1, v0, :cond_55

    if-lez v1, :cond_55

    .line 157
    invoke-virtual {v7, v1}, Lvx;->D(I)V

    const/4 v2, 0x1

    iput-boolean v2, v7, Lvy;->ay:Z

    move v0, v1

    const/4 v2, 0x2

    goto :goto_34

    .line 158
    :cond_55
    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v0

    const/4 v2, 0x2

    goto :goto_34

    :cond_56
    move/from16 v1, v24

    move v2, v0

    move v0, v1

    .line 157
    :goto_34
    move/from16 v3, v23

    const/4 v1, 0x2

    if-ne v3, v1, :cond_58

    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v1

    move/from16 v4, v21

    if-ge v4, v1, :cond_57

    if-lez v4, :cond_57

    .line 158
    invoke-virtual {v7, v4}, Lvx;->y(I)V

    const/4 v1, 0x1

    iput-boolean v1, v7, Lvy;->az:Z

    move v1, v4

    goto :goto_35

    :cond_57
    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v1

    :goto_35
    const/4 v3, 0x2

    goto :goto_36

    :cond_58
    move/from16 v4, v21

    move v1, v4

    :goto_36
    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    const/4 v0, 0x1

    goto :goto_38

    :cond_59
    move v4, v1

    move/from16 v22, v9

    move v1, v0

    move v0, v2

    move v10, v0

    move v8, v1

    move v11, v3

    move v9, v4

    :goto_37
    const/4 v0, 0x0

    .line 76
    :goto_38
    const/16 v12, 0x40

    invoke-virtual {v7, v12}, Lvy;->W(I)Z

    move-result v1

    if-nez v1, :cond_5b

    const/16 v1, 0x80

    invoke-virtual {v7, v1}, Lvy;->W(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x1

    goto :goto_39

    .line 264
    :cond_5a
    const/4 v1, 0x0

    goto :goto_39

    :cond_5b
    const/4 v1, 0x1

    .line 76
    :goto_39
    iget-object v2, v7, Lvy;->aq:Lvn;

    .line 159
    const/4 v3, 0x0

    iput-boolean v3, v2, Lvn;->f:Z

    .line 160
    iput-boolean v3, v2, Lvn;->g:Z

    iget v3, v7, Lvy;->ax:I

    if-eqz v3, :cond_5c

    if-eqz v1, :cond_5c

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, v2, Lvn;->g:Z

    :cond_5c
    iget-object v13, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 162
    invoke-virtual/range {p0 .. p0}, Lvx;->N()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5e

    invoke-virtual/range {p0 .. p0}, Lvx;->O()I

    move-result v1

    if-ne v1, v2, :cond_5d

    const/4 v14, 0x1

    goto :goto_3a

    .line 264
    :cond_5d
    const/4 v14, 0x0

    goto :goto_3a

    :cond_5e
    const/4 v14, 0x1

    .line 163
    :goto_3a
    invoke-direct/range {p0 .. p0}, Lvy;->ab()V

    const/4 v1, 0x0

    :goto_3b
    move/from16 v15, v22

    if-ge v1, v15, :cond_60

    iget-object v2, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvx;

    .line 165
    instance-of v3, v2, Lwe;

    if-eqz v3, :cond_5f

    .line 166
    check-cast v2, Lwe;

    invoke-virtual {v2}, Lwe;->T()V

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    move/from16 v22, v15

    goto :goto_3b

    :cond_60
    move/from16 v21, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_3c
    if-eqz v0, :cond_90

    const/4 v2, 0x1

    add-int/lit8 v6, v1, 0x1

    :try_start_0
    iget-object v0, v7, Lvy;->aq:Lvn;

    .line 167
    invoke-virtual {v0}, Lvn;->k()V

    .line 168
    invoke-direct/range {p0 .. p0}, Lvy;->ab()V

    iget-object v0, v7, Lvy;->aq:Lvn;

    .line 169
    invoke-virtual {v7, v0}, Lvx;->q(Lvn;)V

    const/4 v0, 0x0

    :goto_3d
    if-ge v0, v15, :cond_61

    iget-object v1, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvx;

    iget-object v2, v7, Lvy;->aq:Lvn;

    .line 171
    invoke-virtual {v1, v2}, Lvx;->q(Lvn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_61
    iget-object v0, v7, Lvy;->aq:Lvn;

    invoke-virtual {v7, v12}, Lvy;->W(I)Z

    move-result v5

    .line 172
    invoke-virtual {v7, v0, v5}, Lvx;->b(Lvn;Z)V

    iget-object v1, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3e
    if-ge v2, v1, :cond_62

    iget-object v4, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvx;

    .line 175
    const/4 v12, 0x0

    invoke-virtual {v4, v12, v12}, Lvx;->z(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 176
    move/from16 v23, v6

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v4, v6, v12}, Lvx;->z(IZ)V

    .line 177
    instance-of v4, v4, Lvu;

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v23

    const/16 v12, 0x40

    goto :goto_3e

    :cond_62
    move/from16 v23, v6

    if-eqz v3, :cond_69

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v1, :cond_69

    iget-object v3, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvx;

    .line 179
    instance-of v4, v3, Lvu;

    if-eqz v4, :cond_68

    .line 180
    check-cast v3, Lvu;

    const/4 v4, 0x0

    :goto_40
    iget v6, v3, Lvu;->ar:I

    if-ge v4, v6, :cond_68

    iget-object v6, v3, Lvu;->aq:[Lvx;

    .line 181
    aget-object v6, v6, v4

    iget-boolean v12, v3, Lvu;->b:Z

    if-nez v12, :cond_63

    .line 182
    invoke-virtual {v6}, Lvx;->d()Z

    move-result v12

    if-nez v12, :cond_63

    move-object/from16 v24, v3

    goto :goto_43

    :cond_63
    iget v12, v3, Lvu;->a:I

    if-eqz v12, :cond_66

    move-object/from16 v24, v3

    const/4 v3, 0x1

    if-ne v12, v3, :cond_64

    const/4 v3, 0x3

    const/4 v12, 0x1

    goto :goto_42

    .line 183
    :cond_64
    const/4 v3, 0x2

    if-eq v12, v3, :cond_65

    const/4 v3, 0x3

    if-ne v12, v3, :cond_67

    goto :goto_41

    :cond_65
    const/4 v3, 0x3

    .line 184
    :goto_41
    const/4 v12, 0x1

    invoke-virtual {v6, v12, v12}, Lvx;->z(IZ)V

    goto :goto_43

    .line 182
    :cond_66
    move-object/from16 v24, v3

    const/4 v3, 0x3

    const/4 v12, 0x1

    .line 183
    :goto_42
    const/4 v3, 0x0

    invoke-virtual {v6, v3, v12}, Lvx;->z(IZ)V

    .line 182
    :cond_67
    :goto_43
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v24

    goto :goto_40

    .line 184
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_69
    iget-object v2, v7, Lvy;->aE:Ljava/util/HashSet;

    .line 185
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    const/4 v2, 0x0

    :goto_44
    if-lt v2, v1, :cond_81

    :cond_6a
    :goto_45
    iget-object v2, v7, Lvy;->aE:Ljava/util/HashSet;

    .line 191
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_6f

    iget-object v2, v7, Lvy;->aE:Ljava/util/HashSet;

    .line 192
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget-object v3, v7, Lvy;->aE:Ljava/util/HashSet;

    .line 193
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvx;

    .line 194
    check-cast v4, Lwd;

    iget-object v6, v7, Lvy;->aE:Ljava/util/HashSet;

    const/4 v12, 0x0

    :goto_47
    move-object/from16 v24, v3

    iget v3, v4, Lwd;->ar:I

    if-ge v12, v3, :cond_6c

    iget-object v3, v4, Lwd;->aq:[Lvx;

    .line 195
    aget-object v3, v3, v12

    .line 196
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 197
    invoke-virtual {v4, v0, v5}, Lvx;->b(Lvn;Z)V

    iget-object v3, v7, Lvy;->aE:Ljava/util/HashSet;

    .line 198
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_48

    .line 202
    :cond_6b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v24

    goto :goto_47

    .line 194
    :cond_6c
    move-object/from16 v3, v24

    goto :goto_46

    .line 198
    :cond_6d
    :goto_48
    iget-object v3, v7, Lvy;->aE:Ljava/util/HashSet;

    .line 199
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_6a

    iget-object v2, v7, Lvy;->aE:Ljava/util/HashSet;

    .line 200
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvx;

    .line 201
    invoke-virtual {v3, v0, v5}, Lvx;->b(Lvn;Z)V

    goto :goto_49

    :cond_6e
    iget-object v2, v7, Lvy;->aE:Ljava/util/HashSet;

    .line 202
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto :goto_45

    :cond_6f
    sget-boolean v2, Lvn;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v2, :cond_73

    :try_start_2
    new-instance v12, Ljava/util/HashSet;

    .line 215
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    :goto_4a
    if-ge v2, v1, :cond_71

    :try_start_3
    iget-object v3, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvx;

    .line 217
    invoke-virtual {v3}, Lvx;->F()Z

    move-result v4

    if-nez v4, :cond_70

    .line 218
    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 219
    :cond_71
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lvx;->N()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 220
    const/4 v2, 0x2

    if-ne v1, v2, :cond_72

    const/4 v6, 0x0

    goto :goto_4b

    .line 261
    :cond_72
    const/4 v6, 0x1

    .line 220
    :goto_4b
    const/16 v24, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    const/16 v20, 0x3

    move-object v3, v0

    move-object v4, v12

    move-object/from16 v25, v13

    move v13, v5

    move v5, v6

    move/from16 v26, v9

    move/from16 v9, v23

    move/from16 v6, v24

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lvx;->p(Lvy;Lvn;Ljava/util/HashSet;IZ)V

    .line 221
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvx;

    .line 222
    invoke-static {v7, v0, v2}, Lwc;->a(Lvy;Lvn;Lvx;)V

    .line 223
    invoke-virtual {v2, v0, v13}, Lvx;->b(Lvn;Z)V

    goto :goto_4c

    .line 158
    :catch_0
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v25, v13

    move/from16 v9, v23

    const/16 v20, 0x3

    :goto_4d
    const/4 v3, 0x0

    goto/16 :goto_55

    .line 261
    :cond_73
    move/from16 v26, v9

    move-object/from16 v25, v13

    move/from16 v9, v23

    const/16 v20, 0x3

    move v13, v5

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v1, :cond_79

    iget-object v3, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvx;

    .line 204
    instance-of v4, v3, Lvy;

    if-eqz v4, :cond_77

    .line 205
    iget-object v4, v3, Lvx;->ap:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    .line 206
    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v12, 0x2

    if-ne v6, v12, :cond_74

    .line 207
    invoke-virtual {v3, v5}, Lvx;->Q(I)V

    const/4 v6, 0x2

    goto :goto_4f

    .line 211
    :cond_74
    nop

    .line 207
    :goto_4f
    const/4 v5, 0x2

    if-ne v4, v5, :cond_75

    .line 208
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lvx;->R(I)V

    const/4 v4, 0x2

    goto :goto_50

    .line 211
    :cond_75
    nop

    .line 209
    :goto_50
    invoke-virtual {v3, v0, v13}, Lvx;->b(Lvn;Z)V

    const/4 v5, 0x2

    if-ne v6, v5, :cond_76

    .line 210
    invoke-virtual {v3, v5}, Lvx;->Q(I)V

    :cond_76
    if-ne v4, v5, :cond_78

    .line 211
    invoke-virtual {v3, v5}, Lvx;->R(I)V

    goto :goto_51

    .line 212
    :cond_77
    invoke-static {v7, v0, v3}, Lwc;->a(Lvy;Lvn;Lvx;)V

    .line 213
    invoke-virtual {v3}, Lvx;->F()Z

    move-result v4

    if-nez v4, :cond_78

    .line 214
    invoke-virtual {v3, v0, v13}, Lvx;->b(Lvn;Z)V

    .line 211
    :cond_78
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 223
    :cond_79
    iget v1, v7, Lvy;->at:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-lez v1, :cond_7a

    .line 224
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    invoke-static {v7, v0, v1, v2}, Lhr;->c(Lvy;Lvn;Ljava/util/ArrayList;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_52

    .line 158
    :catch_1
    move-exception v0

    move-object v3, v1

    goto/16 :goto_55

    .line 224
    :cond_7a
    :goto_52
    :try_start_7
    iget v1, v7, Lvy;->au:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    if-lez v1, :cond_7b

    .line 225
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_8
    invoke-static {v7, v0, v1, v2}, Lhr;->c(Lvy;Lvn;Ljava/util/ArrayList;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_7b
    :try_start_9
    iget-object v0, v7, Lvy;->aA:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7c

    .line 226
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-object v0, v7, Lvy;->aA:Ljava/lang/ref/WeakReference;

    .line 227
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvw;

    iget-object v1, v7, Lvy;->aq:Lvn;

    iget-object v2, v7, Lvy;->K:Lvw;

    invoke-virtual {v1, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lvy;->aa(Lvw;Lvs;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v1, 0x0

    :try_start_a
    iput-object v1, v7, Lvy;->aA:Ljava/lang/ref/WeakReference;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :cond_7c
    :try_start_b
    iget-object v0, v7, Lvy;->aC:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7d

    .line 228
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, v7, Lvy;->aC:Ljava/lang/ref/WeakReference;

    .line 229
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvw;

    iget-object v1, v7, Lvy;->aq:Lvn;

    iget-object v2, v7, Lvy;->M:Lvw;

    invoke-virtual {v1, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lvy;->Z(Lvw;Lvs;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    const/4 v1, 0x0

    :try_start_c
    iput-object v1, v7, Lvy;->aC:Ljava/lang/ref/WeakReference;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_7d
    :try_start_d
    iget-object v0, v7, Lvy;->aB:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7e

    .line 230
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v0, v7, Lvy;->aB:Ljava/lang/ref/WeakReference;

    .line 231
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvw;

    iget-object v1, v7, Lvy;->aq:Lvn;

    iget-object v2, v7, Lvy;->J:Lvw;

    invoke-virtual {v1, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lvy;->aa(Lvw;Lvs;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    const/4 v1, 0x0

    :try_start_e
    iput-object v1, v7, Lvy;->aB:Ljava/lang/ref/WeakReference;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :cond_7e
    :try_start_f
    iget-object v0, v7, Lvy;->aD:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_80

    .line 232
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, v7, Lvy;->aD:Ljava/lang/ref/WeakReference;

    .line 233
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvw;

    iget-object v1, v7, Lvy;->aq:Lvn;

    iget-object v2, v7, Lvy;->L:Lvw;

    invoke-virtual {v1, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lvy;->Z(Lvw;Lvs;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    const/4 v3, 0x0

    :try_start_10
    iput-object v3, v7, Lvy;->aD:Ljava/lang/ref/WeakReference;

    goto :goto_53

    .line 232
    :cond_7f
    const/4 v3, 0x0

    goto :goto_53

    .line 231
    :cond_80
    const/4 v3, 0x0

    .line 233
    :goto_53
    iget-object v0, v7, Lvy;->aq:Lvn;

    .line 234
    invoke-virtual {v0}, Lvn;->j()V

    goto :goto_56

    .line 158
    :catch_2
    move-exception v0

    goto/16 :goto_4d

    .line 214
    :cond_81
    move/from16 v26, v9

    move-object/from16 v25, v13

    move/from16 v9, v23

    const/4 v3, 0x0

    const/16 v20, 0x3

    move v13, v5

    iget-object v4, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvx;

    .line 187
    invoke-virtual {v4}, Lvx;->F()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 188
    instance-of v5, v4, Lwd;

    if-eqz v5, :cond_82

    iget-object v5, v7, Lvy;->aE:Ljava/util/HashSet;

    .line 189
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 190
    :cond_82
    invoke-virtual {v4, v0, v13}, Lvx;->b(Lvn;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 189
    :cond_83
    :goto_54
    add-int/lit8 v2, v2, 0x1

    move/from16 v23, v9

    move v5, v13

    move-object/from16 v13, v25

    move/from16 v9, v26

    goto/16 :goto_44

    .line 158
    :catch_3
    move-exception v0

    goto :goto_55

    :catch_4
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v25, v13

    move/from16 v9, v23

    const/4 v3, 0x0

    const/16 v20, 0x3

    goto :goto_55

    :catch_5
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v25, v13

    const/4 v3, 0x0

    const/16 v20, 0x3

    move v9, v6

    .line 235
    :goto_55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXCEPTION : "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    :goto_56
    sget-object v0, Lwc;->a:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    const/16 v1, 0x40

    invoke-virtual {v7, v1}, Lvy;->W(I)Z

    move-result v0

    .line 237
    invoke-virtual {v7, v0}, Lvx;->S(Z)V

    iget-object v2, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_57
    if-ge v4, v2, :cond_86

    iget-object v6, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvx;

    .line 240
    invoke-virtual {v6, v0}, Lvx;->S(Z)V

    iget v12, v6, Lvx;->k:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_85

    iget v6, v6, Lvx;->l:I

    if-eq v6, v13, :cond_84

    goto :goto_58

    :cond_84
    const/4 v6, 0x0

    goto :goto_59

    :cond_85
    :goto_58
    const/4 v6, 0x1

    :goto_59
    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_86
    const/4 v13, -0x1

    if-eqz v14, :cond_89

    const/16 v0, 0x8

    if-ge v9, v0, :cond_89

    sget-object v0, Lwc;->a:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_89

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_5a
    if-ge v0, v15, :cond_87

    iget-object v6, v7, Lvy;->aH:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvx;

    .line 242
    iget v12, v6, Lvx;->Y:I

    invoke-virtual {v6}, Lvx;->j()I

    move-result v17

    add-int v12, v12, v17

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 243
    iget v12, v6, Lvx;->Z:I

    invoke-virtual {v6}, Lvx;->h()I

    move-result v6

    add-int/2addr v12, v6

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_87
    iget v0, v7, Lvy;->ab:I

    .line 244
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v7, Lvy;->ac:I

    .line 245
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x2

    if-ne v10, v4, :cond_88

    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v6

    if-ge v6, v0, :cond_88

    .line 246
    invoke-virtual {v7, v0}, Lvx;->D(I)V

    iget-object v0, v7, Lvy;->ap:[I

    .line 247
    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v5, 0x1

    const/16 v21, 0x1

    goto :goto_5b

    .line 261
    :cond_88
    nop

    .line 247
    :goto_5b
    if-ne v11, v4, :cond_89

    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v0

    if-ge v0, v2, :cond_89

    .line 248
    invoke-virtual {v7, v2}, Lvx;->y(I)V

    iget-object v0, v7, Lvy;->ap:[I

    .line 249
    const/4 v2, 0x1

    aput v4, v0, v2

    const/4 v5, 0x1

    const/16 v21, 0x1

    goto :goto_5c

    .line 261
    :cond_89
    nop

    .line 249
    :goto_5c
    iget v0, v7, Lvy;->ab:I

    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v2

    .line 250
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v2

    if-le v0, v2, :cond_8a

    .line 251
    invoke-virtual {v7, v0}, Lvx;->D(I)V

    iget-object v0, v7, Lvy;->ap:[I

    .line 252
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v4, v0, v2

    const/4 v5, 0x1

    const/16 v21, 0x1

    goto :goto_5d

    .line 261
    :cond_8a
    nop

    .line 252
    :goto_5d
    iget v0, v7, Lvy;->ac:I

    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v2

    .line 253
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v2

    if-le v0, v2, :cond_8b

    .line 254
    invoke-virtual {v7, v0}, Lvx;->y(I)V

    iget-object v0, v7, Lvy;->ap:[I

    .line 255
    const/4 v2, 0x1

    aput v2, v0, v2

    const/4 v5, 0x1

    const/16 v21, 0x1

    goto :goto_5e

    .line 261
    :cond_8b
    nop

    .line 255
    :goto_5e
    if-nez v21, :cond_8e

    iget-object v0, v7, Lvy;->ap:[I

    .line 256
    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8c

    if-lez v8, :cond_8c

    invoke-virtual/range {p0 .. p0}, Lvx;->j()I

    move-result v0

    if-le v0, v8, :cond_8c

    const/4 v4, 0x1

    iput-boolean v4, v7, Lvy;->ay:Z

    iget-object v0, v7, Lvy;->ap:[I

    .line 257
    aput v4, v0, v2

    .line 258
    invoke-virtual {v7, v8}, Lvx;->D(I)V

    const/4 v5, 0x1

    const/16 v21, 0x1

    goto :goto_5f

    .line 261
    :cond_8c
    nop

    .line 258
    :goto_5f
    iget-object v0, v7, Lvy;->ap:[I

    .line 259
    const/4 v2, 0x1

    aget v0, v0, v2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8d

    if-lez v26, :cond_8d

    invoke-virtual/range {p0 .. p0}, Lvx;->h()I

    move-result v0

    move/from16 v6, v26

    if-le v0, v6, :cond_8f

    iput-boolean v2, v7, Lvy;->az:Z

    iget-object v0, v7, Lvy;->ap:[I

    .line 260
    aput v2, v0, v2

    .line 261
    invoke-virtual {v7, v6}, Lvx;->y(I)V

    const/4 v0, 0x1

    const/16 v21, 0x1

    goto :goto_61

    :cond_8d
    move/from16 v6, v26

    goto :goto_60

    :cond_8e
    move/from16 v6, v26

    const/4 v4, 0x2

    :cond_8f
    :goto_60
    move v0, v5

    :goto_61
    move v1, v9

    move-object/from16 v13, v25

    const/16 v12, 0x40

    move v9, v6

    goto/16 :goto_3c

    .line 190
    :cond_90
    move-object/from16 v25, v13

    move-object/from16 v1, v25

    iput-object v1, v7, Lvy;->aH:Ljava/util/ArrayList;

    if-eqz v21, :cond_91

    iget-object v0, v7, Lvy;->ap:[I

    .line 262
    const/4 v1, 0x0

    aput v10, v0, v1

    .line 263
    const/4 v1, 0x1

    aput v11, v0, v1

    :cond_91
    iget-object v0, v7, Lvy;->aq:Lvn;

    iget-object v0, v0, Lvn;->j:Lvm;

    .line 264
    invoke-virtual {v7, v0}, Lvx;->u(Lvm;)V

    return-void
.end method

.method public final U(I)V
    .locals 0

    iput p1, p0, Lvy;->ax:I

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lvy;->W(I)Z

    move-result p1

    sput-boolean p1, Lvn;->a:Z

    return-void
.end method

.method public final V(ZI)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lvy;->b:Lwj;

    iget-object v1, v0, Lwj;->a:Lvy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lvx;->M(I)I

    move-result v1

    iget-object v3, v0, Lwj;->a:Lvy;

    .line 2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lvx;->M(I)I

    move-result v3

    iget-object v5, v0, Lwj;->a:Lvy;

    invoke-virtual {v5}, Lvx;->k()I

    move-result v5

    iget-object v6, v0, Lwj;->a:Lvy;

    invoke-virtual {v6}, Lvx;->l()I

    move-result v6

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    if-ne v3, p1, :cond_4

    const/4 v3, 0x2

    :cond_0
    iget-object v7, v0, Lwj;->e:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 4
    check-cast v10, Lwt;

    .line 5
    iget v11, v10, Lwt;->g:I

    if-ne v11, p2, :cond_1

    .line 6
    invoke-virtual {v10}, Lwt;->e()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    .line 13
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    .line 6
    :goto_1
    if-nez p2, :cond_3

    if-eqz v7, :cond_4

    if-ne v1, p1, :cond_4

    iget-object p1, v0, Lwj;->a:Lvy;

    .line 7
    invoke-virtual {p1, v4}, Lvx;->Q(I)V

    iget-object p1, v0, Lwj;->a:Lvy;

    .line 8
    invoke-virtual {v0, p1, v2}, Lwj;->a(Lvy;I)I

    move-result v7

    .line 9
    invoke-virtual {p1, v7}, Lvx;->D(I)V

    iget-object p1, v0, Lwj;->a:Lvy;

    iget-object v7, p1, Lvy;->h:Lwp;

    .line 10
    iget-object v7, v7, Lwp;->f:Lwl;

    invoke-virtual {p1}, Lvx;->j()I

    move-result p1

    invoke-virtual {v7, p1}, Lwk;->c(I)V

    goto :goto_2

    .line 19
    :cond_3
    if-eqz v7, :cond_4

    if-ne v3, p1, :cond_4

    iget-object p1, v0, Lwj;->a:Lvy;

    .line 11
    invoke-virtual {p1, v4}, Lvx;->R(I)V

    iget-object p1, v0, Lwj;->a:Lvy;

    .line 8
    invoke-virtual {v0, p1, v4}, Lwj;->a(Lvy;I)I

    move-result v7

    .line 12
    invoke-virtual {p1, v7}, Lvx;->y(I)V

    iget-object p1, v0, Lwj;->a:Lvy;

    iget-object v7, p1, Lvy;->i:Lwr;

    .line 13
    iget-object v7, v7, Lwr;->f:Lwl;

    invoke-virtual {p1}, Lvx;->h()I

    move-result p1

    invoke-virtual {v7, p1}, Lwk;->c(I)V

    .line 10
    :cond_4
    :goto_2
    const/4 p1, 0x4

    if-nez p2, :cond_7

    iget-object v6, v0, Lwj;->a:Lvy;

    iget-object v7, v6, Lvy;->ap:[I

    .line 14
    aget v7, v7, v2

    if-eq v7, v4, :cond_6

    if-ne v7, p1, :cond_5

    goto :goto_3

    .line 29
    :cond_5
    const/4 p1, 0x0

    goto :goto_5

    .line 14
    :cond_6
    :goto_3
    invoke-virtual {v6}, Lvx;->j()I

    move-result p1

    add-int/2addr p1, v5

    iget-object v6, v0, Lwj;->a:Lvy;

    iget-object v6, v6, Lvy;->h:Lwp;

    .line 15
    iget-object v6, v6, Lwp;->j:Lwk;

    invoke-virtual {v6, p1}, Lwk;->c(I)V

    iget-object v6, v0, Lwj;->a:Lvy;

    iget-object v6, v6, Lvy;->h:Lwp;

    .line 16
    iget-object v6, v6, Lwp;->f:Lwl;

    sub-int/2addr p1, v5

    invoke-virtual {v6, p1}, Lwk;->c(I)V

    const/4 p1, 0x1

    goto :goto_5

    .line 29
    :cond_7
    iget-object v5, v0, Lwj;->a:Lvy;

    iget-object v7, v5, Lvy;->ap:[I

    .line 17
    aget v7, v7, v4

    if-eq v7, v4, :cond_9

    if-ne v7, p1, :cond_8

    goto :goto_4

    .line 19
    :cond_8
    const/4 p1, 0x0

    goto :goto_5

    .line 17
    :cond_9
    :goto_4
    invoke-virtual {v5}, Lvx;->h()I

    move-result p1

    add-int/2addr p1, v6

    iget-object v5, v0, Lwj;->a:Lvy;

    iget-object v5, v5, Lvy;->i:Lwr;

    .line 18
    iget-object v5, v5, Lwr;->j:Lwk;

    invoke-virtual {v5, p1}, Lwk;->c(I)V

    iget-object v5, v0, Lwj;->a:Lvy;

    iget-object v5, v5, Lvy;->i:Lwr;

    .line 19
    iget-object v5, v5, Lwr;->f:Lwl;

    sub-int/2addr p1, v6

    invoke-virtual {v5, p1}, Lwk;->c(I)V

    const/4 p1, 0x1

    .line 8
    :goto_5
    invoke-virtual {v0}, Lwj;->c()V

    iget-object v5, v0, Lwj;->e:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_d

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 20
    check-cast v8, Lwt;

    .line 21
    iget v9, v8, Lwt;->g:I

    if-eq v9, p2, :cond_a

    goto :goto_7

    .line 22
    :cond_a
    iget-object v9, v8, Lwt;->d:Lvx;

    iget-object v10, v0, Lwj;->a:Lvy;

    if-ne v9, v10, :cond_b

    iget-boolean v9, v8, Lwt;->h:Z

    if-eqz v9, :cond_c

    .line 23
    :cond_b
    invoke-virtual {v8}, Lwt;->c()V

    .line 21
    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 23
    :cond_d
    iget-object v5, v0, Lwj;->e:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_13

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 24
    check-cast v8, Lwt;

    .line 25
    iget v9, v8, Lwt;->g:I

    if-eq v9, p2, :cond_e

    goto :goto_9

    :cond_e
    if-nez p1, :cond_f

    .line 26
    iget-object v9, v8, Lwt;->d:Lvx;

    iget-object v10, v0, Lwj;->a:Lvy;

    if-eq v9, v10, :cond_12

    .line 27
    :cond_f
    iget-object v9, v8, Lwt;->i:Lwk;

    iget-boolean v9, v9, Lwk;->i:Z

    if-nez v9, :cond_10

    goto :goto_a

    .line 28
    :cond_10
    iget-object v9, v8, Lwt;->j:Lwk;

    iget-boolean v9, v9, Lwk;->i:Z

    if-nez v9, :cond_11

    goto :goto_a

    .line 29
    :cond_11
    instance-of v9, v8, Lwh;

    if-nez v9, :cond_12

    iget-object v8, v8, Lwt;->f:Lwl;

    iget-boolean v8, v8, Lwl;->i:Z

    if-nez v8, :cond_12

    goto :goto_a

    .line 25
    :cond_12
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 29
    :cond_13
    const/4 v2, 0x1

    .line 27
    :goto_a
    iget-object p1, v0, Lwj;->a:Lvy;

    .line 30
    invoke-virtual {p1, v1}, Lvx;->Q(I)V

    iget-object p1, v0, Lwj;->a:Lvy;

    .line 31
    invoke-virtual {p1, v3}, Lvx;->R(I)V

    return v2
.end method

.method public final W(I)Z
    .locals 1

    iget v0, p0, Lvy;->ax:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final a(Lvx;I)V
    .locals 5

    .line 4
    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Lvy;->at:I

    iget-object v1, p0, Lvy;->aw:[Lvv;

    array-length v2, v1

    add-int/2addr p2, v0

    if-lt p2, v2, :cond_0

    add-int/2addr v2, v2

    .line 5
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lvv;

    iput-object p2, p0, Lvy;->aw:[Lvv;

    :cond_0
    iget-object p2, p0, Lvy;->aw:[Lvv;

    iget v1, p0, Lvy;->at:I

    new-instance v2, Lvv;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lvy;->d:Z

    invoke-direct {v2, p1, v3, v4}, Lvv;-><init>(Lvx;IZ)V

    .line 6
    aput-object v2, p2, v1

    iget p1, p0, Lvy;->at:I

    add-int/2addr p1, v0

    iput p1, p0, Lvy;->at:I

    return-void

    :cond_1
    iget p2, p0, Lvy;->au:I

    iget-object v1, p0, Lvy;->av:[Lvv;

    .line 1
    array-length v2, v1

    add-int/2addr p2, v0

    if-lt p2, v2, :cond_2

    add-int/2addr v2, v2

    .line 2
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lvv;

    iput-object p2, p0, Lvy;->av:[Lvv;

    :cond_2
    iget-object p2, p0, Lvy;->av:[Lvv;

    iget v1, p0, Lvy;->au:I

    new-instance v2, Lvv;

    iget-boolean v3, p0, Lvy;->d:Z

    invoke-direct {v2, p1, v0, v3}, Lvv;-><init>(Lvx;IZ)V

    .line 3
    aput-object v2, p2, v1

    iget p1, p0, Lvy;->au:I

    add-int/2addr p1, v0

    iput p1, p0, Lvy;->au:I

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lvy;->b:Lwj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lwj;->b:Z

    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvy;->aq:Lvn;

    invoke-virtual {v0}, Lvn;->k()V

    const/4 v0, 0x0

    iput v0, p0, Lvy;->ar:I

    iput v0, p0, Lvy;->as:I

    .line 2
    invoke-super {p0}, Lwe;->s()V

    return-void
.end method
