.class public final Lwp;
.super Lwt;
.source "PG"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lwp;->a:[I

    return-void
.end method

.method public constructor <init>(Lvx;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lwt;-><init>(Lvx;)V

    iget-object p1, p0, Lwp;->i:Lwk;

    .line 2
    const/4 v0, 0x4

    iput v0, p1, Lwk;->l:I

    iget-object p1, p0, Lwp;->j:Lwk;

    .line 3
    const/4 v0, 0x5

    iput v0, p1, Lwk;->l:I

    const/4 p1, 0x0

    iput p1, p0, Lwp;->g:I

    return-void
.end method

.method private static final n([IIIIIFI)V
    .locals 2

    sub-int/2addr p2, p1

    sub-int/2addr p4, p3

    const/4 p1, 0x1

    const/4 p3, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    packed-switch p6, :pswitch_data_0

    aput p2, p0, p3

    int-to-float p2, p2

    mul-float p2, p2, p5

    add-float/2addr p2, v0

    float-to-int p2, p2

    aput p2, p0, p1

    return-void

    :pswitch_0
    int-to-float p2, p4

    mul-float p2, p2, p5

    add-float/2addr p2, v0

    float-to-int p2, p2

    aput p2, p0, p3

    aput p4, p0, p1

    return-void

    :pswitch_1
    int-to-float p6, p4

    mul-float p6, p6, p5

    add-float/2addr p6, v0

    float-to-int p6, p6

    int-to-float v1, p2

    div-float/2addr v1, p5

    add-float/2addr v1, v0

    float-to-int p5, v1

    if-gt p6, p2, :cond_0

    aput p6, p0, p3

    aput p4, p0, p1

    return-void

    :cond_0
    if-gt p5, p4, :cond_1

    aput p2, p0, p3

    aput p5, p0, p1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lwp;->d:Lvx;

    iget-boolean v1, v0, Lvx;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lwp;->f:Lwl;

    .line 2
    invoke-virtual {v0}, Lvx;->j()I

    move-result v0

    invoke-virtual {v1, v0}, Lwk;->c(I)V

    :cond_0
    iget-object v0, p0, Lwp;->f:Lwl;

    .line 3
    iget-boolean v0, v0, Lwl;->i:Z

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lwp;->d:Lvx;

    .line 4
    invoke-virtual {v0}, Lvx;->N()I

    move-result v0

    iput v0, p0, Lwt;->k:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lwp;->k:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lwp;->d:Lvx;

    iget-object v0, v0, Lvx;->T:Lvx;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lvx;->N()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 6
    invoke-virtual {v0}, Lvx;->N()I

    move-result v4

    if-eq v4, v2, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Lvx;->j()I

    move-result v1

    iget-object v2, p0, Lwp;->d:Lvx;

    .line 8
    iget-object v2, v2, Lvx;->J:Lvw;

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    iget-object v3, p0, Lwp;->d:Lvx;

    iget-object v3, v3, Lvx;->L:Lvw;

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    iget-object v4, p0, Lwp;->i:Lwk;

    iget-object v5, v0, Lvx;->h:Lwp;

    .line 9
    iget-object v5, v5, Lwp;->i:Lwk;

    iget-object v6, p0, Lwp;->d:Lvx;

    iget-object v6, v6, Lvx;->J:Lvw;

    invoke-virtual {v6}, Lvw;->b()I

    move-result v6

    invoke-static {v4, v5, v6}, Lwp;->j(Lwk;Lwk;I)V

    iget-object v4, p0, Lwp;->j:Lwk;

    iget-object v0, v0, Lvx;->h:Lwp;

    .line 10
    iget-object v0, v0, Lwp;->j:Lwk;

    iget-object v5, p0, Lwp;->d:Lvx;

    iget-object v5, v5, Lvx;->L:Lvw;

    invoke-virtual {v5}, Lvw;->b()I

    move-result v5

    neg-int v5, v5

    invoke-static {v4, v0, v5}, Lwp;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwp;->f:Lwl;

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    .line 11
    invoke-virtual {v0, v1}, Lwk;->c(I)V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget v0, p0, Lwp;->k:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lwp;->f:Lwl;

    iget-object v4, p0, Lwp;->d:Lvx;

    .line 7
    invoke-virtual {v4}, Lvx;->j()I

    move-result v4

    invoke-virtual {v0, v4}, Lwk;->c(I)V

    goto :goto_1

    .line 11
    :cond_3
    iget v0, p0, Lwp;->k:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lwp;->d:Lvx;

    iget-object v0, v0, Lvx;->T:Lvx;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Lvx;->N()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 13
    invoke-virtual {v0}, Lvx;->N()I

    move-result v4

    if-ne v4, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lwp;->i:Lwk;

    iget-object v2, v0, Lvx;->h:Lwp;

    .line 91
    iget-object v2, v2, Lwp;->i:Lwk;

    iget-object v3, p0, Lwp;->d:Lvx;

    iget-object v3, v3, Lvx;->J:Lvw;

    invoke-virtual {v3}, Lvw;->b()I

    move-result v3

    invoke-static {v1, v2, v3}, Lwp;->j(Lwk;Lwk;I)V

    iget-object v1, p0, Lwp;->j:Lwk;

    iget-object v0, v0, Lvx;->h:Lwp;

    .line 92
    iget-object v0, v0, Lwp;->j:Lwk;

    iget-object v2, p0, Lwp;->d:Lvx;

    iget-object v2, v2, Lvx;->L:Lvw;

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Lwp;->j(Lwk;Lwk;I)V

    return-void

    .line 7
    :cond_5
    :goto_1
    iget-object v0, p0, Lwp;->f:Lwl;

    .line 14
    iget-boolean v4, v0, Lwl;->i:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    iget-object v4, p0, Lwp;->d:Lvx;

    iget-boolean v6, v4, Lvx;->e:Z

    if-eqz v6, :cond_c

    .line 69
    iget-object v0, v4, Lvx;->R:[Lvw;

    aget-object v1, v0, v5

    iget-object v2, v1, Lvw;->e:Lvw;

    if-eqz v2, :cond_9

    aget-object v6, v0, v3

    iget-object v6, v6, Lvw;->e:Lvw;

    if-eqz v6, :cond_9

    .line 82
    invoke-virtual {v4}, Lvx;->I()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lwp;->i:Lwk;

    iget-object v1, p0, Lwp;->d:Lvx;

    .line 83
    iget-object v1, v1, Lvx;->R:[Lvw;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    iput v1, v0, Lwk;->e:I

    iget-object v0, p0, Lwp;->j:Lwk;

    iget-object v1, p0, Lwp;->d:Lvx;

    .line 84
    iget-object v1, v1, Lvx;->R:[Lvw;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lwk;->e:I

    return-void

    :cond_6
    iget-object v0, p0, Lwp;->d:Lvx;

    .line 85
    iget-object v0, v0, Lvx;->R:[Lvw;

    aget-object v0, v0, v5

    invoke-static {v0}, Lwp;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lwp;->i:Lwk;

    iget-object v2, p0, Lwp;->d:Lvx;

    .line 86
    iget-object v2, v2, Lvx;->R:[Lvw;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    invoke-static {v1, v0, v2}, Lwp;->j(Lwk;Lwk;I)V

    :cond_7
    iget-object v0, p0, Lwp;->d:Lvx;

    .line 87
    iget-object v0, v0, Lvx;->R:[Lvw;

    aget-object v0, v0, v3

    invoke-static {v0}, Lwp;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lwp;->j:Lwk;

    iget-object v2, p0, Lwp;->d:Lvx;

    .line 88
    iget-object v2, v2, Lvx;->R:[Lvw;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Lwp;->j(Lwk;Lwk;I)V

    :cond_8
    iget-object v0, p0, Lwp;->i:Lwk;

    .line 89
    iput-boolean v3, v0, Lwk;->b:Z

    iget-object v0, p0, Lwp;->j:Lwk;

    .line 90
    iput-boolean v3, v0, Lwk;->b:Z

    return-void

    :cond_9
    if-eqz v2, :cond_a

    .line 70
    invoke-static {v1}, Lwp;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lwp;->i:Lwk;

    iget-object v2, p0, Lwp;->d:Lvx;

    .line 71
    iget-object v2, v2, Lvx;->R:[Lvw;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    invoke-static {v1, v0, v2}, Lwp;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwp;->j:Lwk;

    iget-object v1, p0, Lwp;->i:Lwk;

    iget-object v2, p0, Lwp;->f:Lwl;

    .line 72
    iget v2, v2, Lwl;->f:I

    invoke-static {v0, v1, v2}, Lwp;->j(Lwk;Lwk;I)V

    return-void

    :cond_a
    nop

    .line 73
    aget-object v0, v0, v3

    iget-object v1, v0, Lvw;->e:Lvw;

    if-eqz v1, :cond_b

    .line 74
    invoke-static {v0}, Lwp;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lwp;->j:Lwk;

    iget-object v2, p0, Lwp;->d:Lvx;

    .line 75
    iget-object v2, v2, Lvx;->R:[Lvw;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Lwp;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwp;->i:Lwk;

    iget-object v1, p0, Lwp;->j:Lwk;

    iget-object v2, p0, Lwp;->f:Lwl;

    .line 76
    iget v2, v2, Lwl;->f:I

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lwp;->j(Lwk;Lwk;I)V

    return-void

    .line 77
    :cond_b
    instance-of v0, v4, Lwb;

    if-nez v0, :cond_17

    iget-object v0, v4, Lvx;->T:Lvx;

    if-eqz v0, :cond_17

    const/4 v0, 0x7

    .line 78
    invoke-virtual {v4, v0}, Lvx;->L(I)Lvw;

    move-result-object v0

    iget-object v0, v0, Lvw;->e:Lvw;

    if-nez v0, :cond_17

    iget-object v0, p0, Lwp;->d:Lvx;

    iget-object v1, v0, Lvx;->T:Lvx;

    .line 79
    iget-object v1, v1, Lvx;->h:Lwp;

    iget-object v1, v1, Lwp;->i:Lwk;

    iget-object v2, p0, Lwp;->i:Lwk;

    .line 80
    invoke-virtual {v0}, Lvx;->k()I

    move-result v0

    invoke-static {v2, v1, v0}, Lwp;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwp;->j:Lwk;

    iget-object v1, p0, Lwp;->i:Lwk;

    iget-object v2, p0, Lwp;->f:Lwl;

    .line 81
    iget v2, v2, Lwl;->f:I

    invoke-static {v0, v1, v2}, Lwp;->j(Lwk;Lwk;I)V

    return-void

    :cond_c
    iget v4, p0, Lwp;->k:I

    if-ne v4, v1, :cond_10

    iget-object v4, p0, Lwp;->d:Lvx;

    .line 15
    iget v6, v4, Lvx;->s:I

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 16
    :pswitch_0
    iget v6, v4, Lvx;->t:I

    if-ne v6, v1, :cond_f

    iget-object v1, p0, Lwp;->i:Lwk;

    .line 17
    iput-object p0, v1, Lwk;->a:Lwi;

    iget-object v1, p0, Lwp;->j:Lwk;

    .line 18
    iput-object p0, v1, Lwk;->a:Lwi;

    .line 19
    iget-object v1, v4, Lvx;->i:Lwr;

    iget-object v6, v1, Lwr;->i:Lwk;

    iput-object p0, v6, Lwk;->a:Lwi;

    .line 20
    iget-object v1, v1, Lwr;->j:Lwk;

    iput-object p0, v1, Lwk;->a:Lwi;

    .line 21
    iput-object p0, v0, Lwl;->a:Lwi;

    .line 22
    invoke-virtual {v4}, Lvx;->J()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lwp;->f:Lwl;

    .line 23
    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    iget-object v1, p0, Lwp;->d:Lvx;

    iget-object v1, v1, Lvx;->i:Lwr;

    iget-object v1, v1, Lwr;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->d:Lvx;

    .line 24
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->f:Lwl;

    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->d:Lvx;

    .line 25
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v1, v0, Lwr;->f:Lwl;

    iput-object p0, v1, Lwl;->a:Lwi;

    iget-object v1, p0, Lwp;->f:Lwl;

    .line 26
    iget-object v1, v1, Lwl;->k:Ljava/util/List;

    iget-object v0, v0, Lwr;->i:Lwk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->f:Lwl;

    .line 27
    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    iget-object v1, p0, Lwp;->d:Lvx;

    iget-object v1, v1, Lvx;->i:Lwr;

    iget-object v1, v1, Lwr;->j:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->d:Lvx;

    .line 28
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->i:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->d:Lvx;

    .line 29
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->j:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lwp;->d:Lvx;

    .line 30
    invoke-virtual {v0}, Lvx;->I()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lwp;->d:Lvx;

    .line 31
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->f:Lwl;

    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->f:Lwl;

    .line 32
    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->d:Lvx;

    iget-object v1, v1, Lvx;->i:Lwr;

    iget-object v1, v1, Lwr;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lwp;->d:Lvx;

    .line 33
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->f:Lwl;

    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :cond_f
    iget-object v1, v4, Lvx;->i:Lwr;

    iget-object v1, v1, Lwr;->f:Lwl;

    .line 35
    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, v1, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->d:Lvx;

    .line 37
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->i:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->d:Lvx;

    .line 38
    iget-object v0, v0, Lvx;->i:Lwr;

    iget-object v0, v0, Lwr;->j:Lwk;

    iget-object v0, v0, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->f:Lwl;

    .line 39
    iput-boolean v3, v0, Lwl;->b:Z

    .line 40
    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->i:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->f:Lwl;

    .line 41
    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->j:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->i:Lwk;

    .line 42
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->j:Lwk;

    .line 43
    iget-object v0, v0, Lwk;->k:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    iget-object v1, v4, Lvx;->T:Lvx;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lvx;->i:Lwr;

    .line 44
    iget-object v1, v1, Lwr;->f:Lwl;

    .line 45
    iget-object v0, v0, Lwl;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, v1, Lwk;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->f:Lwl;

    .line 47
    iput-boolean v3, v0, Lwl;->b:Z

    .line 48
    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->i:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwp;->f:Lwl;

    .line 49
    iget-object v0, v0, Lwl;->j:Ljava/util/List;

    iget-object v1, p0, Lwp;->j:Lwk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_10
    :goto_2
    iget-object v0, p0, Lwp;->d:Lvx;

    .line 50
    iget-object v1, v0, Lvx;->R:[Lvw;

    aget-object v4, v1, v5

    iget-object v6, v4, Lvw;->e:Lvw;

    if-eqz v6, :cond_14

    aget-object v7, v1, v3

    iget-object v7, v7, Lvw;->e:Lvw;

    if-eqz v7, :cond_14

    .line 62
    invoke-virtual {v0}, Lvx;->I()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lwp;->i:Lwk;

    iget-object v1, p0, Lwp;->d:Lvx;

    .line 63
    iget-object v1, v1, Lvx;->R:[Lvw;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    iput v1, v0, Lwk;->e:I

    iget-object v0, p0, Lwp;->j:Lwk;

    iget-object v1, p0, Lwp;->d:Lvx;

    .line 64
    iget-object v1, v1, Lvx;->R:[Lvw;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lvw;->b()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lwk;->e:I

    return-void

    :cond_11
    iget-object v0, p0, Lwp;->d:Lvx;

    .line 65
    iget-object v0, v0, Lvx;->R:[Lvw;

    aget-object v0, v0, v5

    invoke-static {v0}, Lwp;->k(Lvw;)Lwk;

    move-result-object v0

    iget-object v1, p0, Lwp;->d:Lvx;

    .line 66
    iget-object v1, v1, Lvx;->R:[Lvw;

    aget-object v1, v1, v3

    invoke-static {v1}, Lwp;->k(Lvw;)Lwk;

    move-result-object v1

    if-eqz v0, :cond_12

    .line 67
    invoke-virtual {v0, p0}, Lwk;->a(Lwi;)V

    :cond_12
    if-eqz v1, :cond_13

    .line 68
    invoke-virtual {v1, p0}, Lwk;->a(Lwi;)V

    :cond_13
    iput v2, p0, Lwp;->l:I

    return-void

    :cond_14
    if-eqz v6, :cond_15

    .line 51
    invoke-static {v4}, Lwp;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lwp;->i:Lwk;

    iget-object v2, p0, Lwp;->d:Lvx;

    .line 52
    iget-object v2, v2, Lvx;->R:[Lvw;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    invoke-static {v1, v0, v2}, Lwp;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwp;->j:Lwk;

    iget-object v1, p0, Lwp;->i:Lwk;

    iget-object v2, p0, Lwp;->f:Lwl;

    .line 53
    invoke-virtual {p0, v0, v1, v3, v2}, Lwt;->i(Lwk;Lwk;ILwl;)V

    return-void

    :cond_15
    nop

    .line 54
    aget-object v1, v1, v3

    iget-object v2, v1, Lvw;->e:Lvw;

    if-eqz v2, :cond_16

    .line 55
    invoke-static {v1}, Lwp;->k(Lvw;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lwp;->j:Lwk;

    iget-object v2, p0, Lwp;->d:Lvx;

    .line 56
    iget-object v2, v2, Lvx;->R:[Lvw;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lvw;->b()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Lwp;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwp;->i:Lwk;

    iget-object v1, p0, Lwp;->j:Lwk;

    const/4 v2, -0x1

    iget-object v3, p0, Lwp;->f:Lwl;

    .line 57
    invoke-virtual {p0, v0, v1, v2, v3}, Lwt;->i(Lwk;Lwk;ILwl;)V

    return-void

    .line 58
    :cond_16
    instance-of v1, v0, Lwb;

    if-nez v1, :cond_17

    iget-object v1, v0, Lvx;->T:Lvx;

    if-eqz v1, :cond_17

    iget-object v1, v1, Lvx;->h:Lwp;

    .line 59
    iget-object v1, v1, Lwp;->i:Lwk;

    iget-object v2, p0, Lwp;->i:Lwk;

    .line 60
    invoke-virtual {v0}, Lvx;->k()I

    move-result v0

    invoke-static {v2, v1, v0}, Lwp;->j(Lwk;Lwk;I)V

    iget-object v0, p0, Lwp;->j:Lwk;

    iget-object v1, p0, Lwp;->i:Lwk;

    iget-object v2, p0, Lwp;->f:Lwl;

    .line 61
    invoke-virtual {p0, v0, v1, v3, v2}, Lwt;->i(Lwk;Lwk;ILwl;)V

    return-void

    .line 72
    :cond_17
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
    iget-object v0, p0, Lwp;->i:Lwk;

    iget-boolean v1, v0, Lwk;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lwp;->d:Lvx;

    .line 2
    iget v0, v0, Lwk;->f:I

    iput v0, v1, Lvx;->Y:I

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lwp;->e:Lwq;

    iget-object v0, p0, Lwp;->i:Lwk;

    invoke-virtual {v0}, Lwk;->b()V

    iget-object v0, p0, Lwp;->j:Lwk;

    .line 2
    invoke-virtual {v0}, Lwk;->b()V

    iget-object v0, p0, Lwp;->f:Lwl;

    .line 3
    invoke-virtual {v0}, Lwk;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwp;->h:Z

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

    iget v0, v0, Lvx;->s:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public final f()V
    .locals 21

    .line 3
    move-object/from16 v0, p0

    iget v1, v0, Lwp;->l:I

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Lwp;->f:Lwl;

    iget-boolean v3, v2, Lwl;->i:Z

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    if-nez v3, :cond_14

    iget v3, v0, Lwp;->k:I

    if-ne v3, v4, :cond_14

    iget-object v3, v0, Lwp;->d:Lvx;

    .line 4
    iget v7, v3, Lvx;->s:I

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_c

    .line 1
    :pswitch_0
    iget-object v2, v0, Lwp;->d:Lvx;

    .line 2
    iget-object v3, v2, Lvx;->J:Lvw;

    iget-object v2, v2, Lvx;->L:Lvw;

    invoke-virtual {v0, v3, v2, v1}, Lwt;->m(Lvw;Lvw;I)V

    return-void

    .line 5
    :pswitch_1
    iget v7, v3, Lvx;->t:I

    if-eqz v7, :cond_1

    if-ne v7, v4, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    iget v7, v3, Lvx;->X:I

    packed-switch v7, :pswitch_data_2

    .line 60
    iget-object v7, v3, Lvx;->i:Lwr;

    iget-object v7, v7, Lwr;->f:Lwl;

    iget v7, v7, Lwl;->f:I

    int-to-float v7, v7

    iget v3, v3, Lvx;->W:F

    mul-float v7, v7, v3

    add-float/2addr v7, v6

    float-to-int v3, v7

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v7, v3, Lvx;->i:Lwr;

    iget-object v7, v7, Lwr;->f:Lwl;

    iget v7, v7, Lwl;->f:I

    int-to-float v7, v7

    iget v3, v3, Lvx;->W:F

    div-float/2addr v7, v3

    add-float/2addr v7, v6

    float-to-int v3, v7

    goto :goto_0

    .line 62
    :pswitch_3
    iget-object v7, v3, Lvx;->i:Lwr;

    iget-object v7, v7, Lwr;->f:Lwl;

    iget v7, v7, Lwl;->f:I

    int-to-float v7, v7

    iget v3, v3, Lvx;->W:F

    mul-float v7, v7, v3

    add-float/2addr v7, v6

    float-to-int v3, v7

    .line 63
    :goto_0
    invoke-virtual {v2, v3}, Lwk;->c(I)V

    goto/16 :goto_c

    .line 6
    :cond_1
    :goto_1
    iget-object v2, v3, Lvx;->i:Lwr;

    iget-object v7, v2, Lwr;->i:Lwk;

    .line 7
    iget-object v2, v2, Lwr;->j:Lwk;

    .line 8
    iget-object v8, v3, Lvx;->J:Lvw;

    iget-object v8, v8, Lvw;->e:Lvw;

    .line 9
    iget-object v9, v3, Lvx;->K:Lvw;

    iget-object v9, v9, Lvw;->e:Lvw;

    .line 10
    iget-object v10, v3, Lvx;->L:Lvw;

    iget-object v10, v10, Lvw;->e:Lvw;

    .line 11
    iget-object v11, v3, Lvx;->M:Lvw;

    iget-object v11, v11, Lvw;->e:Lvw;

    iget v15, v3, Lvx;->X:I

    if-eqz v8, :cond_a

    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    iget v3, v3, Lvx;->W:F

    .line 34
    iget-boolean v8, v7, Lwk;->i:Z

    if-eqz v8, :cond_4

    iget-boolean v8, v2, Lwk;->i:Z

    if-eqz v8, :cond_4

    iget-object v4, v0, Lwp;->i:Lwk;

    .line 52
    iget-boolean v6, v4, Lwk;->c:Z

    if-eqz v6, :cond_3

    iget-object v6, v0, Lwp;->j:Lwk;

    iget-boolean v6, v6, Lwk;->c:Z

    if-nez v6, :cond_2

    goto :goto_2

    .line 53
    :cond_2
    iget-object v4, v4, Lwk;->k:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwk;

    iget v4, v4, Lwk;->f:I

    iget-object v6, v0, Lwp;->i:Lwk;

    iget v6, v6, Lwk;->e:I

    iget-object v8, v0, Lwp;->j:Lwk;

    .line 54
    iget-object v8, v8, Lwk;->k:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lwk;

    iget v8, v8, Lwk;->f:I

    iget-object v9, v0, Lwp;->j:Lwk;

    iget v9, v9, Lwk;->e:I

    .line 55
    iget v10, v7, Lwk;->f:I

    iget v7, v7, Lwk;->e:I

    .line 56
    iget v11, v2, Lwk;->f:I

    iget v2, v2, Lwk;->e:I

    sget-object v19, Lwp;->a:[I

    add-int v13, v4, v6

    sub-int v14, v8, v9

    add-int v4, v10, v7

    sub-int v16, v11, v2

    .line 57
    move-object/from16 v12, v19

    move/from16 v20, v15

    move v15, v4

    move/from16 v17, v3

    move/from16 v18, v20

    invoke-static/range {v12 .. v18}, Lwp;->n([IIIIIFI)V

    iget-object v2, v0, Lwp;->f:Lwl;

    aget v1, v19, v1

    .line 58
    invoke-virtual {v2, v1}, Lwk;->c(I)V

    iget-object v1, v0, Lwp;->d:Lvx;

    .line 59
    iget-object v1, v1, Lvx;->i:Lwr;

    iget-object v1, v1, Lwr;->f:Lwl;

    aget v2, v19, v5

    invoke-virtual {v1, v2}, Lwk;->c(I)V

    return-void

    .line 52
    :cond_3
    :goto_2
    return-void

    .line 34
    :cond_4
    move/from16 v20, v15

    .line 59
    iget-object v8, v0, Lwp;->i:Lwk;

    .line 35
    iget-boolean v9, v8, Lwk;->i:Z

    if-eqz v9, :cond_7

    iget-object v9, v0, Lwp;->j:Lwk;

    iget-boolean v10, v9, Lwk;->i:Z

    if-eqz v10, :cond_7

    .line 36
    iget-boolean v10, v7, Lwk;->c:Z

    if-eqz v10, :cond_6

    iget-boolean v10, v2, Lwk;->c:Z

    if-nez v10, :cond_5

    goto :goto_3

    .line 37
    :cond_5
    iget v10, v8, Lwk;->f:I

    iget v8, v8, Lwk;->e:I

    .line 38
    iget v11, v9, Lwk;->f:I

    iget v9, v9, Lwk;->e:I

    .line 39
    iget-object v12, v7, Lwk;->k:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lwk;

    iget v12, v12, Lwk;->f:I

    iget v13, v7, Lwk;->e:I

    .line 40
    iget-object v14, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lwk;

    iget v14, v14, Lwk;->f:I

    iget v15, v2, Lwk;->e:I

    sget-object v19, Lwp;->a:[I

    add-int/2addr v8, v10

    sub-int v9, v11, v9

    add-int v10, v12, v13

    sub-int v16, v14, v15

    .line 41
    move-object/from16 v12, v19

    move v13, v8

    move v14, v9

    move v15, v10

    move/from16 v17, v3

    move/from16 v18, v20

    invoke-static/range {v12 .. v18}, Lwp;->n([IIIIIFI)V

    iget-object v8, v0, Lwp;->f:Lwl;

    aget v9, v19, v1

    .line 42
    invoke-virtual {v8, v9}, Lwk;->c(I)V

    iget-object v8, v0, Lwp;->d:Lvx;

    .line 43
    iget-object v8, v8, Lvx;->i:Lwr;

    iget-object v8, v8, Lwr;->f:Lwl;

    aget v9, v19, v5

    invoke-virtual {v8, v9}, Lwk;->c(I)V

    goto :goto_4

    .line 36
    :cond_6
    :goto_3
    return-void

    .line 43
    :cond_7
    :goto_4
    iget-object v8, v0, Lwp;->i:Lwk;

    .line 44
    iget-boolean v9, v8, Lwk;->c:Z

    if-eqz v9, :cond_9

    iget-object v9, v0, Lwp;->j:Lwk;

    iget-boolean v9, v9, Lwk;->c:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v7, Lwk;->c:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v2, Lwk;->c:Z

    if-nez v9, :cond_8

    goto :goto_5

    .line 45
    :cond_8
    iget-object v8, v8, Lwk;->k:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lwk;

    iget v8, v8, Lwk;->f:I

    iget-object v9, v0, Lwp;->i:Lwk;

    iget v9, v9, Lwk;->e:I

    iget-object v10, v0, Lwp;->j:Lwk;

    .line 46
    iget-object v10, v10, Lwk;->k:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lwk;

    iget v10, v10, Lwk;->f:I

    iget-object v11, v0, Lwp;->j:Lwk;

    iget v11, v11, Lwk;->e:I

    .line 47
    iget-object v12, v7, Lwk;->k:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lwk;

    iget v12, v12, Lwk;->f:I

    iget v7, v7, Lwk;->e:I

    .line 48
    iget-object v13, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lwk;

    iget v13, v13, Lwk;->f:I

    iget v2, v2, Lwk;->e:I

    sget-object v19, Lwp;->a:[I

    add-int/2addr v8, v9

    sub-int v14, v10, v11

    add-int v15, v12, v7

    sub-int v16, v13, v2

    .line 49
    move-object/from16 v12, v19

    move v13, v8

    move/from16 v17, v3

    move/from16 v18, v20

    invoke-static/range {v12 .. v18}, Lwp;->n([IIIIIFI)V

    iget-object v2, v0, Lwp;->f:Lwl;

    aget v3, v19, v1

    .line 50
    invoke-virtual {v2, v3}, Lwk;->c(I)V

    iget-object v2, v0, Lwp;->d:Lvx;

    .line 51
    iget-object v2, v2, Lvx;->i:Lwr;

    iget-object v2, v2, Lwr;->f:Lwl;

    aget v3, v19, v5

    invoke-virtual {v2, v3}, Lwk;->c(I)V

    goto/16 :goto_c

    .line 44
    :cond_9
    :goto_5
    return-void

    .line 11
    :cond_a
    move/from16 v20, v15

    .line 51
    if-eqz v8, :cond_f

    if-eqz v10, :cond_f

    iget-object v2, v0, Lwp;->i:Lwk;

    .line 23
    iget-boolean v7, v2, Lwk;->c:Z

    if-eqz v7, :cond_e

    iget-object v7, v0, Lwp;->j:Lwk;

    iget-boolean v7, v7, Lwk;->c:Z

    if-nez v7, :cond_b

    goto :goto_8

    :cond_b
    iget v3, v3, Lvx;->W:F

    .line 24
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwk;

    iget v2, v2, Lwk;->f:I

    iget-object v7, v0, Lwp;->i:Lwk;

    iget v7, v7, Lwk;->e:I

    add-int/2addr v2, v7

    iget-object v7, v0, Lwp;->j:Lwk;

    .line 25
    iget-object v7, v7, Lwk;->k:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lwk;

    iget v7, v7, Lwk;->f:I

    iget-object v8, v0, Lwp;->j:Lwk;

    iget v8, v8, Lwk;->e:I

    sub-int/2addr v7, v8

    packed-switch v20, :pswitch_data_3

    sub-int/2addr v7, v2

    .line 26
    invoke-virtual {v0, v7, v1}, Lwt;->h(II)I

    move-result v2

    int-to-float v7, v2

    div-float/2addr v7, v3

    add-float/2addr v7, v6

    float-to-int v7, v7

    .line 27
    invoke-virtual {v0, v7, v5}, Lwt;->h(II)I

    move-result v8

    if-eq v7, v8, :cond_d

    int-to-float v2, v8

    mul-float v2, v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    goto :goto_7

    .line 29
    :pswitch_4
    sub-int/2addr v7, v2

    .line 30
    invoke-virtual {v0, v7, v1}, Lwt;->h(II)I

    move-result v2

    int-to-float v7, v2

    mul-float v7, v7, v3

    add-float/2addr v7, v6

    float-to-int v7, v7

    .line 31
    invoke-virtual {v0, v7, v5}, Lwt;->h(II)I

    move-result v8

    if-eq v7, v8, :cond_c

    int-to-float v2, v8

    div-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    goto :goto_6

    .line 33
    :cond_c
    nop

    .line 31
    :goto_6
    iget-object v3, v0, Lwp;->f:Lwl;

    .line 32
    invoke-virtual {v3, v2}, Lwk;->c(I)V

    iget-object v2, v0, Lwp;->d:Lvx;

    .line 33
    iget-object v2, v2, Lvx;->i:Lwr;

    iget-object v2, v2, Lwr;->f:Lwl;

    invoke-virtual {v2, v8}, Lwk;->c(I)V

    goto/16 :goto_c

    .line 29
    :cond_d
    nop

    .line 27
    :goto_7
    iget-object v3, v0, Lwp;->f:Lwl;

    .line 28
    invoke-virtual {v3, v2}, Lwk;->c(I)V

    iget-object v2, v0, Lwp;->d:Lvx;

    .line 29
    iget-object v2, v2, Lvx;->i:Lwr;

    iget-object v2, v2, Lwr;->f:Lwl;

    invoke-virtual {v2, v8}, Lwk;->c(I)V

    goto/16 :goto_c

    .line 23
    :cond_e
    :goto_8
    return-void

    .line 33
    :cond_f
    if-eqz v9, :cond_14

    if-eqz v11, :cond_14

    .line 12
    iget-boolean v8, v7, Lwk;->c:Z

    if-eqz v8, :cond_13

    iget-boolean v8, v2, Lwk;->c:Z

    if-nez v8, :cond_10

    goto :goto_b

    :cond_10
    iget v3, v3, Lvx;->W:F

    .line 13
    iget-object v8, v7, Lwk;->k:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lwk;

    iget v8, v8, Lwk;->f:I

    iget v7, v7, Lwk;->e:I

    add-int/2addr v8, v7

    .line 14
    iget-object v7, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lwk;

    iget v7, v7, Lwk;->f:I

    iget v2, v2, Lwk;->e:I

    sub-int/2addr v7, v2

    packed-switch v20, :pswitch_data_4

    sub-int/2addr v7, v8

    .line 19
    invoke-virtual {v0, v7, v5}, Lwt;->h(II)I

    move-result v2

    int-to-float v7, v2

    div-float/2addr v7, v3

    add-float/2addr v7, v6

    float-to-int v7, v7

    .line 20
    invoke-virtual {v0, v7, v1}, Lwt;->h(II)I

    move-result v8

    if-eq v7, v8, :cond_12

    int-to-float v2, v8

    mul-float v2, v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    goto :goto_a

    .line 22
    :pswitch_5
    sub-int/2addr v7, v8

    .line 15
    invoke-virtual {v0, v7, v5}, Lwt;->h(II)I

    move-result v2

    int-to-float v7, v2

    mul-float v7, v7, v3

    add-float/2addr v7, v6

    float-to-int v7, v7

    .line 16
    invoke-virtual {v0, v7, v1}, Lwt;->h(II)I

    move-result v8

    if-eq v7, v8, :cond_11

    int-to-float v2, v8

    div-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    goto :goto_9

    .line 18
    :cond_11
    nop

    .line 16
    :goto_9
    iget-object v3, v0, Lwp;->f:Lwl;

    .line 17
    invoke-virtual {v3, v8}, Lwk;->c(I)V

    iget-object v3, v0, Lwp;->d:Lvx;

    .line 18
    iget-object v3, v3, Lvx;->i:Lwr;

    iget-object v3, v3, Lwr;->f:Lwl;

    invoke-virtual {v3, v2}, Lwk;->c(I)V

    goto :goto_c

    .line 22
    :cond_12
    nop

    .line 20
    :goto_a
    iget-object v3, v0, Lwp;->f:Lwl;

    .line 21
    invoke-virtual {v3, v8}, Lwk;->c(I)V

    iget-object v3, v0, Lwp;->d:Lvx;

    .line 22
    iget-object v3, v3, Lvx;->i:Lwr;

    iget-object v3, v3, Lwr;->f:Lwl;

    invoke-virtual {v3, v2}, Lwk;->c(I)V

    goto :goto_c

    .line 12
    :cond_13
    :goto_b
    return-void

    .line 61
    :pswitch_6
    iget-object v7, v3, Lvx;->T:Lvx;

    if-eqz v7, :cond_14

    iget-object v7, v7, Lvx;->h:Lwp;

    .line 64
    iget-object v7, v7, Lwp;->f:Lwl;

    iget-boolean v8, v7, Lwl;->i:Z

    if-eqz v8, :cond_14

    .line 65
    iget v3, v3, Lvx;->x:F

    .line 66
    iget v7, v7, Lwl;->f:I

    int-to-float v7, v7

    mul-float v7, v7, v3

    add-float/2addr v7, v6

    float-to-int v3, v7

    .line 67
    invoke-virtual {v2, v3}, Lwk;->c(I)V

    .line 4
    :cond_14
    :goto_c
    iget-object v2, v0, Lwp;->i:Lwk;

    .line 68
    iget-boolean v3, v2, Lwk;->c:Z

    if-eqz v3, :cond_20

    iget-object v3, v0, Lwp;->j:Lwk;

    iget-boolean v7, v3, Lwk;->c:Z

    if-nez v7, :cond_15

    goto/16 :goto_10

    .line 69
    :cond_15
    iget-boolean v2, v2, Lwk;->i:Z

    if-eqz v2, :cond_17

    iget-boolean v2, v3, Lwk;->i:Z

    if-eqz v2, :cond_17

    iget-object v2, v0, Lwp;->f:Lwl;

    iget-boolean v2, v2, Lwl;->i:Z

    if-nez v2, :cond_16

    goto :goto_d

    .line 98
    :cond_16
    return-void

    .line 69
    :cond_17
    :goto_d
    iget-object v2, v0, Lwp;->f:Lwl;

    .line 70
    iget-boolean v2, v2, Lwl;->i:Z

    if-nez v2, :cond_19

    iget v2, v0, Lwp;->k:I

    if-ne v2, v4, :cond_19

    iget-object v2, v0, Lwp;->d:Lvx;

    iget v3, v2, Lvx;->s:I

    if-nez v3, :cond_19

    .line 71
    invoke-virtual {v2}, Lvx;->I()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_e

    .line 91
    :cond_18
    iget-object v2, v0, Lwp;->i:Lwk;

    .line 92
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwk;

    iget-object v3, v0, Lwp;->j:Lwk;

    .line 93
    iget-object v3, v3, Lwk;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk;

    .line 94
    iget v2, v2, Lwk;->f:I

    iget-object v3, v0, Lwp;->i:Lwk;

    iget v4, v3, Lwk;->e:I

    add-int/2addr v2, v4

    .line 95
    iget v1, v1, Lwk;->f:I

    iget-object v4, v0, Lwp;->j:Lwk;

    iget v4, v4, Lwk;->e:I

    add-int/2addr v1, v4

    .line 96
    invoke-virtual {v3, v2}, Lwk;->c(I)V

    iget-object v3, v0, Lwp;->j:Lwk;

    .line 97
    invoke-virtual {v3, v1}, Lwk;->c(I)V

    iget-object v3, v0, Lwp;->f:Lwl;

    sub-int/2addr v1, v2

    .line 98
    invoke-virtual {v3, v1}, Lwk;->c(I)V

    return-void

    .line 71
    :cond_19
    :goto_e
    iget-object v2, v0, Lwp;->f:Lwl;

    .line 72
    iget-boolean v2, v2, Lwl;->i:Z

    if-nez v2, :cond_1b

    iget v2, v0, Lwp;->k:I

    if-ne v2, v4, :cond_1b

    iget v2, v0, Lwp;->c:I

    if-ne v2, v5, :cond_1b

    iget-object v2, v0, Lwp;->i:Lwk;

    .line 73
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    iget-object v2, v0, Lwp;->j:Lwk;

    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    iget-object v2, v0, Lwp;->i:Lwk;

    .line 74
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwk;

    iget-object v3, v0, Lwp;->j:Lwk;

    .line 75
    iget-object v3, v3, Lwk;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwk;

    .line 76
    iget v2, v2, Lwk;->f:I

    iget-object v4, v0, Lwp;->i:Lwk;

    iget v4, v4, Lwk;->e:I

    .line 77
    iget v3, v3, Lwk;->f:I

    iget-object v5, v0, Lwp;->j:Lwk;

    iget v5, v5, Lwk;->e:I

    iget-object v7, v0, Lwp;->f:Lwl;

    .line 78
    iget v7, v7, Lwl;->m:I

    add-int/2addr v3, v5

    add-int/2addr v2, v4

    sub-int/2addr v3, v2

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lwp;->d:Lvx;

    .line 79
    iget v4, v3, Lvx;->w:I

    .line 80
    iget v3, v3, Lvx;->v:I

    .line 81
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v4, :cond_1a

    .line 82
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_1a
    iget-object v3, v0, Lwp;->f:Lwl;

    .line 83
    invoke-virtual {v3, v2}, Lwk;->c(I)V

    :cond_1b
    iget-object v2, v0, Lwp;->f:Lwl;

    .line 84
    iget-boolean v2, v2, Lwl;->i:Z

    if-nez v2, :cond_1c

    return-void

    :cond_1c
    iget-object v2, v0, Lwp;->i:Lwk;

    .line 85
    iget-object v2, v2, Lwk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwk;

    iget-object v3, v0, Lwp;->j:Lwk;

    .line 86
    iget-object v3, v3, Lwk;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk;

    .line 87
    iget v3, v2, Lwk;->f:I

    iget-object v4, v0, Lwp;->i:Lwk;

    iget v5, v4, Lwk;->e:I

    add-int/2addr v5, v3

    .line 88
    iget v7, v1, Lwk;->f:I

    iget-object v8, v0, Lwp;->j:Lwk;

    iget v8, v8, Lwk;->e:I

    add-int/2addr v8, v7

    iget-object v9, v0, Lwp;->d:Lvx;

    iget v9, v9, Lvx;->ad:F

    if-ne v2, v1, :cond_1d

    const/high16 v9, 0x3f000000    # 0.5f

    :cond_1d
    if-eq v2, v1, :cond_1e

    move v7, v8

    :cond_1e
    if-ne v2, v1, :cond_1f

    goto :goto_f

    .line 91
    :cond_1f
    move v3, v5

    .line 88
    :goto_f
    int-to-float v1, v3

    add-float/2addr v1, v6

    sub-int/2addr v7, v3

    iget-object v2, v0, Lwp;->f:Lwl;

    .line 89
    iget v2, v2, Lwl;->f:I

    sub-int/2addr v7, v2

    int-to-float v2, v7

    mul-float v2, v2, v9

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 90
    invoke-virtual {v4, v1}, Lwk;->c(I)V

    iget-object v1, v0, Lwp;->j:Lwk;

    iget-object v2, v0, Lwp;->i:Lwk;

    .line 91
    iget v2, v2, Lwk;->f:I

    iget-object v3, v0, Lwp;->f:Lwl;

    iget v3, v3, Lwl;->f:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lwk;->c(I)V

    return-void

    .line 68
    :cond_20
    :goto_10
    return-void

    .line 67
    :cond_21
    const/4 v1, 0x0

    .line 1
    throw v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public final g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwp;->h:Z

    iget-object v1, p0, Lwp;->i:Lwk;

    invoke-virtual {v1}, Lwk;->b()V

    iget-object v1, p0, Lwp;->i:Lwk;

    .line 2
    iput-boolean v0, v1, Lwk;->i:Z

    iget-object v1, p0, Lwp;->j:Lwk;

    .line 3
    invoke-virtual {v1}, Lwk;->b()V

    iget-object v1, p0, Lwp;->j:Lwk;

    .line 4
    iput-boolean v0, v1, Lwk;->i:Z

    iget-object v1, p0, Lwp;->f:Lwl;

    .line 5
    iput-boolean v0, v1, Lwl;->i:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lwp;->d:Lvx;

    iget-object v0, v0, Lvx;->ah:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "HorizontalRun "

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
