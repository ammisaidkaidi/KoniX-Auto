.class public final Lkg;
.super Lko;
.source "PG"

# interfaces
.implements Llm;


# instance fields
.field public final a:Llo;

.field public b:Lkn;

.field final synthetic c:Lkh;

.field private final f:Landroid/content/Context;

.field private g:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lkh;Landroid/content/Context;Lkn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkg;->c:Lkh;

    invoke-direct {p0}, Lko;-><init>()V

    iput-object p2, p0, Lkg;->f:Landroid/content/Context;

    iput-object p3, p0, Lkg;->b:Lkn;

    new-instance p1, Llo;

    invoke-direct {p1, p2}, Llo;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Llo;->D()V

    iput-object p1, p0, Lkg;->a:Llo;

    iput-object p0, p1, Llo;->b:Llm;

    return-void
.end method


# virtual methods
.method public final D(Llo;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lkg;->b:Lkn;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Lkn;->b(Lko;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkg;->b:Lkn;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lkg;->g()V

    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->n()V

    return-void
.end method

.method public final a()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lkg;->a:Llo;

    return-object v0
.end method

.method public final b()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Lku;

    iget-object v1, p0, Lkg;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lku;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v1, v0, Lkh;->g:Lkg;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v0, Lkh;->l:Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkh;->k(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkg;->c:Lkh;

    iput-object p0, v0, Lkh;->h:Lko;

    iget-object v2, p0, Lkg;->b:Lkn;

    iput-object v2, v0, Lkh;->i:Lkn;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lkg;->b:Lkn;

    .line 1
    invoke-interface {v0, p0}, Lkn;->a(Lko;)V

    .line 2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lkg;->b:Lkn;

    iget-object v2, p0, Lkg;->c:Lkh;

    invoke-virtual {v2, v1}, Lkh;->g(Z)V

    iget-object v1, p0, Lkg;->c:Lkh;

    iget-object v1, v1, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v2, v1, Landroid/support/v7/widget/ActionBarContextView;->i:Landroid/view/View;

    if-nez v2, :cond_2

    .line 3
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->i()V

    :cond_2
    iget-object v1, p0, Lkg;->c:Lkh;

    iget-object v1, v1, Lkh;->d:Lot;

    .line 4
    invoke-interface {v1}, Lot;->c()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lkg;->c:Lkh;

    iget-object v2, v1, Lkh;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Lkh;->n:Z

    .line 5
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->l(Z)V

    iget-object v1, p0, Lkg;->c:Lkh;

    iput-object v0, v1, Lkh;->g:Lkg;

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->g:Lkg;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkg;->a:Llo;

    invoke-virtual {v0}, Llo;->s()V

    :try_start_0
    iget-object v0, p0, Lkg;->b:Lkn;

    iget-object v1, p0, Lkg;->a:Llo;

    .line 2
    invoke-interface {v0, p0, v1}, Lkn;->d(Lko;Landroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lkg;->a:Llo;

    .line 3
    invoke-virtual {v0}, Llo;->r()V

    return-void

    .line 2
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkg;->a:Llo;

    .line 3
    invoke-virtual {v1}, Llo;->r()V

    .line 4
    throw v0
.end method

.method public final h(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->j(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkg;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkg;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkg;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lko;->e:Z

    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->m(Z)V

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lkg;->c:Lkh;

    iget-object v0, v0, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContextView;->j:Z

    return v0
.end method
