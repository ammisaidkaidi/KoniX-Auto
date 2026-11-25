.class public final Laac;
.super Landroid/app/Fragment;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;Lzl;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lzs;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lzs;

    invoke-interface {p0}, Lzs;->a()Lzn;

    move-result-object p0

    invoke-virtual {p0, p1}, Lzn;->c(Lzl;)V

    return-void

    .line 3
    :cond_0
    instance-of v0, p0, Lzq;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lzq;

    invoke-interface {p0}, Lzq;->C()Lzn;

    move-result-object p0

    .line 5
    instance-of v0, p0, Lzn;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lzn;->c(Lzl;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Laab;

    invoke-direct {v0}, Laab;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 4
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Laac;

    invoke-direct {v2}, Laac;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 6
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method private final c(Lzl;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Laac;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Laac;->a(Landroid/app/Activity;Lzl;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lzl;->ON_CREATE:Lzl;

    invoke-direct {p0, p1}, Laac;->c(Lzl;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    sget-object v0, Lzl;->ON_DESTROY:Lzl;

    invoke-direct {p0, v0}, Laac;->c(Lzl;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Lzl;->ON_PAUSE:Lzl;

    invoke-direct {p0, v0}, Laac;->c(Lzl;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    sget-object v0, Lzl;->ON_RESUME:Lzl;

    invoke-direct {p0, v0}, Laac;->c(Lzl;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    sget-object v0, Lzl;->ON_START:Lzl;

    invoke-direct {p0, v0}, Laac;->c(Lzl;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    sget-object v0, Lzl;->ON_STOP:Lzl;

    invoke-direct {p0, v0}, Laac;->c(Lzl;)V

    return-void
.end method
