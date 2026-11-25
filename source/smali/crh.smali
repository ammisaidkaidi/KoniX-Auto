.class public abstract Lcrh;
.super Lcri;
.source "PG"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lcsq;


# instance fields
.field final transient a:Ljava/util/Comparator;

.field transient b:Lcrh;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcri;-><init>()V

    iput-object p1, p0, Lcrh;->a:Ljava/util/Comparator;

    return-void
.end method

.method static B(Ljava/util/Comparator;)Lcsg;
    .locals 2

    .line 1
    sget-object v0, Lcrs;->a:Lcrs;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcsg;->c:Lcsg;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcsg;

    invoke-static {}, Lcqh;->p()Lcqh;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcsg;-><init>(Lcqh;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract A(Ljava/lang/Object;Z)Lcrh;
.end method

.method public abstract C()Lcst;
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcrh;->z(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    invoke-static {p1}, Lfv;->K(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcrh;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcrh;->C()Lcst;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcrh;->u()Lcrh;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lcst;
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcrh;->e()Lcst;

    move-result-object v0

    invoke-virtual {v0}, Lcst;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcrh;->v(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    invoke-virtual {p1}, Lcrh;->C()Lcst;

    move-result-object p1

    invoke-static {p1}, Lfv;->H(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcrh;->v(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcrh;->v(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcrh;->z(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    invoke-static {p1}, Lfv;->K(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcrh;->e()Lcst;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcrh;->C()Lcst;

    move-result-object v0

    invoke-virtual {v0}, Lcst;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcrh;->v(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    invoke-virtual {p1}, Lcrh;->C()Lcst;

    move-result-object p1

    invoke-static {p1}, Lfv;->H(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final s(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcrh;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcrh;->x(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcrh;->x(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method

.method public abstract t()Lcrh;
.end method

.method public final bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcrh;->z(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcrh;->z(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method

.method public final u()Lcrh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcrh;->b:Lcrh;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcrh;->t()Lcrh;

    move-result-object v0

    iput-object v0, p0, Lcrh;->b:Lcrh;

    .line 2
    iput-object p0, v0, Lcrh;->b:Lcrh;

    :cond_0
    return-object v0
.end method

.method public final v(Ljava/lang/Object;Z)Lcrh;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcrh;->w(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method

.method public abstract w(Ljava/lang/Object;Z)Lcrh;
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcrg;

    iget-object v1, p0, Lcrh;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcqa;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcrg;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final x(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcrh;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcrh;->a:Ljava/util/Comparator;

    .line 3
    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lex;->l(Z)V

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcrh;->y(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method

.method public abstract y(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcrh;
.end method

.method public final z(Ljava/lang/Object;Z)Lcrh;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcrh;->A(Ljava/lang/Object;Z)Lcrh;

    move-result-object p1

    return-object p1
.end method
