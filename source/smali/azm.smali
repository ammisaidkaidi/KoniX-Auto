.class public final Lazm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field public static final b:Lj$/util/function/BooleanSupplier;


# instance fields
.field public final c:Lcqh;

.field public final d:Lcqz;

.field public final e:Lcom/google/android/projection/protocol/SensorSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/sensors/SensorManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lazm;->a:Lcsz;

    sget-object v0, Lazk;->a:Lazk;

    sput-object v0, Lazm;->b:Lj$/util/function/BooleanSupplier;

    return-void
.end method

.method public constructor <init>(Lzn;Lawt;Ljava/util/Set;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcqh;->n(Ljava/util/Collection;)Lcqh;

    move-result-object p3

    iput-object p3, p0, Lazm;->c:Lcqh;

    new-instance v0, Lcom/google/android/apps/auto/aareceiver/sensors/SensorManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/auto/aareceiver/sensors/SensorManager$1;-><init>(Lazm;)V

    .line 2
    invoke-virtual {p1, v0}, Lzn;->b(Lzp;)V

    new-instance p1, Ljava/util/HashSet;

    .line 3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Lcqo;

    .line 4
    invoke-direct {v0}, Lcqo;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_d

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 5
    check-cast v5, Lazj;

    .line 6
    invoke-virtual {v5}, Lazj;->a()Lcqw;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcsl;

    .line 8
    invoke-direct {v7, v6, p1}, Lcsl;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 9
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    sget-object p1, Lazm;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 p2, 0x4e

    .line 23
    const-string p3, "com/google/android/apps/auto/aareceiver/sensors/SensorManager"

    const-string v1, "<init>"

    const-string v2, "SensorManager.java"

    invoke-interface {p1, p3, v1, p2, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Sensor feed %s discovered sensors that were previously discovered:"

    invoke-interface {p1, p2, v5}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-static {v0}, Lez;->o(Lcqo;)Lcqz;

    move-result-object p1

    iget-object p2, p1, Lcqz;->d:Lcqz;

    if-nez p2, :cond_3

    new-instance p2, Lcqo;

    .line 25
    invoke-direct {p2}, Lcqo;-><init>()V

    iget-object v0, p1, Lcqz;->e:Lcqw;

    if-nez v0, :cond_0

    new-instance v0, Lcqx;

    .line 26
    invoke-direct {v0, p1}, Lcqx;-><init>(Lcqz;)V

    iput-object v0, p1, Lcqz;->e:Lcqw;

    .line 27
    :cond_0
    invoke-virtual {v0}, Lcqw;->e()Lcst;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 29
    invoke-static {v4, v3}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, p2, Lcqo;->a:Ljava/util/Map;

    .line 30
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-nez v5, :cond_1

    iget-object v5, p2, Lcqo;->a:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcpk;->c()Lcpk;

    move-result-object v6

    .line 32
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v6

    .line 33
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p2}, Lez;->o(Lcqo;)Lcqz;

    move-result-object p2

    .line 35
    iput-object p1, p2, Lcqz;->d:Lcqz;

    iput-object p2, p1, Lcqz;->d:Lcqz;

    .line 36
    :cond_3
    invoke-virtual {v7}, Lcsl;->a()Lcst;

    move-result-object p1

    .line 37
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckw;

    sget-object v3, Lazm;->a:Lcsz;

    invoke-virtual {v3}, Lcsv;->b()Lctq;

    move-result-object v3

    const/16 v4, 0x53

    .line 38
    invoke-interface {v3, p3, v1, v4, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    iget v4, v0, Lckw;->w:I

    .line 39
    invoke-virtual {p2, v0}, Lcqz;->b(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    .line 38
    const-string v5, "%d (discovered by: %s)"

    invoke-interface {v3, v5, v4, v0}, Lcsx;->r(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 61
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    const-string p2, "Overlapping sensor feeds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    invoke-interface {p1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-nez v5, :cond_9

    new-instance p1, Ljava/lang/NullPointerException;

    .line 41
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v4, :cond_6

    .line 44
    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_3

    .line 40
    :cond_7
    const/16 p2, 0x5d

    .line 46
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "null key in entry: null="

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 47
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_8
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_9
    iget-object v4, v0, Lcqo;->a:Ljava/util/Map;

    .line 11
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_a

    .line 12
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 13
    invoke-static {v5, v7}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 15
    :cond_a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 17
    invoke-static {}, Lcpk;->c()Lcpk;

    move-result-object v6

    .line 18
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 19
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 20
    invoke-static {v5, v7}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object v4, v0, Lcqo;->a:Ljava/util/Map;

    .line 22
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 48
    :cond_d
    invoke-static {v0}, Lez;->o(Lcqo;)Lcqz;

    move-result-object p3

    iput-object p3, p0, Lazm;->d:Lcqz;

    const-class p3, [Ljava/lang/Integer;

    const v0, 0x11410105

    .line 49
    invoke-virtual {p2, p3, v0}, Lawt;->b(Ljava/lang/Class;I)Lj$/util/Optional;

    move-result-object p3

    .line 50
    sget-object v0, Lawq;->d:Lawq;

    invoke-virtual {p3, v0}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object p3

    new-array v0, v2, [I

    .line 51
    invoke-virtual {p3, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    sget-object v0, Laws;->e:Laws;

    sget-object v1, Laws;->c:Laws;

    .line 52
    const-string v3, "fuel type"

    invoke-static {p3, v0, v1, v3}, Lawt;->c([ILj$/util/function/IntFunction;Lj$/util/function/IntFunction;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lckd;

    .line 53
    array-length v0, p3

    if-nez v0, :cond_e

    new-array p3, v4, [Lckd;

    .line 54
    sget-object v0, Lckd;->a:Lckd;

    aput-object v0, p3, v2

    .line 55
    :cond_e
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lckd;->k:Lckd;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p2, p2, Lawt;->b:Landroid/car/CarInfoManager;

    .line 56
    invoke-static {p2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getEvConnectorTypesSafe(Landroid/car/CarInfoManager;)[I

    move-result-object p2

    sget-object v0, Laws;->d:Laws;

    sget-object v1, Laws;->a:Laws;

    .line 57
    const-string v3, "EV connector"

    invoke-static {p2, v0, v1, v3}, Lawt;->c([ILj$/util/function/IntFunction;Lj$/util/function/IntFunction;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lckc;

    .line 58
    array-length v0, p2

    if-nez v0, :cond_10

    new-array p2, v4, [Lckc;

    .line 59
    sget-object v0, Lckc;->a:Lckc;

    aput-object v0, p2, v2

    goto :goto_7

    .line 61
    :cond_f
    new-array p2, v2, [Lckc;

    .line 60
    :cond_10
    :goto_7
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Laxk;->c:Laxk;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->mapToInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/IntStream;->sorted()Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/IntStream;->toArray()[I

    move-result-object p1

    new-instance v0, Lcom/google/android/projection/protocol/SensorSource;

    .line 61
    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/projection/protocol/SensorSource;-><init>([I[Lckd;[Lckc;)V

    iput-object v0, p0, Lazm;->e:Lcom/google/android/projection/protocol/SensorSource;

    return-void
.end method
