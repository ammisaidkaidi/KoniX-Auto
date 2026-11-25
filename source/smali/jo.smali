.class final Ljo;
.super Lkx;
.source "PG"


# instance fields
.field final synthetic a:Ljw;


# direct methods
.method public constructor <init>(Ljw;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljo;->a:Ljw;

    invoke-direct {p0, p2}, Lkx;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljo;->a:Ljw;

    invoke-virtual {v0, p1}, Ljw;->C(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Lkx;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lkx;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Ljo;->a:Ljw;

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3
    invoke-virtual {v0}, Ljw;->a()Liv;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast v3, Lkh;

    iget-object v3, v3, Lkh;->g:Lkg;

    if-nez v3, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    iget-object v3, v3, Lkg;->a:Llo;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    goto :goto_0

    .line 7
    :cond_1
    const/4 v5, -0x1

    .line 5
    :goto_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    .line 7
    :cond_2
    const/4 v5, 0x0

    .line 6
    :goto_1
    invoke-interface {v3, v5}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 7
    invoke-interface {v3, v2, p1, v4}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    :goto_2
    iget-object v2, v0, Ljw;->x:Lju;

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1}, Ljw;->J(Lju;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, v0, Ljw;->x:Lju;

    if-eqz p1, :cond_6

    iput-boolean v1, p1, Lju;->l:Z

    goto :goto_3

    :cond_4
    iget-object v2, v0, Ljw;->x:Lju;

    if-nez v2, :cond_5

    .line 9
    invoke-virtual {v0, v4}, Ljw;->H(I)Lju;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2, p1}, Ljw;->E(Lju;Landroid/view/KeyEvent;)Z

    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1}, Ljw;->J(Lju;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v4, v2, Lju;->k:Z

    if-nez p1, :cond_6

    :cond_5
    return v4

    .line 8
    :cond_6
    :goto_3
    return v1
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_1

    instance-of p1, p2, Llo;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    return v0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lkx;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lkx;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p2, p0, Ljo;->a:Ljw;

    const/4 v0, 0x1

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {p2}, Ljw;->a()Liv;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Liv;->b(Z)V

    :cond_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lkx;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object p2, p0, Ljo;->a:Ljw;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {p2}, Ljw;->a()Liv;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Liv;->b(Z)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Ljw;->H(I)Lju;

    move-result-object p1

    iget-boolean v1, p1, Lju;->m:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2, p1, v0}, Ljw;->x(Lju;Z)V

    return-void

    .line 3
    :cond_1
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Llo;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Llo;

    goto :goto_0

    .line 2
    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    return v1

    .line 1
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, v0, Llo;->i:Z

    .line 2
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lkx;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_4

    iput-boolean v1, v0, Llo;->i:Z

    :cond_4
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljo;->a:Ljw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljw;->H(I)Lju;

    move-result-object v0

    iget-object v0, v0, Lju;->h:Llo;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1, v0, p3}, Lkx;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lkx;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 9

    .line 1
    iget-object v0, p0, Ljo;->a:Ljw;

    iget-boolean v1, v0, Ljw;->o:Z

    if-eqz v1, :cond_e

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    new-instance p2, Lkq;

    iget-object v0, v0, Ljw;->f:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lkq;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Ljo;->a:Ljw;

    iget-object v0, p1, Ljw;->k:Lko;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lko;->f()V

    :cond_0
    new-instance v0, Ljn;

    invoke-direct {v0, p1, p2}, Ljn;-><init>(Ljw;Lkn;)V

    .line 3
    invoke-virtual {p1}, Ljw;->a()Liv;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    check-cast v1, Lkh;

    iget-object v6, v1, Lkh;->g:Lkg;

    if-eqz v6, :cond_1

    .line 4
    invoke-virtual {v6}, Lkg;->f()V

    .line 3
    :cond_1
    iget-object v6, v1, Lkh;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    .line 5
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->l(Z)V

    .line 3
    iget-object v6, v1, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    .line 6
    invoke-virtual {v6}, Landroid/support/v7/widget/ActionBarContextView;->i()V

    new-instance v6, Lkg;

    .line 3
    iget-object v7, v1, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    .line 7
    invoke-virtual {v7}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 3
    nop

    .line 7
    invoke-direct {v6, v1, v7, v0}, Lkg;-><init>(Lkh;Landroid/content/Context;Lkn;)V

    iget-object v7, v6, Lkg;->a:Llo;

    .line 8
    invoke-virtual {v7}, Llo;->s()V

    :try_start_0
    iget-object v7, v6, Lkg;->b:Lkn;

    iget-object v8, v6, Lkg;->a:Llo;

    .line 9
    invoke-interface {v7, v6, v8}, Lkn;->c(Lko;Landroid/view/Menu;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, v6, Lkg;->a:Llo;

    .line 10
    invoke-virtual {v8}, Llo;->r()V

    if-eqz v7, :cond_2

    .line 3
    iput-object v6, v1, Lkh;->g:Lkg;

    .line 12
    invoke-virtual {v6}, Lkg;->g()V

    .line 3
    iget-object v7, v1, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    .line 13
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ActionBarContextView;->h(Lko;)V

    .line 3
    nop

    .line 14
    invoke-virtual {v1, v3}, Lkh;->g(Z)V

    .line 3
    iget-object v1, v1, Lkh;->e:Landroid/support/v7/widget/ActionBarContextView;

    .line 15
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 38
    :cond_2
    move-object v6, v4

    .line 15
    :goto_0
    iput-object v6, p1, Ljw;->k:Lko;

    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    iget-object p2, v6, Lkg;->a:Llo;

    .line 10
    invoke-virtual {p2}, Llo;->r()V

    .line 11
    throw p1

    .line 15
    :cond_3
    :goto_1
    iget-object v1, p1, Ljw;->k:Lko;

    if-nez v1, :cond_c

    .line 16
    invoke-virtual {p1}, Ljw;->z()V

    iget-object v1, p1, Ljw;->k:Lko;

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1}, Lko;->f()V

    :cond_4
    iget-object v1, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v1, :cond_7

    iget-boolean v1, p1, Ljw;->v:Z

    if-eqz v1, :cond_6

    new-instance v1, Landroid/util/TypedValue;

    .line 18
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v6, p1, Ljw;->f:Landroid/content/Context;

    .line 19
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f04000d

    .line 20
    invoke-virtual {v6, v7, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_5

    iget-object v7, p1, Ljw;->f:Landroid/content/Context;

    .line 22
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 23
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 24
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Lue;

    iget-object v8, p1, Ljw;->f:Landroid/content/Context;

    .line 25
    invoke-direct {v6, v8, v5}, Lue;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_2

    .line 53
    :cond_5
    iget-object v6, p1, Ljw;->f:Landroid/content/Context;

    .line 26
    :goto_2
    new-instance v7, Landroid/support/v7/widget/ActionBarContextView;

    .line 27
    invoke-direct {v7, v6}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    new-instance v7, Landroid/widget/PopupWindow;

    const v8, 0x7f04001d

    .line 28
    invoke-direct {v7, v6, v4, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p1, Ljw;->m:Landroid/widget/PopupWindow;

    iget-object v7, p1, Ljw;->m:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    .line 29
    invoke-static {v7, v8}, Lis;->b(Landroid/widget/PopupWindow;I)V

    iget-object v7, p1, Ljw;->m:Landroid/widget/PopupWindow;

    iget-object v8, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 30
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v7, p1, Ljw;->m:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    .line 31
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 32
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f040007

    invoke-virtual {v7, v8, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 33
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 34
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 33
    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iget-object v3, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    iput v1, v3, Landroid/support/v7/widget/ActionBarContextView;->e:I

    iget-object v1, p1, Ljw;->m:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    .line 35
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v1, Ljk;

    invoke-direct {v1, p1, v5}, Ljk;-><init>(Ljw;I)V

    iput-object v1, p1, Ljw;->n:Ljava/lang/Runnable;

    goto :goto_3

    .line 53
    :cond_6
    iget-object v1, p1, Ljw;->q:Landroid/view/ViewGroup;

    const v3, 0x7f09004c

    .line 36
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v1, :cond_7

    .line 37
    invoke-virtual {p1}, Ljw;->q()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v7/widget/ViewStubCompat;->a:Landroid/view/LayoutInflater;

    .line 38
    invoke-virtual {v1}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v1, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 35
    :cond_7
    :goto_3
    iget-object v1, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v1, :cond_b

    .line 39
    invoke-virtual {p1}, Ljw;->z()V

    iget-object v1, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 40
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->i()V

    new-instance v1, Lkp;

    iget-object v3, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 41
    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v1, v3, v6, v0}, Lkp;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Lkn;)V

    iget-object v3, v1, Lkp;->a:Llo;

    .line 42
    invoke-interface {v0, v1, v3}, Lkn;->c(Lko;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 43
    invoke-virtual {v1}, Lko;->g()V

    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 44
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->h(Lko;)V

    iput-object v1, p1, Ljw;->k:Lko;

    .line 45
    invoke-virtual {p1}, Ljw;->F()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_8

    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 47
    invoke-static {v0}, Lhs;->O(Landroid/view/View;)Lbew;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbew;->b(F)V

    iput-object v0, p1, Ljw;->G:Lbew;

    iget-object v0, p1, Ljw;->G:Lbew;

    new-instance v1, Ljl;

    invoke-direct {v1, p1}, Ljl;-><init>(Ljw;)V

    .line 48
    invoke-virtual {v0, v1}, Lbew;->d(Lhv;)V

    goto :goto_4

    .line 55
    :cond_8
    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 50
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 51
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p1, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 53
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lhs;->t(Landroid/view/View;)V

    .line 48
    :cond_9
    :goto_4
    iget-object v0, p1, Ljw;->m:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_b

    iget-object v0, p1, Ljw;->g:Landroid/view/Window;

    .line 54
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Ljw;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 53
    :cond_a
    iput-object v4, p1, Ljw;->k:Lko;

    .line 54
    :cond_b
    :goto_5
    iget-object v1, p1, Ljw;->k:Lko;

    :cond_c
    if-eqz v1, :cond_d

    .line 55
    invoke-virtual {p2, v1}, Lkq;->e(Lko;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v4

    .line 56
    :cond_e
    :goto_6
    invoke-super {p0, p1, p2}, Lkx;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
