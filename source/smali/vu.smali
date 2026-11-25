.class public final Lvu;
.super Lwb;
.source "PG"


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lwb;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvu;->a:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lvu;->b:Z

    iput v0, p0, Lvu;->c:I

    iput-boolean v0, p0, Lvu;->d:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lvu;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lvn;Z)V
    .locals 13

    .line 1
    iget-object p2, p0, Lvu;->R:[Lvw;

    iget-object v0, p0, Lvu;->J:Lvw;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lvu;->K:Lvw;

    .line 2
    const/4 v2, 0x2

    aput-object v0, p2, v2

    iget-object v0, p0, Lvu;->L:Lvw;

    .line 3
    const/4 v3, 0x1

    aput-object v0, p2, v3

    iget-object v0, p0, Lvu;->M:Lvw;

    .line 4
    const/4 v4, 0x3

    aput-object v0, p2, v4

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lvu;->R:[Lvw;

    .line 5
    array-length v5, v0

    const/4 v5, 0x6

    if-ge p2, v5, :cond_0

    .line 6
    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v5

    iput-object v5, v0, Lvw;->h:Lvs;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Lvu;->a:I

    if-ltz p2, :cond_1f

    const/4 v5, 0x4

    if-ge p2, v5, :cond_1f

    .line 7
    aget-object p2, v0, p2

    iget-boolean v0, p0, Lvu;->d:Z

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lvu;->c()Z

    :cond_1
    iget-boolean v0, p0, Lvu;->d:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lvu;->d:Z

    iget p2, p0, Lvu;->a:I

    if-eqz p2, :cond_5

    if-ne p2, v3, :cond_2

    goto :goto_2

    .line 39
    :cond_2
    if-eq p2, v2, :cond_4

    if-ne p2, v4, :cond_3

    goto :goto_1

    .line 41
    :cond_3
    return-void

    .line 39
    :cond_4
    :goto_1
    iget-object p2, p0, Lvu;->K:Lvw;

    .line 40
    iget-object p2, p2, Lvw;->h:Lvs;

    iget v0, p0, Lvu;->Z:I

    invoke-virtual {p1, p2, v0}, Lvn;->f(Lvs;I)V

    iget-object p2, p0, Lvu;->M:Lvw;

    .line 41
    iget-object p2, p2, Lvw;->h:Lvs;

    iget v0, p0, Lvu;->Z:I

    invoke-virtual {p1, p2, v0}, Lvn;->f(Lvs;I)V

    return-void

    .line 8
    :cond_5
    :goto_2
    iget-object p2, p0, Lvu;->J:Lvw;

    .line 38
    iget-object p2, p2, Lvw;->h:Lvs;

    iget v0, p0, Lvu;->Y:I

    invoke-virtual {p1, p2, v0}, Lvn;->f(Lvs;I)V

    iget-object p2, p0, Lvu;->L:Lvw;

    .line 39
    iget-object p2, p2, Lvw;->h:Lvs;

    iget v0, p0, Lvu;->Y:I

    invoke-virtual {p1, p2, v0}, Lvn;->f(Lvs;I)V

    return-void

    .line 41
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget v6, p0, Lvu;->ar:I

    if-ge v0, v6, :cond_c

    iget-object v6, p0, Lvu;->aq:[Lvx;

    .line 9
    aget-object v6, v6, v0

    iget-boolean v7, p0, Lvu;->b:Z

    if-nez v7, :cond_7

    .line 10
    invoke-virtual {v6}, Lvx;->d()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    iget v7, p0, Lvu;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v3, :cond_9

    .line 11
    :cond_8
    invoke-virtual {v6}, Lvx;->N()I

    move-result v7

    if-ne v7, v4, :cond_9

    iget-object v7, v6, Lvx;->J:Lvw;

    iget-object v7, v7, Lvw;->e:Lvw;

    if-eqz v7, :cond_9

    iget-object v7, v6, Lvx;->L:Lvw;

    iget-object v7, v7, Lvw;->e:Lvw;

    if-eqz v7, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    .line 37
    :cond_9
    iget v7, p0, Lvu;->a:I

    if-eq v7, v2, :cond_a

    if-ne v7, v4, :cond_b

    .line 12
    :cond_a
    invoke-virtual {v6}, Lvx;->O()I

    move-result v7

    if-ne v7, v4, :cond_b

    iget-object v7, v6, Lvx;->K:Lvw;

    iget-object v7, v7, Lvw;->e:Lvw;

    if-eqz v7, :cond_b

    iget-object v6, v6, Lvx;->M:Lvw;

    iget-object v6, v6, Lvw;->e:Lvw;

    if-eqz v6, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    .line 10
    :cond_b
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 12
    :cond_c
    const/4 v0, 0x0

    .line 11
    :goto_5
    iget-object v6, p0, Lvu;->J:Lvw;

    .line 13
    invoke-virtual {v6}, Lvw;->f()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lvu;->L:Lvw;

    invoke-virtual {v6}, Lvw;->f()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_6

    .line 37
    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    const/4 v6, 0x1

    .line 13
    :goto_6
    iget-object v7, p0, Lvu;->K:Lvw;

    .line 14
    invoke-virtual {v7}, Lvw;->f()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lvu;->M:Lvw;

    invoke-virtual {v7}, Lvw;->f()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_7

    .line 37
    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    :cond_10
    const/4 v7, 0x1

    .line 14
    :goto_7
    const/4 v8, 0x5

    if-nez v0, :cond_15

    iget v0, p0, Lvu;->a:I

    if-nez v0, :cond_12

    if-nez v6, :cond_11

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_8

    .line 37
    :cond_11
    goto :goto_a

    :cond_12
    nop

    .line 14
    :goto_8
    if-ne v0, v2, :cond_13

    if-nez v7, :cond_11

    const/4 v7, 0x0

    goto :goto_9

    .line 37
    :cond_13
    nop

    .line 14
    :goto_9
    if-ne v0, v3, :cond_14

    if-nez v6, :cond_11

    :cond_14
    if-ne v0, v4, :cond_15

    if-eqz v7, :cond_15

    goto :goto_a

    .line 37
    :cond_15
    const/4 v8, 0x4

    .line 14
    :goto_a
    const/4 v0, 0x0

    :goto_b
    iget v6, p0, Lvu;->ar:I

    if-ge v0, v6, :cond_1a

    iget-object v6, p0, Lvu;->aq:[Lvx;

    .line 15
    aget-object v6, v6, v0

    iget-boolean v7, p0, Lvu;->b:Z

    if-nez v7, :cond_16

    .line 16
    invoke-virtual {v6}, Lvx;->d()Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_f

    .line 17
    :cond_16
    iget-object v7, v6, Lvx;->R:[Lvw;

    iget v9, p0, Lvu;->a:I

    aget-object v7, v7, v9

    invoke-virtual {p1, v7}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v7

    .line 18
    iget-object v6, v6, Lvx;->R:[Lvw;

    iget v9, p0, Lvu;->a:I

    aget-object v6, v6, v9

    iput-object v7, v6, Lvw;->h:Lvs;

    .line 19
    iget-object v10, v6, Lvw;->e:Lvw;

    if-eqz v10, :cond_17

    iget-object v10, v10, Lvw;->d:Lvx;

    if-ne v10, p0, :cond_17

    .line 20
    iget v6, v6, Lvw;->f:I

    goto :goto_c

    .line 23
    :cond_17
    const/4 v6, 0x0

    .line 20
    :goto_c
    if-eqz v9, :cond_19

    if-ne v9, v2, :cond_18

    goto :goto_d

    .line 23
    :cond_18
    iget-object v9, p2, Lvw;->h:Lvs;

    iget v10, p0, Lvu;->c:I

    invoke-virtual {p1}, Lvn;->a()Lvl;

    move-result-object v11

    invoke-virtual {p1}, Lvn;->c()Lvs;

    move-result-object v12

    iput v1, v12, Lvs;->e:I

    add-int/2addr v10, v6

    .line 24
    invoke-virtual {v11, v9, v7, v12, v10}, Lvl;->h(Lvs;Lvs;Lvs;I)V

    .line 23
    invoke-virtual {p1, v11}, Lvn;->e(Lvl;)V

    goto :goto_e

    .line 21
    :cond_19
    :goto_d
    iget-object v9, p2, Lvw;->h:Lvs;

    iget v10, p0, Lvu;->c:I

    invoke-virtual {p1}, Lvn;->a()Lvl;

    move-result-object v11

    invoke-virtual {p1}, Lvn;->c()Lvs;

    move-result-object v12

    iput v1, v12, Lvs;->e:I

    sub-int/2addr v10, v6

    .line 22
    invoke-virtual {v11, v9, v7, v12, v10}, Lvl;->i(Lvs;Lvs;Lvs;I)V

    .line 21
    invoke-virtual {p1, v11}, Lvn;->e(Lvl;)V

    .line 25
    :goto_e
    iget-object v9, p2, Lvw;->h:Lvs;

    iget v10, p0, Lvu;->c:I

    add-int/2addr v10, v6

    invoke-virtual {p1, v9, v7, v10, v8}, Lvn;->m(Lvs;Lvs;II)V

    .line 16
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 23
    :cond_1a
    iget p2, p0, Lvu;->a:I

    const/16 v0, 0x8

    if-nez p2, :cond_1b

    iget-object p2, p0, Lvu;->L:Lvw;

    .line 26
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v2, p0, Lvu;->J:Lvw;

    iget-object v2, v2, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v2, v1, v0}, Lvn;->m(Lvs;Lvs;II)V

    iget-object p2, p0, Lvu;->J:Lvw;

    .line 27
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v0, p0, Lvu;->T:Lvx;

    iget-object v0, v0, Lvx;->L:Lvw;

    iget-object v0, v0, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v0, v1, v5}, Lvn;->m(Lvs;Lvs;II)V

    iget-object p2, p0, Lvu;->J:Lvw;

    .line 28
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v0, p0, Lvu;->T:Lvx;

    iget-object v0, v0, Lvx;->J:Lvw;

    iget-object v0, v0, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v0, v1, v1}, Lvn;->m(Lvs;Lvs;II)V

    return-void

    :cond_1b
    if-ne p2, v3, :cond_1c

    iget-object p2, p0, Lvu;->J:Lvw;

    .line 29
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v2, p0, Lvu;->L:Lvw;

    iget-object v2, v2, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v2, v1, v0}, Lvn;->m(Lvs;Lvs;II)V

    iget-object p2, p0, Lvu;->J:Lvw;

    .line 30
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v0, p0, Lvu;->T:Lvx;

    iget-object v0, v0, Lvx;->J:Lvw;

    iget-object v0, v0, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v0, v1, v5}, Lvn;->m(Lvs;Lvs;II)V

    iget-object p2, p0, Lvu;->J:Lvw;

    .line 31
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v0, p0, Lvu;->T:Lvx;

    iget-object v0, v0, Lvx;->L:Lvw;

    iget-object v0, v0, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v0, v1, v1}, Lvn;->m(Lvs;Lvs;II)V

    return-void

    :cond_1c
    if-ne p2, v2, :cond_1d

    iget-object p2, p0, Lvu;->M:Lvw;

    .line 32
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v2, p0, Lvu;->K:Lvw;

    iget-object v2, v2, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v2, v1, v0}, Lvn;->m(Lvs;Lvs;II)V

    iget-object p2, p0, Lvu;->K:Lvw;

    .line 33
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v0, p0, Lvu;->T:Lvx;

    iget-object v0, v0, Lvx;->M:Lvw;

    iget-object v0, v0, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v0, v1, v5}, Lvn;->m(Lvs;Lvs;II)V

    iget-object p2, p0, Lvu;->K:Lvw;

    .line 34
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v0, p0, Lvu;->T:Lvx;

    iget-object v0, v0, Lvx;->K:Lvw;

    iget-object v0, v0, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v0, v1, v1}, Lvn;->m(Lvs;Lvs;II)V

    return-void

    :cond_1d
    if-ne p2, v4, :cond_1e

    iget-object p2, p0, Lvu;->K:Lvw;

    .line 35
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v2, p0, Lvu;->M:Lvw;

    iget-object v2, v2, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v2, v1, v0}, Lvn;->m(Lvs;Lvs;II)V

    iget-object p2, p0, Lvu;->K:Lvw;

    .line 36
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v0, p0, Lvu;->T:Lvx;

    iget-object v0, v0, Lvx;->K:Lvw;

    iget-object v0, v0, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v0, v1, v5}, Lvn;->m(Lvs;Lvs;II)V

    iget-object p2, p0, Lvu;->K:Lvw;

    .line 37
    iget-object p2, p2, Lvw;->h:Lvs;

    iget-object v0, p0, Lvu;->T:Lvx;

    iget-object v0, v0, Lvx;->M:Lvw;

    iget-object v0, v0, Lvw;->h:Lvs;

    invoke-virtual {p1, p2, v0, v1, v1}, Lvn;->m(Lvs;Lvs;II)V

    :cond_1e
    return-void

    .line 12
    :cond_1f
    return-void
.end method

.method public final c()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lvu;->ar:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lvu;->aq:[Lvx;

    aget-object v4, v4, v2

    iget-boolean v7, p0, Lvu;->b:Z

    if-nez v7, :cond_0

    .line 2
    invoke-virtual {v4}, Lvx;->d()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, p0, Lvu;->a:I

    if-eqz v7, :cond_1

    if-ne v7, v1, :cond_2

    .line 3
    :cond_1
    invoke-virtual {v4}, Lvx;->e()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget v7, p0, Lvu;->a:I

    if-eq v7, v6, :cond_3

    if-ne v7, v5, :cond_4

    .line 4
    :cond_3
    invoke-virtual {v4}, Lvx;->f()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v3, 0x0

    .line 2
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_5
    if-eqz v3, :cond_12

    if-lez v4, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lvu;->ar:I

    if-ge v0, v4, :cond_f

    iget-object v4, p0, Lvu;->aq:[Lvx;

    .line 5
    aget-object v4, v4, v0

    iget-boolean v7, p0, Lvu;->b:Z

    if-nez v7, :cond_6

    .line 6
    invoke-virtual {v4}, Lvx;->d()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    const/4 v7, 0x5

    const/4 v8, 0x4

    if-nez v3, :cond_a

    iget v3, p0, Lvu;->a:I

    if-nez v3, :cond_7

    .line 7
    invoke-virtual {v4, v6}, Lvx;->L(I)Lvw;

    move-result-object v2

    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    goto :goto_3

    .line 14
    :cond_7
    if-ne v3, v1, :cond_8

    .line 8
    invoke-virtual {v4, v8}, Lvx;->L(I)Lvw;

    move-result-object v2

    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    goto :goto_3

    :cond_8
    if-ne v3, v6, :cond_9

    .line 9
    invoke-virtual {v4, v5}, Lvx;->L(I)Lvw;

    move-result-object v2

    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    goto :goto_3

    :cond_9
    if-ne v3, v5, :cond_a

    .line 10
    invoke-virtual {v4, v7}, Lvx;->L(I)Lvw;

    move-result-object v2

    invoke-virtual {v2}, Lvw;->a()I

    move-result v2

    .line 7
    :cond_a
    :goto_3
    iget v3, p0, Lvu;->a:I

    if-nez v3, :cond_b

    .line 11
    invoke-virtual {v4, v6}, Lvx;->L(I)Lvw;

    move-result-object v3

    invoke-virtual {v3}, Lvw;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    if-ne v3, v1, :cond_c

    .line 12
    invoke-virtual {v4, v8}, Lvx;->L(I)Lvw;

    move-result-object v3

    invoke-virtual {v3}, Lvw;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    if-ne v3, v6, :cond_d

    .line 13
    invoke-virtual {v4, v5}, Lvx;->L(I)Lvw;

    move-result-object v3

    invoke-virtual {v3}, Lvw;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    if-ne v3, v5, :cond_e

    .line 14
    invoke-virtual {v4, v7}, Lvx;->L(I)Lvw;

    move-result-object v3

    invoke-virtual {v3}, Lvw;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    :cond_e
    nop

    :goto_4
    const/4 v3, 0x1

    .line 6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 10
    :cond_f
    iget v0, p0, Lvu;->c:I

    add-int/2addr v2, v0

    iget v0, p0, Lvu;->a:I

    if-eqz v0, :cond_11

    if-ne v0, v1, :cond_10

    goto :goto_6

    .line 16
    :cond_10
    invoke-virtual {p0, v2, v2}, Lvx;->x(II)V

    goto :goto_7

    .line 15
    :cond_11
    :goto_6
    invoke-virtual {p0, v2, v2}, Lvx;->w(II)V

    :goto_7
    iput-boolean v1, p0, Lvu;->d:Z

    return v1

    .line 16
    :cond_12
    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lvu;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lvu;->d:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lvx;->ah:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Barrier] "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lvu;->ar:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lvu;->aq:[Lvx;

    .line 2
    aget-object v2, v2, v1

    if-lez v1, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lvx;->ah:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
