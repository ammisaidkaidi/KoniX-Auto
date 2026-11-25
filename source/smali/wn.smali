.class public final Lwn;
.super Lwt;
.source "PG"


# direct methods
.method public constructor <init>(Lvx;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lwt;-><init>(Lvx;)V

    .line 2
    iget-object v0, p1, Lvx;->h:Lwp;

    invoke-virtual {v0}, Lwp;->d()V

    .line 3
    iget-object v0, p1, Lvx;->i:Lwr;

    invoke-virtual {v0}, Lwr;->d()V

    .line 4
    check-cast p1, Lwa;

    iget p1, p1, Lwa;->aq:I

    iput p1, p0, Lwn;->g:I

    return-void
.end method

.method private final g(Lwk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwn;->i:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p1, Lwk;->k:Ljava/util/List;

    iget-object v0, p0, Lwn;->i:Lwk;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lwn;->d:Lvx;

    move-object v1, v0

    check-cast v1, Lwa;

    iget v2, v1, Lwa;->b:I

    iget v3, v1, Lwa;->c:I

    iget v4, v1, Lwa;->a:F

    iget v1, v1, Lwa;->aq:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v1, v4, :cond_2

    if-eq v2, v5, :cond_0

    iget-object v1, p0, Lwn;->i:Lwk;

    .line 2
    iget-object v1, v1, Lwk;->k:Ljava/util/List;

    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->i:Lwk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->d:Lvx;

    .line 3
    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->i:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwn;->i:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->i:Lwk;

    .line 4
    iput v2, v0, Lwk;->e:I

    goto :goto_0

    .line 12
    :cond_0
    if-eq v3, v5, :cond_1

    iget-object v1, p0, Lwn;->i:Lwk;

    .line 5
    iget-object v1, v1, Lwk;->k:Ljava/util/List;

    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->j:Lwk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->d:Lvx;

    .line 6
    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->j:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwn;->i:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->i:Lwk;

    neg-int v1, v3

    .line 7
    iput v1, v0, Lwk;->e:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lwn;->i:Lwk;

    .line 8
    iput-boolean v4, v1, Lwk;->b:Z

    .line 9
    iget-object v1, v1, Lwk;->k:Ljava/util/List;

    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->j:Lwk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->d:Lvx;

    .line 10
    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->j:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwn;->i:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Lwn;->d:Lvx;

    .line 11
    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->i:Lwk;

    invoke-direct {p0, v0}, Lwn;->g(Lwk;)V

    iget-object v0, p0, Lwn;->d:Lvx;

    .line 12
    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->j:Lwk;

    invoke-direct {p0, v0}, Lwn;->g(Lwk;)V

    return-void

    .line 10
    :cond_2
    if-eq v2, v5, :cond_3

    iget-object v1, p0, Lwn;->i:Lwk;

    .line 13
    iget-object v1, v1, Lwk;->k:Ljava/util/List;

    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->i:Lwk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->d:Lvx;

    .line 14
    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->i:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwn;->i:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->i:Lwk;

    .line 15
    iput v2, v0, Lwk;->e:I

    goto :goto_1

    .line 23
    :cond_3
    if-eq v3, v5, :cond_4

    iget-object v1, p0, Lwn;->i:Lwk;

    .line 16
    iget-object v1, v1, Lwk;->k:Ljava/util/List;

    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->j:Lwk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->d:Lvx;

    .line 17
    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->j:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwn;->i:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->i:Lwk;

    neg-int v1, v3

    .line 18
    iput v1, v0, Lwk;->e:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lwn;->i:Lwk;

    .line 19
    iput-boolean v4, v1, Lwk;->b:Z

    .line 20
    iget-object v1, v1, Lwk;->k:Ljava/util/List;

    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->j:Lwk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwn;->d:Lvx;

    .line 21
    iget-object v0, v0, Lvx;->T:Lvx;

    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->j:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwn;->i:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_1
    iget-object v0, p0, Lwn;->d:Lvx;

    .line 22
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->i:Lwk;

    invoke-direct {p0, v0}, Lwn;->g(Lwk;)V

    iget-object v0, p0, Lwn;->d:Lvx;

    .line 23
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->j:Lwk;

    invoke-direct {p0, v0}, Lwn;->g(Lwk;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwn;->d:Lvx;

    move-object v1, v0

    check-cast v1, Lwa;

    iget v1, v1, Lwa;->aq:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lwn;->i:Lwk;

    .line 2
    iget v1, v1, Lwk;->f:I

    iput v1, v0, Lvx;->Y:I

    return-void

    :cond_0
    iget-object v1, p0, Lwn;->i:Lwk;

    .line 3
    iget v1, v1, Lwk;->f:I

    iput v1, v0, Lvx;->Z:I

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwn;->i:Lwk;

    invoke-virtual {v0}, Lwk;->b()V

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwn;->i:Lwk;

    iget-boolean v1, v0, Lwk;->c:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Lwk;->i:Z

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;

    iget-object v1, p0, Lwn;->d:Lvx;

    .line 4
    check-cast v1, Lwa;

    .line 5
    iget v0, v0, Lwk;->f:I

    iget v1, v1, Lwa;->a:F

    iget-object v2, p0, Lwn;->i:Lwk;

    int-to-float v0, v0

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    invoke-virtual {v2, v0}, Lwk;->c(I)V

    return-void
.end method
