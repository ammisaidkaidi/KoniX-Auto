.class public final Lcsg;
.super Lcrh;
.source "PG"


# static fields
.field static final c:Lcsg;


# instance fields
.field final transient d:Lcqh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcsg;

    invoke-static {}, Lcqh;->p()Lcqh;

    move-result-object v1

    sget-object v2, Lcrs;->a:Lcrs;

    invoke-direct {v0, v1, v2}, Lcsg;-><init>(Lcqh;Ljava/util/Comparator;)V

    sput-object v0, Lcsg;->c:Lcsg;

    return-void
.end method

.method public constructor <init>(Lcqh;Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcrh;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcsg;->d:Lcqh;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Z)Lcrh;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcsg;->E(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Lcsg;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcsg;->F(II)Lcsg;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lcst;
    .locals 1

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0}, Lcqh;->h()Lcqh;

    move-result-object v0

    invoke-virtual {v0}, Lcqh;->u()Lcsu;

    move-result-object v0

    return-object v0
.end method

.method final D(Ljava/lang/Object;Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcrh;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1

    :cond_1
    xor-int/lit8 p1, p1, -0x1

    return p1
.end method

.method final E(Ljava/lang/Object;Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcrh;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    xor-int/lit8 p1, p1, -0x1

    return p1
.end method

.method final F(II)Lcsg;
    .locals 2

    .line 1
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcsg;->size()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    return-object p0

    .line 1
    :cond_1
    :goto_0
    if-ge p1, p2, :cond_2

    new-instance v0, Lcsg;

    iget-object v1, p0, Lcsg;->d:Lcqh;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcqh;->i(II)Lcqh;

    move-result-object p1

    iget-object p2, p0, Lcsg;->a:Ljava/util/Comparator;

    invoke-direct {v0, p1, p2}, Lcsg;-><init>(Lcqh;Ljava/util/Comparator;)V

    return-object v0

    :cond_2
    iget-object p1, p0, Lcsg;->a:Ljava/util/Comparator;

    .line 3
    invoke-static {p1}, Lcsg;->B(Ljava/util/Comparator;)Lcsg;

    move-result-object p1

    return-object p1
.end method

.method public final a([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0, p1, p2}, Lcqa;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0}, Lcqa;->b()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0}, Lcqa;->c()I

    move-result v0

    return v0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcsg;->E(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcsg;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcsg;->d:Lcqh;

    iget-object v2, p0, Lcsg;->a:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    :cond_0
    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcrr;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcrr;

    invoke-interface {p1}, Lcrr;->a()Ljava/util/Set;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcrh;->a:Ljava/util/Comparator;

    .line 3
    invoke-static {v0, p1}, Lcvs;->g(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_3

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcsg;->e()Lcst;

    move-result-object v0

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, v4, v2}, Lcrh;->s(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    return v3

    .line 12
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_4
    if-nez v5, :cond_6

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 14
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_1
    goto :goto_0

    .line 14
    :cond_6
    return v3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    return v3

    .line 4
    :cond_7
    :goto_3
    invoke-super {p0, p1}, Lcrh;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final d()Lcqh;
    .locals 1

    iget-object v0, p0, Lcsg;->d:Lcqh;

    return-object v0
.end method

.method public final bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcsg;->C()Lcst;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcst;
    .locals 1

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0}, Lcqh;->u()Lcsu;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 3
    invoke-virtual {p0}, Lcsg;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcsg;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcsg;->a:Ljava/util/Comparator;

    .line 5
    invoke-static {v1, p1}, Lcvs;->g(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcsg;->e()Lcst;

    move-result-object v1

    .line 8
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {p0, v3, v4}, Lcrh;->s(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    :cond_5
    return v2

    :cond_6
    return v0

    .line 12
    :catch_0
    move-exception p1

    return v2

    :catch_1
    move-exception p1

    return v2

    :cond_7
    invoke-virtual {p0, p1}, Lcsg;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0}, Lcqh;->f()Z

    move-result v0

    return v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcsg;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcsg;->d:Lcqh;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcsg;->D(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcsg;->d:Lcqh;

    .line 2
    invoke-virtual {v0, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0}, Lcqa;->g()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcsg;->E(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcsg;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcsg;->e()Lcst;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcsg;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcsg;->d:Lcqh;

    .line 3
    invoke-virtual {p0}, Lcsg;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcsg;->D(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcsg;->d:Lcqh;

    .line 2
    invoke-virtual {v0, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcsg;->d:Lcqh;

    invoke-virtual {v0}, Lcqh;->size()I

    move-result v0

    return v0
.end method

.method public final t()Lcrh;
    .locals 3

    .line 1
    iget-object v0, p0, Lcsg;->a:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcsg;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcsg;->B(Ljava/util/Comparator;)Lcsg;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcsg;

    iget-object v2, p0, Lcsg;->d:Lcqh;

    .line 4
    invoke-virtual {v2}, Lcqh;->h()Lcqh;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcsg;-><init>(Lcqh;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 3
    :goto_0
    return-object v0
.end method

.method public final w(Ljava/lang/Object;Z)Lcrh;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcsg;->D(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcsg;->F(II)Lcsg;

    move-result-object p1

    return-object p1
.end method

.method public final y(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcrh;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcsg;->A(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcrh;->w(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method
