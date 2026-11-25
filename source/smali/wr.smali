.class public final Lwr;
.super Lwt;
.source "PG"


# instance fields
.field public final a:Lwk;

.field b:Lwl;


# direct methods
.method public constructor <init>(Lvx;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lwt;-><init>(Lvx;)V

    new-instance p1, Lwk;

    .line 2
    invoke-direct {p1, p0}, Lwk;-><init>(Lwt;)V

    iput-object p1, p0, Lwr;->a:Lwk;

    const/4 v0, 0x0

    iput-object v0, p0, Lwr;->b:Lwl;

    iget-object v0, p0, Lwr;->i:Lwk;

    .line 3
    const/4 v1, 0x6

    iput v1, v0, Lwk;->l:I

    iget-object v0, p0, Lwr;->j:Lwk;

    .line 4
    const/4 v1, 0x7

    iput v1, v0, Lwk;->l:I

    .line 5
    const/16 v0, 0x8

    iput v0, p1, Lwk;->l:I

    const/4 p1, 0x1

    iput p1, p0, Lwr;->g:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v1, v0, Lvx;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lwr;->f:Lwl;

    .line 2
    invoke-virtual {v0}, Lvx;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Lwk;->c(I)V

    :cond_0
    iget-object v0, p0, Lwr;->f:Lwl;

    .line 3
    iget-boolean v0, v0, Lwl;->i:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez v0, :cond_4

    iget-object v0, p0, Lwr;->d:Lvx;

    .line 4
    invoke-virtual {v0}, Lvx;->O()I

    move-result v0

    iput v0, p0, Lwt;->k:I

    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v0, v0, Lvx;->F:Z

    if-eqz v0, :cond_1

    new-instance v0, Lwl;

    .line 5
    invoke-direct {v0, p0}, Lwl;-><init>(Lwt;)V

    iput-object v0, p0, Lwr;->b:Lwl;

    :cond_1
    iget v0, p0, Lwt;->k:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lwr;->k:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lwr;->d:Lvx;

    iget-object v0, v0, Lvx;->T:Lvx;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lvx;->O()I

    move-result v4

    if-eq v4, v2, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0}, Lvx;->h()I

    move-result v1

    iget-object v2, p0, Lwr;->d:Lvx;

    .line 8
    iget-object v2, v2, Lvx;->K:Lvw;

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    iget-object v3, p0, Lwr;->d:Lvx;

    iget-object v3, v3, Lvx;->M:Lvw;

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    iget-object v4, p0, Lwr;->i:Lwk;

    iget-object v5, v0, Lvx;->i:Lwr;

    .line 9
    iget-object v5, v5, Lwr;->i:Lwk;

    iget-object v6, p0, Lwr;->d:Lvx;

    iget-object v6, v6, Lvx;->K:Lvw;

    invoke-virtual {v6}, Lvw;->b()I

    move-result v6

    invoke-static {v4, v5, v6}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v4, p0, Lwr;->j:Lwk;

    iget-object v0, v0, Lvx;->i:Lwr;

    .line 10
    iget-object v0, v0, Lwr;->j:Lwk;

    iget-object v5, p0, Lwr;->d:Lvx;

    iget-object v5, v5, Lvx;->M:Lvw;

    invoke-virtual {v5}, Lvw;->b()I

    move-result v5

    neg-int v5, v5

    invoke-static {v4, v0, v5}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->f:Lwl;

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    .line 11
    invoke-virtual {v0, v1}, Lwk;->c(I)V

    return-void

    .line 6
    :cond_3
    :goto_0
    iget v0, p0, Lwr;->k:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lwr;->f:Lwl;

    iget-object v4, p0, Lwr;->d:Lvx;

    .line 7
    invoke-virtual {v4}, Lvx;->h()I

    move-result v4

    invoke-virtual {v0, v4}, Lwk;->c(I)V

    goto :goto_1

    .line 11
    :cond_4
    iget v0, p0, Lwr;->k:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lwr;->d:Lvx;

    iget-object v0, v0, Lvx;->T:Lvx;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Lvx;->O()I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v2, v0, Lvx;->i:Lwr;

    .line 99
    iget-object v2, v2, Lwr;->i:Lwk;

    iget-object v3, p0, Lwr;->d:Lvx;

    iget-object v3, v3, Lvx;->K:Lvw;

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    invoke-static {v1, v2, v3}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v1, p0, Lwr;->j:Lwk;

    iget-object v0, v0, Lvx;->i:Lwr;

    .line 100
    iget-object v0, v0, Lwr;->j:Lwk;

    iget-object v2, p0, Lwr;->d:Lvx;

    iget-object v2, v2, Lvx;->M:Lvw;

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Lwr;->j(Lwk;Lwk;I)V

    return-void

    .line 7
    :cond_5
    :goto_1
    iget-object v0, p0, Lwr;->f:Lwl;

    .line 13
    iget-boolean v4, v0, Lwl;->i:Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_e

    iget-object v4, p0, Lwr;->d:Lvx;

    iget-boolean v7, v4, Lvx;->e:Z

    if-eqz v7, :cond_10

    .line 68
    iget-object v0, v4, Lvx;->R:[Lvw;

    aget-object v7, v0, v6

    iget-object v8, v7, Lvw;->e:Lvw;

    if-eqz v8, :cond_9

    aget-object v9, v0, v3

    iget-object v9, v9, Lvw;->e:Lvw;

    if-eqz v9, :cond_9

    .line 89
    invoke-virtual {v4}, Lvx;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lwr;->i:Lwk;

    iget-object v1, p0, Lwr;->d:Lvx;

    .line 90
    iget-object v1, v1, Lvx;->R:[Lvw;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    iput v1, v0, Lwk;->e:I

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v1, p0, Lwr;->d:Lvx;

    .line 91
    iget-object v1, v1, Lvx;->R:[Lvw;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lwk;->e:I

    goto :goto_2

    .line 98
    :cond_6
    iget-object v0, p0, Lwr;->d:Lvx;

    .line 92
    iget-object v0, v0, Lvx;->R:[Lvw;

    aget-object v0, v0, v6

    invoke-static {v0}, Lwr;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v4, p0, Lwr;->d:Lvx;

    .line 93
    iget-object v4, v4, Lvx;->R:[Lvw;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lvw;->b()I

    move-result v4

    invoke-static {v1, v0, v4}, Lwr;->j(Lwk;Lwk;I)V

    :cond_7
    iget-object v0, p0, Lwr;->d:Lvx;

    .line 94
    iget-object v0, v0, Lvx;->R:[Lvw;

    aget-object v0, v0, v3

    invoke-static {v0}, Lwr;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lwr;->j:Lwk;

    iget-object v4, p0, Lwr;->d:Lvx;

    .line 95
    iget-object v4, v4, Lvx;->R:[Lvw;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    neg-int v3, v3

    invoke-static {v1, v0, v3}, Lwr;->j(Lwk;Lwk;I)V

    :cond_8
    iget-object v0, p0, Lwr;->i:Lwk;

    .line 96
    iput-boolean v2, v0, Lwk;->b:Z

    iget-object v0, p0, Lwr;->j:Lwk;

    .line 97
    iput-boolean v2, v0, Lwk;->b:Z

    .line 91
    :goto_2
    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v1, v0, Lvx;->F:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lwr;->a:Lwk;

    iget-object v2, p0, Lwr;->i:Lwk;

    iget v0, v0, Lvx;->aa:I

    .line 98
    invoke-static {v1, v2, v0}, Lwr;->j(Lwk;Lwk;I)V

    return-void

    .line 97
    :cond_9
    if-eqz v8, :cond_a

    .line 69
    invoke-static {v7}, Lwr;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v2, p0, Lwr;->d:Lvx;

    .line 70
    iget-object v2, v2, Lvx;->R:[Lvw;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    invoke-static {v1, v0, v2}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v2, p0, Lwr;->f:Lwl;

    .line 71
    iget v2, v2, Lwl;->f:I

    invoke-static {v0, v1, v2}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v1, v0, Lvx;->F:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lwr;->a:Lwk;

    iget-object v2, p0, Lwr;->i:Lwk;

    iget v0, v0, Lvx;->aa:I

    .line 72
    invoke-static {v1, v2, v0}, Lwr;->j(Lwk;Lwk;I)V

    return-void

    :cond_a
    nop

    .line 73
    aget-object v2, v0, v3

    iget-object v6, v2, Lvw;->e:Lvw;

    if-eqz v6, :cond_c

    .line 74
    invoke-static {v2}, Lwr;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lwr;->j:Lwk;

    iget-object v2, p0, Lwr;->d:Lvx;

    .line 75
    iget-object v2, v2, Lvx;->R:[Lvw;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->i:Lwk;

    iget-object v1, p0, Lwr;->j:Lwk;

    iget-object v2, p0, Lwr;->f:Lwl;

    .line 76
    iget v2, v2, Lwl;->f:I

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lwr;->j(Lwk;Lwk;I)V

    :cond_b
    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v1, v0, Lvx;->F:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lwr;->a:Lwk;

    iget-object v2, p0, Lwr;->i:Lwk;

    iget v0, v0, Lvx;->aa:I

    .line 77
    invoke-static {v1, v2, v0}, Lwr;->j(Lwk;Lwk;I)V

    return-void

    :cond_c
    nop

    .line 78
    aget-object v0, v0, v1

    iget-object v1, v0, Lvw;->e:Lvw;

    if-eqz v1, :cond_d

    .line 79
    invoke-static {v0}, Lwr;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lwr;->a:Lwk;

    .line 80
    invoke-static {v1, v0, v5}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->i:Lwk;

    iget-object v1, p0, Lwr;->a:Lwk;

    iget-object v2, p0, Lwr;->d:Lvx;

    iget v2, v2, Lvx;->aa:I

    neg-int v2, v2

    .line 81
    invoke-static {v0, v1, v2}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v2, p0, Lwr;->f:Lwl;

    .line 82
    iget v2, v2, Lwl;->f:I

    invoke-static {v0, v1, v2}, Lwr;->j(Lwk;Lwk;I)V

    return-void

    .line 83
    :cond_d
    instance-of v0, v4, Lwb;

    if-nez v0, :cond_1c

    iget-object v0, v4, Lvx;->T:Lvx;

    if-eqz v0, :cond_1c

    const/4 v0, 0x7

    .line 84
    invoke-virtual {v4, v0}, Lvx;->L(I)Lvw;

    move-result-object v0

    iget-object v0, v0, Lvw;->e:Lvw;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lwr;->d:Lvx;

    iget-object v1, v0, Lvx;->T:Lvx;

    .line 85
    iget-object v1, v1, Lvx;->i:Lwr;

    iget-object v1, v1, Lwr;->i:Lwk;

    iget-object v2, p0, Lwr;->i:Lwk;

    .line 86
    invoke-virtual {v0}, Lvx;->l()I

    move-result v0

    invoke-static {v2, v1, v0}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v2, p0, Lwr;->f:Lwl;

    .line 87
    iget v2, v2, Lwl;->f:I

    invoke-static {v0, v1, v2}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v1, v0, Lvx;->F:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lwr;->a:Lwk;

    iget-object v2, p0, Lwr;->i:Lwk;

    iget v0, v0, Lvx;->aa:I

    .line 88
    invoke-static {v1, v2, v0}, Lwr;->j(Lwk;Lwk;I)V

    return-void

    .line 57
    :cond_e
    iget v4, p0, Lwr;->k:I

    if-ne v4, v3, :cond_10

    iget-object v4, p0, Lwr;->d:Lvx;

    .line 14
    iget v7, v4, Lvx;->t:I

    packed-switch v7, :pswitch_data_0

    :cond_f
    goto :goto_3

    .line 15
    :pswitch_0
    invoke-virtual {v4}, Lvx;->J()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lwr;->d:Lvx;

    .line 16
    iget v4, v0, Lvx;->s:I

    if-eq v4, v3, :cond_11

    .line 17
    iget-object v0, v0, Lvx;->h:Lwp;

    iget-object v0, v0, Lwp;->f:Lwl;

    iget-object v4, p0, Lwr;->f:Lwl;

    .line 18
    iget-object v4, v4, Lwl;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v4, p0, Lwr;->f:Lwl;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 20
    iput-boolean v2, v0, Lwl;->b:Z

    .line 21
    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v4, p0, Lwr;->i:Lwk;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 22
    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v4, p0, Lwr;->j:Lwk;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :pswitch_1
    iget-object v4, v4, Lvx;->T:Lvx;

    if-eqz v4, :cond_f

    iget-object v4, v4, Lvx;->i:Lwr;

    .line 23
    iget-object v4, v4, Lwr;->f:Lwl;

    .line 24
    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, v4, Lwk;->j:Ljava/util/List;

    iget-object v4, p0, Lwr;->f:Lwl;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 26
    iput-boolean v2, v0, Lwl;->b:Z

    .line 27
    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v4, p0, Lwr;->i:Lwk;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 28
    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v4, p0, Lwr;->j:Lwk;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_10
    invoke-virtual {v0, p0}, Lwk;->a(Lwi;)V

    :cond_11
    :goto_3
    iget-object v0, p0, Lwr;->d:Lvx;

    .line 30
    iget-object v4, v0, Lvx;->R:[Lvw;

    aget-object v7, v4, v6

    iget-object v8, v7, Lvw;->e:Lvw;

    if-eqz v8, :cond_15

    aget-object v9, v4, v3

    iget-object v9, v9, Lvw;->e:Lvw;

    if-eqz v9, :cond_15

    .line 58
    invoke-virtual {v0}, Lvx;->J()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lwr;->i:Lwk;

    iget-object v1, p0, Lwr;->d:Lvx;

    .line 59
    iget-object v1, v1, Lvx;->R:[Lvw;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    iput v1, v0, Lwk;->e:I

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v1, p0, Lwr;->d:Lvx;

    .line 60
    iget-object v1, v1, Lvx;->R:[Lvw;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lwk;->e:I

    goto :goto_4

    .line 67
    :cond_12
    iget-object v0, p0, Lwr;->d:Lvx;

    .line 61
    iget-object v0, v0, Lvx;->R:[Lvw;

    aget-object v0, v0, v6

    invoke-static {v0}, Lwr;->k(Lvw;)Lwk;

    move-result-object v0

    iget-object v4, p0, Lwr;->d:Lvx;

    .line 62
    iget-object v4, v4, Lvx;->R:[Lvw;

    aget-object v3, v4, v3

    invoke-static {v3}, Lwr;->k(Lvw;)Lwk;

    move-result-object v3

    if-eqz v0, :cond_13

    .line 63
    invoke-virtual {v0, p0}, Lwk;->a(Lwi;)V

    :cond_13
    if-eqz v3, :cond_14

    .line 64
    invoke-virtual {v3, p0}, Lwk;->a(Lwi;)V

    :cond_14
    iput v1, p0, Lwr;->l:I

    .line 60
    :goto_4
    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v0, v0, Lvx;->F:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lwr;->a:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v3, p0, Lwr;->b:Lwl;

    .line 65
    invoke-virtual {p0, v0, v1, v2, v3}, Lwt;->i(Lwk;Lwk;ILwl;)V

    goto/16 :goto_5

    .line 64
    :cond_15
    const/4 v9, 0x0

    if-eqz v8, :cond_17

    .line 31
    invoke-static {v7}, Lwr;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v4, p0, Lwr;->d:Lvx;

    .line 32
    iget-object v4, v4, Lvx;->R:[Lvw;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lvw;->b()I

    move-result v4

    invoke-static {v1, v0, v4}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v4, p0, Lwr;->f:Lwl;

    .line 33
    invoke-virtual {p0, v0, v1, v2, v4}, Lwt;->i(Lwk;Lwk;ILwl;)V

    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v0, v0, Lvx;->F:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lwr;->a:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v4, p0, Lwr;->b:Lwl;

    .line 34
    invoke-virtual {p0, v0, v1, v2, v4}, Lwt;->i(Lwk;Lwk;ILwl;)V

    :cond_16
    iget v0, p0, Lwr;->k:I

    if-ne v0, v3, :cond_1b

    iget-object v0, p0, Lwr;->d:Lvx;

    iget v1, v0, Lvx;->W:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1b

    .line 35
    iget-object v0, v0, Lvx;->h:Lwp;

    iget v1, v0, Lwp;->k:I

    if-ne v1, v3, :cond_1b

    .line 36
    iget-object v0, v0, Lwp;->f:Lwl;

    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v1, p0, Lwr;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 37
    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    iget-object v1, p0, Lwr;->d:Lvx;

    iget-object v1, v1, Lvx;->h:Lwp;

    iget-object v1, v1, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 38
    iput-object p0, v0, Lwl;->a:Lwi;

    goto/16 :goto_5

    :cond_17
    nop

    .line 39
    aget-object v6, v4, v3

    iget-object v7, v6, Lvw;->e:Lvw;

    const/4 v8, -0x1

    if-eqz v7, :cond_18

    .line 40
    invoke-static {v6}, Lwr;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lwr;->j:Lwk;

    iget-object v4, p0, Lwr;->d:Lvx;

    .line 41
    iget-object v4, v4, Lvx;->R:[Lvw;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    neg-int v3, v3

    invoke-static {v1, v0, v3}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->i:Lwk;

    iget-object v1, p0, Lwr;->j:Lwk;

    iget-object v3, p0, Lwr;->f:Lwl;

    .line 42
    invoke-virtual {p0, v0, v1, v8, v3}, Lwt;->i(Lwk;Lwk;ILwl;)V

    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v0, v0, Lvx;->F:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lwr;->a:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v3, p0, Lwr;->b:Lwl;

    .line 43
    invoke-virtual {p0, v0, v1, v2, v3}, Lwt;->i(Lwk;Lwk;ILwl;)V

    goto/16 :goto_5

    :cond_18
    nop

    .line 44
    aget-object v1, v4, v1

    iget-object v4, v1, Lvw;->e:Lvw;

    if-eqz v4, :cond_19

    .line 45
    invoke-static {v1}, Lwr;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lwr;->a:Lwk;

    .line 46
    invoke-static {v1, v0, v5}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->i:Lwk;

    iget-object v1, p0, Lwr;->a:Lwk;

    iget-object v3, p0, Lwr;->b:Lwl;

    .line 47
    invoke-virtual {p0, v0, v1, v8, v3}, Lwt;->i(Lwk;Lwk;ILwl;)V

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v3, p0, Lwr;->f:Lwl;

    .line 48
    invoke-virtual {p0, v0, v1, v2, v3}, Lwt;->i(Lwk;Lwk;ILwl;)V

    goto :goto_5

    .line 49
    :cond_19
    instance-of v1, v0, Lwb;

    if-nez v1, :cond_1b

    iget-object v1, v0, Lvx;->T:Lvx;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lvx;->i:Lwr;

    .line 50
    iget-object v1, v1, Lwr;->i:Lwk;

    iget-object v4, p0, Lwr;->i:Lwk;

    .line 51
    invoke-virtual {v0}, Lvx;->l()I

    move-result v0

    invoke-static {v4, v1, v0}, Lwr;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v4, p0, Lwr;->f:Lwl;

    .line 52
    invoke-virtual {p0, v0, v1, v2, v4}, Lwt;->i(Lwk;Lwk;ILwl;)V

    iget-object v0, p0, Lwr;->d:Lvx;

    iget-boolean v0, v0, Lvx;->F:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lwr;->a:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    iget-object v4, p0, Lwr;->b:Lwl;

    .line 53
    invoke-virtual {p0, v0, v1, v2, v4}, Lwt;->i(Lwk;Lwk;ILwl;)V

    :cond_1a
    iget v0, p0, Lwr;->k:I

    if-ne v0, v3, :cond_1b

    iget-object v0, p0, Lwr;->d:Lvx;

    iget v1, v0, Lvx;->W:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1b

    .line 54
    iget-object v0, v0, Lvx;->h:Lwp;

    iget v1, v0, Lwp;->k:I

    if-ne v1, v3, :cond_1b

    .line 55
    iget-object v0, v0, Lwp;->f:Lwl;

    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v1, p0, Lwr;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 56
    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    iget-object v1, p0, Lwr;->d:Lvx;

    iget-object v1, v1, Lvx;->h:Lwp;

    iget-object v1, v1, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 57
    iput-object p0, v0, Lwl;->a:Lwi;

    .line 65
    :cond_1b
    :goto_5
    iget-object v0, p0, Lwr;->f:Lwl;

    .line 66
    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 67
    iput-boolean v2, v0, Lwl;->c:Z

    return-void

    .line 98
    :cond_1c
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwr;->i:Lwk;

    iget-boolean v1, v0, Lwk;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lwr;->d:Lvx;

    .line 2
    iget v0, v0, Lwk;->f:I

    iput v0, v1, Lvx;->Z:I

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lwr;->e:Lwq;

    iget-object v0, p0, Lwr;->i:Lwk;

    invoke-virtual {v0}, Lwk;->b()V

    iget-object v0, p0, Lwr;->j:Lwk;

    .line 2
    invoke-virtual {v0}, Lwk;->b()V

    iget-object v0, p0, Lwr;->a:Lwk;

    .line 3
    invoke-virtual {v0}, Lwk;->b()V

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 4
    invoke-virtual {v0}, Lwk;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwr;->h:Z

    return-void
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget v0, p0, Lwt;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lwt;->d:Lvx;

    iget v0, v0, Lvx;->t:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public final f()V
    .locals 9

    .line 3
    iget v0, p0, Lwr;->l:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lwr;->f:Lwl;

    iget-boolean v2, v1, Lwl;->c:Z

    const/4 v3, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lwl;->i:Z

    if-nez v2, :cond_0

    iget v2, p0, Lwr;->k:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lwr;->d:Lvx;

    .line 4
    iget v5, v2, Lvx;->t:I

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v1, p0, Lwr;->d:Lvx;

    .line 2
    iget-object v2, v1, Lvx;->K:Lvw;

    iget-object v1, v1, Lvx;->M:Lvw;

    invoke-virtual {p0, v2, v1, v0}, Lwt;->m(Lvw;Lvw;I)V

    return-void

    .line 5
    :pswitch_1
    iget-object v5, v2, Lvx;->h:Lwp;

    iget-object v5, v5, Lwp;->f:Lwl;

    iget-boolean v6, v5, Lwl;->i:Z

    if-eqz v6, :cond_0

    iget v6, v2, Lvx;->X:I

    packed-switch v6, :pswitch_data_2

    .line 6
    iget v5, v5, Lwl;->f:I

    int-to-float v5, v5

    iget v2, v2, Lvx;->W:F

    div-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    goto :goto_0

    .line 7
    :pswitch_2
    iget v5, v5, Lwl;->f:I

    int-to-float v5, v5

    iget v2, v2, Lvx;->W:F

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    goto :goto_0

    .line 8
    :pswitch_3
    iget v5, v5, Lwl;->f:I

    int-to-float v5, v5

    iget v2, v2, Lvx;->W:F

    div-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    .line 9
    :goto_0
    invoke-virtual {v1, v2}, Lwk;->c(I)V

    goto :goto_1

    .line 7
    :pswitch_4
    iget-object v5, v2, Lvx;->T:Lvx;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lvx;->i:Lwr;

    .line 10
    iget-object v5, v5, Lwr;->f:Lwl;

    iget-boolean v6, v5, Lwl;->i:Z

    if-eqz v6, :cond_0

    .line 11
    iget v2, v2, Lvx;->A:F

    .line 12
    iget v5, v5, Lwl;->f:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    .line 13
    invoke-virtual {v1, v2}, Lwk;->c(I)V

    .line 4
    :cond_0
    :goto_1
    iget-object v1, p0, Lwr;->i:Lwk;

    .line 14
    iget-boolean v2, v1, Lwk;->c:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lwr;->j:Lwk;

    iget-boolean v5, v2, Lwk;->c:Z

    if-nez v5, :cond_1

    goto/16 :goto_6

    .line 15
    :cond_1
    iget-boolean v1, v1, Lwk;->i:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v2, Lwk;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lwr;->f:Lwl;

    iget-boolean v1, v1, Lwl;->i:Z

    if-nez v1, :cond_2

    goto :goto_2

    .line 42
    :cond_2
    return-void

    .line 15
    :cond_3
    :goto_2
    iget-object v1, p0, Lwr;->f:Lwl;

    .line 16
    iget-boolean v1, v1, Lwl;->i:Z

    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget v1, p0, Lwr;->k:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lwr;->d:Lvx;

    iget v5, v1, Lvx;->s:I

    if-nez v5, :cond_5

    .line 17
    invoke-virtual {v1}, Lvx;->J()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 26
    :cond_4
    iget-object v0, p0, Lwr;->i:Lwk;

    .line 36
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;

    iget-object v1, p0, Lwr;->j:Lwk;

    .line 37
    iget-object v1, v1, Lwk;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk;

    .line 38
    iget v0, v0, Lwk;->f:I

    iget-object v2, p0, Lwr;->i:Lwk;

    iget v3, v2, Lwk;->e:I

    add-int/2addr v0, v3

    .line 39
    iget v1, v1, Lwk;->f:I

    iget-object v3, p0, Lwr;->j:Lwk;

    iget v3, v3, Lwk;->e:I

    add-int/2addr v1, v3

    .line 40
    invoke-virtual {v2, v0}, Lwk;->c(I)V

    iget-object v2, p0, Lwr;->j:Lwk;

    .line 41
    invoke-virtual {v2, v1}, Lwk;->c(I)V

    iget-object v2, p0, Lwr;->f:Lwl;

    sub-int/2addr v1, v0

    .line 42
    invoke-virtual {v2, v1}, Lwk;->c(I)V

    return-void

    .line 17
    :cond_5
    :goto_3
    iget-object v1, p0, Lwr;->f:Lwl;

    .line 18
    iget-boolean v1, v1, Lwl;->i:Z

    if-nez v1, :cond_7

    iget v1, p0, Lwr;->k:I

    if-ne v1, v3, :cond_7

    iget v1, p0, Lwr;->c:I

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lwr;->i:Lwk;

    .line 19
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lwr;->i:Lwk;

    .line 20
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;

    iget-object v1, p0, Lwr;->j:Lwk;

    .line 21
    iget-object v1, v1, Lwk;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk;

    .line 22
    iget v0, v0, Lwk;->f:I

    iget-object v3, p0, Lwr;->i:Lwk;

    iget v3, v3, Lwk;->e:I

    .line 23
    iget v1, v1, Lwk;->f:I

    iget-object v5, p0, Lwr;->j:Lwk;

    iget v5, v5, Lwk;->e:I

    add-int/2addr v1, v5

    add-int/2addr v0, v3

    sub-int/2addr v1, v0

    iget-object v0, p0, Lwr;->f:Lwl;

    .line 24
    iget v3, v0, Lwl;->m:I

    if-ge v1, v3, :cond_6

    .line 25
    invoke-virtual {v0, v1}, Lwk;->c(I)V

    goto :goto_4

    .line 26
    :cond_6
    invoke-virtual {v0, v3}, Lwk;->c(I)V

    .line 25
    :cond_7
    :goto_4
    iget-object v0, p0, Lwr;->f:Lwl;

    .line 27
    iget-boolean v0, v0, Lwl;->i:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lwr;->i:Lwk;

    .line 28
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lwr;->i:Lwk;

    .line 29
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;

    iget-object v1, p0, Lwr;->j:Lwk;

    .line 30
    iget-object v1, v1, Lwk;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk;

    .line 31
    iget v2, v0, Lwk;->f:I

    iget-object v3, p0, Lwr;->i:Lwk;

    iget v5, v3, Lwk;->e:I

    add-int/2addr v5, v2

    .line 32
    iget v6, v1, Lwk;->f:I

    iget-object v7, p0, Lwr;->j:Lwk;

    iget v7, v7, Lwk;->e:I

    add-int/2addr v7, v6

    iget-object v8, p0, Lwr;->d:Lvx;

    iget v8, v8, Lvx;->ae:F

    if-ne v0, v1, :cond_9

    const/high16 v8, 0x3f000000    # 0.5f

    :cond_9
    if-eq v0, v1, :cond_a

    move v6, v7

    :cond_a
    if-ne v0, v1, :cond_b

    goto :goto_5

    .line 35
    :cond_b
    move v2, v5

    .line 32
    :goto_5
    int-to-float v0, v2

    add-float/2addr v0, v4

    sub-int/2addr v6, v2

    iget-object v1, p0, Lwr;->f:Lwl;

    .line 33
    iget v1, v1, Lwl;->f:I

    sub-int/2addr v6, v1

    int-to-float v1, v6

    mul-float v1, v1, v8

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 34
    invoke-virtual {v3, v0}, Lwk;->c(I)V

    iget-object v0, p0, Lwr;->j:Lwk;

    iget-object v1, p0, Lwr;->i:Lwk;

    .line 35
    iget v1, v1, Lwk;->f:I

    iget-object v2, p0, Lwr;->f:Lwl;

    iget v2, v2, Lwl;->f:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lwk;->c(I)V

    :cond_c
    return-void

    .line 14
    :cond_d
    :goto_6
    return-void

    .line 13
    :cond_e
    const/4 v0, 0x0

    .line 1
    throw v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwr;->h:Z

    iget-object v1, p0, Lwr;->i:Lwk;

    invoke-virtual {v1}, Lwk;->b()V

    iget-object v1, p0, Lwr;->i:Lwk;

    .line 2
    iput-boolean v0, v1, Lwk;->i:Z

    iget-object v1, p0, Lwr;->j:Lwk;

    .line 3
    invoke-virtual {v1}, Lwk;->b()V

    iget-object v1, p0, Lwr;->j:Lwk;

    .line 4
    iput-boolean v0, v1, Lwk;->i:Z

    iget-object v1, p0, Lwr;->a:Lwk;

    .line 5
    invoke-virtual {v1}, Lwk;->b()V

    iget-object v1, p0, Lwr;->a:Lwk;

    .line 6
    iput-boolean v0, v1, Lwk;->i:Z

    iget-object v1, p0, Lwr;->f:Lwl;

    .line 7
    iput-boolean v0, v1, Lwl;->i:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lwr;->d:Lvx;

    iget-object v0, v0, Lvx;->ah:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "VerticalRun "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
