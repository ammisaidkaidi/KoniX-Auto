.class public final synthetic Lbha;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(IIIFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbha;->a:I

    iput p2, p0, Lbha;->b:I

    iput p3, p0, Lbha;->c:I

    iput p4, p0, Lbha;->d:F

    iput p5, p0, Lbha;->e:F

    iput p6, p0, Lbha;->f:I

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    iget v1, v0, Lbha;->a:I

    iget v2, v0, Lbha;->b:I

    iget v3, v0, Lbha;->c:I

    iget v4, v0, Lbha;->d:F

    iget v5, v0, Lbha;->e:F

    iget v6, v0, Lbha;->f:I

    move-object/from16 v7, p1

    check-cast v7, Lcky;

    sget v8, Lbhc;->c:I

    sget-object v8, Lcky;->a:Lcky;

    invoke-virtual {v7}, Lcky;->ordinal()I

    move-result v8

    const-string v9, "Unknown resolution: "

    const/16 v10, 0x1f

    const/16 v11, 0x870

    const/16 v12, 0x5a0

    const/16 v13, 0x438

    const/16 v14, 0x2d0

    const/16 v15, 0xf00

    const/16 v16, 0xa00

    const/16 v17, 0x780

    const/16 v18, 0x500

    packed-switch v8, :pswitch_data_0

    .line 29
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v7, Lcky;->j:I

    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 28
    :pswitch_0
    const/16 v8, 0x870

    goto :goto_0

    :pswitch_1
    const/16 v8, 0x5a0

    goto :goto_0

    :pswitch_2
    const/16 v8, 0x438

    goto :goto_0

    :pswitch_3
    const/16 v8, 0x2d0

    goto :goto_0

    :pswitch_4
    const/16 v8, 0xf00

    goto :goto_0

    :pswitch_5
    const/16 v8, 0xa00

    goto :goto_0

    .line 1
    :pswitch_6
    const/16 v8, 0x780

    goto :goto_0

    .line 30
    :pswitch_7
    const/16 v8, 0x500

    goto :goto_0

    .line 28
    :pswitch_8
    const/16 v8, 0x320

    .line 2
    :goto_0
    invoke-virtual {v7}, Lcky;->ordinal()I

    move-result v19

    packed-switch v19, :pswitch_data_1

    .line 28
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v7, Lcky;->j:I

    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 28
    :pswitch_9
    const/16 v11, 0xf00

    goto :goto_1

    :pswitch_a
    const/16 v11, 0xa00

    goto :goto_1

    :pswitch_b
    const/16 v11, 0x780

    goto :goto_1

    :pswitch_c
    const/16 v11, 0x500

    goto :goto_1

    :pswitch_d
    goto :goto_1

    :pswitch_e
    const/16 v11, 0x5a0

    goto :goto_1

    .line 2
    :pswitch_f
    const/16 v11, 0x438

    goto :goto_1

    .line 28
    :pswitch_10
    const/16 v11, 0x2d0

    goto :goto_1

    :pswitch_11
    const/16 v11, 0x1e0

    .line 2
    :goto_1
    int-to-float v9, v2

    div-float/2addr v9, v5

    if-lt v8, v1, :cond_1

    if-ge v11, v2, :cond_0

    goto :goto_2

    .line 28
    :cond_0
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v21, v12

    goto :goto_3

    .line 2
    :cond_1
    :goto_2
    int-to-double v12, v1

    int-to-double v14, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    int-to-double v14, v2

    move/from16 v16, v4

    move/from16 v17, v5

    int-to-double v4, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v4

    .line 3
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    if-le v2, v1, :cond_2

    int-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v14, v12, v4

    const-wide/high16 v18, 0x405e000000000000L    # 120.0

    cmpg-double v10, v14, v18

    if-gez v10, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v12, v18

    move-wide/from16 v21, v12

    goto :goto_3

    .line 28
    :cond_2
    nop

    .line 3
    move-wide/from16 v21, v4

    :goto_3
    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v4, v21

    int-to-double v12, v8

    const/4 v1, 0x1

    const/4 v10, 0x0

    cmpl-double v14, v12, v4

    if-lez v14, :cond_3

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    sub-int v4, v8, v5

    rem-int/lit8 v5, v4, 0x2

    if-ne v5, v1, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 28
    :cond_3
    const/4 v4, 0x0

    .line 4
    :cond_4
    :goto_4
    int-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v12, v21

    int-to-double v14, v11

    cmpl-double v2, v14, v12

    if-lez v2, :cond_5

    .line 5
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v2, v12

    sub-int v2, v11, v2

    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v1, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 28
    :cond_5
    const/4 v2, 0x0

    .line 5
    :cond_6
    :goto_5
    const/16 v5, 0x3c

    const/4 v12, 0x2

    if-lt v6, v5, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    .line 28
    :cond_7
    const/4 v5, 0x2

    .line 5
    :goto_6
    int-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v13, v13, v21

    .line 6
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v3, v13

    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v13, v4, 0x2

    .line 7
    sget-object v14, Lckz;->m:Lckz;

    .line 8
    invoke-virtual {v14}, Lddk;->n()Lddf;

    move-result-object v14

    iget-boolean v15, v14, Lddf;->c:Z

    if-eqz v15, :cond_8

    .line 9
    invoke-virtual {v14}, Lddf;->k()V

    iput-boolean v10, v14, Lddf;->c:Z

    :cond_8
    iget-object v15, v14, Lddf;->b:Lddk;

    .line 10
    check-cast v15, Lckz;

    iget v7, v7, Lcky;->j:I

    iput v7, v15, Lckz;->b:I

    iget v7, v15, Lckz;->a:I

    or-int/2addr v7, v1

    iput v7, v15, Lckz;->a:I

    iput v5, v15, Lckz;->c:I

    or-int/lit8 v5, v7, 0x2

    iput v5, v15, Lckz;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v15, Lckz;->a:I

    iput v4, v15, Lckz;->d:I

    or-int/lit8 v4, v5, 0x8

    iput v4, v15, Lckz;->a:I

    iput v2, v15, Lckz;->e:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v15, Lckz;->a:I

    iput v3, v15, Lckz;->f:I

    sub-int v2, v11, v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    .line 11
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-boolean v3, v14, Lddf;->c:Z

    if-eqz v3, :cond_9

    .line 12
    invoke-virtual {v14}, Lddf;->k()V

    iput-boolean v10, v14, Lddf;->c:Z

    :cond_9
    iget-object v3, v14, Lddf;->b:Lddk;

    .line 13
    check-cast v3, Lckz;

    iget v4, v3, Lckz;->a:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lckz;->a:I

    iput v2, v3, Lckz;->j:I

    or-int/lit8 v2, v4, 0x20

    iput v2, v3, Lckz;->a:I

    const/4 v4, 0x3

    iput v4, v3, Lckz;->g:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v3, Lckz;->a:I

    const/16 v4, 0x3b6

    iput v4, v3, Lckz;->h:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v3, Lckz;->a:I

    div-float v4, v16, v17

    float-to-double v4, v4

    const-wide v15, 0x40c3880000000000L    # 10000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v15

    double-to-int v2, v4

    iput v2, v3, Lckz;->i:I

    .line 14
    sget-object v2, Lckx;->f:Lckx;

    .line 15
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    .line 16
    sget-object v3, Lcke;->f:Lcke;

    .line 17
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_a

    .line 18
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v10, v3, Lddf;->c:Z

    :cond_a
    iget-object v4, v3, Lddf;->b:Lddk;

    .line 19
    check-cast v4, Lcke;

    iget v5, v4, Lcke;->a:I

    or-int/2addr v5, v1

    iput v5, v4, Lcke;->a:I

    iput v6, v4, Lcke;->b:I

    or-int/2addr v5, v12

    iput v5, v4, Lcke;->a:I

    iput v6, v4, Lcke;->c:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lcke;->a:I

    iput v13, v4, Lcke;->d:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lcke;->a:I

    iput v13, v4, Lcke;->e:I

    iget-boolean v4, v2, Lddf;->c:Z

    if-eqz v4, :cond_b

    .line 20
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v10, v2, Lddf;->c:Z

    :cond_b
    iget-object v4, v2, Lddf;->b:Lddk;

    .line 21
    check-cast v4, Lckx;

    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Lcke;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lckx;->b:Lcke;

    iget v3, v4, Lckx;->a:I

    or-int/2addr v1, v3

    iput v1, v4, Lckx;->a:I

    iget-boolean v1, v2, Lddf;->c:Z

    if-eqz v1, :cond_c

    .line 23
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v10, v2, Lddf;->c:Z

    :cond_c
    iget-object v1, v2, Lddf;->b:Lddk;

    .line 24
    check-cast v1, Lckx;

    iput v10, v1, Lckx;->e:I

    iget v3, v1, Lckx;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Lckx;->a:I

    iget-boolean v1, v14, Lddf;->c:Z

    if-eqz v1, :cond_d

    .line 25
    invoke-virtual {v14}, Lddf;->k()V

    iput-boolean v10, v14, Lddf;->c:Z

    :cond_d
    iget-object v1, v14, Lddf;->b:Lddk;

    .line 26
    check-cast v1, Lckz;

    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Lckx;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lckz;->l:Lckx;

    iget v2, v1, Lckz;->a:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Lckz;->a:I

    .line 28
    invoke-virtual {v14}, Lddf;->f()Lddk;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lckz;

    new-instance v1, Lbhc;

    move-object/from16 v19, v1

    move/from16 v23, v8

    move/from16 v24, v11

    invoke-direct/range {v19 .. v24}, Lbhc;-><init>(Lckz;DII)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
