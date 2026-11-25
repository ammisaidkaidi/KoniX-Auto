.class final Ljn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkn;


# instance fields
.field final synthetic a:Ljw;

.field private final b:Lkn;


# direct methods
.method public constructor <init>(Ljw;Lkn;)V
    .locals 0

    iput-object p1, p0, Ljn;->a:Ljw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljn;->b:Lkn;

    return-void
.end method


# virtual methods
.method public final a(Lko;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljn;->b:Lkn;

    check-cast v0, Lkq;

    iget-object v1, v0, Lkq;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Lkq;->e(Lko;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Ljn;->a:Ljw;

    iget-object v0, p1, Ljw;->m:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljw;->g:Landroid/view/Window;

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ljn;->a:Ljw;

    iget-object v0, v0, Ljw;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Ljn;->a:Ljw;

    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljw;->z()V

    iget-object p1, p0, Ljn;->a:Ljw;

    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 4
    invoke-static {v0}, Lhs;->O(Landroid/view/View;)Lbew;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbew;->b(F)V

    iput-object v0, p1, Ljw;->G:Lbew;

    iget-object p1, p0, Ljn;->a:Ljw;

    iget-object p1, p1, Ljw;->G:Lbew;

    new-instance v0, Ljm;

    invoke-direct {v0, p0}, Ljm;-><init>(Ljn;)V

    .line 5
    invoke-virtual {p1, v0}, Lbew;->d(Lhv;)V

    :cond_1
    iget-object p1, p0, Ljn;->a:Ljw;

    const/4 v0, 0x0

    iput-object v0, p1, Ljw;->k:Lko;

    iget-object p1, p1, Ljw;->q:Landroid/view/ViewGroup;

    .line 6
    invoke-static {p1}, Lhs;->t(Landroid/view/View;)V

    return-void
.end method

.method public final b(Lko;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ljn;->b:Lkn;

    check-cast v0, Lkq;

    iget-object v1, v0, Lkq;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Lkq;->e(Lko;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v2, Llx;

    iget-object v0, v0, Lkq;->b:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Llx;-><init>(Landroid/content/Context;Leu;)V

    invoke-interface {v1, p1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final c(Lko;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ljn;->b:Lkn;

    check-cast v0, Lkq;

    iget-object v1, v0, Lkq;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Lkq;->e(Lko;)Landroid/view/ActionMode;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p2}, Lkq;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 1
    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final d(Lko;Landroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljn;->a:Ljw;

    iget-object v0, v0, Ljw;->q:Landroid/view/ViewGroup;

    invoke-static {v0}, Lhs;->t(Landroid/view/View;)V

    iget-object v0, p0, Ljn;->b:Lkn;

    check-cast v0, Lkq;

    iget-object v1, v0, Lkq;->a:Landroid/view/ActionMode$Callback;

    .line 2
    invoke-virtual {v0, p1}, Lkq;->e(Lko;)Landroid/view/ActionMode;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p2}, Lkq;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 2
    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    return-void
.end method
