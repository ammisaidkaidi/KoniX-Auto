.class final Ldeu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldfg;


# instance fields
.field private final a:Lder;

.field private final b:Z

.field private final c:Lev;


# direct methods
.method private constructor <init>(Lev;Lder;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldeu;->c:Lev;

    instance-of p1, p2, Lddi;

    iput-boolean p1, p0, Ldeu;->b:Z

    iput-object p2, p0, Ldeu;->a:Lder;

    return-void
.end method

.method static c(Lev;Lhl;Lder;)Ldeu;
    .locals 1

    .line 1
    new-instance p1, Ldeu;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0, v0}, Ldeu;-><init>(Lev;Lder;[B[B)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 8

    .line 1
    invoke-static {p1}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object v0

    iget v1, v0, Ldfr;->e:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Ldfr;->b:I

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Ldfr;->c:[I

    .line 2
    aget v4, v4, v3

    iget-object v5, v0, Ldfr;->d:[Ljava/lang/Object;

    .line 3
    aget-object v5, v5, v3

    check-cast v5, Ldcl;

    .line 4
    const/4 v6, 0x1

    invoke-static {v6}, Ldcu;->ab(I)I

    move-result v6

    add-int/2addr v6, v6

    const/4 v7, 0x2

    invoke-static {v4}, Ldge;->a(I)I

    move-result v4

    invoke-static {v7, v4}, Ldcu;->ac(II)I

    move-result v4

    add-int/2addr v6, v4

    const/4 v4, 0x3

    .line 5
    invoke-static {v4, v5}, Ldcu;->H(ILdcl;)I

    move-result v4

    add-int/2addr v6, v4

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v1, v0, Ldfr;->e:I

    .line 1
    :goto_1
    iget-boolean v0, p0, Ldeu;->b:Z

    if-eqz v0, :cond_4

    .line 6
    invoke-static {p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p1

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p1, Lddb;->b:Ldfo;

    .line 7
    invoke-virtual {v3}, Ldfo;->a()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Lddb;->b:Ldfo;

    .line 8
    invoke-virtual {v3, v2}, Ldfo;->f(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v3}, Lddb;->b(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p1, Lddb;->b:Ldfo;

    .line 9
    invoke-virtual {v2}, Ldfo;->c()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-virtual {p1, v3}, Lddb;->b(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_3

    :cond_3
    add-int/2addr v1, v0

    :cond_4
    return v1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Ldeu;->b:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-static {p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lddb;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldeu;->a:Lder;

    invoke-interface {v0}, Lder;->aF()Ldeq;

    move-result-object v0

    invoke-interface {v0}, Ldeq;->i()Lder;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lev;->P(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lhl;->s(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ldfh;->V(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Ldeu;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Ldfh;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/Object;Ldfc;Ldcz;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ldeu;->c:Lev;

    invoke-static {p1}, Lev;->O(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-static {p1}, Lhl;->p(Ljava/lang/Object;)Lddb;

    move-result-object v2

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ldfc;->c()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 1
    :goto_1
    check-cast v1, Ldfr;

    .line 27
    invoke-static {p1, v1}, Lev;->N(Ljava/lang/Object;Ldfr;)V

    return-void

    .line 4
    :cond_1
    :try_start_1
    invoke-interface {p2}, Ldfc;->d()I

    move-result v3

    sget v5, Ldge;->a:I

    if-eq v3, v5, :cond_4

    invoke-static {v3}, Ldge;->b(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Ldeu;->a:Lder;

    invoke-static {v3}, Ldge;->a(I)I

    move-result v3

    .line 23
    invoke-virtual {p3, v4, v3}, Ldcz;->c(Lder;I)Ldcx;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 24
    invoke-static {p2, v3, p3, v2}, Lhl;->q(Ldfc;Ljava/lang/Object;Ldcz;Lddb;)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v0, v1, p2}, Lev;->J(Ljava/lang/Object;Ldfc;)Z

    move-result v3

    goto :goto_2

    .line 26
    :cond_3
    invoke-interface {p2}, Ldfc;->U()Z

    move-result v3

    .line 25
    :goto_2
    if-nez v3, :cond_0

    .line 1
    goto :goto_1

    .line 26
    :cond_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    .line 5
    :cond_5
    :goto_3
    invoke-interface {p2}, Ldfc;->c()I

    move-result v7

    if-ne v7, v4, :cond_6

    goto :goto_4

    .line 6
    :cond_6
    invoke-interface {p2}, Ldfc;->d()I

    move-result v7

    sget v8, Ldge;->c:I

    if-ne v7, v8, :cond_7

    .line 7
    invoke-interface {p2}, Ldfc;->j()I

    move-result v3

    iget-object v5, p0, Ldeu;->a:Lder;

    .line 8
    invoke-virtual {p3, v5, v3}, Ldcz;->c(Lder;I)Ldcx;

    move-result-object v5

    goto :goto_3

    :cond_7
    sget v8, Ldge;->d:I

    if-ne v7, v8, :cond_9

    if-eqz v5, :cond_8

    .line 9
    invoke-static {p2, v5, p3, v2}, Lhl;->q(Ldfc;Ljava/lang/Object;Ldcz;Lddb;)V

    goto :goto_3

    .line 10
    :cond_8
    invoke-interface {p2}, Ldfc;->q()Ldcl;

    move-result-object v6

    goto :goto_3

    .line 11
    :cond_9
    invoke-interface {p2}, Ldfc;->U()Z

    move-result v7

    if-nez v7, :cond_5

    .line 12
    :goto_4
    invoke-interface {p2}, Ldfc;->d()I

    move-result v7

    sget v8, Ldge;->b:I

    if-ne v7, v8, :cond_d

    .line 28
    if-eqz v6, :cond_0

    if-eqz v5, :cond_c

    iget-object v3, v5, Ldcx;->c:Lder;

    check-cast v3, Lddk;

    const/4 v7, 0x5

    .line 13
    invoke-virtual {v3, v7}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Lddf;

    .line 13
    invoke-interface {v3}, Ldeq;->i()Lder;

    move-result-object v3

    .line 15
    invoke-virtual {v6}, Ldcl;->C()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 16
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ldcb;

    .line 17
    invoke-direct {v7, v6}, Ldcb;-><init>(Ljava/nio/ByteBuffer;)V

    .line 18
    sget-object v6, Ldez;->a:Ldez;

    invoke-virtual {v6, v3}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v6

    .line 19
    invoke-interface {v6, v3, v7, p3}, Ldfg;->h(Ljava/lang/Object;Ldfc;Ldcz;)V

    iget-object v5, v5, Ldcx;->d:Lddj;

    .line 20
    invoke-virtual {v2, v5, v3}, Lddb;->l(Lddj;Ljava/lang/Object;)V

    .line 21
    invoke-interface {v7}, Ldfc;->c()I

    move-result v3

    if-ne v3, v4, :cond_a

    goto/16 :goto_0

    .line 29
    :cond_a
    invoke-static {}, Lddu;->b()Lddu;

    move-result-object p2

    throw p2

    .line 11
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Direct buffers not yet supported"

    .line 30
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_c
    invoke-static {v1, v3, v6}, Lev;->K(Ljava/lang/Object;ILdcl;)V

    goto/16 :goto_0

    .line 28
    :cond_d
    invoke-static {}, Lddu;->b()Lddu;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :catchall_0
    move-exception p2

    .line 1
    check-cast v1, Ldfr;

    .line 27
    invoke-static {p1, v1}, Lev;->N(Ljava/lang/Object;Ldfr;)V

    .line 31
    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method public final i(Ljava/lang/Object;[BIILdca;)V
    .locals 9

    .line 1
    move-object v0, p1

    check-cast v0, Lddk;

    iget-object v1, v0, Lddk;->s:Ldfr;

    sget-object v2, Ldfr;->a:Ldfr;

    if-ne v1, v2, :cond_0

    invoke-static {}, Ldfr;->b()Ldfr;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lddk;->s:Ldfr;

    goto :goto_0

    .line 24
    :cond_0
    nop

    .line 3
    :goto_0
    check-cast p1, Lddi;

    .line 4
    invoke-virtual {p1}, Lddi;->c()Lddb;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_1
    if-ge p3, p4, :cond_8

    .line 5
    invoke-static {p2, p3, p5}, Lhl;->F([BILdca;)I

    move-result v4

    iget p3, p5, Ldca;->a:I

    sget v3, Ldge;->a:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    invoke-static {p3}, Ldge;->b(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v2, p5, Ldca;->d:Ldcz;

    iget-object v3, p0, Ldeu;->a:Lder;

    invoke-static {p3}, Ldge;->a(I)I

    move-result v5

    .line 17
    invoke-virtual {v2, v3, v5}, Ldcz;->c(Lder;I)Ldcx;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 18
    sget-object p3, Ldez;->a:Ldez;

    iget-object v2, v8, Ldcx;->c:Lder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 18
    invoke-virtual {p3, v2}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object p3

    .line 20
    invoke-static {p3, p2, v4, p4, p5}, Lhl;->z(Ldfg;[BIILdca;)I

    move-result p3

    iget-object v2, v8, Ldcx;->d:Lddj;

    iget-object v3, p5, Ldca;->c:Ljava/lang/Object;

    .line 21
    invoke-virtual {p1, v2, v3}, Lddb;->l(Lddj;Ljava/lang/Object;)V

    move-object v2, v8

    goto :goto_1

    .line 22
    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lhl;->E(I[BIILdfr;Ldca;)I

    move-result p3

    move-object v2, v8

    goto :goto_1

    .line 23
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lhl;->J(I[BIILdca;)I

    move-result p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_6

    .line 6
    invoke-static {p2, v4, p5}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, p5, Ldca;->a:I

    invoke-static {v6}, Ldge;->b(I)I

    move-result v7

    invoke-static {v6}, Ldge;->a(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    .line 16
    :pswitch_0
    if-eqz v2, :cond_4

    .line 7
    sget-object v6, Ldez;->a:Ldez;

    iget-object v7, v2, Ldcx;->c:Lder;

    .line 8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 7
    invoke-virtual {v6, v7}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object v6

    .line 9
    invoke-static {v6, p2, v4, p4, p5}, Lhl;->z(Ldfg;[BIILdca;)I

    move-result v4

    iget-object v6, v2, Ldcx;->d:Lddj;

    iget-object v7, p5, Ldca;->c:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v6, v7}, Lddb;->l(Lddj;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-ne v7, v5, :cond_5

    .line 11
    invoke-static {p2, v4, p5}, Lhl;->w([BILdca;)I

    move-result v4

    iget-object v3, p5, Ldca;->c:Ljava/lang/Object;

    .line 12
    check-cast v3, Ldcl;

    goto :goto_2

    :pswitch_1
    if-nez v7, :cond_5

    .line 13
    invoke-static {p2, v4, p5}, Lhl;->F([BILdca;)I

    move-result v4

    iget p3, p5, Ldca;->a:I

    iget-object v2, p5, Ldca;->d:Ldcz;

    iget-object v6, p0, Ldeu;->a:Lder;

    .line 14
    invoke-virtual {v2, v6, p3}, Ldcz;->c(Lder;I)Ldcx;

    move-result-object v2

    goto :goto_2

    .line 6
    :cond_5
    :goto_3
    sget v7, Ldge;->b:I

    if-eq v6, v7, :cond_6

    .line 15
    invoke-static {v6, p2, v4, p4, p5}, Lhl;->J(I[BIILdca;)I

    move-result v4

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {p3, v5}, Ldge;->c(II)I

    move-result p3

    .line 16
    invoke-virtual {v1, p3, v3}, Ldfr;->d(ILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    nop

    .line 4
    :goto_4
    move p3, v4

    goto/16 :goto_1

    .line 14
    :cond_8
    if-ne p3, p4, :cond_9

    .line 24
    return-void

    :cond_9
    invoke-static {}, Lddu;->g()Lddu;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Ldeu;->b:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lddb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final k(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lddb;->i()Z

    move-result p1

    return p1
.end method

.method public final l(Ljava/lang/Object;Ldcv;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lddb;->d()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lddj;

    .line 6
    invoke-virtual {v2}, Lddj;->a()Ldgd;

    move-result-object v2

    sget-object v3, Ldgd;->i:Ldgd;

    if-ne v2, v3, :cond_1

    .line 7
    instance-of v2, v1, Lddx;

    const v3, 0x13f38d82

    if-eqz v2, :cond_0

    .line 8
    check-cast v1, Lddx;

    iget-object v1, v1, Lddx;->a:Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lddz;

    .line 8
    invoke-virtual {v1}, Ldea;->a()Ldcl;

    move-result-object v1

    .line 10
    invoke-virtual {p2, v3, v1}, Ldcv;->l(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    nop

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Ldcv;->l(ILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    invoke-static {p1}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Ldfr;->b:I

    if-ge v0, v1, :cond_3

    iget-object v1, p1, Ldfr;->c:[I

    .line 13
    aget v1, v1, v0

    invoke-static {v1}, Ldge;->a(I)I

    move-result v1

    iget-object v2, p1, Ldfr;->d:[Ljava/lang/Object;

    .line 14
    aget-object v2, v2, v0

    invoke-virtual {p2, v1, v2}, Ldcv;->l(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_3
    return-void
.end method
