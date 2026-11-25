.class public final Lcbm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final b:Lcsz;

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com/google/android/libraries/performance/primes/metrics/trace/Tracer"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcbm;->b:Lcsz;

    const/16 v0, 0xa

    sput v0, Lcbm;->c:I

    const/4 v0, 0x0

    sput v0, Lcbm;->d:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcbm;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(Lcay;)V
    .locals 10

    .line 1
    sget-object v0, Lcay;->a:Lcay;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcay;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcay;->d:J

    :cond_0
    sget-object v0, Lcbm;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcbg;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcbg;->c()Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcay;

    const-string v3, "Tracer.java"

    const-string v4, "endSpan"

    const-string v5, "com/google/android/libraries/performance/primes/metrics/trace/Tracer"

    if-eq p0, v2, :cond_2

    sget-object p0, Lcbm;->b:Lcsz;

    invoke-virtual {p0}, Lcsv;->c()Lctq;

    move-result-object p0

    const/16 v0, 0xa9

    .line 5
    invoke-interface {p0, v5, v4, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    const-string v0, "Incorrect Span passed. Ignore..."

    invoke-interface {p0, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcay;->a()J

    move-result-wide v6

    sget v2, Lcbm;->c:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-gez v2, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {v1}, Lcbg;->b()I

    move-result v2

    sget v6, Lcbm;->d:I

    if-ge v2, v6, :cond_7

    .line 7
    invoke-virtual {v1}, Lcbg;->c()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcay;

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcay;->f:Ljava/util/List;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcay;->f:Ljava/util/List;

    :cond_4
    iget-object v1, v0, Lcay;->f:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcay;->f:Ljava/util/List;

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :cond_6
    sget-object v0, Lcbg;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x68

    .line 10
    const-string v2, "com/google/android/libraries/performance/primes/metrics/trace/TraceData"

    const-string v3, "linkToParent"

    const-string v4, "TraceData.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    iget-object p0, p0, Lcay;->b:Ljava/lang/String;

    const-string v1, "null Parent for Span: %s"

    invoke-interface {v0, v1, p0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    sget-object p0, Lcbm;->b:Lcsz;

    invoke-virtual {p0}, Lcsv;->c()Lctq;

    move-result-object p0

    const/16 v2, 0xb2

    .line 11
    invoke-interface {p0, v5, v4, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p0

    check-cast p0, Lcsx;

    .line 12
    invoke-virtual {v1}, Lcbg;->a()I

    move-result v1

    .line 11
    const-string v2, "Dropping trace as max buffer size is hit. Size: %d"

    invoke-interface {p0, v2, v1}, Lcsx;->o(Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public static b(Lcbg;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, Lbjq;->e()V

    .line 2
    invoke-virtual {p0}, Lcbg;->a()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lbup;->d:Lbup;

    iget-object v2, p0, Lcbg;->e:Ljava/util/List;

    .line 3
    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcbg;->e:Ljava/util/List;

    .line 4
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcbg;->c:Lcay;

    iget-object v4, p0, Lcbg;->e:Ljava/util/List;

    .line 5
    invoke-virtual {v3, v4}, Lcay;->b(Ljava/util/List;)V

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcbg;->d:Ljava/util/Map;

    .line 7
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcbg;->c:Lcay;

    .line 9
    invoke-virtual {v0, v2}, Lcay;->b(Ljava/util/List;)V

    iget-object p0, p0, Lcbg;->c:Lcay;

    new-instance v0, Lcaz;

    invoke-direct {v0, p0}, Lcaz;-><init>(Lcay;)V

    new-instance p0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcaz;->a:Lcay;

    const-wide/16 v3, 0x0

    .line 11
    invoke-virtual {v0, v2, v3, v4, p0}, Lcaz;->a(Lcay;JLjava/util/ArrayList;)V

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 13
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 13
    :cond_1
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcbm;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcbg;

    invoke-direct {v1, p0}, Lcbg;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    sput p0, Lcbm;->c:I

    const/16 p0, 0x3e8

    sput p0, Lcbm;->d:I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;)Lcbg;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lex;->r(Z)V

    sget-object v0, Lcbm;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbg;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcbg;->c:Lcay;

    .line 3
    iput-object p0, v1, Lcay;->b:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
