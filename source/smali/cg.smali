.class final Lcg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final b:Lcr;


# direct methods
.method public constructor <init>(Lcr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcg;->b:Lcr;

    return-void
.end method


# virtual methods
.method final a(Lbr;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcg;->a(Lbr;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcf;

    if-eqz p3, :cond_1

    .line 4
    iget-boolean p2, p2, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p2, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final b(Lbr;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v1, v0, Lcr;->j:Lcc;

    iget-object v1, v1, Lcc;->c:Landroid/content/Context;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcg;->b(Lbr;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, v0, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final c(Lbr;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcg;->c(Lbr;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcf;

    if-eqz p3, :cond_1

    .line 4
    iget-boolean p2, p2, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p2, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final d(Lbr;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcg;->d(Lbr;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, v0, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final e(Lbr;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcg;->e(Lbr;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, v0, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final f(Lbr;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcg;->f(Lbr;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, v0, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final g(Lbr;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v1, v0, Lcr;->j:Lcc;

    iget-object v1, v1, Lcc;->c:Landroid/content/Context;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcg;->g(Lbr;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, v0, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final h(Lbr;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcg;->h(Lbr;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcf;

    if-eqz p3, :cond_1

    .line 4
    iget-boolean p2, p2, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p2, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final i(Lbr;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcg;->i(Lbr;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, v0, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final j(Lbr;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcg;->j(Lbr;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcf;

    if-eqz p3, :cond_1

    .line 4
    iget-boolean p2, p2, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p2, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final k(Lbr;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcg;->k(Lbr;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, v0, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final l(Lbr;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcg;->l(Lbr;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, v0, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final m(Lbr;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, p2, p3, v1}, Lcg;->m(Lbr;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcf;

    if-eqz p4, :cond_1

    .line 4
    iget-boolean p2, p2, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p2, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final n(Lbr;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg;->b:Lcr;

    iget-object v0, v0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object v0

    iget-object v0, v0, Lcr;->g:Lcg;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcg;->n(Lbr;Z)V

    :cond_0
    iget-object p1, p0, Lcg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, v0, Lcf;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcf;->b:Lr;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method
