.class public final Lcaf;
.super Lbzv;
.source "PG"

# interfaces
.implements Lbwq;
.implements Lbvd;


# instance fields
.field private final a:Lbvh;

.field private final b:Ldny;

.field private final c:Ldny;

.field private final d:Ldny;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lbvh;Ldny;Ldny;Ldny;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbzv;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcaf;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcaf;->a:Lbvh;

    iput-object p2, p0, Lcaf;->b:Ldny;

    iput-object p3, p0, Lcaf;->c:Ldny;

    iput-object p4, p0, Lcaf;->d:Ldny;

    return-void
.end method

.method private static h(Ljava/lang/Long;J)J
    .locals 2

    .line 1
    if-nez p0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static i(Lbzs;)Ldpd;
    .locals 6

    .line 1
    sget-object v0, Ldpd;->f:Ldpd;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-object v1, p0, Lbzs;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbzs;->a:Ljava/lang/String;

    iget-boolean v3, v0, Lddf;->c:Z

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_0
    iget-object v3, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v3, Ldpd;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Ldpd;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ldpd;->a:I

    iput-object v1, v3, Ldpd;->b:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lbzs;->b:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbzs;->b:Ljava/lang/Long;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_2
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 7
    check-cast v1, Ldpd;

    iget v5, v1, Ldpd;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Ldpd;->a:I

    iput-wide v3, v1, Ldpd;->c:J

    :cond_3
    iget-object v1, p0, Lbzs;->c:Ljava/lang/Long;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lbzs;->c:Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_4
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 9
    check-cast v1, Ldpd;

    iget v5, v1, Ldpd;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v1, Ldpd;->a:I

    iput-wide v3, v1, Ldpd;->d:J

    :cond_5
    iget-object v1, p0, Lbzs;->d:Ljava/lang/Long;

    if-eqz v1, :cond_7

    iget-object p0, p0, Lbzs;->d:Ljava/lang/Long;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean p0, v0, Lddf;->c:Z

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_6
    iget-object p0, v0, Lddf;->b:Lddk;

    .line 11
    check-cast p0, Ldpd;

    iget v1, p0, Ldpd;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Ldpd;->a:I

    iput-wide v3, p0, Ldpd;->e:J

    .line 12
    :cond_7
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Ldpd;

    return-object p0
.end method


# virtual methods
.method public final c(Landroid/app/Activity;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    iget-object v0, v1, Lcaf;->a:Lbvh;

    invoke-virtual {v0, v1}, Lbvh;->b(Lbvg;)V

    sget-object v2, Lcaa;->a:Lcaa;

    iget-wide v3, v2, Lcaa;->g:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    iget-wide v3, v2, Lcaa;->h:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    return-void

    .line 1
    :cond_1
    :goto_0
    iget-boolean v0, v2, Lcaa;->b:Z

    if-eqz v0, :cond_2

    iget-wide v3, v2, Lcaa;->c:J

    goto :goto_1

    .line 9
    :cond_2
    iget-wide v3, v2, Lcaa;->e:J

    .line 1
    :goto_1
    cmp-long v0, v3, v5

    if-lez v0, :cond_5d

    iget-wide v7, v2, Lcaa;->g:J

    cmp-long v0, v7, v3

    if-gez v0, :cond_4

    iget-wide v7, v2, Lcaa;->h:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    return-void

    .line 2
    :cond_4
    :goto_2
    sget-object v0, Ldpf;->z:Ldpf;

    .line 3
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v3

    iget-boolean v0, v2, Lcaa;->b:Z

    iget-boolean v4, v3, Lddf;->c:Z

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 4
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_5
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 5
    check-cast v4, Ldpf;

    iget v8, v4, Ldpf;->a:I

    const/high16 v9, 0x10000

    or-int/2addr v8, v9

    iput v8, v4, Ldpf;->a:I

    iput-boolean v0, v4, Ldpf;->u:Z

    iget-boolean v0, v2, Lcaa;->b:Z

    const/high16 v4, 0x20000

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_7

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_6
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 7
    check-cast v0, Ldpf;

    iput v9, v0, Ldpf;->v:I

    iget v10, v0, Ldpf;->a:I

    or-int/2addr v4, v10

    iput v4, v0, Ldpf;->a:I

    goto :goto_3

    .line 64
    :cond_7
    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_8

    .line 8
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_8
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 9
    check-cast v0, Ldpf;

    iput v8, v0, Ldpf;->v:I

    iget v10, v0, Ldpf;->a:I

    or-int/2addr v4, v10

    iput v4, v0, Ldpf;->a:I

    .line 7
    :goto_3
    iget-object v0, v2, Lcaa;->l:Lbzz;

    iget-boolean v4, v0, Lbzz;->a:Z

    if-eqz v4, :cond_a

    iget-wide v10, v2, Lcaa;->c:J

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_9

    .line 10
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_9
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 11
    check-cast v4, Ldpf;

    iget v12, v4, Ldpf;->a:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v4, Ldpf;->a:I

    iput-wide v10, v4, Ldpf;->e:J

    .line 12
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4

    .line 64
    :cond_a
    const/4 v4, 0x0

    .line 12
    :goto_4
    iget-boolean v10, v0, Lbzz;->b:Z

    if-eqz v10, :cond_c

    iget-wide v10, v2, Lcaa;->d:J

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_b

    .line 13
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_b
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 14
    check-cast v12, Ldpf;

    iget v13, v12, Ldpf;->a:I

    or-int/lit16 v13, v13, 0x80

    iput v13, v12, Ldpf;->a:I

    iput-wide v10, v12, Ldpf;->h:J

    .line 15
    invoke-static {v4, v10, v11}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_c
    iget-boolean v10, v0, Lbzz;->c:Z

    iget-boolean v10, v0, Lbzz;->d:Z

    iget-boolean v10, v0, Lbzz;->e:Z

    iget-boolean v10, v0, Lbzz;->f:Z

    if-eqz v10, :cond_e

    iget-wide v10, v2, Lcaa;->e:J

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_d

    .line 16
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_d
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 17
    check-cast v12, Ldpf;

    iget v13, v12, Ldpf;->a:I

    or-int/lit16 v13, v13, 0x200

    iput v13, v12, Ldpf;->a:I

    iput-wide v10, v12, Ldpf;->j:J

    .line 18
    invoke-static {v4, v10, v11}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_e
    iget-object v10, v1, Lcaf;->d:Ldny;

    .line 19
    invoke-interface {v10}, Ldny;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    const-wide/16 v11, -0x1

    packed-switch v10, :pswitch_data_0

    move-wide v13, v11

    goto :goto_5

    .line 64
    :pswitch_0
    iget-boolean v10, v0, Lbzz;->h:Z

    if-eqz v10, :cond_f

    iget-wide v13, v2, Lcaa;->f:J

    goto :goto_5

    :pswitch_1
    iget-boolean v10, v0, Lbzz;->g:Z

    if-eqz v10, :cond_f

    iget-wide v13, v2, Lcaa;->g:J

    goto :goto_5

    :pswitch_2
    iget-boolean v10, v0, Lbzz;->j:Z

    if-eqz v10, :cond_f

    iget-wide v13, v2, Lcaa;->i:J

    goto :goto_5

    :pswitch_3
    iget-boolean v10, v0, Lbzz;->i:Z

    if-eqz v10, :cond_f

    iget-wide v13, v2, Lcaa;->h:J

    goto :goto_5

    :cond_f
    move-wide v13, v11

    .line 19
    :goto_5
    cmp-long v10, v13, v11

    if-eqz v10, :cond_11

    iget-boolean v10, v3, Lddf;->c:Z

    if-eqz v10, :cond_10

    .line 20
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_10
    iget-object v10, v3, Lddf;->b:Lddk;

    .line 21
    check-cast v10, Ldpf;

    iget v11, v10, Ldpf;->a:I

    or-int/lit16 v11, v11, 0x400

    iput v11, v10, Ldpf;->a:I

    iput-wide v13, v10, Ldpf;->k:J

    .line 22
    invoke-static {v4, v13, v14}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_11
    iget-boolean v10, v0, Lbzz;->g:Z

    if-eqz v10, :cond_13

    iget-wide v10, v2, Lcaa;->g:J

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_12

    .line 23
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_12
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 24
    check-cast v12, Ldpf;

    iget v13, v12, Ldpf;->a:I

    or-int/lit16 v13, v13, 0x2000

    iput v13, v12, Ldpf;->a:I

    iput-wide v10, v12, Ldpf;->n:J

    .line 25
    invoke-static {v4, v10, v11}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_13
    iget-boolean v10, v0, Lbzz;->h:Z

    if-eqz v10, :cond_15

    iget-wide v10, v2, Lcaa;->f:J

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_14

    .line 26
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_14
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 27
    check-cast v12, Ldpf;

    iget v13, v12, Ldpf;->a:I

    or-int/lit16 v13, v13, 0x4000

    iput v13, v12, Ldpf;->a:I

    iput-wide v10, v12, Ldpf;->o:J

    .line 28
    invoke-static {v4, v10, v11}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_15
    iget-boolean v10, v0, Lbzz;->i:Z

    if-eqz v10, :cond_17

    iget-wide v10, v2, Lcaa;->h:J

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_16

    .line 29
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_16
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 30
    check-cast v12, Ldpf;

    iget v13, v12, Ldpf;->a:I

    or-int/lit16 v13, v13, 0x800

    iput v13, v12, Ldpf;->a:I

    iput-wide v10, v12, Ldpf;->l:J

    .line 31
    invoke-static {v4, v10, v11}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_17
    iget-boolean v10, v0, Lbzz;->j:Z

    if-eqz v10, :cond_19

    iget-wide v10, v2, Lcaa;->i:J

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_18

    .line 32
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_18
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 33
    check-cast v12, Ldpf;

    iget v13, v12, Ldpf;->a:I

    or-int/lit16 v13, v13, 0x1000

    iput v13, v12, Ldpf;->a:I

    iput-wide v10, v12, Ldpf;->m:J

    .line 34
    invoke-static {v4, v10, v11}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_19
    iget-boolean v0, v0, Lbzz;->k:Z

    const v10, 0x8000

    if-eqz v0, :cond_1b

    iget-wide v11, v2, Lcaa;->j:J

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_1a

    .line 35
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_1a
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 36
    check-cast v0, Ldpf;

    iget v13, v0, Ldpf;->a:I

    or-int/2addr v13, v10

    iput v13, v0, Ldpf;->a:I

    iput-wide v11, v0, Ldpf;->p:J

    .line 37
    invoke-static {v4, v11, v12}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1b
    iget-object v0, v2, Lcaa;->m:Lbzs;

    iget-object v0, v0, Lbzs;->b:Ljava/lang/Long;

    const/high16 v11, 0x40000

    if-eqz v0, :cond_1f

    iget-object v0, v2, Lcaa;->m:Lbzs;

    .line 38
    invoke-static {v0}, Lcaf;->i(Lbzs;)Ldpd;

    move-result-object v0

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_1c

    .line 39
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_1c
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 40
    check-cast v12, Ldpf;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v12, Ldpf;->w:Ldpd;

    iget v13, v12, Ldpf;->a:I

    or-int/2addr v13, v11

    iput v13, v12, Ldpf;->a:I

    iget v12, v0, Ldpd;->a:I

    and-int/2addr v12, v8

    if-eqz v12, :cond_1d

    iget-wide v12, v0, Ldpd;->c:J

    .line 42
    invoke-static {v4, v12, v13}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1d
    iget v12, v0, Ldpd;->a:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_1e

    iget-wide v12, v0, Ldpd;->d:J

    .line 43
    invoke-static {v4, v12, v13}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1e
    iget v12, v0, Ldpd;->a:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_1f

    iget-wide v12, v0, Ldpd;->e:J

    .line 44
    invoke-static {v4, v12, v13}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1f
    iget-object v0, v2, Lcaa;->n:Lbzs;

    iget-object v0, v0, Lbzs;->b:Ljava/lang/Long;

    const/high16 v12, 0x80000

    if-eqz v0, :cond_23

    iget-object v0, v2, Lcaa;->n:Lbzs;

    .line 45
    invoke-static {v0}, Lcaf;->i(Lbzs;)Ldpd;

    move-result-object v0

    iget-boolean v13, v3, Lddf;->c:Z

    if-eqz v13, :cond_20

    .line 46
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_20
    iget-object v13, v3, Lddf;->b:Lddk;

    .line 47
    check-cast v13, Ldpf;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v13, Ldpf;->x:Ldpd;

    iget v14, v13, Ldpf;->a:I

    or-int/2addr v14, v12

    iput v14, v13, Ldpf;->a:I

    iget v13, v0, Ldpd;->a:I

    and-int/2addr v13, v8

    if-eqz v13, :cond_21

    iget-wide v13, v0, Ldpd;->c:J

    .line 49
    invoke-static {v4, v13, v14}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_21
    iget v13, v0, Ldpd;->a:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_22

    iget-wide v13, v0, Ldpd;->d:J

    .line 50
    invoke-static {v4, v13, v14}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_22
    iget v13, v0, Ldpd;->a:I

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_23

    iget-wide v13, v0, Ldpd;->e:J

    .line 51
    invoke-static {v4, v13, v14}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 52
    :cond_23
    sget-object v0, Lcag;->a:Lcoc;

    const/16 v13, 0x20

    if-nez v0, :cond_33

    .line 53
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v14

    cmp-long v0, v14, v5

    if-lez v0, :cond_24

    .line 54
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0

    move-object v14, v0

    goto :goto_6

    .line 64
    :cond_24
    sget-object v0, Lcns;->a:Lcns;

    move-object v14, v0

    .line 54
    :goto_6
    invoke-virtual {v14}, Lcoc;->d()Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcns;->a:Lcns;

    goto/16 :goto_10

    .line 55
    :cond_25
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v15

    const/16 v0, 0x1b8

    new-array v0, v0, [B

    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    const-string v10, "/proc/self/stat"

    .line 56
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 57
    :try_start_1
    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 59
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_26

    .line 61
    aget-byte v12, v0, v11

    const/16 v15, 0x28

    if-eq v12, v15, :cond_27

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 64
    :cond_26
    const/4 v11, 0x0

    .line 61
    :cond_27
    if-eqz v11, :cond_31

    add-int/lit8 v12, v11, 0x10

    if-lt v12, v10, :cond_28

    goto :goto_d

    .line 65
    :cond_28
    :goto_8
    if-le v12, v11, :cond_2a

    .line 62
    aget-byte v15, v0, v12

    const/16 v9, 0x29

    if-ne v15, v9, :cond_29

    move v11, v12

    const/4 v9, 0x1

    goto :goto_9

    .line 64
    :cond_29
    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x1

    goto :goto_8

    :cond_2a
    const/4 v9, 0x0

    .line 62
    :goto_9
    if-nez v9, :cond_2b

    sget-object v0, Lcns;->a:Lcns;

    goto :goto_f

    :cond_2b
    move-wide/from16 v16, v5

    const/4 v9, 0x1

    :goto_a
    if-ge v11, v10, :cond_30

    .line 63
    aget-byte v12, v0, v11

    if-ne v12, v13, :cond_2e

    add-int/lit8 v12, v9, 0x1

    const/16 v15, 0x15

    if-ne v9, v15, :cond_2d

    cmp-long v0, v16, v5

    if-gtz v0, :cond_2c

    goto :goto_c

    .line 64
    :cond_2c
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0

    goto :goto_f

    :cond_2d
    move v9, v12

    goto :goto_b

    :cond_2e
    const/16 v15, 0x15

    if-ne v9, v15, :cond_2f

    const-wide v18, 0xcccccccccccccccL

    cmp-long v15, v16, v18

    if-gtz v15, :cond_30

    const-wide/16 v18, 0xa

    mul-long v16, v16, v18

    const/16 v15, 0x30

    if-lt v12, v15, :cond_30

    const/16 v15, 0x39

    if-gt v12, v15, :cond_30

    add-int/lit8 v12, v12, -0x30

    int-to-long v5, v12

    add-long v16, v16, v5

    :cond_2f
    :goto_b
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v5, 0x0

    goto :goto_a

    .line 63
    :cond_30
    :goto_c
    sget-object v0, Lcns;->a:Lcns;

    goto :goto_f

    .line 61
    :cond_31
    :goto_d
    sget-object v0, Lcns;->a:Lcns;

    goto :goto_f

    .line 60
    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 56
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    :goto_e
    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 59
    :catchall_2
    move-exception v0

    goto :goto_11

    .line 9
    :catch_0
    move-exception v0

    :try_start_5
    sget-object v0, Lcns;->a:Lcns;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 59
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 61
    :goto_f
    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v5

    if-nez v5, :cond_32

    sget-object v0, Lcns;->a:Lcns;

    goto :goto_10

    :cond_32
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v14}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    div-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0

    .line 54
    :goto_10
    sput-object v0, Lcag;->a:Lcoc;

    goto :goto_12

    .line 59
    :goto_11
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 60
    throw v0

    .line 64
    :cond_33
    nop

    .line 54
    :goto_12
    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 66
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-boolean v9, v3, Lddf;->c:Z

    if-eqz v9, :cond_34

    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_34
    iget-object v9, v3, Lddf;->b:Lddk;

    .line 68
    check-cast v9, Ldpf;

    iget v10, v9, Ldpf;->a:I

    or-int/2addr v10, v8

    iput v10, v9, Ldpf;->a:I

    iput-wide v5, v9, Ldpf;->c:J

    .line 69
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 70
    :cond_35
    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v5

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_36

    .line 71
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_36
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 72
    check-cast v0, Ldpf;

    iget v9, v0, Ldpf;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v0, Ldpf;->a:I

    iput-wide v5, v0, Ldpf;->d:J

    .line 73
    invoke-static {v4, v5, v6}, Lcaf;->h(Ljava/lang/Long;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v1, Lcaf;->c:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-nez v6, :cond_37

    goto/16 :goto_13

    .line 132
    :cond_37
    if-nez v0, :cond_39

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_38

    .line 75
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_38
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 76
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    const/4 v9, 0x1

    or-int/2addr v6, v9

    iput v6, v0, Ldpf;->a:I

    iput-wide v4, v0, Ldpf;->b:J

    :cond_39
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 77
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_3b

    iget-wide v9, v0, Ldpf;->e:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_3a

    .line 78
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_3a
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 79
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->e:J

    :cond_3b
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 80
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_3d

    iget-wide v9, v0, Ldpf;->h:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_3c

    .line 81
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_3c
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 82
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->h:J

    :cond_3d
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 83
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_3f

    iget-wide v9, v0, Ldpf;->i:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_3e

    .line 84
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_3e
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 85
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->i:J

    :cond_3f
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 86
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/2addr v6, v13

    if-eqz v6, :cond_41

    iget-wide v9, v0, Ldpf;->f:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_40

    .line 87
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_40
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 88
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/2addr v6, v13

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->f:J

    :cond_41
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 89
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_43

    iget-wide v9, v0, Ldpf;->g:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_42

    .line 90
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_42
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 91
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->g:J

    :cond_43
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 92
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_45

    iget-wide v9, v0, Ldpf;->j:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_44

    .line 93
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_44
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 94
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->j:J

    :cond_45
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 95
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_47

    iget-wide v9, v0, Ldpf;->k:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_46

    .line 96
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_46
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 97
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->k:J

    :cond_47
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 98
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_49

    iget-wide v9, v0, Ldpf;->l:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_48

    .line 99
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_48
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 100
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->l:J

    :cond_49
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 101
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_4b

    iget-wide v9, v0, Ldpf;->m:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_4a

    .line 102
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_4a
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 103
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->m:J

    :cond_4b
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 104
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_4d

    iget-wide v9, v0, Ldpf;->n:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_4c

    .line 105
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_4c
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 106
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->n:J

    :cond_4d
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 107
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_4f

    iget-wide v9, v0, Ldpf;->o:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_4e

    .line 108
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_4e
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 109
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->o:J

    :cond_4f
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 110
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    const v9, 0x8000

    and-int/2addr v6, v9

    if-eqz v6, :cond_51

    iget-wide v9, v0, Ldpf;->p:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_50

    .line 111
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_50
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 112
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    const v11, 0x8000

    or-int/2addr v6, v11

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->p:J

    :cond_51
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 113
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    const/high16 v9, 0x40000

    and-int/2addr v6, v9

    if-eqz v6, :cond_54

    iget-object v0, v0, Ldpf;->w:Ldpd;

    if-nez v0, :cond_52

    .line 114
    sget-object v0, Ldpd;->f:Ldpd;

    .line 115
    :cond_52
    invoke-static {v0, v4, v5}, Lxt;->b(Ldpd;J)Ldpd;

    move-result-object v0

    iget-boolean v6, v3, Lddf;->c:Z

    if-eqz v6, :cond_53

    .line 116
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_53
    iget-object v6, v3, Lddf;->b:Lddk;

    .line 117
    check-cast v6, Ldpf;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v6, Ldpf;->w:Ldpd;

    iget v0, v6, Ldpf;->a:I

    const/high16 v9, 0x40000

    or-int/2addr v0, v9

    iput v0, v6, Ldpf;->a:I

    :cond_54
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 119
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    const/high16 v9, 0x80000

    and-int/2addr v6, v9

    if-eqz v6, :cond_57

    iget-object v0, v0, Ldpf;->x:Ldpd;

    if-nez v0, :cond_55

    .line 120
    sget-object v0, Ldpd;->f:Ldpd;

    .line 121
    :cond_55
    invoke-static {v0, v4, v5}, Lxt;->b(Ldpd;J)Ldpd;

    move-result-object v0

    iget-boolean v6, v3, Lddf;->c:Z

    if-eqz v6, :cond_56

    .line 122
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_56
    iget-object v6, v3, Lddf;->b:Lddk;

    .line 123
    check-cast v6, Ldpf;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v6, Ldpf;->x:Ldpd;

    iget v0, v6, Ldpf;->a:I

    const/high16 v9, 0x80000

    or-int/2addr v0, v9

    iput v0, v6, Ldpf;->a:I

    :cond_57
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 125
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_59

    iget-wide v9, v0, Ldpf;->d:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_58

    .line 126
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_58
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 127
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->d:J

    :cond_59
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 128
    check-cast v0, Ldpf;

    iget v6, v0, Ldpf;->a:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_5b

    iget-wide v9, v0, Ldpf;->c:J

    sub-long/2addr v9, v4

    iget-boolean v0, v3, Lddf;->c:Z

    if-eqz v0, :cond_5a

    .line 129
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v7, v3, Lddf;->c:Z

    :cond_5a
    iget-object v0, v3, Lddf;->b:Lddk;

    .line 130
    check-cast v0, Ldpf;

    iget v4, v0, Ldpf;->a:I

    or-int/2addr v4, v8

    iput v4, v0, Ldpf;->a:I

    iput-wide v9, v0, Ldpf;->c:J

    .line 74
    :cond_5b
    :goto_13
    iget-object v0, v2, Lcaa;->k:Lbtx;

    iget-object v0, v1, Lcaf;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, v1, Lcaf;->b:Ldny;

    .line 133
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcad;

    new-instance v2, Lcac;

    invoke-direct {v2, v0, v3}, Lcac;-><init>(Lcad;Lddf;)V

    iget-object v0, v0, Lcad;->d:Ldai;

    .line 134
    invoke-static {v2, v0}, Lhh;->m(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    return-void

    .line 132
    :cond_5c
    sget-object v0, Ldad;->a:Ldag;

    return-void

    .line 9
    :cond_5d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf;->a:Lbvh;

    invoke-virtual {v0, p0}, Lbvh;->a(Lbvg;)V

    return-void
.end method
