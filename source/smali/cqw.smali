.class public abstract Lcqw;
.super Lcqa;
.source "PG"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient a:Lcqh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcqa;-><init>()V

    return-void
.end method

.method static j(I)I
    .locals 6

    .line 1
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    .line 3
    :cond_2
    const/4 p0, 0x0

    .line 2
    :goto_1
    nop

    .line 3
    const-string v1, "collection too large"

    invoke-static {p0, v1}, Lex;->m(ZLjava/lang/Object;)V

    return v0
.end method

.method public static k()Lcqu;
    .locals 1

    .line 1
    new-instance v0, Lcqu;

    invoke-direct {v0}, Lcqu;-><init>()V

    return-object v0
.end method

.method public static varargs l(I[Ljava/lang/Object;)Lcqw;
    .locals 12

    .line 4
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcqw;->j(I)I

    move-result v1

    .line 5
    new-array v5, v1, [Ljava/lang/Object;

    add-int/lit8 v6, v1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_0

    .line 1
    :pswitch_0
    nop

    .line 2
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_1
    sget-object p0, Lcsf;->a:Lcsf;

    return-object p0

    .line 5
    :goto_0
    if-ge v2, p0, :cond_2

    .line 6
    aget-object v3, p1, v2

    invoke-static {v3, v2}, Lfw;->o(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 8
    invoke-static {v8}, Lez;->p(I)I

    move-result v9

    :goto_1
    and-int v10, v9, v6

    .line 9
    aget-object v11, v5, v10

    if-nez v11, :cond_0

    add-int/lit8 v9, v7, 0x1

    .line 11
    aput-object v3, p1, v7

    .line 12
    aput-object v3, v5, v10

    add-int/2addr v4, v8

    move v7, v9

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 12
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v7, p0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 p0, 0x1

    if-ne v7, p0, :cond_3

    .line 14
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcsp;

    .line 15
    invoke-direct {p1, p0}, Lcsp;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 16
    :cond_3
    invoke-static {v7}, Lcqw;->j(I)I

    move-result p0

    div-int/lit8 v1, v1, 0x2

    if-ge p0, v1, :cond_4

    .line 17
    invoke-static {v7, p1}, Lcqw;->l(I[Ljava/lang/Object;)Lcqw;

    move-result-object p0

    return-object p0

    .line 18
    :cond_4
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v7, v0, :cond_5

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    goto :goto_3

    .line 19
    :cond_5
    move-object v3, p1

    :goto_3
    new-instance p0, Lcsf;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcsf;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Ljava/util/Collection;)Lcqw;
    .locals 2

    .line 1
    instance-of v0, p0, Lcqw;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lcqw;

    .line 3
    invoke-virtual {v0}, Lcqw;->f()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 5
    array-length v0, p0

    invoke-static {v0, p0}, Lcqw;->l(I[Ljava/lang/Object;)Lcqw;

    move-result-object p0

    return-object p0
.end method

.method public static n([Ljava/lang/Object;)Lcqw;
    .locals 1

    .line 1
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcqw;->l(I[Ljava/lang/Object;)Lcqw;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    const/4 v0, 0x0

    .line 3
    aget-object p0, p0, v0

    invoke-static {p0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcsf;->a:Lcsf;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Ljava/lang/Object;)Lcqw;
    .locals 1

    .line 1
    new-instance v0, Lcsp;

    invoke-direct {v0, p0}, Lcsp;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/Object;)Lcqw;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcqw;->l(I[Ljava/lang/Object;)Lcqw;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcqw;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v0, v1}, Lcqw;->l(I[Ljava/lang/Object;)Lcqw;

    move-result-object p0

    return-object p0
.end method

.method public static varargs r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcqw;
    .locals 5
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    const/4 v0, 0x1

    const-string v1, "the total number of elements must fit in an int"

    invoke-static {v0, v1}, Lex;->m(ZLjava/lang/Object;)V

    array-length v1, p6

    add-int/lit8 v2, v1, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v0

    const/4 p0, 0x2

    aput-object p2, v3, p0

    const/4 p0, 0x3

    aput-object p3, v3, p0

    const/4 p0, 0x4

    aput-object p4, v3, p0

    const/4 p0, 0x5

    aput-object p5, v3, p0

    .line 2
    const/4 p0, 0x6

    invoke-static {p6, v4, v3, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-static {v2, v3}, Lcqw;->l(I[Ljava/lang/Object;)Lcqw;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Lcqh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcqw;->a:Lcqh;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcqw;->i()Lcqh;

    move-result-object v0

    iput-object v0, p0, Lcqw;->a:Lcqh;

    :cond_0
    return-object v0
.end method

.method public abstract e()Lcst;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcqw;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcqw;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    move-object v1, p1

    check-cast v1, Lcqw;

    .line 3
    invoke-virtual {v1}, Lcqw;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcqw;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    return v2

    .line 4
    :cond_2
    :goto_0
    if-ne p1, p0, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_5

    .line 6
    check-cast p1, Ljava/util/Set;

    .line 7
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_5

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 4
    :goto_2
    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lfw;->j(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public i()Lcqh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqa;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcqh;->k([Ljava/lang/Object;)Lcqh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqw;->e()Lcst;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcqv;

    invoke-virtual {p0}, Lcqa;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcqv;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
