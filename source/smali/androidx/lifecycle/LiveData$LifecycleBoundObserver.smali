.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Lzx;
.source "PG"

# interfaces
.implements Lzo;


# instance fields
.field final a:Lzq;

.field final synthetic b:Lzy;


# direct methods
.method public constructor <init>(Lzy;Lzq;Laaa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b:Lzy;

    invoke-direct {p0, p1, p3}, Lzx;-><init>(Lzy;Laaa;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lzq;

    return-void
.end method


# virtual methods
.method public final a(Lzq;Lzl;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lzq;

    invoke-interface {p1}, Lzq;->C()Lzn;

    move-result-object p1

    iget-object p1, p1, Lzn;->a:Lzm;

    .line 2
    sget-object p2, Lzm;->a:Lzm;

    if-eq p1, p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->g()Z

    move-result p2

    invoke-virtual {p0, p2}, Lzx;->d(Z)V

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lzq;

    .line 4
    invoke-interface {p2}, Lzq;->C()Lzn;

    move-result-object p2

    iget-object p2, p2, Lzn;->a:Lzm;

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b:Lzy;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->c:Laaa;

    .line 5
    invoke-virtual {p1, p2}, Lzy;->f(Laaa;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lzq;

    invoke-interface {v0}, Lzq;->C()Lzn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzn;->d(Lzp;)V

    return-void
.end method

.method public final c(Lzq;)Z
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lzq;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lzq;

    invoke-interface {v0}, Lzq;->C()Lzn;

    move-result-object v0

    iget-object v0, v0, Lzn;->a:Lzm;

    sget-object v1, Lzm;->d:Lzm;

    invoke-virtual {v0, v1}, Lzm;->a(Lzm;)Z

    move-result v0

    return v0
.end method
