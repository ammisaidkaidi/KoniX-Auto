.class public final Lcew;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lceo;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcny;

.field public final c:Ljava/lang/String;

.field private final d:Ldah;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldah;Lhh;[B)V
    .locals 9

    .line 1
    new-instance v2, Lbqh;

    new-instance p4, Lbqg;

    .line 2
    invoke-direct {p4}, Lbqg;-><init>()V

    .line 1
    invoke-direct {v2, p4}, Lbqh;-><init>(Lbqg;)V

    new-instance v4, Ldhq;

    const/4 p4, 0x0

    invoke-direct {v4, p1, p4, p4}, Ldhq;-><init>(Landroid/content/Context;[B[B)V

    new-instance v5, Lcey;

    invoke-direct {v5, p1}, Lcey;-><init>(Landroid/content/Context;)V

    sget-object v6, Lbtn;->l:Lbtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcew;->a:Landroid/content/Context;

    iput-object p2, p0, Lcew;->d:Ldah;

    new-instance p2, Lces;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lces;-><init>(Landroid/content/Context;Lbqh;Lhh;Ldhq;Ldny;Ldny;[B[B)V

    iput-object p2, p0, Lcew;->b:Lcny;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcew;->c:Ljava/lang/String;

    return-void
.end method

.method public static final f(Lboz;)Lcem;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    sget-object v1, Lcem;->i:Lcem;

    .line 2
    invoke-virtual {v1}, Lddk;->n()Lddf;

    move-result-object v1

    .line 1
    iget-object v2, v0, Lboz;->a:Ljava/lang/String;

    iget-boolean v3, v1, Lddf;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_0
    iget-object v3, v1, Lddf;->b:Lddk;

    .line 4
    check-cast v3, Lcem;

    iget v5, v3, Lcem;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v3, Lcem;->a:I

    iput-object v2, v3, Lcem;->b:Ljava/lang/String;

    .line 3
    iget-object v2, v0, Lboz;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x4

    or-int/2addr v5, v7

    iput v5, v3, Lcem;->a:I

    iput-object v2, v3, Lcem;->d:Ljava/lang/String;

    .line 6
    iget-boolean v2, v0, Lboz;->f:Z

    or-int/lit8 v5, v5, 0x8

    iput v5, v3, Lcem;->a:I

    iput-boolean v2, v3, Lcem;->g:Z

    .line 7
    iget-wide v8, v0, Lboz;->g:J

    or-int/lit8 v2, v5, 0x10

    iput v2, v3, Lcem;->a:I

    iput-wide v8, v3, Lcem;->h:J

    .line 8
    iget-object v2, v0, Lboz;->b:[B

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {v2}, Ldcl;->t([B)Ldcl;

    move-result-object v2

    iget-boolean v5, v1, Lddf;->c:Z

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_1
    iget-object v5, v1, Lddf;->b:Lddk;

    .line 11
    check-cast v5, Lcem;

    iget v8, v5, Lcem;->a:I

    or-int/2addr v8, v3

    iput v8, v5, Lcem;->a:I

    iput-object v2, v5, Lcem;->c:Ldcl;

    .line 12
    :cond_2
    iget-object v0, v0, Lboz;->d:[Lboy;

    array-length v2, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_f

    aget-object v8, v0, v5

    .line 13
    iget-object v9, v8, Lboy;->b:[Lbpb;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_d

    aget-object v12, v9, v11

    .line 14
    iget v13, v12, Lbpb;->h:I

    packed-switch v13, :pswitch_data_0

    .line 15
    const/4 v14, 0x2

    sget-object v3, Lcen;->e:Lcen;

    .line 16
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 15
    iget-object v7, v12, Lbpb;->b:Ljava/lang/String;

    iget-boolean v13, v3, Lddf;->c:Z

    if-eqz v13, :cond_b

    .line 17
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v4, v3, Lddf;->c:Z

    goto/16 :goto_2

    .line 24
    :pswitch_0
    sget-object v13, Lcen;->e:Lcen;

    .line 25
    invoke-virtual {v13}, Lddk;->n()Lddf;

    move-result-object v13

    .line 24
    iget-object v14, v12, Lbpb;->b:Ljava/lang/String;

    iget-boolean v15, v13, Lddf;->c:Z

    if-eqz v15, :cond_3

    invoke-virtual {v13}, Lddf;->k()V

    iput-boolean v4, v13, Lddf;->c:Z

    :cond_3
    iget-object v15, v13, Lddf;->b:Lddk;

    .line 26
    check-cast v15, Lcen;

    .line 27
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v15, Lcen;->a:I

    or-int/2addr v3, v6

    iput v3, v15, Lcen;->a:I

    iput-object v14, v15, Lcen;->d:Ljava/lang/String;

    .line 24
    invoke-virtual {v12}, Lbpb;->c()Ljava/lang/String;

    move-result-object v3

    iget-boolean v12, v13, Lddf;->c:Z

    if-eqz v12, :cond_4

    .line 28
    invoke-virtual {v13}, Lddf;->k()V

    iput-boolean v4, v13, Lddf;->c:Z

    :cond_4
    iget-object v12, v13, Lddf;->b:Lddk;

    .line 29
    check-cast v12, Lcen;

    iput v7, v12, Lcen;->b:I

    iput-object v3, v12, Lcen;->c:Ljava/lang/Object;

    .line 24
    invoke-virtual {v13}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Lcen;

    const/4 v14, 0x2

    goto/16 :goto_3

    .line 30
    :pswitch_1
    sget-object v3, Lcen;->e:Lcen;

    .line 31
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 30
    iget-object v13, v12, Lbpb;->b:Ljava/lang/String;

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_5

    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_5
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 32
    check-cast v14, Lcen;

    .line 33
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v14, Lcen;->a:I

    or-int/2addr v15, v6

    iput v15, v14, Lcen;->a:I

    iput-object v13, v14, Lcen;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {v12}, Lbpb;->a()D

    move-result-wide v12

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_6

    .line 34
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_6
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 35
    check-cast v14, Lcen;

    const/4 v15, 0x3

    iput v15, v14, Lcen;->b:I

    .line 36
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iput-object v12, v14, Lcen;->c:Ljava/lang/Object;

    .line 30
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Lcen;

    const/4 v14, 0x2

    goto/16 :goto_3

    .line 37
    :pswitch_2
    sget-object v3, Lcen;->e:Lcen;

    .line 38
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 37
    iget-object v13, v12, Lbpb;->b:Ljava/lang/String;

    iget-boolean v14, v3, Lddf;->c:Z

    if-eqz v14, :cond_7

    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_7
    iget-object v14, v3, Lddf;->b:Lddk;

    .line 39
    check-cast v14, Lcen;

    .line 40
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v14, Lcen;->a:I

    or-int/2addr v15, v6

    iput v15, v14, Lcen;->a:I

    iput-object v13, v14, Lcen;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {v12}, Lbpb;->d()Z

    move-result v12

    iget-boolean v13, v3, Lddf;->c:Z

    if-eqz v13, :cond_8

    .line 41
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_8
    iget-object v13, v3, Lddf;->b:Lddk;

    .line 42
    check-cast v13, Lcen;

    const/4 v14, 0x2

    iput v14, v13, Lcen;->b:I

    .line 43
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v13, Lcen;->c:Ljava/lang/Object;

    .line 37
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Lcen;

    goto :goto_3

    .line 44
    :pswitch_3
    const/4 v14, 0x2

    sget-object v3, Lcen;->e:Lcen;

    .line 45
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 44
    iget-object v13, v12, Lbpb;->b:Ljava/lang/String;

    iget-boolean v15, v3, Lddf;->c:Z

    if-eqz v15, :cond_9

    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_9
    iget-object v15, v3, Lddf;->b:Lddk;

    .line 46
    check-cast v15, Lcen;

    .line 47
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v15, Lcen;->a:I

    or-int/2addr v7, v6

    iput v7, v15, Lcen;->a:I

    iput-object v13, v15, Lcen;->d:Ljava/lang/String;

    .line 44
    invoke-virtual {v12}, Lbpb;->b()J

    move-result-wide v12

    iget-boolean v7, v3, Lddf;->c:Z

    if-eqz v7, :cond_a

    .line 48
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_a
    iget-object v7, v3, Lddf;->b:Lddk;

    .line 49
    check-cast v7, Lcen;

    iput v6, v7, Lcen;->b:I

    .line 50
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v7, Lcen;->c:Ljava/lang/Object;

    .line 44
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Lcen;

    goto :goto_3

    .line 17
    :cond_b
    :goto_2
    iget-object v13, v3, Lddf;->b:Lddk;

    .line 18
    check-cast v13, Lcen;

    .line 19
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v13, Lcen;->a:I

    or-int/2addr v15, v6

    iput v15, v13, Lcen;->a:I

    iput-object v7, v13, Lcen;->d:Ljava/lang/String;

    .line 20
    invoke-virtual {v12}, Lbpb;->e()[B

    move-result-object v7

    invoke-static {v7}, Ldcl;->t([B)Ldcl;

    move-result-object v7

    iget-boolean v12, v3, Lddf;->c:Z

    if-eqz v12, :cond_c

    .line 21
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_c
    iget-object v12, v3, Lddf;->b:Lddk;

    .line 22
    check-cast v12, Lcen;

    const/4 v13, 0x5

    iput v13, v12, Lcen;->b:I

    iput-object v7, v12, Lcen;->c:Ljava/lang/Object;

    .line 23
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Lcen;

    .line 51
    :goto_3
    invoke-virtual {v1, v3}, Lddf;->p(Lcen;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x2

    const/4 v7, 0x4

    goto/16 :goto_1

    .line 52
    :cond_d
    const/4 v14, 0x2

    iget-object v3, v8, Lboy;->c:[Ljava/lang/String;

    if-eqz v3, :cond_e

    array-length v7, v3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_e

    .line 53
    aget-object v9, v3, v8

    .line 54
    invoke-virtual {v1, v9}, Lddf;->o(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    const/4 v7, 0x4

    goto/16 :goto_0

    .line 55
    :cond_f
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lcem;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ldag;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcew;->d:Ldah;

    new-instance v1, Lceu;

    invoke-direct {v1, p0, p1}, Lceu;-><init>(Lcew;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ldah;->b(Ljava/util/concurrent/Callable;)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ldag;
    .locals 2

    .line 1
    iget-object v0, p0, Lcew;->d:Ldah;

    new-instance v1, Lcev;

    invoke-direct {v1, p0}, Lcev;-><init>(Lcew;)V

    invoke-interface {v0, v1}, Ldah;->b(Ljava/util/concurrent/Callable;)Ldag;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ldag;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcew;->d:Ldah;

    new-instance v1, Lcer;

    invoke-direct {v1, p0, p1, p2}, Lcer;-><init>(Lcew;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ldah;->b(Ljava/util/concurrent/Callable;)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final d(I[Ljava/lang/String;[B)Ldag;
    .locals 2

    .line 1
    iget-object v0, p0, Lcew;->d:Ldah;

    new-instance v1, Lceq;

    invoke-direct {v1, p0, p1, p2, p3}, Lceq;-><init>(Lcew;I[Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ldah;->b(Ljava/util/concurrent/Callable;)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ldag;
    .locals 2

    .line 1
    const/4 v0, 0x1

    const-string v1, "Must specify a reason for why this sync is occurring"

    invoke-static {v0, v1}, Lex;->m(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcew;->d:Ldah;

    new-instance v1, Lcet;

    invoke-direct {v1, p0}, Lcet;-><init>(Lcew;)V

    .line 2
    invoke-interface {v0, v1}, Ldah;->b(Ljava/util/concurrent/Callable;)Ldag;

    move-result-object v0

    return-object v0
.end method
