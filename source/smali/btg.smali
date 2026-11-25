.class public final Lbtg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lbta;

.field private final b:Ljava/util/Map;

.field private final c:Lbtd;

.field private final d:Lbsa;

.field private final e:I

.field private final f:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Lbta;Ljava/util/Map;Lbtd;Lbsa;ILjava/util/ArrayDeque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtg;->a:Lbta;

    iput-object p2, p0, Lbtg;->b:Ljava/util/Map;

    iput-object p3, p0, Lbtg;->c:Lbtd;

    iput-object p4, p0, Lbtg;->d:Lbsa;

    iput p5, p0, Lbtg;->e:I

    iput-object p6, p0, Lbtg;->f:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Lddf;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lddf;->b:Lddk;

    check-cast v0, Ldgn;

    iget v0, v0, Ldgn;->a:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-boolean v0, p1, Lddf;->c:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v2, p1, Lddf;->c:Z

    :cond_1
    iget-object v0, p1, Lddf;->b:Lddk;

    .line 3
    check-cast v0, Ldgn;

    .line 4
    invoke-static {v1}, Ldpx;->u(I)I

    move-result v3

    iput v3, v0, Ldgn;->h:I

    iget v3, v0, Ldgn;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v0, Ldgn;->a:I

    .line 1
    :goto_0
    iget-object v0, p0, Lbtg;->d:Lbsa;

    iget-object v0, v0, Lbsa;->b:Lcoc;

    new-instance v3, Ljava/lang/Throwable;

    .line 5
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v3}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    new-instance v3, Ljava/io/StringWriter;

    .line 6
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    .line 7
    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 8
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 10
    sget-object v4, Ldlk;->a:Ldlk;

    .line 11
    invoke-virtual {v4}, Ldlk;->b()Ldll;

    move-result-object v4

    invoke-interface {v4}, Ldll;->b()J

    move-result-wide v4

    int-to-long v6, v3

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v6

    if-gez v10, :cond_2

    cmp-long v6, v4, v8

    if-ltz v6, :cond_2

    long-to-int v3, v4

    .line 12
    :cond_2
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p1, Lddf;->c:Z

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v2, p1, Lddf;->c:Z

    :cond_3
    iget-object v3, p1, Lddf;->b:Lddk;

    .line 14
    check-cast v3, Ldgn;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Ldgn;->a:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v3, Ldgn;->a:I

    iput-object v0, v3, Ldgn;->l:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldgn;

    iget-wide v3, p1, Ldgn;->d:J

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v3, p1, Ldgn;->h:I

    invoke-static {v3}, Ldpx;->v(I)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    new-instance v3, Lbtf;

    invoke-direct {v3, v0, v1}, Lbtf;-><init>(Ljava/lang/Long;I)V

    sget-object v0, Ldlk;->a:Ldlk;

    .line 18
    invoke-virtual {v0}, Ldlk;->b()Ldll;

    move-result-object v0

    invoke-interface {v0}, Ldll;->a()J

    move-result-wide v0

    iget-object v4, p0, Lbtg;->b:Ljava/util/Map;

    .line 19
    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lbtg;->b:Ljava/util/Map;

    .line 20
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    if-eqz v5, :cond_6

    cmp-long v11, v0, v8

    if-lez v11, :cond_6

    .line 22
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v0

    cmp-long v0, v8, v6

    if-gez v0, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    .line 25
    :cond_5
    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    .line 22
    :goto_2
    if-eqz v2, :cond_7

    iget-object v0, p0, Lbtg;->b:Ljava/util/Map;

    .line 23
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_8

    iget-object v0, p0, Lbtg;->c:Lbtd;

    .line 25
    invoke-interface {v0, p1}, Lbtd;->a(Ldgn;)V

    :cond_8
    return-void

    .line 4
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(I)Lddf;
    .locals 6

    .line 1
    sget-object v0, Ldgn;->m:Ldgn;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-object v1, p0, Lbtg;->d:Lbsa;

    iget-object v1, v1, Lbsa;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lddf;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_0
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v2, Ldgn;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Ldgn;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Ldgn;->a:I

    iput-object v1, v2, Ldgn;->b:Ljava/lang/String;

    iget-object v1, p0, Lbtg;->a:Lbta;

    iget-object v2, p0, Lbtg;->d:Lbsa;

    iget-object v2, v2, Lbsa;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1, v2}, Lbta;->a(Landroid/content/Context;)I

    move-result v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_1
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 8
    check-cast v2, Ldgn;

    iget v4, v2, Ldgn;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Ldgn;->a:I

    iput v1, v2, Ldgn;->c:I

    .line 9
    invoke-static {v2}, Ldgn;->k(Ldgn;)V

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_2
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 11
    check-cast v1, Ldgn;

    iget v2, v1, Ldgn;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Ldgn;->a:I

    const-wide/32 v4, -0x79209ddf

    iput-wide v4, v1, Ldgn;->e:J

    iget v4, p0, Lbtg;->e:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Ldgn;->a:I

    int-to-long v4, v4

    iput-wide v4, v1, Ldgn;->f:J

    .line 12
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v1

    iget-object v2, p0, Lbtg;->f:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbsg;

    iget v4, v4, Lbsg;->e:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcqc;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcqc;->f()Lcqh;

    move-result-object v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_4
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 18
    check-cast v2, Ldgn;

    .line 19
    invoke-virtual {v2}, Ldgn;->c()V

    iget-object v2, v2, Ldgn;->k:Lddq;

    .line 20
    invoke-static {v1, v2}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_5
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 22
    check-cast v1, Ldgn;

    .line 23
    invoke-static {p1}, Ldpx;->u(I)I

    move-result p1

    iput p1, v1, Ldgn;->h:I

    iget p1, v1, Ldgn;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, v1, Ldgn;->a:I

    return-object v0
.end method
