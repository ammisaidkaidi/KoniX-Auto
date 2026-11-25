.class public Lbv;
.super Ltk;
.source "PG"

# interfaces
.implements Lxo;


# instance fields
.field final a:Lca;

.field b:Z

.field c:Z

.field d:Z

.field final e:Lzn;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ltk;-><init>()V

    new-instance v0, Lbu;

    .line 2
    invoke-direct {v0, p0}, Lbu;-><init>(Lbv;)V

    new-instance v1, Lca;

    invoke-direct {v1, v0}, Lca;-><init>(Lcc;)V

    iput-object v1, p0, Lbv;->a:Lca;

    new-instance v0, Lzn;

    .line 3
    invoke-direct {v0, p0}, Lzn;-><init>(Lzq;)V

    iput-object v0, p0, Lbv;->e:Lzn;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbv;->d:Z

    .line 4
    invoke-virtual {p0}, Ltk;->D()Laev;

    move-result-object v0

    new-instance v1, Lbt;

    invoke-direct {v1, p0}, Lbt;-><init>(Lbv;)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, Laev;->b(Ljava/lang/String;Laeu;)V

    new-instance v0, Lbs;

    invoke-direct {v0, p0}, Lbs;-><init>(Lbv;)V

    .line 5
    invoke-virtual {p0, v0}, Ltk;->j(Ltq;)V

    return-void
.end method

.method private static f(Lcr;Lzm;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcr;->i()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lbr;->E()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v2}, Lbr;->z()Lcr;

    move-result-object v3

    .line 4
    invoke-static {v3, p1}, Lbv;->f(Lcr;Lzm;)Z

    move-result v3

    or-int/2addr v1, v3

    :cond_1
    iget-object v3, v2, Lbr;->Y:Ldd;

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v3}, Ldd;->C()Lzn;

    move-result-object v3

    iget-object v3, v3, Lzn;->a:Lzm;

    sget-object v4, Lzm;->d:Lzm;

    invoke-virtual {v3, v4}, Lzm;->a(Lzm;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v2, Lbr;->Y:Ldd;

    iget-object v1, v1, Ldd;->b:Lzn;

    .line 6
    invoke-virtual {v1, p1}, Lzn;->e(Lzm;)V

    const/4 v1, 0x1

    :cond_2
    iget-object v3, v2, Lbr;->ac:Lzn;

    iget-object v3, v3, Lzn;->a:Lzm;

    .line 7
    sget-object v4, Lzm;->d:Lzm;

    invoke-virtual {v3, v4}, Lzm;->a(Lzm;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v2, Lbr;->ac:Lzn;

    .line 8
    invoke-virtual {v1, p1}, Lzn;->e(Lzm;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public final aI()Lcr;
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    invoke-virtual {v0}, Lca;->a()Lcr;

    move-result-object v0

    return-object v0
.end method

.method final aS()V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lbv;->aI()Lcr;

    move-result-object v0

    sget-object v1, Lzm;->c:Lzm;

    invoke-static {v0, v1}, Lbv;->f(Lcr;Lzm;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method final b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    iget-object v0, v0, Lcr;->c:Lce;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lbv;->invalidateOptionsMenu()V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Ltk;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbv;->b:Z

    .line 6
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbv;->c:Z

    .line 7
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbv;->d:Z

    .line 8
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 9
    invoke-virtual {p0}, Lbv;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {p0}, Laam;->a(Lzq;)Laam;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Laam;->c(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v0, p0, Lbv;->a:Lca;

    .line 11
    invoke-virtual {v0}, Lca;->a()Lcr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcr;->B(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    invoke-virtual {v0}, Lca;->b()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Ltk;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    invoke-virtual {v0}, Lca;->b()V

    .line 2
    invoke-super {p0, p1}, Ltk;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    .line 3
    invoke-virtual {v0, p1}, Lcr;->o(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ltk;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lbv;->e:Lzn;

    .line 2
    sget-object v0, Lzl;->ON_CREATE:Lzl;

    invoke-virtual {p1, v0}, Lzn;->c(Lzl;)V

    iget-object p1, p0, Lbv;->a:Lca;

    iget-object p1, p1, Lca;->a:Lcc;

    iget-object p1, p1, Lcc;->e:Lcr;

    .line 3
    invoke-virtual {p1}, Lcr;->p()V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1, p2}, Ltk;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Lbv;->a:Lca;

    .line 2
    invoke-virtual {p0}, Lbv;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    .line 3
    invoke-virtual {v0, p2, v1}, Lcr;->O(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Ltk;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lbv;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Ltk;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lbv;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Ltk;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Ltk;->onDestroy()V

    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    .line 2
    invoke-virtual {v0}, Lcr;->q()V

    iget-object v0, p0, Lbv;->e:Lzn;

    .line 3
    sget-object v1, Lzl;->ON_DESTROY:Lzl;

    invoke-virtual {v0, v1}, Lzn;->c(Lzl;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Ltk;->onLowMemory()V

    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    .line 2
    invoke-virtual {v0}, Lcr;->r()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ltk;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    iget-object p1, p0, Lbv;->a:Lca;

    iget-object p1, p1, Lca;->a:Lcc;

    iget-object p1, p1, Lcc;->e:Lcr;

    .line 2
    invoke-virtual {p1, p2}, Lcr;->N(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_1
    iget-object p1, p0, Lbv;->a:Lca;

    iget-object p1, p1, Lca;->a:Lcc;

    iget-object p1, p1, Lcc;->e:Lcr;

    .line 3
    invoke-virtual {p1, p2}, Lcr;->P(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    invoke-virtual {v0, p1}, Lcr;->s(Z)V

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    invoke-virtual {v0}, Lca;->b()V

    .line 2
    invoke-super {p0, p1}, Ltk;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    iget-object p1, p0, Lbv;->a:Lca;

    iget-object p1, p1, Lca;->a:Lcc;

    iget-object p1, p1, Lcc;->e:Lcr;

    invoke-virtual {p1, p2}, Lcr;->t(Landroid/view/Menu;)V

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Ltk;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Ltk;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbv;->c:Z

    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    .line 2
    invoke-virtual {v0}, Lcr;->v()V

    iget-object v0, p0, Lbv;->e:Lzn;

    .line 3
    sget-object v1, Lzl;->ON_PAUSE:Lzl;

    invoke-virtual {v0, v1}, Lzn;->c(Lzl;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    invoke-virtual {v0, p1}, Lcr;->w(Z)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Ltk;->onPostResume()V

    iget-object v0, p0, Lbv;->e:Lzn;

    .line 2
    sget-object v1, Lzl;->ON_RESUME:Lzl;

    invoke-virtual {v0, v1}, Lzn;->c(Lzl;)V

    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    .line 3
    invoke-virtual {v0}, Lcr;->x()V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Ltk;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    iget-object p2, p0, Lbv;->a:Lca;

    iget-object p2, p2, Lca;->a:Lcc;

    iget-object p2, p2, Lcc;->e:Lcr;

    .line 2
    invoke-virtual {p2, p3}, Lcr;->Q(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ltk;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    invoke-virtual {v0}, Lca;->b()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Ltk;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected final onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    invoke-virtual {v0}, Lca;->b()V

    .line 2
    invoke-super {p0}, Ltk;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbv;->c:Z

    iget-object v0, p0, Lbv;->a:Lca;

    .line 3
    invoke-virtual {v0}, Lca;->c()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    invoke-virtual {v0}, Lca;->b()V

    .line 2
    invoke-super {p0}, Ltk;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbv;->d:Z

    iget-boolean v0, p0, Lbv;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbv;->b:Z

    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    .line 3
    invoke-virtual {v0}, Lcr;->n()V

    :cond_0
    iget-object v0, p0, Lbv;->a:Lca;

    .line 4
    invoke-virtual {v0}, Lca;->c()V

    iget-object v0, p0, Lbv;->e:Lzn;

    .line 5
    sget-object v1, Lzl;->ON_START:Lzl;

    invoke-virtual {v0, v1}, Lzn;->c(Lzl;)V

    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    .line 6
    invoke-virtual {v0}, Lcr;->y()V

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbv;->a:Lca;

    invoke-virtual {v0}, Lca;->b()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Ltk;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbv;->d:Z

    .line 2
    invoke-virtual {p0}, Lbv;->aS()V

    iget-object v0, p0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    .line 3
    invoke-virtual {v0}, Lcr;->A()V

    iget-object v0, p0, Lbv;->e:Lzn;

    .line 4
    sget-object v1, Lzl;->ON_STOP:Lzl;

    invoke-virtual {v0, v1}, Lzn;->c(Lzl;)V

    return-void
.end method
