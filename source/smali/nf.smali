.class public final Lnf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field final c:Lqj;

.field public d:I

.field final e:Lqw;

.field private final f:Lge;


# direct methods
.method public constructor <init>(Lqw;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lge;

    const/16 v0, 0x1e

    invoke-direct {p2, v0}, Lge;-><init>(I)V

    iput-object p2, p0, Lnf;->f:Lge;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lnf;->a:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lnf;->b:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput p2, p0, Lnf;->d:I

    iput-object p1, p0, Lnf;->e:Lqw;

    new-instance p1, Lqj;

    invoke-direct {p1, p0}, Lqj;-><init>(Lnf;)V

    iput-object p1, p0, Lnf;->c:Lqj;

    return-void
.end method

.method private final m(II)I
    .locals 8

    .line 1
    iget-object v0, p0, Lnf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x8

    if-ltz v0, :cond_e

    iget-object v2, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lne;

    .line 3
    iget v3, v2, Lne;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v1, :cond_9

    .line 4
    iget v1, v2, Lne;->b:I

    iget v3, v2, Lne;->d:I

    if-ge v1, v3, :cond_0

    move v6, v3

    goto :goto_1

    .line 8
    :cond_0
    move v6, v1

    .line 4
    :goto_1
    if-ge v1, v3, :cond_1

    move v7, v1

    goto :goto_2

    .line 8
    :cond_1
    move v7, v3

    .line 4
    :goto_2
    if-lt p1, v7, :cond_7

    if-gt p1, v6, :cond_7

    if-ne v7, v1, :cond_4

    if-ne p2, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 9
    iput v3, v2, Lne;->d:I

    goto :goto_3

    :cond_2
    if-ne p2, v4, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 10
    iput v3, v2, Lne;->d:I

    .line 9
    :cond_3
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 10
    :cond_4
    if-ne p2, v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 11
    iput v1, v2, Lne;->b:I

    goto :goto_4

    :cond_5
    if-ne p2, v4, :cond_6

    add-int/lit8 v1, v1, -0x1

    .line 12
    iput v1, v2, Lne;->b:I

    .line 11
    :cond_6
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 12
    :cond_7
    if-ge p1, v1, :cond_d

    if-ne p2, v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, v2, Lne;->b:I

    add-int/lit8 v3, v3, 0x1

    .line 6
    iput v3, v2, Lne;->d:I

    goto :goto_5

    :cond_8
    if-ne p2, v4, :cond_d

    add-int/lit8 v1, v1, -0x1

    .line 7
    iput v1, v2, Lne;->b:I

    add-int/lit8 v3, v3, -0x1

    .line 8
    iput v3, v2, Lne;->d:I

    goto :goto_5

    .line 13
    :cond_9
    iget v1, v2, Lne;->b:I

    if-gt v1, p1, :cond_b

    if-ne v3, v5, :cond_a

    .line 14
    iget v1, v2, Lne;->d:I

    sub-int/2addr p1, v1

    goto :goto_5

    :cond_a
    if-ne v3, v4, :cond_d

    .line 15
    iget v1, v2, Lne;->d:I

    add-int/2addr p1, v1

    goto :goto_5

    :cond_b
    if-ne p2, v5, :cond_c

    add-int/lit8 v1, v1, 0x1

    .line 16
    iput v1, v2, Lne;->b:I

    goto :goto_5

    :cond_c
    if-ne p2, v4, :cond_d

    add-int/lit8 v1, v1, -0x1

    .line 17
    iput v1, v2, Lne;->b:I

    .line 9
    :cond_d
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 17
    :cond_e
    iget-object p2, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_6
    if-ltz p2, :cond_12

    iget-object v0, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lne;

    .line 20
    iget v2, v0, Lne;->a:I

    if-ne v2, v1, :cond_10

    .line 21
    iget v2, v0, Lne;->d:I

    iget v3, v0, Lne;->b:I

    if-eq v2, v3, :cond_f

    if-gez v2, :cond_11

    :cond_f
    iget-object v2, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0, v0}, Lnf;->h(Lne;)V

    goto :goto_7

    .line 24
    :cond_10
    iget v2, v0, Lne;->d:I

    if-gtz v2, :cond_11

    iget-object v2, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0, v0}, Lnf;->h(Lne;)V

    .line 23
    :cond_11
    :goto_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 26
    :cond_12
    return p1
.end method

.method private final n(Lne;)V
    .locals 10

    .line 1
    iget v0, p1, Lne;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    .line 3
    iget v2, p1, Lne;->b:I

    invoke-direct {p0, v2, v0}, Lnf;->m(II)I

    move-result v0

    .line 4
    iget v2, p1, Lne;->b:I

    .line 5
    iget v3, p1, Lne;->a:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 18
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_1
    const/4 v3, 0x1

    goto :goto_0

    .line 19
    :pswitch_2
    const/4 v3, 0x0

    .line 5
    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 6
    :goto_1
    iget v7, p1, Lne;->d:I

    if-ge v5, v7, :cond_3

    .line 7
    iget v7, p1, Lne;->b:I

    mul-int v8, v3, v5

    add-int/2addr v7, v8

    .line 8
    iget v8, p1, Lne;->a:I

    invoke-direct {p0, v7, v8}, Lnf;->m(II)I

    move-result v7

    .line 9
    iget v8, p1, Lne;->a:I

    packed-switch v8, :pswitch_data_1

    :pswitch_3
    goto :goto_4

    .line 13
    :pswitch_4
    add-int/lit8 v9, v0, 0x1

    if-ne v7, v9, :cond_0

    goto :goto_2

    :pswitch_5
    if-ne v7, v0, :cond_0

    :goto_2
    const/4 v9, 0x1

    goto :goto_3

    :cond_0
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 10
    :cond_1
    :goto_4
    iget-object v9, p1, Lne;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v0, v6, v9}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, v2}, Lnf;->f(Lne;I)V

    .line 12
    invoke-virtual {p0, v0}, Lnf;->h(Lne;)V

    .line 13
    iget v0, p1, Lne;->a:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_2

    add-int/2addr v2, v6

    :cond_2
    move v0, v7

    const/4 v6, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p1, Lne;->c:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0, p1}, Lnf;->h(Lne;)V

    if-lez v6, :cond_4

    .line 16
    iget p1, p1, Lne;->a:I

    invoke-virtual {p0, p1, v0, v6, v1}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, v2}, Lnf;->f(Lne;I)V

    .line 18
    invoke-virtual {p0, p1}, Lnf;->h(Lne;)V

    :cond_4
    return-void

    .line 1
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final o(Lne;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p1, Lne;->a:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lnf;->e:Lqw;

    .line 3
    iget v1, p1, Lne;->b:I

    iget p1, p1, Lne;->d:I

    invoke-virtual {v0, v1, p1}, Lqw;->e(II)V

    return-void

    :sswitch_1
    iget-object v0, p0, Lnf;->e:Lqw;

    .line 4
    iget v1, p1, Lne;->b:I

    iget v2, p1, Lne;->d:I

    iget-object p1, p1, Lne;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p1}, Lqw;->c(IILjava/lang/Object;)V

    return-void

    :sswitch_2
    iget-object v0, p0, Lnf;->e:Lqw;

    .line 5
    iget v1, p1, Lne;->b:I

    iget p1, p1, Lne;->d:I

    iget-object v2, v0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v1, p1, v3}, Landroid/support/v7/widget/RecyclerView;->L(IIZ)V

    iget-object p1, v0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/RecyclerView;->I:Z

    return-void

    :sswitch_3
    iget-object v0, p0, Lnf;->e:Lqw;

    .line 7
    iget v1, p1, Lne;->b:I

    iget p1, p1, Lne;->d:I

    invoke-virtual {v0, v1, p1}, Lqw;->d(II)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private final p(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lnf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lne;

    .line 3
    iget v4, v3, Lne;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    .line 4
    iget v3, v3, Lne;->d:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lnf;->b(II)I

    move-result v3

    if-eq v3, p1, :cond_0

    goto :goto_2

    :cond_0
    return v6

    :cond_1
    if-ne v4, v6, :cond_3

    .line 5
    iget v4, v3, Lne;->b:I

    iget v3, v3, Lne;->d:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_3

    add-int/lit8 v5, v2, 0x1

    .line 6
    invoke-virtual {p0, v4, v5}, Lnf;->b(II)I

    move-result v5

    if-ne v5, p1, :cond_2

    return v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_4
    return v1
.end method


# virtual methods
.method final a(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnf;->b(II)I

    move-result p1

    return p1
.end method

.method final b(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lnf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    iget-object v1, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lne;

    .line 3
    iget v2, v1, Lne;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 4
    iget v2, v1, Lne;->b:I

    if-ne v2, p1, :cond_0

    .line 5
    iget p1, v1, Lne;->d:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 6
    :cond_1
    iget v1, v1, Lne;->d:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget v3, v1, Lne;->b:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 8
    iget v1, v1, Lne;->d:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 9
    iget v1, v1, Lne;->d:I

    add-int/2addr p1, v1

    .line 5
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9
    :cond_6
    return p1
.end method

.method public final c(IIILjava/lang/Object;)Lne;
    .locals 1

    .line 1
    iget-object v0, p0, Lnf;->f:Lge;

    invoke-virtual {v0}, Lge;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lne;

    if-nez v0, :cond_0

    new-instance v0, Lne;

    .line 2
    invoke-direct {v0, p1, p2, p3, p4}, Lne;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput p1, v0, Lne;->a:I

    iput p2, v0, Lne;->b:I

    iput p3, v0, Lne;->d:I

    iput-object p4, v0, Lne;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lnf;->e:Lqw;

    iget-object v4, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lne;

    .line 3
    invoke-virtual {v3, v4}, Lqw;->b(Lne;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, v0}, Lnf;->i(Ljava/util/List;)V

    iput v1, p0, Lnf;->d:I

    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lnf;->d()V

    iget-object v0, p0, Lnf;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lnf;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lne;

    .line 4
    iget v4, v3, Lne;->a:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v4, p0, Lnf;->e:Lqw;

    .line 5
    invoke-virtual {v4, v3}, Lqw;->b(Lne;)V

    iget-object v4, p0, Lnf;->e:Lqw;

    .line 6
    iget v5, v3, Lne;->b:I

    iget v3, v3, Lne;->d:I

    invoke-virtual {v4, v5, v3}, Lqw;->e(II)V

    goto :goto_1

    :sswitch_1
    iget-object v4, p0, Lnf;->e:Lqw;

    .line 7
    invoke-virtual {v4, v3}, Lqw;->b(Lne;)V

    iget-object v4, p0, Lnf;->e:Lqw;

    .line 8
    iget v5, v3, Lne;->b:I

    iget v6, v3, Lne;->d:I

    iget-object v3, v3, Lne;->c:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v3}, Lqw;->c(IILjava/lang/Object;)V

    goto :goto_1

    :sswitch_2
    iget-object v4, p0, Lnf;->e:Lqw;

    .line 9
    invoke-virtual {v4, v3}, Lqw;->b(Lne;)V

    iget-object v4, p0, Lnf;->e:Lqw;

    .line 10
    iget v5, v3, Lne;->b:I

    iget v3, v3, Lne;->d:I

    invoke-virtual {v4, v5, v3}, Lqw;->f(II)V

    goto :goto_1

    :sswitch_3
    iget-object v4, p0, Lnf;->e:Lqw;

    .line 11
    invoke-virtual {v4, v3}, Lqw;->b(Lne;)V

    iget-object v4, p0, Lnf;->e:Lqw;

    .line 12
    iget v5, v3, Lne;->b:I

    iget v3, v3, Lne;->d:I

    invoke-virtual {v4, v5, v3}, Lqw;->d(II)V

    .line 4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lnf;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0, v0}, Lnf;->i(Ljava/util/List;)V

    iput v1, p0, Lnf;->d:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method final f(Lne;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnf;->e:Lqw;

    invoke-virtual {v0, p1}, Lqw;->b(Lne;)V

    iget v0, p1, Lne;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Lnf;->e:Lqw;

    iget v1, p1, Lne;->d:I

    iget-object p1, p1, Lne;->c:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p2, v1, p1}, Lqw;->c(IILjava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lnf;->e:Lqw;

    iget p1, p1, Lne;->d:I

    .line 3
    invoke-virtual {v0, p2, p1}, Lqw;->f(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final g()V
    .locals 15

    .line 1
    iget-object v0, p0, Lnf;->c:Lqj;

    iget-object v1, p0, Lnf;->a:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ltz v2, :cond_3

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lne;

    .line 3
    iget v7, v7, Lne;->a:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    if-eqz v5, :cond_1

    goto :goto_3

    .line 105
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    .line 3
    :goto_3
    const/4 v5, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eq v2, v3, :cond_1f

    add-int/lit8 v9, v2, 0x1

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lne;

    .line 5
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lne;

    .line 6
    iget v12, v11, Lne;->a:I

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 56
    :pswitch_1
    iget v3, v10, Lne;->d:I

    iget v4, v11, Lne;->b:I

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 57
    iput v4, v11, Lne;->b:I

    move-object v3, v8

    goto :goto_4

    .line 58
    :cond_4
    iget v5, v11, Lne;->d:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    add-int/lit8 v5, v5, -0x1

    .line 59
    iput v5, v11, Lne;->d:I

    iget-object v3, v0, Lqj;->a:Lnf;

    .line 60
    iget v4, v10, Lne;->b:I

    iget-object v5, v11, Lne;->c:Ljava/lang/Object;

    invoke-virtual {v3, v7, v4, v6, v5}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v8

    .line 61
    :goto_4
    iget v4, v10, Lne;->b:I

    iget v5, v11, Lne;->b:I

    if-gt v4, v5, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 62
    iput v5, v11, Lne;->b:I

    goto :goto_5

    .line 63
    :cond_6
    iget v6, v11, Lne;->d:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    sub-int/2addr v5, v4

    iget-object v6, v0, Lqj;->a:Lnf;

    add-int/lit8 v4, v4, 0x1

    .line 64
    iget-object v8, v11, Lne;->c:Ljava/lang/Object;

    invoke-virtual {v6, v7, v4, v5, v8}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v8

    .line 65
    iget v4, v11, Lne;->d:I

    sub-int/2addr v4, v5

    iput v4, v11, Lne;->d:I

    goto :goto_5

    :cond_7
    nop

    .line 66
    :goto_5
    invoke-interface {v1, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget v4, v11, Lne;->d:I

    if-lez v4, :cond_8

    .line 68
    invoke-interface {v1, v2, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 69
    :cond_8
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, v0, Lqj;->a:Lnf;

    .line 70
    invoke-virtual {v4, v11}, Lnf;->h(Lne;)V

    .line 68
    :goto_6
    if-eqz v3, :cond_9

    .line 71
    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    if-eqz v8, :cond_0

    .line 72
    invoke-interface {v1, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 15
    :pswitch_2
    iget v3, v10, Lne;->b:I

    iget v7, v10, Lne;->d:I

    if-ge v3, v7, :cond_b

    .line 16
    iget v12, v11, Lne;->b:I

    if-ne v12, v3, :cond_a

    iget v12, v11, Lne;->d:I

    sub-int v3, v7, v3

    if-ne v12, v3, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_7

    .line 55
    :cond_a
    const/4 v3, 0x0

    goto :goto_7

    .line 17
    :cond_b
    iget v12, v11, Lne;->b:I

    add-int/lit8 v13, v7, 0x1

    if-ne v12, v13, :cond_c

    iget v12, v11, Lne;->d:I

    sub-int/2addr v3, v7

    if-ne v12, v3, :cond_c

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v3, 0x1

    .line 18
    :goto_7
    iget v12, v11, Lne;->b:I

    if-ge v7, v12, :cond_d

    add-int/lit8 v12, v12, -0x1

    .line 19
    iput v12, v11, Lne;->b:I

    goto :goto_8

    .line 20
    :cond_d
    iget v13, v11, Lne;->d:I

    add-int v14, v12, v13

    if-ge v7, v14, :cond_e

    add-int/lit8 v13, v13, -0x1

    .line 50
    iput v13, v11, Lne;->d:I

    .line 51
    iput v5, v10, Lne;->a:I

    .line 52
    iput v6, v10, Lne;->d:I

    .line 53
    iget v2, v11, Lne;->d:I

    if-nez v2, :cond_0

    .line 54
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, v0, Lqj;->a:Lnf;

    .line 55
    invoke-virtual {v2, v11}, Lnf;->h(Lne;)V

    goto/16 :goto_0

    :cond_e
    nop

    .line 21
    :goto_8
    iget v6, v10, Lne;->b:I

    if-gt v6, v12, :cond_f

    add-int/lit8 v12, v12, 0x1

    .line 22
    iput v12, v11, Lne;->b:I

    goto :goto_9

    .line 23
    :cond_f
    iget v7, v11, Lne;->d:I

    add-int/2addr v12, v7

    if-ge v6, v12, :cond_10

    iget-object v7, v0, Lqj;->a:Lnf;

    add-int/lit8 v13, v6, 0x1

    sub-int/2addr v12, v6

    .line 24
    invoke-virtual {v7, v5, v13, v12, v8}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v8

    .line 25
    iget v5, v10, Lne;->b:I

    iget v6, v11, Lne;->b:I

    sub-int/2addr v5, v6

    iput v5, v11, Lne;->d:I

    goto :goto_9

    :cond_10
    nop

    .line 22
    :goto_9
    if-eqz v4, :cond_11

    .line 26
    invoke-interface {v1, v2, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, v0, Lqj;->a:Lnf;

    .line 28
    invoke-virtual {v2, v10}, Lnf;->h(Lne;)V

    goto/16 :goto_0

    :cond_11
    if-eqz v3, :cond_15

    if-eqz v8, :cond_13

    .line 29
    iget v3, v10, Lne;->b:I

    iget v4, v8, Lne;->b:I

    if-le v3, v4, :cond_12

    iget v4, v8, Lne;->d:I

    sub-int/2addr v3, v4

    .line 30
    iput v3, v10, Lne;->b:I

    .line 31
    :cond_12
    iget v3, v10, Lne;->d:I

    iget v4, v8, Lne;->b:I

    if-le v3, v4, :cond_13

    iget v4, v8, Lne;->d:I

    sub-int/2addr v3, v4

    .line 32
    iput v3, v10, Lne;->d:I

    .line 33
    :cond_13
    iget v3, v10, Lne;->b:I

    iget v4, v11, Lne;->b:I

    if-le v3, v4, :cond_14

    .line 34
    iget v4, v11, Lne;->d:I

    sub-int/2addr v3, v4

    iput v3, v10, Lne;->b:I

    .line 35
    :cond_14
    iget v3, v10, Lne;->d:I

    iget v4, v11, Lne;->b:I

    if-le v3, v4, :cond_19

    .line 36
    iget v4, v11, Lne;->d:I

    sub-int/2addr v3, v4

    iput v3, v10, Lne;->d:I

    goto :goto_a

    .line 48
    :cond_15
    if-eqz v8, :cond_17

    .line 37
    iget v3, v10, Lne;->b:I

    iget v4, v8, Lne;->b:I

    if-lt v3, v4, :cond_16

    iget v4, v8, Lne;->d:I

    sub-int/2addr v3, v4

    .line 38
    iput v3, v10, Lne;->b:I

    .line 39
    :cond_16
    iget v3, v10, Lne;->d:I

    iget v4, v8, Lne;->b:I

    if-lt v3, v4, :cond_17

    iget v4, v8, Lne;->d:I

    sub-int/2addr v3, v4

    .line 40
    iput v3, v10, Lne;->d:I

    .line 41
    :cond_17
    iget v3, v10, Lne;->b:I

    iget v4, v11, Lne;->b:I

    if-lt v3, v4, :cond_18

    .line 42
    iget v4, v11, Lne;->d:I

    sub-int/2addr v3, v4

    iput v3, v10, Lne;->b:I

    .line 43
    :cond_18
    iget v3, v10, Lne;->d:I

    iget v4, v11, Lne;->b:I

    if-lt v3, v4, :cond_19

    .line 44
    iget v4, v11, Lne;->d:I

    sub-int/2addr v3, v4

    iput v3, v10, Lne;->d:I

    .line 45
    :cond_19
    :goto_a
    invoke-interface {v1, v2, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget v3, v10, Lne;->b:I

    iget v4, v10, Lne;->d:I

    if-eq v3, v4, :cond_1a

    .line 47
    invoke-interface {v1, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 48
    :cond_1a
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    :goto_b
    if-eqz v8, :cond_0

    .line 49
    invoke-interface {v1, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    iget v5, v10, Lne;->d:I

    iget v6, v11, Lne;->b:I

    if-ge v5, v6, :cond_1b

    goto :goto_c

    .line 14
    :cond_1b
    const/4 v3, 0x0

    .line 8
    :goto_c
    iget v4, v10, Lne;->b:I

    if-ge v4, v6, :cond_1c

    add-int/lit8 v3, v3, 0x1

    :cond_1c
    if-gt v6, v4, :cond_1d

    .line 9
    iget v6, v11, Lne;->d:I

    add-int/2addr v4, v6

    iput v4, v10, Lne;->b:I

    .line 10
    :cond_1d
    iget v4, v11, Lne;->b:I

    if-gt v4, v5, :cond_1e

    .line 11
    iget v6, v11, Lne;->d:I

    add-int/2addr v5, v6

    iput v5, v10, Lne;->d:I

    :cond_1e
    add-int/2addr v4, v3

    .line 12
    iput v4, v11, Lne;->b:I

    .line 13
    invoke-interface {v1, v2, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v1, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 60
    :cond_1f
    iget-object v0, p0, Lnf;->a:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_2f

    iget-object v2, p0, Lnf;->a:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lne;

    .line 75
    iget v9, v2, Lne;->a:I

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1b

    .line 104
    :sswitch_0
    invoke-direct {p0, v2}, Lnf;->o(Lne;)V

    goto/16 :goto_1b

    .line 90
    :sswitch_1
    iget v9, v2, Lne;->b:I

    .line 91
    iget v10, v2, Lne;->d:I

    add-int/2addr v10, v9

    move v11, v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_e
    if-ge v9, v10, :cond_24

    iget-object v14, p0, Lnf;->e:Lqw;

    .line 92
    invoke-virtual {v14, v9}, Lqw;->a(I)Lrr;

    move-result-object v14

    if-nez v14, :cond_22

    .line 93
    invoke-direct {p0, v9}, Lnf;->p(I)Z

    move-result v14

    if-eqz v14, :cond_20

    goto :goto_10

    .line 95
    :cond_20
    if-ne v13, v6, :cond_21

    .line 96
    iget-object v13, v2, Lne;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v11, v12, v13}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v11

    .line 97
    invoke-direct {p0, v11}, Lnf;->o(Lne;)V

    move v11, v9

    const/4 v12, 0x0

    goto :goto_f

    :cond_21
    nop

    :goto_f
    const/4 v13, 0x0

    goto :goto_12

    .line 93
    :cond_22
    :goto_10
    if-nez v13, :cond_23

    .line 94
    iget-object v13, v2, Lne;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v11, v12, v13}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v11

    .line 95
    invoke-direct {p0, v11}, Lnf;->n(Lne;)V

    move v11, v9

    const/4 v12, 0x0

    goto :goto_11

    :cond_23
    nop

    :goto_11
    const/4 v13, 0x1

    :goto_12
    add-int/2addr v12, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 98
    :cond_24
    iget v9, v2, Lne;->d:I

    if-eq v12, v9, :cond_25

    .line 99
    iget-object v9, v2, Lne;->c:Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, v2}, Lnf;->h(Lne;)V

    .line 101
    invoke-virtual {p0, v7, v11, v12, v9}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v2

    goto :goto_13

    .line 103
    :cond_25
    nop

    .line 101
    :goto_13
    if-nez v13, :cond_26

    .line 102
    invoke-direct {p0, v2}, Lnf;->n(Lne;)V

    goto/16 :goto_1b

    .line 103
    :cond_26
    invoke-direct {p0, v2}, Lnf;->o(Lne;)V

    goto :goto_1b

    .line 77
    :sswitch_2
    iget v9, v2, Lne;->b:I

    .line 78
    iget v10, v2, Lne;->d:I

    add-int/2addr v10, v9

    move v11, v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_14
    if-ge v11, v10, :cond_2c

    iget-object v14, p0, Lnf;->e:Lqw;

    .line 79
    invoke-virtual {v14, v11}, Lqw;->a(I)Lrr;

    move-result-object v14

    if-nez v14, :cond_29

    .line 80
    invoke-direct {p0, v11}, Lnf;->p(I)Z

    move-result v14

    if-eqz v14, :cond_27

    goto :goto_16

    .line 82
    :cond_27
    if-ne v13, v6, :cond_28

    .line 83
    invoke-virtual {p0, v5, v9, v12, v8}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v13

    .line 84
    invoke-direct {p0, v13}, Lnf;->o(Lne;)V

    const/4 v13, 0x1

    goto :goto_15

    :cond_28
    const/4 v13, 0x0

    :goto_15
    const/4 v14, 0x0

    goto :goto_18

    .line 80
    :cond_29
    :goto_16
    if-nez v13, :cond_2a

    .line 81
    invoke-virtual {p0, v5, v9, v12, v8}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v13

    .line 82
    invoke-direct {p0, v13}, Lnf;->n(Lne;)V

    const/4 v13, 0x1

    goto :goto_17

    :cond_2a
    const/4 v13, 0x0

    :goto_17
    const/4 v14, 0x1

    :goto_18
    if-eqz v13, :cond_2b

    sub-int/2addr v11, v12

    sub-int/2addr v10, v12

    const/4 v12, 0x1

    goto :goto_19

    :cond_2b
    add-int/lit8 v12, v12, 0x1

    :goto_19
    add-int/2addr v11, v6

    move v13, v14

    goto :goto_14

    .line 85
    :cond_2c
    iget v10, v2, Lne;->d:I

    if-eq v12, v10, :cond_2d

    .line 86
    invoke-virtual {p0, v2}, Lnf;->h(Lne;)V

    .line 87
    invoke-virtual {p0, v5, v9, v12, v8}, Lnf;->c(IIILjava/lang/Object;)Lne;

    move-result-object v2

    goto :goto_1a

    .line 89
    :cond_2d
    nop

    .line 87
    :goto_1a
    if-nez v13, :cond_2e

    .line 88
    invoke-direct {p0, v2}, Lnf;->n(Lne;)V

    goto :goto_1b

    .line 89
    :cond_2e
    invoke-direct {p0, v2}, Lnf;->o(Lne;)V

    goto :goto_1b

    .line 76
    :sswitch_3
    invoke-direct {p0, v2}, Lnf;->o(Lne;)V

    .line 75
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 104
    :cond_2f
    iget-object v0, p0, Lnf;->a:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final h(Lne;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p1, Lne;->c:Ljava/lang/Object;

    iget-object v0, p0, Lnf;->f:Lge;

    .line 2
    invoke-virtual {v0, p1}, Lge;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method final i(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lne;

    invoke-virtual {p0, v2}, Lnf;->h(Lne;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnf;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lnf;->i(Ljava/util/List;)V

    iget-object v0, p0, Lnf;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, v0}, Lnf;->i(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Lnf;->d:I

    return-void
.end method

.method public final k(I)Z
    .locals 1

    iget v0, p0, Lnf;->d:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
