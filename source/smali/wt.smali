.class public abstract Lwt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwi;


# instance fields
.field public c:I

.field public d:Lvx;

.field e:Lwq;

.field public final f:Lwl;

.field public g:I

.field public h:Z

.field public final i:Lwk;

.field public final j:Lwk;

.field protected k:I

.field protected l:I


# direct methods
.method public constructor <init>(Lvx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwl;

    invoke-direct {v0, p0}, Lwl;-><init>(Lwt;)V

    iput-object v0, p0, Lwt;->f:Lwl;

    const/4 v0, 0x0

    iput v0, p0, Lwt;->g:I

    iput-boolean v0, p0, Lwt;->h:Z

    new-instance v0, Lwk;

    .line 2
    invoke-direct {v0, p0}, Lwk;-><init>(Lwt;)V

    iput-object v0, p0, Lwt;->i:Lwk;

    new-instance v0, Lwk;

    .line 3
    invoke-direct {v0, p0}, Lwk;-><init>(Lwt;)V

    iput-object v0, p0, Lwt;->j:Lwk;

    const/4 v0, 0x1

    iput v0, p0, Lwt;->l:I

    iput-object p1, p0, Lwt;->d:Lvx;

    return-void
.end method

.method protected static final j(Lwk;Lwk;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwk;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iput p2, p0, Lwk;->e:I

    .line 3
    iget-object p1, p1, Lwk;->j:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static final k(Lvw;)Lwk;
    .locals 2

    .line 1
    iget-object p0, p0, Lvw;->e:Lvw;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lvw;->d:Lvx;

    iget p0, p0, Lvw;->i:I

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 2
    :pswitch_0
    iget-object p0, v1, Lvx;->i:Lwr;

    .line 3
    iget-object p0, p0, Lwr;->a:Lwk;

    return-object p0

    .line 1
    :pswitch_1
    iget-object p0, v1, Lvx;->i:Lwr;

    .line 2
    iget-object p0, p0, Lwr;->j:Lwk;

    return-object p0

    .line 4
    :pswitch_2
    iget-object p0, v1, Lvx;->h:Lwp;

    .line 5
    iget-object p0, p0, Lwp;->j:Lwk;

    return-object p0

    .line 3
    :pswitch_3
    iget-object p0, v1, Lvx;->i:Lwr;

    .line 4
    iget-object p0, p0, Lwr;->i:Lwk;

    return-object p0

    .line 5
    :pswitch_4
    iget-object p0, v1, Lvx;->h:Lwp;

    .line 6
    iget-object p0, p0, Lwp;->i:Lwk;

    return-object p0

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

.method protected static final l(Lvw;I)Lwk;
    .locals 2

    .line 1
    iget-object p0, p0, Lvw;->e:Lvw;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lvw;->d:Lvx;

    if-nez p1, :cond_1

    iget-object p1, v1, Lvx;->h:Lwp;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, v1, Lvx;->i:Lwr;

    .line 1
    :goto_0
    iget p0, p0, Lvw;->i:I

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 2
    :pswitch_0
    iget-object p0, p1, Lwt;->j:Lwk;

    return-object p0

    .line 3
    :pswitch_1
    iget-object p0, p1, Lwt;->i:Lwk;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lwt;->f:Lwl;

    iget-boolean v1, v0, Lwl;->i:Z

    if-eqz v1, :cond_0

    .line 2
    iget v0, v0, Lwl;->f:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()Z
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected final h(II)I
    .locals 1

    .line 1
    if-nez p2, :cond_2

    iget-object p2, p0, Lwt;->d:Lvx;

    iget v0, p2, Lvx;->w:I

    .line 2
    iget p2, p2, Lvx;->v:I

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_0

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lwt;->d:Lvx;

    .line 5
    iget v0, p2, Lvx;->z:I

    .line 6
    iget p2, p2, Lvx;->y:I

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_3

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_3
    if-ne p2, p1, :cond_4

    .line 4
    :goto_0
    return p1

    .line 8
    :cond_4
    return p2
.end method

.method protected final i(Lwk;Lwk;ILwl;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lwk;->k:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p1, Lwk;->k:Ljava/util/List;

    iget-object v1, p0, Lwt;->f:Lwl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iput p3, p1, Lwk;->g:I

    .line 4
    iput-object p4, p1, Lwk;->h:Lwl;

    .line 5
    iget-object p2, p2, Lwk;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p2, p4, Lwl;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final m(Lvw;Lvw;I)V
    .locals 10

    .line 1
    invoke-static {p1}, Lwt;->k(Lvw;)Lwk;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lwt;->k(Lvw;)Lwk;

    move-result-object v1

    .line 3
    iget-boolean v2, v0, Lwk;->i:Z

    if-eqz v2, :cond_b

    iget-boolean v2, v1, Lwk;->i:Z

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    iget v2, v0, Lwk;->f:I

    invoke-virtual {p1}, Lvw;->b()I

    move-result p1

    add-int/2addr v2, p1

    .line 5
    iget p1, v1, Lwk;->f:I

    invoke-virtual {p2}, Lvw;->b()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int p2, p1, v2

    iget-object v3, p0, Lwt;->f:Lwl;

    .line 6
    iget-boolean v4, v3, Lwl;->i:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_6

    iget v4, p0, Lwt;->k:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_6

    iget v4, p0, Lwt;->c:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    .line 19
    :pswitch_0
    iget-object v4, p0, Lwt;->d:Lvx;

    .line 7
    iget-object v7, v4, Lvx;->h:Lwp;

    iget v8, v7, Lwp;->k:I

    if-ne v8, v6, :cond_1

    iget v8, v7, Lwp;->c:I

    if-ne v8, v6, :cond_1

    iget-object v8, v4, Lvx;->i:Lwr;

    iget v9, v8, Lwr;->k:I

    if-ne v9, v6, :cond_1

    iget v8, v8, Lwr;->c:I

    if-eq v8, v6, :cond_6

    :cond_1
    if-nez p3, :cond_2

    .line 8
    iget-object v7, v4, Lvx;->i:Lwr;

    .line 9
    :cond_2
    iget-object v6, v7, Lwt;->f:Lwl;

    iget-boolean v7, v6, Lwl;->i:Z

    if-eqz v7, :cond_6

    iget v4, v4, Lvx;->W:F

    const/4 v7, 0x1

    if-ne p3, v7, :cond_3

    .line 10
    iget v6, v6, Lwl;->f:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    goto :goto_0

    .line 11
    :cond_3
    iget v6, v6, Lwl;->f:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 12
    :goto_0
    invoke-virtual {v3, v4}, Lwk;->c(I)V

    goto :goto_3

    .line 11
    :pswitch_1
    iget-object v4, p0, Lwt;->d:Lvx;

    iget-object v6, v4, Lvx;->T:Lvx;

    if-eqz v6, :cond_6

    if-nez p3, :cond_4

    iget-object v6, v6, Lvx;->h:Lwp;

    goto :goto_1

    .line 15
    :cond_4
    iget-object v6, v6, Lvx;->i:Lwr;

    .line 13
    :goto_1
    iget-object v6, v6, Lwt;->f:Lwl;

    iget-boolean v7, v6, Lwl;->i:Z

    if-eqz v7, :cond_6

    if-nez p3, :cond_5

    .line 14
    iget v4, v4, Lvx;->x:F

    goto :goto_2

    .line 15
    :cond_5
    iget v4, v4, Lvx;->A:F

    .line 16
    :goto_2
    iget v6, v6, Lwl;->f:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    .line 17
    invoke-virtual {p0, v4, p3}, Lwt;->h(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lwk;->c(I)V

    goto :goto_3

    .line 18
    :pswitch_2
    iget v3, v3, Lwl;->m:I

    invoke-virtual {p0, v3, p3}, Lwt;->h(II)I

    move-result v3

    iget-object v4, p0, Lwt;->f:Lwl;

    .line 19
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v4, v3}, Lwk;->c(I)V

    goto :goto_3

    .line 20
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lwt;->h(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lwk;->c(I)V

    .line 6
    :cond_6
    :goto_3
    iget-object v3, p0, Lwt;->f:Lwl;

    .line 21
    iget-boolean v4, v3, Lwl;->i:Z

    if-nez v4, :cond_7

    return-void

    .line 22
    :cond_7
    iget v3, v3, Lwl;->f:I

    if-ne v3, p2, :cond_8

    iget-object p2, p0, Lwt;->i:Lwk;

    .line 23
    invoke-virtual {p2, v2}, Lwk;->c(I)V

    iget-object p2, p0, Lwt;->j:Lwk;

    .line 24
    invoke-virtual {p2, p1}, Lwk;->c(I)V

    return-void

    :cond_8
    if-nez p3, :cond_9

    iget-object p2, p0, Lwt;->d:Lvx;

    iget p2, p2, Lvx;->ad:F

    goto :goto_4

    .line 28
    :cond_9
    iget-object p2, p0, Lwt;->d:Lvx;

    iget p2, p2, Lvx;->ae:F

    .line 24
    :goto_4
    if-ne v0, v1, :cond_a

    .line 25
    iget v2, v0, Lwk;->f:I

    .line 26
    iget p1, v1, Lwk;->f:I

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_5

    .line 28
    :cond_a
    nop

    .line 26
    :goto_5
    iget-object p3, p0, Lwt;->i:Lwk;

    int-to-float v0, v2

    add-float/2addr v0, v5

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 27
    invoke-virtual {p3, p1}, Lwk;->c(I)V

    iget-object p1, p0, Lwt;->j:Lwk;

    iget-object p2, p0, Lwt;->i:Lwk;

    .line 28
    iget p2, p2, Lwk;->f:I

    iget-object p3, p0, Lwt;->f:Lwl;

    iget p3, p3, Lwl;->f:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lwk;->c(I)V

    return-void

    .line 3
    :cond_b
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
