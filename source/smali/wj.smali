.class public final Lwj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lvy;

.field public b:Z

.field public c:Z

.field public final d:Lvy;

.field public final e:Ljava/util/ArrayList;

.field final f:Ljava/util/ArrayList;

.field public g:Lwz;

.field private final h:Lwf;


# direct methods
.method public constructor <init>(Lvy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwj;->b:Z

    iput-boolean v0, p0, Lwj;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwj;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lwj;->g:Lwz;

    new-instance v0, Lwf;

    invoke-direct {v0}, Lwf;-><init>()V

    iput-object v0, p0, Lwj;->h:Lwf;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwj;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lwj;->a:Lvy;

    iput-object p1, p0, Lwj;->d:Lvy;

    return-void
.end method

.method private final e(Lwt;ILjava/util/ArrayList;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lwt;->i:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwi;

    .line 2
    instance-of v2, v1, Lwk;

    if-eqz v2, :cond_1

    .line 3
    move-object v4, v1

    check-cast v4, Lwk;

    .line 4
    iget-object v6, p1, Lwt;->j:Lwk;

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, v1, Lwt;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lwt;

    .line 7
    iget-object v3, v1, Lwt;->i:Lwk;

    iget-object v5, p1, Lwt;->j:Lwk;

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p1, Lwt;->j:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwi;

    .line 9
    instance-of v2, v1, Lwk;

    if-eqz v2, :cond_4

    .line 10
    move-object v4, v1

    check-cast v4, Lwk;

    .line 11
    iget-object v6, p1, Lwt;->i:Lwk;

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_1

    .line 12
    :cond_4
    instance-of v2, v1, Lwt;

    if-eqz v2, :cond_3

    .line 13
    check-cast v1, Lwt;

    .line 14
    iget-object v3, v1, Lwt;->j:Lwk;

    iget-object v5, p1, Lwt;->i:Lwk;

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 15
    check-cast p1, Lwr;

    iget-object p1, p1, Lwr;->a:Lwk;

    iget-object p1, p1, Lwk;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lwi;

    .line 16
    instance-of v0, p2, Lwk;

    if-eqz v0, :cond_6

    .line 17
    move-object v2, p2

    check-cast v2, Lwk;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 18
    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private final f(Lvx;IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwj;->h:Lwf;

    iput p2, v0, Lwf;->i:I

    iput p4, v0, Lwf;->j:I

    iput p3, v0, Lwf;->a:I

    iput p5, v0, Lwf;->b:I

    iget-object p2, p0, Lwj;->g:Lwz;

    invoke-virtual {p2, p1, v0}, Lwz;->a(Lvx;Lwf;)V

    iget-object p2, p0, Lwj;->h:Lwf;

    iget p2, p2, Lwf;->c:I

    .line 2
    invoke-virtual {p1, p2}, Lvx;->D(I)V

    iget-object p2, p0, Lwj;->h:Lwf;

    iget p2, p2, Lwf;->d:I

    .line 3
    invoke-virtual {p1, p2}, Lvx;->y(I)V

    iget-object p2, p0, Lwj;->h:Lwf;

    iget-boolean p3, p2, Lwf;->f:Z

    iput-boolean p3, p1, Lvx;->F:Z

    iget p2, p2, Lwf;->e:I

    .line 4
    invoke-virtual {p1, p2}, Lvx;->v(I)V

    return-void
.end method

.method private final g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V
    .locals 8

    .line 1
    iget-object p1, p1, Lwk;->d:Lwt;

    iget-object v0, p1, Lwt;->e:Lwq;

    if-nez v0, :cond_b

    iget-object v0, p0, Lwj;->a:Lvy;

    iget-object v1, v0, Lvy;->h:Lwp;

    if-eq p1, v1, :cond_b

    iget-object v0, v0, Lvy;->i:Lwr;

    if-ne p1, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    if-nez p5, :cond_1

    new-instance p5, Lwq;

    .line 2
    invoke-direct {p5, p1}, Lwq;-><init>(Lwt;)V

    .line 3
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_1
    nop

    .line 3
    :goto_0
    iput-object p5, p1, Lwt;->e:Lwq;

    iget-object v0, p5, Lwq;->c:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lwt;->i:Lwk;

    .line 5
    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwi;

    .line 6
    instance-of v1, v0, Lwk;

    if-eqz v1, :cond_2

    .line 7
    move-object v1, v0

    check-cast v1, Lwk;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lwt;->j:Lwk;

    .line 8
    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwi;

    .line 9
    instance-of v1, v0, Lwk;

    if-eqz v1, :cond_4

    .line 10
    move-object v1, v0

    check-cast v1, Lwk;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_2

    :cond_5
    const/4 v6, 0x1

    if-ne p2, v6, :cond_7

    .line 11
    instance-of v0, p1, Lwr;

    if-eqz v0, :cond_7

    .line 12
    move-object v0, p1

    check-cast v0, Lwr;

    iget-object v0, v0, Lwr;->a:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwi;

    .line 13
    instance-of v1, v0, Lwk;

    if-eqz v1, :cond_6

    .line 14
    move-object v1, v0

    check-cast v1, Lwk;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_3

    :cond_7
    iget-object v0, p1, Lwt;->i:Lwk;

    .line 15
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lwk;

    .line 16
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_4

    :cond_8
    iget-object v0, p1, Lwt;->j:Lwk;

    .line 17
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lwk;

    .line 18
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V

    goto :goto_5

    :cond_9
    if-ne p2, v6, :cond_a

    .line 19
    instance-of p2, p1, Lwr;

    if-eqz p2, :cond_a

    .line 20
    check-cast p1, Lwr;

    iget-object p1, p1, Lwr;->a:Lwk;

    iget-object p1, p1, Lwk;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lwk;

    const/4 v2, 0x1

    .line 21
    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lwj;->g(Lwk;ILwk;Ljava/util/ArrayList;Lwq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_a
    return-void

    .line 1
    :cond_b
    :goto_7
    return-void

    .line 21
    :catchall_0
    move-exception p1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public final a(Lvy;I)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lwj;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v3, :cond_c

    iget-object v9, v0, Lwj;->f:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lwq;

    iget-object v10, v9, Lwq;->b:Lwt;

    .line 3
    instance-of v11, v10, Lwh;

    if-eqz v11, :cond_0

    .line 4
    move-object v11, v10

    check-cast v11, Lwh;

    .line 5
    iget v11, v11, Lwh;->g:I

    if-eq v11, v2, :cond_2

    move-wide v0, v4

    goto/16 :goto_7

    .line 8
    :cond_0
    if-nez v2, :cond_1

    .line 6
    instance-of v11, v10, Lwp;

    if-nez v11, :cond_2

    move-wide v0, v4

    goto/16 :goto_7

    .line 7
    :cond_1
    instance-of v11, v10, Lwr;

    if-nez v11, :cond_2

    move-wide v0, v4

    goto/16 :goto_7

    .line 26
    :cond_2
    if-nez v2, :cond_3

    iget-object v11, v1, Lvy;->h:Lwp;

    .line 8
    iget-object v11, v11, Lwp;->i:Lwk;

    goto :goto_1

    .line 9
    :cond_3
    iget-object v11, v1, Lvy;->i:Lwr;

    .line 8
    iget-object v11, v11, Lwr;->i:Lwk;

    :goto_1
    if-nez v2, :cond_4

    iget-object v12, v1, Lvy;->h:Lwp;

    .line 9
    iget-object v12, v12, Lwp;->j:Lwk;

    goto :goto_2

    .line 20
    :cond_4
    iget-object v12, v1, Lvy;->i:Lwr;

    .line 9
    iget-object v12, v12, Lwr;->j:Lwk;

    .line 10
    :goto_2
    iget-object v10, v10, Lwt;->i:Lwk;

    iget-object v10, v10, Lwk;->k:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v9, Lwq;->b:Lwt;

    .line 11
    iget-object v11, v11, Lwt;->j:Lwk;

    iget-object v11, v11, Lwk;->k:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    iget-object v12, v9, Lwq;->b:Lwt;

    .line 12
    invoke-virtual {v12}, Lwt;->a()J

    move-result-wide v12

    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    iget-object v10, v9, Lwq;->b:Lwt;

    .line 21
    iget-object v10, v10, Lwt;->i:Lwk;

    .line 14
    invoke-virtual {v9, v10, v4, v5}, Lwq;->b(Lwk;J)J

    move-result-wide v10

    iget-object v14, v9, Lwq;->b:Lwt;

    .line 22
    iget-object v14, v14, Lwt;->j:Lwk;

    .line 14
    invoke-virtual {v9, v14, v4, v5}, Lwq;->a(Lwk;J)J

    move-result-wide v14

    sub-long/2addr v10, v12

    iget-object v9, v9, Lwq;->b:Lwt;

    .line 23
    iget-object v4, v9, Lwt;->j:Lwk;

    iget v4, v4, Lwk;->e:I

    neg-int v5, v4

    int-to-long v0, v5

    cmp-long v5, v10, v0

    if-ltz v5, :cond_5

    int-to-long v0, v4

    add-long/2addr v10, v0

    goto :goto_3

    .line 25
    :cond_5
    nop

    .line 24
    :goto_3
    iget-object v0, v9, Lwt;->i:Lwk;

    iget v0, v0, Lwk;->e:I

    int-to-long v0, v0

    neg-long v14, v14

    sub-long/2addr v14, v12

    sub-long/2addr v14, v0

    cmp-long v5, v14, v0

    if-ltz v5, :cond_6

    sub-long/2addr v14, v0

    .line 25
    :cond_6
    iget-object v5, v9, Lwt;->d:Lvx;

    if-nez v2, :cond_7

    iget v5, v5, Lvx;->ad:F

    goto :goto_4

    :cond_7
    iget v5, v5, Lvx;->ae:F

    :goto_4
    const/4 v9, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v9, v5, v9

    if-lez v9, :cond_8

    long-to-float v9, v14

    div-float/2addr v9, v5

    long-to-float v10, v10

    sub-float v11, v16, v5

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-long v9, v9

    goto :goto_5

    :cond_8
    const-wide/16 v9, 0x0

    :goto_5
    long-to-float v9, v9

    mul-float v10, v9, v5

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-long v14, v10

    add-long/2addr v14, v12

    sub-float v16, v16, v5

    mul-float v9, v9, v16

    add-float/2addr v9, v11

    float-to-long v9, v9

    add-long/2addr v14, v9

    add-long/2addr v0, v14

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_6

    :cond_9
    if-eqz v10, :cond_a

    iget-object v0, v9, Lwq;->b:Lwt;

    .line 13
    iget-object v0, v0, Lwt;->i:Lwk;

    iget v1, v0, Lwk;->e:I

    int-to-long v4, v1

    .line 14
    invoke-virtual {v9, v0, v4, v5}, Lwq;->b(Lwk;J)J

    move-result-wide v0

    iget-object v4, v9, Lwq;->b:Lwt;

    .line 15
    iget-object v4, v4, Lwt;->i:Lwk;

    iget v4, v4, Lwk;->e:I

    int-to-long v4, v4

    add-long/2addr v4, v12

    .line 16
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_b

    iget-object v0, v9, Lwq;->b:Lwt;

    .line 17
    iget-object v0, v0, Lwt;->j:Lwk;

    iget v1, v0, Lwk;->e:I

    int-to-long v4, v1

    .line 14
    invoke-virtual {v9, v0, v4, v5}, Lwq;->a(Lwk;J)J

    move-result-wide v0

    neg-long v0, v0

    iget-object v4, v9, Lwq;->b:Lwt;

    .line 18
    iget-object v4, v4, Lwt;->j:Lwk;

    iget v4, v4, Lwk;->e:I

    neg-int v4, v4

    int-to-long v4, v4

    add-long/2addr v4, v12

    .line 19
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_6

    :cond_b
    iget-object v0, v9, Lwq;->b:Lwt;

    .line 20
    iget-object v1, v0, Lwt;->i:Lwk;

    iget v1, v1, Lwk;->e:I

    int-to-long v4, v1

    invoke-virtual {v0}, Lwt;->a()J

    move-result-wide v0

    add-long/2addr v4, v0

    iget-object v0, v9, Lwq;->b:Lwt;

    iget-object v0, v0, Lwt;->j:Lwk;

    iget v0, v0, Lwk;->e:I

    int-to-long v0, v0

    sub-long v0, v4, v0

    .line 25
    :goto_6
    nop

    .line 26
    :goto_7
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .line 7
    :cond_c
    long-to-int v0, v7

    return v0
.end method

.method public final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lwj;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lwj;->d:Lvy;

    iget-object v1, v1, Lvy;->h:Lwp;

    .line 2
    invoke-virtual {v1}, Lwp;->d()V

    iget-object v1, p0, Lwj;->d:Lvy;

    iget-object v1, v1, Lvy;->i:Lwr;

    .line 3
    invoke-virtual {v1}, Lwr;->d()V

    iget-object v1, p0, Lwj;->d:Lvy;

    iget-object v1, v1, Lvy;->h:Lwp;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lwj;->d:Lvy;

    iget-object v1, v1, Lvy;->i:Lwr;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lwj;->d:Lvy;

    iget-object v1, v1, Lvy;->aH:Ljava/util/ArrayList;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 7
    check-cast v7, Lvx;

    .line 8
    instance-of v8, v7, Lwa;

    if-eqz v8, :cond_0

    new-instance v6, Lwn;

    .line 9
    invoke-direct {v6, v7}, Lwn;-><init>(Lvx;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10
    :cond_0
    invoke-virtual {v7}, Lvx;->I()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 11
    iget-object v8, v7, Lvx;->f:Lwh;

    if-nez v8, :cond_1

    new-instance v8, Lwh;

    .line 12
    invoke-direct {v8, v7, v3}, Lwh;-><init>(Lvx;I)V

    iput-object v8, v7, Lvx;->f:Lwh;

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Ljava/util/HashSet;

    .line 13
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 14
    :cond_2
    iget-object v8, v7, Lvx;->f:Lwh;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_3
    iget-object v8, v7, Lvx;->h:Lwp;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_1
    invoke-virtual {v7}, Lvx;->J()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 17
    iget-object v8, v7, Lvx;->g:Lwh;

    if-nez v8, :cond_4

    new-instance v8, Lwh;

    .line 18
    invoke-direct {v8, v7, v6}, Lwh;-><init>(Lvx;I)V

    iput-object v8, v7, Lvx;->g:Lwh;

    :cond_4
    if-nez v4, :cond_5

    new-instance v4, Ljava/util/HashSet;

    .line 19
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 20
    :cond_5
    iget-object v6, v7, Lvx;->g:Lwh;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_6
    iget-object v6, v7, Lvx;->i:Lwr;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_2
    instance-of v6, v7, Lwb;

    if-eqz v6, :cond_7

    new-instance v6, Lwo;

    .line 23
    invoke-direct {v6, v7}, Lwo;-><init>(Lvx;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_8
    if-eqz v4, :cond_9

    .line 24
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 25
    check-cast v4, Lwt;

    .line 26
    invoke-virtual {v4}, Lwt;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 27
    check-cast v4, Lwt;

    .line 28
    iget-object v5, v4, Lwt;->d:Lvx;

    iget-object v7, p0, Lwj;->d:Lvy;

    if-eq v5, v7, :cond_b

    .line 29
    invoke-virtual {v4}, Lwt;->b()V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lwj;->f:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput v3, Lwq;->a:I

    iget-object v0, p0, Lwj;->a:Lvy;

    iget-object v0, v0, Lvy;->h:Lwp;

    iget-object v1, p0, Lwj;->f:Ljava/util/ArrayList;

    .line 31
    invoke-direct {p0, v0, v3, v1}, Lwj;->e(Lwt;ILjava/util/ArrayList;)V

    iget-object v0, p0, Lwj;->a:Lvy;

    iget-object v0, v0, Lvy;->i:Lwr;

    iget-object v1, p0, Lwj;->f:Ljava/util/ArrayList;

    .line 32
    invoke-direct {p0, v0, v6, v1}, Lwj;->e(Lwt;ILjava/util/ArrayList;)V

    iput-boolean v3, p0, Lwj;->b:Z

    return-void
.end method

.method public final c()V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    iget-object v0, v6, Lwj;->a:Lvy;

    iget-object v7, v0, Lvy;->aH:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_d

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lvx;

    .line 2
    iget-boolean v0, v11, Lvx;->e:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, v11, Lvx;->ap:[I

    aget v1, v0, v9

    .line 4
    const/4 v12, 0x1

    aget v0, v0, v12

    .line 5
    iget v2, v11, Lvx;->s:I

    .line 6
    iget v3, v11, Lvx;->t:I

    const/4 v4, 0x2

    const/4 v13, 0x3

    if-eq v1, v4, :cond_3

    if-ne v1, v13, :cond_2

    if-ne v2, v12, :cond_1

    const/4 v1, 0x1

    const/4 v14, 0x3

    goto :goto_1

    .line 12
    :cond_1
    const/4 v1, 0x0

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move v14, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move v14, v1

    const/4 v1, 0x1

    .line 6
    :goto_1
    if-eq v0, v4, :cond_6

    if-ne v0, v13, :cond_5

    if-ne v3, v12, :cond_4

    const/4 v0, 0x1

    const/4 v15, 0x3

    goto :goto_2

    .line 12
    :cond_4
    const/4 v0, 0x0

    const/4 v15, 0x3

    goto :goto_2

    :cond_5
    move v15, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move v15, v0

    const/4 v0, 0x1

    .line 7
    :goto_2
    iget-object v2, v11, Lvx;->h:Lwp;

    iget-object v2, v2, Lwp;->f:Lwl;

    iget-boolean v3, v2, Lwl;->i:Z

    .line 8
    iget-object v4, v11, Lvx;->i:Lwr;

    iget-object v4, v4, Lwr;->f:Lwl;

    iget-boolean v5, v4, Lwl;->i:Z

    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    const/4 v3, 0x1

    .line 17
    iget v5, v2, Lwl;->f:I

    const/4 v13, 0x1

    iget v14, v4, Lwl;->f:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v3

    move v3, v5

    move v4, v13

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lwj;->f(Lvx;IIII)V

    .line 18
    iput-boolean v12, v11, Lvx;->e:Z

    goto/16 :goto_3

    .line 20
    :cond_7
    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    .line 13
    iget v5, v2, Lwl;->f:I

    const/4 v14, 0x2

    iget v4, v4, Lwl;->f:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v3

    move v3, v5

    move v5, v4

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lwj;->f(Lvx;IIII)V

    if-ne v15, v13, :cond_8

    .line 14
    iget-object v0, v11, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->f:Lwl;

    invoke-virtual {v11}, Lvx;->h()I

    move-result v1

    iput v1, v0, Lwl;->m:I

    goto :goto_3

    .line 15
    :cond_8
    iget-object v0, v11, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->f:Lwl;

    invoke-virtual {v11}, Lvx;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lwk;->c(I)V

    .line 16
    iput-boolean v12, v11, Lvx;->e:Z

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_b

    if-eqz v1, :cond_b

    const/4 v3, 0x2

    .line 9
    iget v5, v2, Lwl;->f:I

    const/4 v15, 0x1

    iget v4, v4, Lwl;->f:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v3

    move v3, v5

    move v5, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lwj;->f(Lvx;IIII)V

    if-ne v14, v13, :cond_a

    .line 10
    iget-object v0, v11, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->f:Lwl;

    invoke-virtual {v11}, Lvx;->j()I

    move-result v1

    iput v1, v0, Lwl;->m:I

    goto :goto_3

    .line 11
    :cond_a
    iget-object v0, v11, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->f:Lwl;

    invoke-virtual {v11}, Lvx;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lwk;->c(I)V

    .line 12
    iput-boolean v12, v11, Lvx;->e:Z

    .line 19
    :cond_b
    :goto_3
    iget-boolean v0, v11, Lvx;->e:Z

    if-eqz v0, :cond_c

    iget-object v0, v11, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->b:Lwl;

    if-eqz v0, :cond_c

    iget v1, v11, Lvx;->aa:I

    .line 20
    invoke-virtual {v0, v1}, Lwk;->c(I)V

    .line 2
    :cond_c
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 12
    :cond_d
    return-void
.end method

.method public final d(Lvy;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    iget-object v1, v0, Lvy;->aH:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2a

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvx;

    .line 2
    iget-object v6, v5, Lvx;->ap:[I

    aget v7, v6, v3

    .line 3
    const/4 v12, 0x1

    aget v6, v6, v12

    iget v8, v5, Lvx;->ag:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 4
    iput-boolean v12, v5, Lvx;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_c

    .line 5
    :cond_0
    iget v8, v5, Lvx;->x:F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v10, 0x3

    cmpg-float v11, v8, v13

    if-gez v11, :cond_1

    if-ne v7, v10, :cond_1

    .line 6
    iput v9, v5, Lvx;->s:I

    const/4 v7, 0x3

    goto :goto_1

    .line 14
    :cond_1
    nop

    .line 7
    :goto_1
    iget v11, v5, Lvx;->A:F

    cmpg-float v14, v11, v13

    if-gez v14, :cond_2

    if-ne v6, v10, :cond_2

    .line 8
    iput v9, v5, Lvx;->t:I

    const/4 v6, 0x3

    goto :goto_2

    .line 14
    :cond_2
    nop

    .line 8
    :goto_2
    iget v14, v5, Lvx;->W:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    if-ne v7, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-ne v6, v12, :cond_4

    .line 9
    :cond_3
    iput v10, v5, Lvx;->s:I

    goto :goto_3

    .line 70
    :cond_4
    if-ne v6, v10, :cond_6

    if-eq v7, v9, :cond_5

    if-ne v7, v12, :cond_6

    .line 10
    :cond_5
    iput v10, v5, Lvx;->t:I

    goto :goto_3

    :cond_6
    if-ne v7, v10, :cond_8

    if-ne v6, v10, :cond_8

    .line 11
    iget v14, v5, Lvx;->s:I

    if-nez v14, :cond_7

    .line 12
    iput v10, v5, Lvx;->s:I

    .line 13
    :cond_7
    iget v14, v5, Lvx;->t:I

    if-nez v14, :cond_8

    .line 14
    iput v10, v5, Lvx;->t:I

    .line 9
    :cond_8
    :goto_3
    if-ne v7, v10, :cond_a

    .line 15
    iget v14, v5, Lvx;->s:I

    if-ne v14, v12, :cond_a

    .line 16
    iget-object v14, v5, Lvx;->J:Lvw;

    iget-object v14, v14, Lvw;->e:Lvw;

    if-eqz v14, :cond_9

    iget-object v14, v5, Lvx;->L:Lvw;

    iget-object v14, v14, Lvw;->e:Lvw;

    if-nez v14, :cond_a

    const/4 v7, 0x2

    goto :goto_4

    .line 70
    :cond_9
    const/4 v7, 0x2

    .line 16
    :cond_a
    :goto_4
    if-ne v6, v10, :cond_c

    .line 17
    iget v14, v5, Lvx;->t:I

    if-ne v14, v12, :cond_c

    .line 18
    iget-object v14, v5, Lvx;->K:Lvw;

    iget-object v14, v14, Lvw;->e:Lvw;

    if-eqz v14, :cond_b

    iget-object v14, v5, Lvx;->M:Lvw;

    iget-object v14, v14, Lvw;->e:Lvw;

    if-nez v14, :cond_c

    const/4 v14, 0x2

    goto :goto_5

    .line 70
    :cond_b
    const/4 v14, 0x2

    goto :goto_5

    .line 19
    :cond_c
    move v14, v6

    :goto_5
    iget-object v6, v5, Lvx;->h:Lwp;

    iput v7, v6, Lwp;->k:I

    .line 20
    iget v15, v5, Lvx;->s:I

    iput v15, v6, Lwp;->c:I

    .line 21
    iget-object v6, v5, Lvx;->i:Lwr;

    iput v14, v6, Lwr;->k:I

    .line 22
    iget v13, v5, Lvx;->t:I

    iput v13, v6, Lwr;->c:I

    const/4 v6, 0x4

    if-eq v7, v6, :cond_d

    if-eq v7, v12, :cond_d

    if-ne v7, v9, :cond_e

    const/4 v7, 0x2

    :cond_d
    if-eq v14, v6, :cond_26

    if-eq v14, v12, :cond_26

    if-ne v14, v9, :cond_e

    const/4 v13, 0x0

    goto/16 :goto_9

    .line 30
    :cond_e
    const/high16 v16, 0x3f000000    # 0.5f

    if-ne v7, v10, :cond_16

    if-eq v14, v9, :cond_f

    if-ne v14, v12, :cond_16

    :cond_f
    if-ne v15, v10, :cond_11

    if-ne v14, v9, :cond_10

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 31
    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 32
    :cond_10
    invoke-virtual {v5}, Lvx;->h()I

    move-result v11

    const/4 v8, 0x1

    int-to-float v6, v11

    .line 33
    iget v7, v5, Lvx;->W:F

    mul-float v6, v6, v7

    add-float v6, v6, v16

    float-to-int v9, v6

    const/4 v10, 0x1

    .line 34
    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 35
    iget-object v6, v5, Lvx;->h:Lwp;

    iget-object v6, v6, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 36
    iget-object v6, v5, Lvx;->i:Lwr;

    iget-object v6, v6, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 37
    iput-boolean v12, v5, Lvx;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_11
    if-ne v15, v12, :cond_12

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 38
    move-object/from16 v6, p0

    move-object v7, v5

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 39
    iget-object v6, v5, Lvx;->h:Lwp;

    iget-object v6, v6, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v5

    iput v5, v6, Lwl;->m:I

    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_12
    if-ne v15, v9, :cond_14

    iget-object v9, v0, Lvy;->ap:[I

    .line 40
    aget v9, v9, v3

    if-eq v9, v12, :cond_13

    if-ne v9, v6, :cond_16

    :cond_13
    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Lvx;->j()I

    move-result v6

    int-to-float v6, v6

    mul-float v8, v8, v6

    add-float v8, v8, v16

    float-to-int v10, v8

    .line 41
    invoke-virtual {v5}, Lvx;->h()I

    move-result v11

    .line 42
    move-object/from16 v6, p0

    move-object v7, v5

    move v8, v9

    move v9, v10

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 43
    iget-object v6, v5, Lvx;->h:Lwp;

    iget-object v6, v6, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 44
    iget-object v6, v5, Lvx;->i:Lwr;

    iget-object v6, v6, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 45
    iput-boolean v12, v5, Lvx;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_c

    .line 46
    :cond_14
    iget-object v9, v5, Lvx;->R:[Lvw;

    aget-object v6, v9, v3

    iget-object v6, v6, Lvw;->e:Lvw;

    if-eqz v6, :cond_15

    aget-object v6, v9, v12

    iget-object v6, v6, Lvw;->e:Lvw;

    if-nez v6, :cond_16

    :cond_15
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 75
    move-object/from16 v6, p0

    move-object v7, v5

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 76
    iget-object v6, v5, Lvx;->h:Lwp;

    iget-object v6, v6, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 77
    iget-object v6, v5, Lvx;->i:Lwr;

    iget-object v6, v6, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 78
    iput-boolean v12, v5, Lvx;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_16
    if-ne v14, v10, :cond_20

    const/4 v6, 0x2

    if-eq v7, v6, :cond_18

    if-ne v7, v12, :cond_17

    goto :goto_6

    :cond_17
    move v9, v7

    goto/16 :goto_7

    :cond_18
    :goto_6
    if-ne v13, v10, :cond_1b

    const/4 v6, 0x2

    if-ne v7, v6, :cond_19

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 47
    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 48
    :cond_19
    invoke-virtual {v5}, Lvx;->j()I

    move-result v9

    .line 49
    iget v6, v5, Lvx;->W:F

    iget v7, v5, Lvx;->X:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1a

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    :cond_1a
    const/4 v8, 0x1

    const/4 v10, 0x1

    int-to-float v7, v9

    mul-float v7, v7, v6

    add-float v7, v7, v16

    float-to-int v11, v7

    .line 50
    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 51
    iget-object v6, v5, Lvx;->h:Lwp;

    iget-object v6, v6, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 52
    iget-object v6, v5, Lvx;->i:Lwr;

    iget-object v6, v6, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 53
    iput-boolean v12, v5, Lvx;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_1b
    if-ne v13, v12, :cond_1c

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 54
    move-object/from16 v6, p0

    move v8, v7

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 55
    iget-object v6, v5, Lvx;->i:Lwr;

    iget-object v6, v6, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v5

    iput v5, v6, Lwl;->m:I

    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_1c
    move v9, v7

    const/4 v6, 0x2

    if-ne v13, v6, :cond_1e

    iget-object v6, v0, Lvy;->ap:[I

    .line 56
    aget v6, v6, v12

    if-eq v6, v12, :cond_1d

    const/4 v7, 0x4

    if-ne v6, v7, :cond_21

    .line 57
    :cond_1d
    invoke-virtual {v5}, Lvx;->j()I

    move-result v10

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lvx;->h()I

    move-result v6

    int-to-float v6, v6

    mul-float v11, v11, v6

    add-float v11, v11, v16

    float-to-int v11, v11

    .line 58
    move-object/from16 v6, p0

    move-object v7, v5

    move v8, v9

    move v9, v10

    move v10, v13

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 59
    iget-object v6, v5, Lvx;->h:Lwp;

    iget-object v6, v6, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 60
    iget-object v6, v5, Lvx;->i:Lwr;

    iget-object v6, v6, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lwk;->c(I)V

    .line 61
    iput-boolean v12, v5, Lvx;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_c

    .line 62
    :cond_1e
    iget-object v6, v5, Lvx;->R:[Lvw;

    const/4 v7, 0x2

    aget-object v3, v6, v7

    iget-object v3, v3, Lvw;->e:Lvw;

    if-eqz v3, :cond_1f

    aget-object v3, v6, v10

    iget-object v3, v3, Lvw;->e:Lvw;

    if-nez v3, :cond_21

    :cond_1f
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 71
    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 72
    iget-object v3, v5, Lvx;->h:Lwp;

    iget-object v3, v3, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v6

    invoke-virtual {v3, v6}, Lwk;->c(I)V

    .line 73
    iget-object v3, v5, Lvx;->i:Lwr;

    iget-object v3, v3, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v6

    invoke-virtual {v3, v6}, Lwk;->c(I)V

    .line 74
    iput-boolean v12, v5, Lvx;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_c

    .line 78
    :cond_20
    move v9, v7

    .line 74
    :cond_21
    :goto_7
    if-ne v9, v10, :cond_25

    if-ne v14, v10, :cond_25

    if-eq v15, v12, :cond_24

    if-ne v13, v12, :cond_22

    const/4 v13, 0x0

    goto :goto_8

    .line 65
    :cond_22
    const/4 v3, 0x2

    if-ne v13, v3, :cond_23

    if-ne v15, v3, :cond_23

    iget-object v3, v0, Lvy;->ap:[I

    .line 66
    const/4 v13, 0x0

    aget v6, v3, v13

    if-ne v6, v12, :cond_29

    aget v3, v3, v12

    if-ne v3, v12, :cond_29

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lvx;->j()I

    move-result v6

    int-to-float v6, v6

    mul-float v8, v8, v6

    add-float v8, v8, v16

    float-to-int v9, v8

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Lvx;->h()I

    move-result v6

    int-to-float v6, v6

    mul-float v11, v11, v6

    add-float v11, v11, v16

    float-to-int v11, v11

    .line 67
    move-object/from16 v6, p0

    move-object v7, v5

    move v8, v3

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 68
    iget-object v3, v5, Lvx;->h:Lwp;

    iget-object v3, v3, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v6

    invoke-virtual {v3, v6}, Lwk;->c(I)V

    .line 69
    iget-object v3, v5, Lvx;->i:Lwr;

    iget-object v3, v3, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v6

    invoke-virtual {v3, v6}, Lwk;->c(I)V

    .line 70
    iput-boolean v12, v5, Lvx;->e:Z

    goto/16 :goto_c

    .line 65
    :cond_23
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 74
    :cond_24
    const/4 v13, 0x0

    :goto_8
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 63
    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 64
    iget-object v3, v5, Lvx;->h:Lwp;

    iget-object v3, v3, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v6

    iput v6, v3, Lwl;->m:I

    .line 65
    iget-object v3, v5, Lvx;->i:Lwr;

    iget-object v3, v3, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v5

    iput v5, v3, Lwl;->m:I

    goto :goto_c

    .line 74
    :cond_25
    const/4 v13, 0x0

    goto :goto_c

    .line 22
    :cond_26
    const/4 v13, 0x0

    .line 23
    move v9, v14

    :goto_9
    invoke-virtual {v5}, Lvx;->j()I

    move-result v3

    const/4 v6, 0x4

    if-ne v7, v6, :cond_27

    invoke-virtual/range {p1 .. p1}, Lvx;->j()I

    move-result v3

    .line 24
    iget-object v6, v5, Lvx;->J:Lvw;

    iget v6, v6, Lvw;->f:I

    sub-int/2addr v3, v6

    iget-object v6, v5, Lvx;->L:Lvw;

    iget v6, v6, Lvw;->f:I

    sub-int/2addr v3, v6

    const/4 v8, 0x1

    goto :goto_a

    .line 23
    :cond_27
    move v8, v7

    .line 25
    :goto_a
    invoke-virtual {v5}, Lvx;->h()I

    move-result v6

    const/4 v7, 0x4

    if-ne v9, v7, :cond_28

    invoke-virtual/range {p1 .. p1}, Lvx;->h()I

    move-result v6

    .line 26
    iget-object v7, v5, Lvx;->K:Lvw;

    iget v7, v7, Lvw;->f:I

    sub-int/2addr v6, v7

    iget-object v7, v5, Lvx;->M:Lvw;

    iget v7, v7, Lvw;->f:I

    sub-int/2addr v6, v7

    move v11, v6

    const/4 v10, 0x1

    goto :goto_b

    .line 25
    :cond_28
    move v11, v6

    move v10, v9

    .line 27
    :goto_b
    move-object/from16 v6, p0

    move-object v7, v5

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lwj;->f(Lvx;IIII)V

    .line 28
    iget-object v3, v5, Lvx;->h:Lwp;

    iget-object v3, v3, Lwp;->f:Lwl;

    invoke-virtual {v5}, Lvx;->j()I

    move-result v6

    invoke-virtual {v3, v6}, Lwk;->c(I)V

    .line 29
    iget-object v3, v5, Lvx;->i:Lwr;

    iget-object v3, v3, Lwr;->f:Lwl;

    invoke-virtual {v5}, Lvx;->h()I

    move-result v6

    invoke-virtual {v3, v6}, Lwk;->c(I)V

    .line 30
    iput-boolean v12, v5, Lvx;->e:Z

    .line 4
    :cond_29
    :goto_c
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 14
    :cond_2a
    return-void
.end method
