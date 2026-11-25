.class public final synthetic Lbwm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbwn;

.field public final synthetic b:Lbwj;


# direct methods
.method public synthetic constructor <init>(Lbwn;Lbwj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwm;->a:Lbwn;

    iput-object p2, p0, Lbwm;->b:Lbwj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 3
    move-object/from16 v1, p0

    iget-object v2, v1, Lbwm;->a:Lbwn;

    iget-object v0, v1, Lbwm;->b:Lbwj;

    iget-boolean v3, v0, Lbwj;->g:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    sget-object v3, Ldpy;->d:Ldpy;

    .line 4
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    iget-boolean v6, v3, Lddf;->c:Z

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v5, v3, Lddf;->c:Z

    :cond_0
    iget-object v6, v3, Lddf;->b:Lddk;

    .line 6
    check-cast v6, Ldpy;

    iput v4, v6, Ldpy;->c:I

    iget v7, v6, Ldpy;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Ldpy;->a:I

    .line 7
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldpy;

    goto :goto_0

    .line 30
    :cond_1
    iget-object v3, v0, Lbwj;->f:Ljava/lang/Long;

    iget-object v6, v2, Lbwn;->c:Lccd;

    iget-boolean v7, v6, Lccd;->c:Z

    iget-object v6, v6, Lccd;->b:Lcci;

    if-eqz v7, :cond_2

    .line 1
    invoke-virtual {v6, v3}, Lcci;->b(Ljava/lang/Long;)Ldpy;

    move-result-object v3

    goto :goto_0

    .line 2
    :cond_2
    invoke-virtual {v6}, Lcci;->d()Ldpy;

    move-result-object v3

    .line 7
    :goto_0
    iget-wide v6, v3, Ldpy;->b:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    return-void

    :cond_3
    iget-object v6, v2, Lbwn;->b:Ldny;

    .line 8
    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbws;

    iget-object v7, v0, Lbwj;->c:Ldpz;

    .line 9
    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v9

    .line 10
    check-cast v9, Lddf;

    .line 11
    invoke-virtual {v9, v7}, Lddf;->n(Lddk;)V

    .line 12
    sget-object v10, Ldpk;->g:Ldpk;

    .line 13
    invoke-virtual {v10}, Lddk;->n()Lddf;

    move-result-object v10

    iget v11, v6, Lbws;->h:I

    iget-boolean v12, v10, Lddf;->c:Z

    if-eqz v12, :cond_4

    .line 12
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v5, v10, Lddf;->c:Z

    :cond_4
    iget-object v12, v10, Lddf;->b:Lddk;

    .line 14
    check-cast v12, Ldpk;

    add-int/lit8 v11, v11, -0x1

    iput v11, v12, Ldpk;->d:I

    iget v11, v12, Ldpk;->a:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v12, Ldpk;->a:I

    iget-object v13, v6, Lbws;->b:Ljava/lang/String;

    if-eqz v13, :cond_5

    or-int/lit8 v11, v11, 0x1

    iput v11, v12, Ldpk;->a:I

    iput-object v13, v12, Ldpk;->b:Ljava/lang/String;

    :cond_5
    or-int/lit8 v11, v11, 0x8

    iput v11, v12, Ldpk;->a:I

    const-wide/32 v13, 0x17eff343

    iput-wide v13, v12, Ldpk;->e:J

    iget-object v13, v6, Lbws;->d:Ljava/lang/String;

    if-eqz v13, :cond_6

    or-int/lit8 v11, v11, 0x2

    iput v11, v12, Ldpk;->a:I

    iput-object v13, v12, Ldpk;->c:Ljava/lang/String;

    :cond_6
    iget-object v13, v6, Lbws;->c:Ljava/lang/String;

    if-eqz v13, :cond_7

    or-int/lit8 v11, v11, 0x10

    iput v11, v12, Ldpk;->a:I

    iput-object v13, v12, Ldpk;->f:Ljava/lang/String;

    :cond_7
    iget-boolean v11, v9, Lddf;->c:Z

    if-eqz v11, :cond_8

    .line 15
    invoke-virtual {v9}, Lddf;->k()V

    iput-boolean v5, v9, Lddf;->c:Z

    :cond_8
    iget-object v11, v9, Lddf;->b:Lddk;

    .line 16
    check-cast v11, Ldpz;

    invoke-virtual {v10}, Lddf;->f()Lddk;

    move-result-object v10

    check-cast v10, Ldpk;

    sget-object v12, Ldpz;->y:Ldpz;

    .line 17
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v11, Ldpz;->f:Ldpk;

    iget v10, v11, Ldpz;->a:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v11, Ldpz;->a:I

    iget-object v10, v6, Lbws;->a:Landroid/content/Context;

    .line 18
    invoke-static {v10}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 19
    sget-object v10, Ldpo;->d:Ldpo;

    .line 20
    invoke-virtual {v10}, Lddk;->n()Lddf;

    move-result-object v10

    iget-object v11, v6, Lbws;->e:Lbtk;

    .line 21
    invoke-virtual {v11}, Lbtk;->a()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    iget-boolean v13, v10, Lddf;->c:Z

    if-eqz v13, :cond_9

    .line 22
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v5, v10, Lddf;->c:Z

    :cond_9
    iget-object v13, v10, Lddf;->b:Lddk;

    .line 23
    check-cast v13, Ldpo;

    iget v14, v13, Ldpo;->a:I

    or-int/lit8 v14, v14, 0x1

    iput v14, v13, Ldpo;->a:I

    iput-wide v11, v13, Ldpo;->b:J

    iget-object v11, v6, Lbws;->f:Lcol;

    .line 24
    invoke-interface {v11}, Lcol;->a()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-boolean v13, v10, Lddf;->c:Z

    if-eqz v13, :cond_a

    .line 25
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v5, v10, Lddf;->c:Z

    :cond_a
    iget-object v13, v10, Lddf;->b:Lddk;

    .line 26
    check-cast v13, Ldpo;

    iget v14, v13, Ldpo;->a:I

    or-int/2addr v4, v14

    iput v4, v13, Ldpo;->a:I

    iput-wide v11, v13, Ldpo;->c:J

    iget-boolean v4, v9, Lddf;->c:Z

    if-eqz v4, :cond_b

    .line 27
    invoke-virtual {v9}, Lddf;->k()V

    iput-boolean v5, v9, Lddf;->c:Z

    :cond_b
    iget-object v4, v9, Lddf;->b:Lddk;

    .line 28
    check-cast v4, Ldpz;

    invoke-virtual {v10}, Lddf;->f()Lddk;

    move-result-object v10

    check-cast v10, Ldpo;

    .line 29
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v4, Ldpz;->u:Ldpo;

    iget v10, v4, Ldpz;->a:I

    const/high16 v11, 0x200000

    or-int/2addr v10, v11

    iput v10, v4, Ldpz;->a:I

    :cond_c
    iget-object v4, v6, Lbws;->g:Lcol;

    if-nez v4, :cond_d

    const/4 v4, 0x0

    goto :goto_1

    .line 30
    :cond_d
    invoke-interface {v4}, Lcol;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtx;

    iget-object v4, v4, Lbtx;->a:Ljava/lang/String;

    .line 31
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/high16 v11, 0x80000

    if-nez v10, :cond_13

    iget-object v7, v7, Ldpz;->p:Ldpj;

    if-nez v7, :cond_e

    .line 32
    sget-object v7, Ldpj;->c:Ldpj;

    :cond_e
    nop

    .line 33
    invoke-virtual {v7, v8}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v10

    .line 34
    check-cast v10, Lddf;

    .line 35
    invoke-virtual {v10, v7}, Lddf;->n(Lddk;)V

    iget-object v7, v10, Lddf;->b:Lddk;

    .line 36
    check-cast v7, Ldpj;

    iget-object v7, v7, Ldpj;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-boolean v7, v10, Lddf;->c:Z

    if-eqz v7, :cond_f

    .line 38
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v5, v10, Lddf;->c:Z

    :cond_f
    iget-object v7, v10, Lddf;->b:Lddk;

    .line 39
    check-cast v7, Ldpj;

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v7, Ldpj;->a:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v7, Ldpj;->a:I

    iput-object v4, v7, Ldpj;->b:Ljava/lang/String;

    goto :goto_2

    .line 99
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v4, "::"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lddf;->b:Lddk;

    .line 43
    check-cast v4, Ldpj;

    iget-object v4, v4, Ldpj;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v7, v10, Lddf;->c:Z

    if-eqz v7, :cond_11

    .line 41
    invoke-virtual {v10}, Lddf;->k()V

    iput-boolean v5, v10, Lddf;->c:Z

    :cond_11
    iget-object v7, v10, Lddf;->b:Lddk;

    .line 45
    check-cast v7, Ldpj;

    iget v12, v7, Ldpj;->a:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v7, Ldpj;->a:I

    iput-object v4, v7, Ldpj;->b:Ljava/lang/String;

    .line 40
    :goto_2
    iget-boolean v4, v9, Lddf;->c:Z

    if-eqz v4, :cond_12

    .line 46
    invoke-virtual {v9}, Lddf;->k()V

    iput-boolean v5, v9, Lddf;->c:Z

    :cond_12
    iget-object v4, v9, Lddf;->b:Lddk;

    .line 47
    check-cast v4, Ldpz;

    invoke-virtual {v10}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Ldpj;

    .line 48
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v4, Ldpz;->p:Ldpj;

    iget v7, v4, Ldpz;->a:I

    or-int/2addr v7, v11

    iput v7, v4, Ldpz;->a:I

    .line 49
    :cond_13
    invoke-virtual {v9}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Ldpz;

    .line 8
    invoke-virtual {v4, v8}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v7

    .line 50
    check-cast v7, Lddf;

    .line 51
    invoke-virtual {v7, v4}, Lddf;->n(Lddk;)V

    iget-boolean v4, v7, Lddf;->c:Z

    if-eqz v4, :cond_14

    .line 52
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v5, v7, Lddf;->c:Z

    :cond_14
    iget-object v4, v7, Lddf;->b:Lddk;

    .line 53
    check-cast v4, Ldpz;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Ldpz;->v:Ldpy;

    iget v3, v4, Ldpz;->a:I

    const/high16 v9, 0x2000000

    or-int/2addr v3, v9

    iput v3, v4, Ldpz;->a:I

    iget-object v3, v0, Lbwj;->h:Lbus;

    if-eqz v3, :cond_25

    new-instance v4, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v3, Lbus;->b:[Lbuv;

    .line 56
    array-length v12, v10

    if-ge v9, v12, :cond_1b

    .line 57
    aget-object v10, v10, v9

    iget-object v12, v3, Lbus;->c:[I

    .line 58
    aget v12, v12, v9

    const/16 v13, 0x64

    const/16 v14, 0x13

    .line 59
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int v13, v12, v13

    .line 60
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    sub-int v14, v12, v13

    if-gtz v14, :cond_15

    new-array v10, v5, [Lcub;

    goto :goto_6

    .line 65
    :cond_15
    new-array v15, v14, [Lcub;

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v14, :cond_16

    iget-object v11, v10, Lbuv;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int v17, v6, v13

    rem-int/lit8 v8, v17, 0x14

    .line 61
    invoke-virtual {v11, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcub;

    aput-object v8, v15, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x5

    const/high16 v11, 0x80000

    goto :goto_4

    :cond_16
    iget v6, v10, Lbuv;->b:I

    if-gtz v12, :cond_17

    neg-int v6, v12

    goto :goto_5

    .line 63
    :cond_17
    iget v6, v10, Lbuv;->c:I

    const v6, 0x7fffffff

    sub-int/2addr v6, v12

    add-int/lit8 v6, v6, -0x1b

    .line 61
    :goto_5
    rsub-int/lit8 v8, v14, 0x14

    sub-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v14, :cond_18

    new-array v10, v5, [Lcub;

    goto :goto_6

    :cond_18
    if-lez v6, :cond_19

    sub-int/2addr v14, v6

    .line 62
    new-array v10, v14, [Lcub;

    .line 63
    invoke-static {v15, v6, v10, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_19
    move-object v10, v15

    .line 60
    :goto_6
    array-length v6, v10

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_1a

    .line 64
    aget-object v11, v10, v8

    new-instance v12, Lbur;

    invoke-direct {v12, v11, v9}, Lbur;-><init>(Lcub;I)V

    .line 65
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x5

    const/high16 v11, 0x80000

    goto :goto_3

    .line 63
    :cond_1b
    sget-object v3, Lbup;->a:Lbup;

    .line 66
    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    sget-object v3, Ldpn;->d:Ldpn;

    .line 68
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 69
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x64

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    const-wide/16 v8, 0x0

    .line 70
    :goto_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_23

    .line 71
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbur;

    .line 72
    iget-object v11, v10, Lbur;->a:Lcub;

    .line 73
    iget v10, v10, Lbur;->b:I

    .line 74
    invoke-interface {v11}, Lcub;->f()Lcti;

    move-result-object v12

    .line 75
    invoke-virtual {v12}, Lcti;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcti;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcti;->a()I

    move-result v12

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0xd

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v15, v18

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-static {v5}, Ldba;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_1c

    goto :goto_9

    .line 77
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_1d

    invoke-virtual {v3}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v3, Lddf;->c:Z

    :cond_1d
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 78
    check-cast v5, Ldpn;

    iget-object v14, v5, Ldpn;->a:Lddq;

    .line 79
    invoke-interface {v14}, Lddq;->c()Z

    move-result v15

    if-nez v15, :cond_1e

    .line 80
    invoke-static {v14}, Lddk;->x(Lddq;)Lddq;

    move-result-object v14

    iput-object v14, v5, Ldpn;->a:Lddq;

    :cond_1e
    iget-object v5, v5, Ldpn;->a:Lddq;

    .line 81
    invoke-interface {v5, v12, v13}, Lddq;->e(J)V

    .line 82
    invoke-interface {v11}, Lcub;->e()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    div-long/2addr v11, v13

    sub-long v8, v11, v8

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_1f

    .line 83
    invoke-virtual {v3}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v3, Lddf;->c:Z

    :cond_1f
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 84
    check-cast v5, Ldpn;

    iget-object v13, v5, Ldpn;->b:Lddq;

    .line 85
    invoke-interface {v13}, Lddq;->c()Z

    move-result v14

    if-nez v14, :cond_20

    .line 86
    invoke-static {v13}, Lddk;->x(Lddq;)Lddq;

    move-result-object v13

    iput-object v13, v5, Ldpn;->b:Lddq;

    :cond_20
    iget-object v5, v5, Ldpn;->b:Lddq;

    .line 87
    invoke-interface {v5, v8, v9}, Lddq;->e(J)V

    iget-boolean v5, v3, Lddf;->c:Z

    if-eqz v5, :cond_21

    .line 88
    invoke-virtual {v3}, Lddf;->k()V

    const/4 v5, 0x0

    iput-boolean v5, v3, Lddf;->c:Z

    :cond_21
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 89
    check-cast v5, Ldpn;

    iget-object v8, v5, Ldpn;->c:Lddp;

    .line 90
    invoke-interface {v8}, Lddp;->c()Z

    move-result v9

    if-nez v9, :cond_22

    .line 91
    invoke-static {v8}, Lddk;->v(Lddp;)Lddp;

    move-result-object v8

    iput-object v8, v5, Ldpn;->c:Lddp;

    :cond_22
    iget-object v5, v5, Ldpn;->c:Lddp;

    .line 92
    invoke-interface {v5, v10}, Lddp;->g(I)V

    move-wide v8, v11

    .line 76
    :goto_9
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 93
    :cond_23
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldpn;

    iget-boolean v4, v7, Lddf;->c:Z

    if-eqz v4, :cond_24

    .line 94
    invoke-virtual {v7}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v7, Lddf;->c:Z

    :cond_24
    iget-object v4, v7, Lddf;->b:Lddk;

    .line 95
    check-cast v4, Ldpz;

    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Ldpz;->w:Ldpn;

    iget v3, v4, Ldpz;->a:I

    const/high16 v5, 0x4000000

    or-int/2addr v3, v5

    iput v3, v4, Ldpz;->a:I

    :cond_25
    iget-object v3, v0, Lbwj;->a:Ljava/lang/String;

    iget-boolean v4, v0, Lbwj;->b:Z

    if-eqz v4, :cond_27

    if-eqz v3, :cond_26

    iget-object v4, v7, Lddf;->b:Lddk;

    .line 98
    check-cast v4, Ldpz;

    iget v5, v4, Ldpz;->a:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, v4, Ldpz;->a:I

    iput-object v3, v4, Ldpz;->o:Ljava/lang/String;

    goto :goto_a

    .line 102
    :cond_26
    iget-object v3, v7, Lddf;->b:Lddk;

    .line 97
    check-cast v3, Ldpz;

    iget v4, v3, Ldpz;->a:I

    const v5, -0x8001

    and-int/2addr v4, v5

    iput v4, v3, Ldpz;->a:I

    sget-object v4, Ldpz;->y:Ldpz;

    iget-object v4, v4, Ldpz;->o:Ljava/lang/String;

    iput-object v4, v3, Ldpz;->o:Ljava/lang/String;

    goto :goto_a

    :cond_27
    if-eqz v3, :cond_28

    iget-object v4, v7, Lddf;->b:Lddk;

    .line 100
    check-cast v4, Ldpz;

    iget v5, v4, Ldpz;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Ldpz;->a:I

    iput-object v3, v4, Ldpz;->d:Ljava/lang/String;

    goto :goto_a

    :cond_28
    iget-object v3, v7, Lddf;->b:Lddk;

    .line 99
    check-cast v3, Ldpz;

    iget v4, v3, Ldpz;->a:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v3, Ldpz;->a:I

    sget-object v4, Ldpz;->y:Ldpz;

    iget-object v4, v4, Ldpz;->d:Ljava/lang/String;

    iput-object v4, v3, Ldpz;->d:Ljava/lang/String;

    .line 98
    :goto_a
    iget-object v3, v2, Lbwn;->d:Ldny;

    .line 101
    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lbwj;->d:Ldot;

    if-nez v3, :cond_29

    if-eqz v4, :cond_2d

    :cond_29
    if-eqz v3, :cond_2a

    if-eqz v4, :cond_2a

    check-cast v3, Lddk;

    .line 103
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lddf;

    .line 101
    nop

    .line 104
    invoke-virtual {v5, v3}, Lddf;->n(Lddk;)V

    .line 105
    check-cast v5, Lddh;

    invoke-virtual {v5, v4}, Lddf;->n(Lddk;)V

    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldot;

    goto :goto_b

    .line 120
    :cond_2a
    if-nez v3, :cond_2b

    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v4

    .line 105
    :cond_2b
    :goto_b
    iget-boolean v4, v7, Lddf;->c:Z

    if-eqz v4, :cond_2c

    .line 106
    invoke-virtual {v7}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v7, Lddf;->c:Z

    :cond_2c
    iget-object v4, v7, Lddf;->b:Lddk;

    .line 107
    check-cast v4, Ldpz;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ldot;

    iput-object v3, v4, Ldpz;->m:Ldot;

    iget v3, v4, Ldpz;->a:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v4, Ldpz;->a:I

    :cond_2d
    iget-object v0, v0, Lbwj;->e:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 109
    sget-object v3, Ldpj;->c:Ldpj;

    .line 110
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_2e

    .line 109
    invoke-virtual {v3}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lddf;->c:Z

    :cond_2e
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 111
    check-cast v4, Ldpj;

    iget v5, v4, Ldpj;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Ldpj;->a:I

    iput-object v0, v4, Ldpj;->b:Ljava/lang/String;

    iget-boolean v0, v7, Lddf;->c:Z

    if-eqz v0, :cond_2f

    .line 112
    invoke-virtual {v7}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, v7, Lddf;->c:Z

    goto :goto_c

    .line 111
    :cond_2f
    const/4 v0, 0x0

    .line 112
    :goto_c
    iget-object v4, v7, Lddf;->b:Lddk;

    .line 113
    check-cast v4, Ldpz;

    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldpj;

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Ldpz;->p:Ldpj;

    iget v3, v4, Ldpz;->a:I

    const/high16 v5, 0x80000

    or-int/2addr v3, v5

    iput v3, v4, Ldpz;->a:I

    goto :goto_d

    .line 108
    :cond_30
    const/4 v0, 0x0

    .line 114
    :goto_d
    iget-object v3, v2, Lbwn;->a:Lbwl;

    .line 115
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Ldpz;

    iget-object v3, v3, Lbwl;->b:Lcol;

    .line 116
    invoke-interface {v3}, Lcol;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcqh;

    .line 117
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_e
    if-ge v6, v5, :cond_32

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 116
    check-cast v0, Lccw;

    .line 118
    :try_start_0
    invoke-interface {v0, v4}, Lccw;->b(Ldpz;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    .line 2
    :catch_0
    move-exception v0

    move-object v7, v0

    sget-object v0, Lbwl;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    .line 119
    invoke-interface {v0, v7}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v8, 0x3a

    const-string v9, "com/google/android/libraries/performance/primes/metrics/core/MetricDispatcher"

    const-string v10, "dispatch"

    const-string v11, "MetricDispatcher.java"

    invoke-interface {v0, v9, v10, v8, v11}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v8, "One transmitter failed to send message"

    invoke-interface {v0, v8}, Lcsx;->n(Ljava/lang/String;)V

    if-nez v16, :cond_31

    move-object/from16 v16, v7

    .line 118
    :cond_31
    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_32
    if-nez v16, :cond_33

    .line 121
    iget-object v0, v2, Lbwn;->c:Lccd;

    iget-object v0, v0, Lccd;->d:Lcbz;

    .line 120
    invoke-virtual {v0}, Lcbz;->c()V

    return-void

    .line 121
    :cond_33
    goto :goto_11

    :goto_10
    throw v16

    :goto_11
    goto :goto_10
.end method
