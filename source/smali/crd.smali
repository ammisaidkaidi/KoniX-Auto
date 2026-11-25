.class public final Lcrd;
.super Lcre;
.source "PG"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Lj$/util/Map;


# static fields
.field private static final c:Lcrd;

.field private static final serialVersionUID:J


# instance fields
.field public final transient a:Lcsg;

.field public final transient b:Lcqh;

.field private transient d:Lcrd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcrd;

    sget-object v1, Lcrs;->a:Lcrs;

    invoke-static {v1}, Lcrh;->B(Ljava/util/Comparator;)Lcsg;

    move-result-object v1

    invoke-static {}, Lcqh;->p()Lcqh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcrd;-><init>(Lcsg;Lcqh;)V

    sput-object v0, Lcrd;->c:Lcrd;

    return-void
.end method

.method public constructor <init>(Lcsg;Lcqh;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcrd;-><init>(Lcsg;Lcqh;Lcrd;)V

    return-void
.end method

.method public constructor <init>(Lcsg;Lcqh;Lcrd;)V
    .locals 0

    invoke-direct {p0}, Lcre;-><init>()V

    iput-object p1, p0, Lcrd;->a:Lcsg;

    iput-object p2, p0, Lcrd;->b:Lcqh;

    iput-object p3, p0, Lcrd;->d:Lcrd;

    return-void
.end method

.method static a(Ljava/util/Comparator;)Lcrd;
    .locals 2

    .line 1
    sget-object v0, Lcrs;->a:Lcrs;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcrd;->c:Lcrd;

    return-object p0

    :cond_0
    new-instance v0, Lcrd;

    .line 2
    invoke-static {p0}, Lcrh;->B(Ljava/util/Comparator;)Lcsg;

    move-result-object p0

    invoke-static {}, Lcqh;->p()Lcqh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcrd;-><init>(Lcsg;Lcqh;)V

    return-object v0
.end method

.method private final o(II)Lcrd;
    .locals 3

    .line 1
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcrd;->size()I

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
    if-ne p1, p2, :cond_2

    .line 2
    invoke-virtual {p0}, Lcrd;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcrd;->a(Ljava/util/Comparator;)Lcrd;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lcrd;

    iget-object v1, p0, Lcrd;->a:Lcsg;

    .line 3
    invoke-virtual {v1, p1, p2}, Lcsg;->F(II)Lcsg;

    move-result-object v1

    iget-object v2, p0, Lcrd;->b:Lcqh;

    invoke-virtual {v2, p1, p2}, Lcqh;->i(II)Lcqh;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcrd;-><init>(Lcsg;Lcqh;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcqa;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final c()Lcqa;
    .locals 1

    iget-object v0, p0, Lcrd;->b:Lcqh;

    return-object v0
.end method

.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcrd;->n(Ljava/lang/Object;Z)Lcrd;

    move-result-object p1

    invoke-virtual {p1}, Lcrd;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcrd;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lfv;->D(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcrd;->a:Lcsg;

    iget-object v0, v0, Lcrh;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Z)Lcrd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcrd;->a:Lcsg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Lcsg;->D(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcrd;->o(II)Lcrd;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcrd;->a:Lcsg;

    invoke-virtual {v0}, Lcrh;->u()Lcrh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcrd;->d:Lcrd;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcqk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcrd;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcrt;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcrt;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcpl;

    .line 5
    invoke-direct {v1, v0}, Lcpl;-><init>(Ljava/util/Comparator;)V

    move-object v0, v1

    .line 2
    :goto_0
    invoke-virtual {v0}, Lcrt;->a()Lcrt;

    move-result-object v0

    invoke-static {v0}, Lcrd;->a(Ljava/util/Comparator;)Lcrd;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lcrd;

    iget-object v1, p0, Lcrd;->a:Lcsg;

    .line 6
    invoke-virtual {v1}, Lcrh;->u()Lcrh;

    move-result-object v1

    check-cast v1, Lcsg;

    iget-object v2, p0, Lcrd;->b:Lcqh;

    invoke-virtual {v2}, Lcqh;->h()Lcqh;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcrd;-><init>(Lcsg;Lcqh;Lcrd;)V

    goto :goto_1

    :cond_2
    nop

    .line 2
    :goto_1
    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqk;->k()Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcqk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcqk;->k()Lcqw;

    move-result-object v0

    invoke-virtual {v0}, Lcqa;->d()Lcqh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcrd;->a:Lcsg;

    invoke-virtual {v0}, Lcrh;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcrd;->d(Ljava/lang/Object;Z)Lcrd;

    move-result-object p1

    invoke-virtual {p1}, Lcrd;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcrd;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lfv;->D(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2
    iget-object v0, p0, Lcrd;->a:Lcsg;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcsg;->d:Lcqh;

    iget-object v0, v0, Lcsg;->a:Ljava/util/Comparator;

    .line 1
    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    const/4 p1, -0x1

    .line 2
    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object v0, p0, Lcrd;->b:Lcqh;

    invoke-virtual {v0, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcrd;->d(Ljava/lang/Object;Z)Lcrd;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcrd;->d(Ljava/lang/Object;Z)Lcrd;

    move-result-object p1

    return-object p1
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcrd;->n(Ljava/lang/Object;Z)Lcrd;

    move-result-object p1

    invoke-virtual {p1}, Lcrd;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcrd;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lfv;->D(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lcqw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcsf;->a:Lcsf;

    goto :goto_0

    :cond_0
    new-instance v0, Lcqm;

    .line 1
    invoke-direct {v0, p0}, Lcqm;-><init>(Lcrd;)V

    .line 2
    :goto_0
    return-object v0
.end method

.method public final j()Lcqw;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcrd;->a:Lcsg;

    return-object v0
.end method

.method public final synthetic l()Lcqw;
    .locals 1

    iget-object v0, p0, Lcrd;->a:Lcsg;

    return-object v0
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcqk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcqk;->k()Lcqw;

    move-result-object v0

    invoke-virtual {v0}, Lcqa;->d()Lcqh;

    move-result-object v0

    invoke-virtual {p0}, Lcrd;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcrd;->a:Lcsg;

    invoke-virtual {v0}, Lcrh;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcrd;->d(Ljava/lang/Object;Z)Lcrd;

    move-result-object p1

    invoke-virtual {p1}, Lcrd;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcrd;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lfv;->D(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcrd;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p0}, Lcrd;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    nop

    .line 4
    const-string v1, "expected fromKey <= toKey but %s > %s"

    invoke-static {v0, v1, p1, p3}, Lex;->p(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p3, p4}, Lcrd;->d(Ljava/lang/Object;Z)Lcrd;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcrd;->n(Ljava/lang/Object;Z)Lcrd;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Object;Z)Lcrd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcrd;->a:Lcsg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Lcsg;->E(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Lcrd;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcrd;->o(II)Lcrd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lcrd;->a:Lcsg;

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcrd;->b:Lcqh;

    invoke-virtual {v0}, Lcqh;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcrd;->m(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcrd;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcrd;->m(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcrd;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcrd;->n(Ljava/lang/Object;Z)Lcrd;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcrd;->n(Ljava/lang/Object;Z)Lcrd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcrd;->b:Lcqh;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcrc;

    invoke-direct {v0, p0}, Lcrc;-><init>(Lcrd;)V

    return-object v0
.end method
