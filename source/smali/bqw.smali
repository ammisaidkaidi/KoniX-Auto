.class final Lbqw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbrh;

.field final synthetic b:Lbqx;


# direct methods
.method public constructor <init>(Lbqx;Lbrh;)V
    .locals 0

    iput-object p1, p0, Lbqw;->b:Lbqx;

    iput-object p2, p0, Lbqw;->a:Lbrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 65
    move-object/from16 v1, p0

    iget-object v0, v1, Lbqw;->a:Lbrh;

    check-cast v0, Lbro;

    iget-boolean v0, v0, Lbro;->d:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v1, Lbqw;->b:Lbqx;

    iget-object v0, v0, Lbqx;->a:Lbro;

    iget-object v3, v0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, v0, Lbro;->c:Z

    if-eqz v4, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    iput-boolean v2, v0, Lbro;->c:Z

    iput-boolean v2, v0, Lbro;->d:Z

    .line 66
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lbro;->b:Lbrj;

    .line 67
    invoke-virtual {v2, v0}, Lbrj;->b(Lbrh;)V

    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 66
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 67
    :cond_1
    :try_start_2
    iget-object v0, v1, Lbqw;->a:Lbrh;

    .line 1
    invoke-virtual {v0}, Lbrh;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboj;

    .line 2
    sget-object v3, Lcem;->i:Lcem;

    .line 3
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 2
    iget-object v4, v0, Lboj;->a:Ljava/lang/String;

    iget-boolean v5, v3, Lddf;->c:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 4
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v6, v3, Lddf;->c:Z

    :cond_2
    iget-object v5, v3, Lddf;->b:Lddk;

    .line 5
    check-cast v5, Lcem;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v5, Lcem;->a:I

    or-int/2addr v7, v2

    iput v7, v5, Lcem;->a:I

    iput-object v4, v5, Lcem;->b:Ljava/lang/String;

    .line 4
    iget-object v4, v0, Lboj;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x4

    or-int/2addr v7, v8

    iput v7, v5, Lcem;->a:I

    iput-object v4, v5, Lcem;->d:Ljava/lang/String;

    .line 8
    iget-boolean v4, v0, Lboj;->f:Z

    or-int/lit8 v7, v7, 0x8

    iput v7, v5, Lcem;->a:I

    iput-boolean v4, v5, Lcem;->g:Z

    .line 9
    iget-wide v9, v0, Lboj;->g:J

    or-int/lit8 v4, v7, 0x10

    iput v4, v5, Lcem;->a:I

    iput-wide v9, v5, Lcem;->h:J

    .line 10
    iget-object v4, v0, Lboj;->b:[B

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    .line 11
    invoke-static {v4}, Ldcl;->t([B)Ldcl;

    move-result-object v4

    iget-boolean v7, v3, Lddf;->c:Z

    if-eqz v7, :cond_3

    .line 12
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v6, v3, Lddf;->c:Z

    :cond_3
    iget-object v7, v3, Lddf;->b:Lddk;

    .line 13
    check-cast v7, Lcem;

    iget v9, v7, Lcem;->a:I

    or-int/2addr v9, v5

    iput v9, v7, Lcem;->a:I

    iput-object v4, v7, Lcem;->c:Ldcl;

    .line 14
    :cond_4
    iget-object v0, v0, Lboj;->d:[Lboi;

    array-length v4, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_13

    aget-object v9, v0, v7

    .line 15
    iget-object v10, v9, Lboi;->b:[Lbon;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_11

    aget-object v13, v10, v12

    .line 16
    iget v14, v13, Lbon;->g:I

    packed-switch v14, :pswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_3

    .line 17
    :pswitch_0
    sget-object v14, Lcen;->e:Lcen;

    .line 18
    invoke-virtual {v14}, Lddk;->n()Lddf;

    move-result-object v14

    .line 17
    iget-object v15, v13, Lbon;->a:Ljava/lang/String;

    iget-boolean v5, v14, Lddf;->c:Z

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {v14}, Lddf;->k()V

    iput-boolean v6, v14, Lddf;->c:Z

    :cond_5
    iget-object v5, v14, Lddf;->b:Lddk;

    .line 20
    check-cast v5, Lcen;

    .line 21
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v5, Lcen;->a:I

    or-int/2addr v8, v2

    iput v8, v5, Lcen;->a:I

    iput-object v15, v5, Lcen;->d:Ljava/lang/String;

    iget v5, v13, Lbon;->g:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_7

    .line 53
    iget-object v5, v13, Lbon;->f:[B

    .line 22
    invoke-static {v5}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 23
    invoke-static {v5}, Ldcl;->t([B)Ldcl;

    move-result-object v5

    iget-boolean v13, v14, Lddf;->c:Z

    if-eqz v13, :cond_6

    .line 24
    invoke-virtual {v14}, Lddf;->k()V

    iput-boolean v6, v14, Lddf;->c:Z

    :cond_6
    iget-object v13, v14, Lddf;->b:Lddk;

    .line 25
    check-cast v13, Lcen;

    iput v8, v13, Lcen;->b:I

    iput-object v5, v13, Lcen;->c:Ljava/lang/Object;

    .line 26
    invoke-virtual {v14}, Lddf;->f()Lddk;

    move-result-object v5

    check-cast v5, Lcen;

    move-object/from16 v16, v3

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 21
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a bytes type"

    .line 53
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_1
    sget-object v5, Lcen;->e:Lcen;

    .line 28
    invoke-virtual {v5}, Lddk;->n()Lddf;

    move-result-object v5

    .line 27
    iget-object v8, v13, Lbon;->a:Ljava/lang/String;

    iget-boolean v14, v5, Lddf;->c:Z

    if-eqz v14, :cond_8

    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v6, v5, Lddf;->c:Z

    :cond_8
    iget-object v14, v5, Lddf;->b:Lddk;

    .line 29
    check-cast v14, Lcen;

    .line 30
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v14, Lcen;->a:I

    or-int/2addr v15, v2

    iput v15, v14, Lcen;->a:I

    iput-object v8, v14, Lcen;->d:Ljava/lang/String;

    iget v8, v13, Lbon;->g:I

    const/4 v14, 0x4

    if-ne v8, v14, :cond_a

    .line 54
    iget-object v8, v13, Lbon;->e:Ljava/lang/String;

    .line 31
    invoke-static {v8}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v13, v5, Lddf;->c:Z

    if-eqz v13, :cond_9

    .line 32
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v6, v5, Lddf;->c:Z

    :cond_9
    iget-object v13, v5, Lddf;->b:Lddk;

    .line 33
    check-cast v13, Lcen;

    const/4 v14, 0x4

    iput v14, v13, Lcen;->b:I

    iput-object v8, v13, Lcen;->c:Ljava/lang/Object;

    .line 27
    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v5

    check-cast v5, Lcen;

    move-object/from16 v16, v3

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 30
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a String type"

    .line 54
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_2
    const/4 v14, 0x4

    sget-object v5, Lcen;->e:Lcen;

    .line 35
    invoke-virtual {v5}, Lddk;->n()Lddf;

    move-result-object v5

    .line 34
    iget-object v8, v13, Lbon;->a:Ljava/lang/String;

    iget-boolean v15, v5, Lddf;->c:Z

    if-eqz v15, :cond_b

    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v6, v5, Lddf;->c:Z

    :cond_b
    iget-object v15, v5, Lddf;->b:Lddk;

    .line 36
    check-cast v15, Lcen;

    .line 37
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v15, Lcen;->a:I

    or-int/2addr v14, v2

    iput v14, v15, Lcen;->a:I

    iput-object v8, v15, Lcen;->d:Ljava/lang/String;

    iget v8, v13, Lbon;->g:I

    const/4 v14, 0x3

    if-ne v8, v14, :cond_c

    .line 55
    move-object/from16 v16, v3

    iget-wide v2, v13, Lbon;->d:D

    iput v14, v15, Lcen;->b:I

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v15, Lcen;->c:Ljava/lang/Object;

    .line 34
    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcen;

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 37
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a double type"

    .line 55
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_3
    move-object/from16 v16, v3

    sget-object v2, Lcen;->e:Lcen;

    .line 40
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    .line 39
    iget-object v3, v13, Lbon;->a:Ljava/lang/String;

    iget-boolean v5, v2, Lddf;->c:Z

    if-eqz v5, :cond_d

    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_d
    iget-object v5, v2, Lddf;->b:Lddk;

    .line 41
    check-cast v5, Lcen;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v5, Lcen;->a:I

    const/4 v8, 0x1

    or-int/2addr v14, v8

    iput v14, v5, Lcen;->a:I

    iput-object v3, v5, Lcen;->d:Ljava/lang/String;

    iget v3, v13, Lbon;->g:I

    const/4 v14, 0x2

    if-ne v3, v14, :cond_e

    .line 56
    iget-boolean v3, v13, Lbon;->c:Z

    iput v14, v5, Lcen;->b:I

    .line 43
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v5, Lcen;->c:Ljava/lang/Object;

    .line 39
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcen;

    const/4 v8, 0x1

    goto :goto_2

    .line 42
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a boolean type"

    .line 56
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_4
    move-object/from16 v16, v3

    const/4 v14, 0x2

    sget-object v2, Lcen;->e:Lcen;

    .line 45
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    .line 44
    iget-object v3, v13, Lbon;->a:Ljava/lang/String;

    iget-boolean v5, v2, Lddf;->c:Z

    if-eqz v5, :cond_f

    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_f
    iget-object v5, v2, Lddf;->b:Lddk;

    .line 46
    check-cast v5, Lcen;

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v5, Lcen;->a:I

    const/4 v8, 0x1

    or-int/2addr v15, v8

    iput v15, v5, Lcen;->a:I

    iput-object v3, v5, Lcen;->d:Ljava/lang/String;

    iget v3, v13, Lbon;->g:I

    if-ne v3, v8, :cond_10

    .line 57
    iget-wide v14, v13, Lbon;->b:J

    iput v8, v5, Lcen;->b:I

    .line 48
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v5, Lcen;->c:Ljava/lang/Object;

    .line 44
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcen;

    .line 49
    :goto_2
    move-object/from16 v2, v16

    invoke-virtual {v2, v5}, Lddf;->p(Lcen;)V

    add-int/lit8 v12, v12, 0x1

    move-object v3, v2

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x4

    goto/16 :goto_1

    .line 47
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a long type"

    .line 57
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized flag type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_11
    move-object v2, v3

    const/4 v8, 0x1

    iget-object v3, v9, Lboi;->c:[Ljava/lang/String;

    if-eqz v3, :cond_12

    array-length v5, v3

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_12

    .line 51
    aget-object v10, v3, v9

    .line 52
    invoke-virtual {v2, v10}, Lddf;->o(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_12
    add-int/lit8 v7, v7, 0x1

    move-object v3, v2

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x4

    goto/16 :goto_0

    .line 59
    :cond_13
    move-object v2, v3

    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lcem;
    :try_end_2
    .catch Lbrg; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v2, v1, Lbqw;->b:Lbqx;

    iget-object v2, v2, Lbqx;->a:Lbro;

    .line 64
    invoke-virtual {v2, v0}, Lbro;->j(Ljava/lang/Object;)V

    return-void

    .line 62
    :catch_0
    move-exception v0

    iget-object v2, v1, Lbqw;->b:Lbqx;

    iget-object v2, v2, Lbqx;->a:Lbro;

    .line 60
    invoke-virtual {v2, v0}, Lbro;->i(Ljava/lang/Exception;)V

    return-void

    .line 66
    :catch_1
    move-exception v0

    .line 61
    invoke-virtual {v0}, Lbrg;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_14

    iget-object v2, v1, Lbqw;->b:Lbqx;

    iget-object v2, v2, Lbqx;->a:Lbro;

    .line 62
    invoke-virtual {v0}, Lbrg;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Lbro;->i(Ljava/lang/Exception;)V

    return-void

    .line 58
    :cond_14
    iget-object v2, v1, Lbqw;->b:Lbqx;

    iget-object v2, v2, Lbqx;->a:Lbro;

    .line 63
    invoke-virtual {v2, v0}, Lbro;->i(Ljava/lang/Exception;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
