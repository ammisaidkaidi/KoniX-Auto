.class public abstract Lala;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final c:Lahd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lahd;

    invoke-direct {v0}, Lahd;-><init>()V

    iput-object v0, p0, Lala;->c:Lahd;

    return-void
.end method

.method static final b(Lahx;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lakx;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedList;

    .line 3
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-interface {v1, v3}, Lakl;->f(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v5

    const/4 v5, 0x6

    .line 8
    invoke-interface {v1, v5, v4}, Lakl;->i(I[Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v0, v3}, Lakx;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lahx;->f:Lahf;

    iget-object v1, v0, Lahf;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_0
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const-string v4, "Processor cancelling %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v2, v0, Lahf;->f:Ljava/util/Set;

    .line 11
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lahf;->d:Ljava/util/Map;

    .line 12
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laib;

    if-nez v2, :cond_2

    iget-object v3, v0, Lahf;->e:Ljava/util/Map;

    .line 13
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laib;

    goto :goto_1

    .line 19
    :cond_2
    move-object v3, v2

    .line 14
    :goto_1
    invoke-static {p1, v3}, Lahf;->e(Ljava/lang/String;Laib;)Z

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v0}, Lahf;->d()V

    .line 16
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lahx;->e:Ljava/util/List;

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahg;

    .line 19
    invoke-interface {v0, p1}, Lahg;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lala;->a()V

    iget-object v0, p0, Lala;->c:Lahd;

    sget-object v1, Lagv;->a:Lagu;

    .line 2
    invoke-virtual {v0, v1}, Lahd;->a(Lez;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lala;->c:Lahd;

    new-instance v2, Lags;

    invoke-direct {v2, v0}, Lags;-><init>(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {v1, v2}, Lahd;->a(Lez;)V

    return-void
.end method
