.class public abstract Laiz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lais;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Ljava/lang/Object;

.field public final c:Lajk;

.field public d:Laiy;


# direct methods
.method public constructor <init>(Lajk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laiz;->a:Ljava/util/List;

    iput-object p1, p0, Laiz;->c:Lajk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p1, p0, Laiz;->b:Ljava/lang/Object;

    iget-object v0, p0, Laiz;->d:Laiy;

    invoke-virtual {p0, v0, p1}, Laiz;->e(Laiy;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract b(Lakk;)Z
.end method

.method public abstract c(Ljava/lang/Object;)Z
.end method

.method public final d(Laiy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laiz;->d:Laiy;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Laiz;->d:Laiy;

    iget-object v0, p0, Laiz;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Laiz;->e(Laiy;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e(Laiy;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Laiz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p0, p2}, Laiz;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, p0, Laiz;->a:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Laiv;

    iget-object v0, v0, Laiv;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Laiv;

    .line 7
    invoke-virtual {v3, v2}, Laiv;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "Constraints met for %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Lagr;->d([Ljava/lang/Throwable;)V

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    check-cast p1, Laiv;

    iget-object p1, p1, Laiv;->a:Laiu;

    if-eqz p1, :cond_4

    .line 10
    invoke-interface {p1, v1}, Laiu;->e(Ljava/util/List;)V

    .line 11
    :cond_4
    monitor-exit v0

    return-void

    .line 4
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2
    :cond_5
    :goto_1
    iget-object p2, p0, Laiz;->a:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Laiv;

    iget-object v0, v0, Laiv;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    check-cast p1, Laiv;

    iget-object p1, p1, Laiv;->a:Laiu;

    if-eqz p1, :cond_6

    .line 3
    invoke-interface {p1, p2}, Laiu;->f(Ljava/util/List;)V

    .line 4
    :cond_6
    monitor-exit v0

    return-void

    .line 11
    :catchall_1
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 1
    :cond_7
    :goto_2
    return-void
.end method
