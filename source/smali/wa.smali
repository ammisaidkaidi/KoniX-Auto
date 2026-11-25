.class public final Lwa;
.super Lvx;
.source "PG"


# instance fields
.field public a:F

.field public aq:I

.field private ar:Z

.field public b:I

.field public c:I

.field public d:Lvw;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lvx;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lwa;->a:F

    const/4 v0, -0x1

    iput v0, p0, Lwa;->b:I

    iput v0, p0, Lwa;->c:I

    iget-object v0, p0, Lwa;->K:Lvw;

    iput-object v0, p0, Lwa;->d:Lvw;

    const/4 v0, 0x0

    iput v0, p0, Lwa;->aq:I

    iget-object v1, p0, Lwa;->S:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lwa;->S:Ljava/util/ArrayList;

    iget-object v2, p0, Lwa;->d:Lvw;

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lwa;->R:[Lvw;

    .line 4
    array-length v1, v1

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lwa;->R:[Lvw;

    iget-object v2, p0, Lwa;->d:Lvw;

    .line 5
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final L(I)Lvw;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    iget p1, p0, Lwa;->aq:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lwa;->d:Lvw;

    return-object p1

    :pswitch_1
    iget p1, p0, Lwa;->aq:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lwa;->d:Lvw;

    return-object p1

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final S(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lvx;->T:Lvx;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lwa;->d:Lvw;

    invoke-static {p1}, Lvn;->o(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lwa;->aq:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput p1, p0, Lvx;->Y:I

    iput v2, p0, Lvx;->Z:I

    iget-object p1, p0, Lvx;->T:Lvx;

    .line 4
    invoke-virtual {p1}, Lvx;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lvx;->y(I)V

    .line 5
    invoke-virtual {p0, v2}, Lvx;->D(I)V

    return-void

    :cond_1
    iput v2, p0, Lvx;->Y:I

    iput p1, p0, Lvx;->Z:I

    iget-object p1, p0, Lvx;->T:Lvx;

    .line 2
    invoke-virtual {p1}, Lvx;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Lvx;->D(I)V

    .line 3
    invoke-virtual {p0, v2}, Lvx;->y(I)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwa;->d:Lvw;

    invoke-virtual {v0, p1}, Lvw;->e(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwa;->ar:Z

    return-void
.end method

.method public final b(Lvn;Z)V
    .locals 8

    .line 1
    iget-object p2, p0, Lvx;->T:Lvx;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lvx;->L(I)Lvw;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lvx;->L(I)Lvw;

    move-result-object v2

    iget-object v3, p0, Lwa;->T:Lvx;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Lvx;->ap:[I

    aget v3, v3, v5

    if-ne v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 17
    :cond_1
    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v6, p0, Lwa;->aq:I

    const/4 v7, 0x5

    if-nez v6, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lvx;->L(I)Lvw;

    move-result-object v1

    invoke-virtual {p2, v7}, Lvx;->L(I)Lvw;

    move-result-object v2

    iget-object p2, p0, Lwa;->T:Lvx;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lvx;->ap:[I

    .line 2
    aget p2, p2, v4

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    const/4 v4, 0x0

    .line 2
    :goto_1
    move v3, v4

    goto :goto_2

    .line 17
    :cond_3
    nop

    .line 2
    :goto_2
    iget-boolean p2, p0, Lwa;->ar:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lwa;->d:Lvw;

    iget-boolean v4, p2, Lvw;->c:Z

    if-eqz v4, :cond_6

    .line 18
    invoke-virtual {p1, p2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object p2

    iget-object v4, p0, Lwa;->d:Lvw;

    .line 19
    invoke-virtual {v4}, Lvw;->a()I

    move-result v4

    invoke-virtual {p1, p2, v4}, Lvn;->f(Lvs;I)V

    iget v4, p0, Lwa;->b:I

    if-eq v4, v0, :cond_4

    if-eqz v3, :cond_5

    .line 20
    invoke-virtual {p1, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v7}, Lvn;->g(Lvs;Lvs;II)V

    goto :goto_3

    :cond_4
    iget v4, p0, Lwa;->c:I

    if-eq v4, v0, :cond_5

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual {p1, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v1}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v5, v7}, Lvn;->g(Lvs;Lvs;II)V

    .line 23
    invoke-virtual {p1, v0, p2, v5, v7}, Lvn;->g(Lvs;Lvs;II)V

    .line 20
    :cond_5
    :goto_3
    iput-boolean v5, p0, Lwa;->ar:Z

    return-void

    .line 23
    :cond_6
    iget p2, p0, Lwa;->b:I

    const/16 v4, 0x8

    if-eq p2, v0, :cond_7

    iget-object p2, p0, Lwa;->d:Lvw;

    .line 3
    invoke-virtual {p1, p2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object p2

    .line 4
    invoke-virtual {p1, v1}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    iget v1, p0, Lwa;->b:I

    .line 5
    invoke-virtual {p1, p2, v0, v1, v4}, Lvn;->m(Lvs;Lvs;II)V

    if-eqz v3, :cond_9

    .line 6
    invoke-virtual {p1, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v7}, Lvn;->g(Lvs;Lvs;II)V

    return-void

    :cond_7
    iget p2, p0, Lwa;->c:I

    if-eq p2, v0, :cond_8

    iget-object p2, p0, Lwa;->d:Lvw;

    .line 7
    invoke-virtual {p1, p2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object p2

    .line 8
    invoke-virtual {p1, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v0

    iget v2, p0, Lwa;->c:I

    neg-int v2, v2

    .line 9
    invoke-virtual {p1, p2, v0, v2, v4}, Lvn;->m(Lvs;Lvs;II)V

    if-eqz v3, :cond_9

    .line 10
    invoke-virtual {p1, v1}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v5, v7}, Lvn;->g(Lvs;Lvs;II)V

    .line 11
    invoke-virtual {p1, v0, p2, v5, v7}, Lvn;->g(Lvs;Lvs;II)V

    return-void

    :cond_8
    iget p2, p0, Lwa;->a:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lwa;->d:Lvw;

    .line 12
    invoke-virtual {p1, p2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object p2

    .line 13
    invoke-virtual {p1, v2}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v1

    iget v2, p0, Lwa;->a:F

    .line 14
    invoke-virtual {p1}, Lvn;->a()Lvl;

    move-result-object v3

    iget-object v4, v3, Lvl;->e:Lvk;

    .line 15
    invoke-virtual {v4, p2, v0}, Lvk;->g(Lvs;F)V

    iget-object p2, v3, Lvl;->e:Lvk;

    .line 16
    invoke-virtual {p2, v1, v2}, Lvk;->g(Lvs;F)V

    .line 17
    invoke-virtual {p1, v3}, Lvn;->e(Lvl;)V

    return-void

    .line 6
    :cond_9
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget v0, p0, Lwa;->aq:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lwa;->aq:I

    iget-object p1, p0, Lwa;->S:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lwa;->aq:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lwa;->J:Lvw;

    iput-object p1, p0, Lwa;->d:Lvw;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lwa;->K:Lvw;

    iput-object p1, p0, Lwa;->d:Lvw;

    .line 1
    :goto_0
    iget-object p1, p0, Lwa;->S:Ljava/util/ArrayList;

    iget-object v0, p0, Lwa;->d:Lvw;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lwa;->R:[Lvw;

    .line 3
    array-length p1, p1

    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x6

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lwa;->R:[Lvw;

    iget-object v1, p0, Lwa;->d:Lvw;

    .line 4
    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lwa;->ar:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lwa;->ar:Z

    return v0
.end method
