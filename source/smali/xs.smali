.class public final Lxs;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;Laak;)V
    .locals 1

    .line 1
    const v0, 0x7f0901da

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static final c(Ljava/lang/Long;Ljava/lang/Long;Landroid/os/health/HealthStats;Ldoi;Lbvn;)Lbwc;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    new-instance v9, Lbwc;

    iget-object v2, v1, Lbvn;->a:Lbwf;

    sget-object v3, Ldos;->ar:Ldos;

    .line 2
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 3
    const/16 v4, 0x2711

    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    cmp-long v11, v4, v7

    if-eqz v11, :cond_1

    iget-boolean v11, v3, Lddf;->c:Z

    if-eqz v11, :cond_0

    .line 4
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_0
    iget-object v11, v3, Lddf;->b:Lddk;

    .line 5
    check-cast v11, Ldos;

    iget v12, v11, Ldos;->a:I

    or-int/2addr v12, v6

    iput v12, v11, Ldos;->a:I

    iput-wide v4, v11, Ldos;->c:J

    :cond_1
    const/16 v4, 0x2712

    .line 6
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/4 v11, 0x2

    cmp-long v12, v4, v7

    if-eqz v12, :cond_3

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_2

    .line 7
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_2
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 8
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/2addr v13, v11

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->d:J

    :cond_3
    const/16 v4, 0x2713

    .line 9
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_5

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_4

    .line 10
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_4
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 11
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->e:J

    :cond_5
    const/16 v4, 0x2714

    .line 12
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_7

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_6

    .line 13
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_6
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 14
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit8 v13, v13, 0x8

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->f:J

    :cond_7
    const/16 v4, 0x2715

    .line 15
    invoke-static {v0, v4}, Lbvs;->e(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lddf;->Q(Ljava/lang/Iterable;)V

    const/16 v4, 0x2716

    .line 16
    invoke-static {v0, v4}, Lbvs;->e(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lddf;->R(Ljava/lang/Iterable;)V

    const/16 v4, 0x2717

    .line 17
    invoke-static {v0, v4}, Lbvs;->e(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lddf;->S(Ljava/lang/Iterable;)V

    const/16 v4, 0x2718

    .line 18
    invoke-static {v0, v4}, Lbvs;->e(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lddf;->P(Ljava/lang/Iterable;)V

    const/16 v4, 0x2719

    .line 19
    invoke-static {v0, v4}, Lbvs;->e(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lddf;->O(Ljava/lang/Iterable;)V

    const/16 v4, 0x271a

    .line 20
    invoke-static {v0, v4}, Lbvs;->e(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lddf;->K(Ljava/lang/Iterable;)V

    const/16 v4, 0x271b

    .line 21
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_8

    .line 22
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_8
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 23
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->m:Ldor;

    iget v4, v5, Ldos;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v5, Ldos;->a:I

    :cond_9
    const/16 v4, 0x271c

    .line 24
    invoke-static {v0, v4}, Lbvs;->e(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lddf;->L(Ljava/lang/Iterable;)V

    sget-object v4, Lbvy;->a:Lbvy;

    const/16 v5, 0x271e

    .line 25
    invoke-static {v0, v5}, Lbvs;->f(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbvz;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lddf;->N(Ljava/lang/Iterable;)V

    sget-object v4, Lbvx;->a:Lbvx;

    const/16 v5, 0x271f

    .line 26
    invoke-static {v0, v5}, Lbvs;->f(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbvz;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lddf;->M(Ljava/lang/Iterable;)V

    const/16 v4, 0x2720

    .line 27
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_b

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_a

    .line 28
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_a
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 29
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit8 v13, v13, 0x20

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->v:J

    :cond_b
    const/16 v4, 0x2721

    .line 30
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_d

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_c

    .line 31
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_c
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 32
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit8 v13, v13, 0x40

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->w:J

    :cond_d
    const/16 v4, 0x2722

    .line 33
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_f

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_e

    .line 34
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_e
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 35
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit16 v13, v13, 0x80

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->x:J

    :cond_f
    const/16 v4, 0x2723

    .line 36
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_11

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_10

    .line 37
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_10
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 38
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit16 v13, v13, 0x100

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->y:J

    :cond_11
    const/16 v4, 0x2724

    .line 39
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_13

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_12

    .line 40
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_12
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 41
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit16 v13, v13, 0x200

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->z:J

    :cond_13
    const/16 v4, 0x2725

    .line 42
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_15

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_14

    .line 43
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_14
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 44
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit16 v13, v13, 0x400

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->A:J

    :cond_15
    const/16 v4, 0x2726

    .line 45
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_17

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_16

    .line 46
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_16
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 47
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit16 v13, v13, 0x800

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->B:J

    :cond_17
    const/16 v4, 0x2727

    .line 48
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_19

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_18

    .line 49
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_18
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 50
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit16 v13, v13, 0x1000

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->C:J

    :cond_19
    const/16 v4, 0x2728

    .line 51
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_1b

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_1a

    .line 52
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_1a
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 53
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit16 v13, v13, 0x2000

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->D:J

    :cond_1b
    const/16 v4, 0x2729

    .line 54
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_1d

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_1c

    .line 55
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_1c
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 56
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->a:I

    or-int/lit16 v13, v13, 0x4000

    iput v13, v12, Ldos;->a:I

    iput-wide v4, v12, Ldos;->E:J

    :cond_1d
    const/16 v4, 0x272a

    .line 57
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const v12, 0x8000

    cmp-long v13, v4, v7

    if-eqz v13, :cond_1f

    iget-boolean v13, v3, Lddf;->c:Z

    if-eqz v13, :cond_1e

    .line 58
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_1e
    iget-object v13, v3, Lddf;->b:Lddk;

    .line 59
    check-cast v13, Ldos;

    iget v14, v13, Ldos;->a:I

    or-int/2addr v14, v12

    iput v14, v13, Ldos;->a:I

    iput-wide v4, v13, Ldos;->F:J

    :cond_1f
    const/16 v4, 0x272b

    .line 60
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/high16 v13, 0x10000

    cmp-long v14, v4, v7

    if-eqz v14, :cond_21

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_20

    .line 61
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_20
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 62
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->a:I

    or-int/2addr v15, v13

    iput v15, v14, Ldos;->a:I

    iput-wide v4, v14, Ldos;->G:J

    :cond_21
    const/16 v4, 0x272c

    .line 63
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/high16 v14, 0x20000

    cmp-long v15, v4, v7

    if-eqz v15, :cond_23

    iget-boolean v15, v3, Lddf;->c:Z

    if-eqz v15, :cond_22

    .line 64
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_22
    iget-object v15, v3, Lddf;->b:Lddk;

    .line 65
    check-cast v15, Ldos;

    iget v13, v15, Ldos;->a:I

    or-int/2addr v13, v14

    iput v13, v15, Ldos;->a:I

    iput-wide v4, v15, Ldos;->H:J

    :cond_23
    const/16 v4, 0x272d

    .line 66
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/high16 v13, 0x40000

    cmp-long v15, v4, v7

    if-eqz v15, :cond_25

    iget-boolean v15, v3, Lddf;->c:Z

    if-eqz v15, :cond_24

    .line 67
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_24
    iget-object v15, v3, Lddf;->b:Lddk;

    .line 68
    check-cast v15, Ldos;

    iget v14, v15, Ldos;->a:I

    or-int/2addr v14, v13

    iput v14, v15, Ldos;->a:I

    iput-wide v4, v15, Ldos;->I:J

    :cond_25
    const/16 v4, 0x272e

    .line 69
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    const/high16 v5, 0x80000

    if-eqz v4, :cond_27

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_26

    .line 70
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_26
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 71
    check-cast v14, Ldos;

    iput-object v4, v14, Ldos;->J:Ldor;

    iget v4, v14, Ldos;->a:I

    or-int/2addr v4, v5

    iput v4, v14, Ldos;->a:I

    :cond_27
    const/16 v4, 0x272f

    .line 72
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v14

    cmp-long v4, v14, v7

    if-eqz v4, :cond_29

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_28

    .line 73
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_28
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 74
    check-cast v4, Ldos;

    iget v5, v4, Ldos;->a:I

    const/high16 v16, 0x100000

    or-int v5, v5, v16

    iput v5, v4, Ldos;->a:I

    iput-wide v14, v4, Ldos;->K:J

    :cond_29
    const/16 v4, 0x2730

    .line 75
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_2b

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_2a

    .line 76
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_2a
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 77
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->L:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x200000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_2b
    const/16 v4, 0x2731

    .line 78
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_2c

    .line 79
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_2c
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 80
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->M:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x400000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_2d
    const/16 v4, 0x2732

    .line 81
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_2f

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_2e

    .line 82
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_2e
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 83
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->N:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x800000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_2f
    const/16 v4, 0x2733

    .line 84
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_31

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_30

    .line 85
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_30
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 86
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->O:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x1000000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_31
    const/16 v4, 0x2734

    .line 87
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_33

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_32

    .line 88
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_32
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 89
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->P:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x2000000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_33
    const/16 v4, 0x2735

    .line 90
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_35

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_34

    .line 91
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_34
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 92
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->Q:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x4000000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_35
    const/16 v4, 0x2736

    .line 93
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_37

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_36

    .line 94
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_36
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 95
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->R:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x8000000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_37
    const/16 v4, 0x2737

    .line 96
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_39

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_38

    .line 97
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_38
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 98
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->S:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x10000000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_39
    const/16 v4, 0x2738

    .line 99
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_3b

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_3a

    .line 100
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_3a
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 101
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->T:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x20000000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_3b
    const/16 v4, 0x2739

    .line 102
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_3d

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_3c

    .line 103
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_3c
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 104
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->U:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, 0x40000000    # 2.0f

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_3d
    const/16 v4, 0x273a

    .line 105
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_3f

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_3e

    .line 106
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_3e
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 107
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->V:Ldor;

    iget v4, v5, Ldos;->a:I

    const/high16 v14, -0x80000000

    or-int/2addr v4, v14

    iput v4, v5, Ldos;->a:I

    :cond_3f
    const/16 v4, 0x273b

    .line 108
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_41

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_40

    .line 109
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_40
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 110
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->W:Ldor;

    iget v4, v5, Ldos;->b:I

    or-int/2addr v4, v6

    iput v4, v5, Ldos;->b:I

    :cond_41
    const/16 v4, 0x273c

    .line 111
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_43

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_42

    .line 112
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_42
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 113
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->X:Ldor;

    iget v4, v5, Ldos;->b:I

    or-int/2addr v4, v11

    iput v4, v5, Ldos;->b:I

    :cond_43
    const/16 v4, 0x273d

    .line 114
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_45

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_44

    .line 115
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_44
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 116
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit8 v15, v15, 0x4

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->Y:J

    :cond_45
    const/16 v4, 0x273e

    .line 117
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_47

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_46

    .line 118
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_46
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 119
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit8 v15, v15, 0x8

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->Z:J

    :cond_47
    const/16 v4, 0x273f

    .line 120
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_49

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_48

    .line 121
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_48
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 122
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->aa:J

    :cond_49
    const/16 v4, 0x2740

    .line 123
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_4b

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_4a

    .line 124
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_4a
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 125
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit8 v15, v15, 0x20

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->ab:J

    :cond_4b
    const/16 v4, 0x2741

    .line 126
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_4d

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_4c

    .line 127
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_4c
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 128
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit8 v15, v15, 0x40

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->ac:J

    :cond_4d
    const/16 v4, 0x2742

    .line 129
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_4f

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_4e

    .line 130
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_4e
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 131
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit16 v15, v15, 0x80

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->ad:J

    :cond_4f
    const/16 v4, 0x2743

    .line 132
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_51

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_50

    .line 133
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_50
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 134
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit16 v15, v15, 0x100

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->ae:J

    :cond_51
    const/16 v4, 0x2744

    .line 135
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_53

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_52

    .line 136
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_52
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 137
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit16 v15, v15, 0x200

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->af:J

    :cond_53
    const/16 v4, 0x2745

    .line 138
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_55

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_54

    .line 139
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_54
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 140
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit16 v15, v15, 0x400

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->ag:J

    :cond_55
    const/16 v4, 0x2746

    .line 141
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_57

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_56

    .line 142
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_56
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 143
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit16 v15, v15, 0x800

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->ah:J

    :cond_57
    const/16 v4, 0x2747

    .line 144
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_59

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_58

    .line 145
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_58
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 146
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit16 v15, v15, 0x1000

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->ai:J

    :cond_59
    const/16 v4, 0x2748

    .line 147
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_5b

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_5a

    .line 148
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_5a
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 149
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit16 v15, v15, 0x2000

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->aj:J

    :cond_5b
    const/16 v4, 0x2749

    .line 150
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_5d

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_5c

    .line 151
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_5c
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 152
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/lit16 v15, v15, 0x4000

    iput v15, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->ak:J

    :cond_5d
    const/16 v4, 0x274a

    .line 153
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v7

    if-eqz v14, :cond_5f

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_5e

    .line 154
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_5e
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 155
    check-cast v14, Ldos;

    iget v15, v14, Ldos;->b:I

    or-int/2addr v12, v15

    iput v12, v14, Ldos;->b:I

    iput-wide v4, v14, Ldos;->al:J

    :cond_5f
    const/16 v4, 0x274b

    .line 156
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_61

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_60

    .line 157
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_60
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 158
    check-cast v12, Ldos;

    iget v14, v12, Ldos;->b:I

    const/high16 v15, 0x10000

    or-int/2addr v14, v15

    iput v14, v12, Ldos;->b:I

    iput-wide v4, v12, Ldos;->am:J

    :cond_61
    const/16 v4, 0x274d

    .line 159
    invoke-static {v0, v4}, Lbvs;->h(Landroid/os/health/HealthStats;I)Ldor;

    move-result-object v4

    if-eqz v4, :cond_63

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_62

    .line 160
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_62
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 161
    check-cast v5, Ldos;

    iput-object v4, v5, Ldos;->an:Ldor;

    iget v4, v5, Ldos;->b:I

    const/high16 v12, 0x20000

    or-int/2addr v4, v12

    iput v4, v5, Ldos;->b:I

    :cond_63
    const/16 v4, 0x274e

    .line 162
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_65

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_64

    .line 163
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_64
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 164
    check-cast v12, Ldos;

    iget v14, v12, Ldos;->b:I

    or-int/2addr v13, v14

    iput v13, v12, Ldos;->b:I

    iput-wide v4, v12, Ldos;->ao:J

    :cond_65
    const/16 v4, 0x274f

    .line 165
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v12, v4, v7

    if-eqz v12, :cond_67

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_66

    .line 166
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_66
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 167
    check-cast v12, Ldos;

    iget v13, v12, Ldos;->b:I

    const/high16 v14, 0x80000

    or-int/2addr v13, v14

    iput v13, v12, Ldos;->b:I

    iput-wide v4, v12, Ldos;->ap:J

    :cond_67
    const/16 v4, 0x2750

    .line 168
    invoke-static {v0, v4}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v0, v4, v7

    if-eqz v0, :cond_69

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_68

    .line 169
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_68
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 170
    check-cast v0, Ldos;

    iget v12, v0, Ldos;->b:I

    const/high16 v13, 0x100000

    or-int/2addr v12, v13

    iput v12, v0, Ldos;->b:I

    iput-wide v4, v0, Ldos;->aq:J

    .line 171
    :cond_69
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldos;

    const/4 v3, 0x5

    .line 172
    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v3

    .line 173
    check-cast v3, Lddf;

    .line 174
    invoke-virtual {v3, v0}, Lddf;->n(Lddk;)V

    iget-object v0, v2, Lbwf;->b:Lbvv;

    iget-object v2, v3, Lddf;->b:Lddk;

    .line 175
    check-cast v2, Ldos;

    iget-object v2, v2, Ldos;->g:Lddr;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 176
    check-cast v4, Ldos;

    iget-object v4, v4, Ldos;->g:Lddr;

    .line 177
    invoke-interface {v4}, Lddr;->size()I

    move-result v4

    if-ge v2, v4, :cond_6a

    .line 178
    invoke-virtual {v3, v2}, Lddf;->D(I)Ldor;

    move-result-object v4

    .line 179
    invoke-virtual {v0, v6, v4}, Lbvv;->c(ILdor;)Ldor;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lddf;->ac(ILdor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6a
    iget-object v2, v3, Lddf;->b:Lddk;

    .line 180
    check-cast v2, Ldos;

    iget-object v2, v2, Ldos;->h:Lddr;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_1
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 181
    check-cast v4, Ldos;

    iget-object v4, v4, Ldos;->h:Lddr;

    .line 182
    invoke-interface {v4}, Lddr;->size()I

    move-result v4

    if-ge v2, v4, :cond_6b

    .line 183
    invoke-virtual {v3, v2}, Lddf;->E(I)Ldor;

    move-result-object v4

    .line 184
    invoke-virtual {v0, v6, v4}, Lbvv;->c(ILdor;)Ldor;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lddf;->ad(ILdor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6b
    iget-object v2, v3, Lddf;->b:Lddk;

    .line 185
    check-cast v2, Ldos;

    iget-object v2, v2, Ldos;->i:Lddr;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_2
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 186
    check-cast v4, Ldos;

    iget-object v4, v4, Ldos;->i:Lddr;

    .line 187
    invoke-interface {v4}, Lddr;->size()I

    move-result v4

    if-ge v2, v4, :cond_6c

    .line 188
    invoke-virtual {v3, v2}, Lddf;->F(I)Ldor;

    move-result-object v4

    .line 189
    invoke-virtual {v0, v6, v4}, Lbvv;->c(ILdor;)Ldor;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lddf;->ae(ILdor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6c
    iget-object v2, v3, Lddf;->b:Lddk;

    .line 190
    check-cast v2, Ldos;

    iget-object v2, v2, Ldos;->j:Lddr;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_3
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 191
    check-cast v4, Ldos;

    iget-object v4, v4, Ldos;->j:Lddr;

    .line 192
    invoke-interface {v4}, Lddr;->size()I

    move-result v4

    if-ge v2, v4, :cond_6d

    .line 193
    invoke-virtual {v3, v2}, Lddf;->G(I)Ldor;

    move-result-object v4

    .line 194
    invoke-virtual {v0, v6, v4}, Lbvv;->c(ILdor;)Ldor;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lddf;->ab(ILdor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6d
    iget-object v2, v3, Lddf;->b:Lddk;

    .line 195
    check-cast v2, Ldos;

    iget-object v2, v2, Ldos;->k:Lddr;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_4
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 196
    check-cast v4, Ldos;

    iget-object v4, v4, Ldos;->k:Lddr;

    .line 197
    invoke-interface {v4}, Lddr;->size()I

    move-result v4

    if-ge v2, v4, :cond_6e

    .line 198
    invoke-virtual {v3, v2}, Lddf;->H(I)Ldor;

    move-result-object v4

    .line 199
    invoke-virtual {v0, v11, v4}, Lbvv;->c(ILdor;)Ldor;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lddf;->Y(ILdor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6e
    iget-object v2, v3, Lddf;->b:Lddk;

    .line 200
    check-cast v2, Ldos;

    iget-object v2, v2, Ldos;->l:Lddr;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_5
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 201
    check-cast v4, Ldos;

    iget-object v4, v4, Ldos;->l:Lddr;

    .line 202
    invoke-interface {v4}, Lddr;->size()I

    move-result v4

    if-ge v2, v4, :cond_6f

    const/4 v4, 0x3

    .line 203
    invoke-virtual {v3, v2}, Lddf;->I(I)Ldor;

    move-result-object v5

    .line 204
    invoke-virtual {v0, v4, v5}, Lbvv;->c(ILdor;)Ldor;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lddf;->V(ILdor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6f
    iget-object v2, v3, Lddf;->b:Lddk;

    .line 205
    check-cast v2, Ldos;

    iget-object v2, v2, Ldos;->n:Lddr;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    :goto_6
    iget-object v2, v3, Lddf;->b:Lddk;

    .line 206
    check-cast v2, Ldos;

    iget-object v2, v2, Ldos;->n:Lddr;

    .line 207
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-ge v10, v2, :cond_70

    const/4 v2, 0x5

    .line 208
    invoke-virtual {v3, v10}, Lddf;->J(I)Ldor;

    move-result-object v4

    .line 209
    invoke-virtual {v0, v2, v4}, Lbvv;->c(ILdor;)Ldor;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Lddf;->X(ILdor;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 210
    :cond_70
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ldos;

    const-wide/32 v3, 0x17eff343

    .line 211
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, v1, Lbvn;->b:Ljava/lang/String;

    if-nez v0, :cond_71

    goto :goto_7

    .line 212
    :cond_71
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v7, v0

    :goto_7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v8}, Lbwc;-><init>(Ldos;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ldoi;Ljava/lang/String;Ldot;)V

    return-object v9
.end method

.method public static d(Ljava/lang/String;Landroid/content/Context;)Ldpg;
    .locals 6

    .line 1
    sget-object v0, Ldpg;->f:Ldpg;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iget-boolean v3, v0, Lddf;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_0
    iget-object v3, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v3, Ldpg;

    iget v5, v3, Ldpg;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Ldpg;->a:I

    iput-wide v1, v3, Ldpg;->b:J

    .line 5
    invoke-static {p1}, Lbvk;->c(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_1
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 7
    check-cast v1, Ldpg;

    iget v2, v1, Ldpg;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Ldpg;->a:I

    iput-boolean p1, v1, Ldpg;->c:Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result p1

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_2
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 10
    check-cast v1, Ldpg;

    iget v2, v1, Ldpg;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Ldpg;->a:I

    iput p1, v1, Ldpg;->d:I

    if-eqz p0, :cond_3

    or-int/lit8 p1, v2, 0x8

    iput p1, v1, Ldpg;->a:I

    iput-object p0, v1, Ldpg;->e:Ljava/lang/String;

    .line 11
    :cond_3
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Ldpg;

    return-object p0
.end method
