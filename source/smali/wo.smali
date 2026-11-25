.class final Lwo;
.super Lwt;
.source "PG"


# direct methods
.method public constructor <init>(Lvx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lwt;-><init>(Lvx;)V

    return-void
.end method

.method private final g(Lwk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwo;->i:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p1, Lwk;->k:Ljava/util/List;

    iget-object v0, p0, Lwo;->i:Lwk;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lwo;->d:Lvx;

    instance-of v1, v0, Lvu;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lwo;->i:Lwk;

    .line 2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lwk;->b:Z

    .line 3
    check-cast v0, Lvu;

    iget v2, v0, Lvu;->a:I

    iget-boolean v3, v0, Lvu;->b:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/4 v2, 0x7

    .line 4
    iput v2, v1, Lwk;->l:I

    .line 5
    :goto_0
    iget v1, v0, Lvu;->ar:I

    if-ge v5, v1, :cond_2

    .line 6
    iget-object v1, v0, Lvu;->aq:[Lvx;

    aget-object v1, v1, v5

    if-nez v3, :cond_0

    iget v2, v1, Lvx;->ag:I

    if-eq v2, v4, :cond_1

    .line 7
    :cond_0
    iget-object v1, v1, Lvx;->i:Lwr;

    iget-object v1, v1, Lwr;->j:Lwk;

    .line 8
    iget-object v2, v1, Lwk;->j:Ljava/util/List;

    iget-object v6, p0, Lwo;->i:Lwk;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lwo;->i:Lwk;

    .line 9
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lwo;->d:Lvx;

    .line 10
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->i:Lwk;

    invoke-direct {p0, v0}, Lwo;->g(Lwk;)V

    iget-object v0, p0, Lwo;->d:Lvx;

    .line 11
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->j:Lwk;

    invoke-direct {p0, v0}, Lwo;->g(Lwk;)V

    return-void

    :pswitch_1
    const/4 v2, 0x6

    .line 12
    iput v2, v1, Lwk;->l:I

    .line 13
    :goto_1
    iget v1, v0, Lvu;->ar:I

    if-ge v5, v1, :cond_5

    .line 14
    iget-object v1, v0, Lvu;->aq:[Lvx;

    aget-object v1, v1, v5

    if-nez v3, :cond_3

    iget v2, v1, Lvx;->ag:I

    if-eq v2, v4, :cond_4

    .line 15
    :cond_3
    iget-object v1, v1, Lvx;->i:Lwr;

    iget-object v1, v1, Lwr;->i:Lwk;

    .line 16
    iget-object v2, v1, Lwk;->j:Ljava/util/List;

    iget-object v6, p0, Lwo;->i:Lwk;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lwo;->i:Lwk;

    .line 17
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lwo;->d:Lvx;

    .line 18
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->i:Lwk;

    invoke-direct {p0, v0}, Lwo;->g(Lwk;)V

    iget-object v0, p0, Lwo;->d:Lvx;

    .line 19
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->j:Lwk;

    invoke-direct {p0, v0}, Lwo;->g(Lwk;)V

    return-void

    :pswitch_2
    const/4 v2, 0x5

    .line 20
    iput v2, v1, Lwk;->l:I

    .line 21
    :goto_2
    iget v1, v0, Lvu;->ar:I

    if-ge v5, v1, :cond_8

    .line 22
    iget-object v1, v0, Lvu;->aq:[Lvx;

    aget-object v1, v1, v5

    if-nez v3, :cond_6

    iget v2, v1, Lvx;->ag:I

    if-eq v2, v4, :cond_7

    .line 23
    :cond_6
    iget-object v1, v1, Lvx;->h:Lwp;

    iget-object v1, v1, Lwp;->j:Lwk;

    .line 24
    iget-object v2, v1, Lwk;->j:Ljava/util/List;

    iget-object v6, p0, Lwo;->i:Lwk;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lwo;->i:Lwk;

    .line 25
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lwo;->d:Lvx;

    .line 26
    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->i:Lwk;

    invoke-direct {p0, v0}, Lwo;->g(Lwk;)V

    iget-object v0, p0, Lwo;->d:Lvx;

    .line 27
    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->j:Lwk;

    invoke-direct {p0, v0}, Lwo;->g(Lwk;)V

    return-void

    :pswitch_3
    const/4 v2, 0x4

    .line 28
    iput v2, v1, Lwk;->l:I

    .line 29
    :goto_3
    iget v1, v0, Lvu;->ar:I

    if-ge v5, v1, :cond_b

    .line 30
    iget-object v1, v0, Lvu;->aq:[Lvx;

    aget-object v1, v1, v5

    if-nez v3, :cond_9

    iget v2, v1, Lvx;->ag:I

    if-eq v2, v4, :cond_a

    .line 31
    :cond_9
    iget-object v1, v1, Lvx;->h:Lwp;

    iget-object v1, v1, Lwp;->i:Lwk;

    .line 32
    iget-object v2, v1, Lwk;->j:Ljava/util/List;

    iget-object v6, p0, Lwo;->i:Lwk;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lwo;->i:Lwk;

    .line 33
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lwo;->d:Lvx;

    .line 34
    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->i:Lwk;

    invoke-direct {p0, v0}, Lwo;->g(Lwk;)V

    iget-object v0, p0, Lwo;->d:Lvx;

    .line 35
    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->j:Lwk;

    invoke-direct {p0, v0}, Lwo;->g(Lwk;)V

    :cond_c
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwo;->d:Lvx;

    instance-of v1, v0, Lvu;

    if-eqz v1, :cond_2

    .line 2
    move-object v1, v0

    check-cast v1, Lvu;

    iget v1, v1, Lvu;->a:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lwo;->i:Lwk;

    .line 4
    iget v1, v1, Lwk;->f:I

    iput v1, v0, Lvx;->Z:I

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object v1, p0, Lwo;->i:Lwk;

    .line 3
    iget v1, v1, Lwk;->f:I

    iput v1, v0, Lvx;->Y:I

    return-void

    .line 4
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lwo;->e:Lwq;

    iget-object v0, p0, Lwo;->i:Lwk;

    invoke-virtual {v0}, Lwk;->b()V

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lwo;->d:Lvx;

    check-cast v0, Lvu;

    iget v1, v0, Lvu;->a:I

    iget-object v2, p0, Lwo;->i:Lwk;

    .line 2
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lwk;

    .line 3
    iget v6, v6, Lwk;->f:I

    if-eq v5, v3, :cond_1

    if-ge v6, v5, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    if-ge v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 4
    :cond_4
    iget-object v1, p0, Lwo;->i:Lwk;

    iget v0, v0, Lvu;->c:I

    add-int/2addr v4, v0

    .line 5
    invoke-virtual {v1, v4}, Lwk;->c(I)V

    return-void

    .line 3
    :cond_5
    :goto_1
    iget-object v1, p0, Lwo;->i:Lwk;

    iget v0, v0, Lvu;->c:I

    add-int/2addr v5, v0

    .line 4
    invoke-virtual {v1, v5}, Lwk;->c(I)V

    return-void
.end method
