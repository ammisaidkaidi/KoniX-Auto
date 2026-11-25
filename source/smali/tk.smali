.class public Ltk;
.super Ldo;
.source "PG"

# interfaces
.implements Lzq;
.implements Laak;
.implements Laex;
.implements Lto;
.implements Ltz;


# instance fields
.field private final ew:Lgs;

.field private ex:Laed;

.field public final f:Ltp;

.field final g:Laew;

.field public final h:Ltn;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Lty;

.field public final k:Lzn;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ldo;-><init>()V

    new-instance v0, Ltp;

    .line 2
    invoke-direct {v0}, Ltp;-><init>()V

    iput-object v0, p0, Ltk;->f:Ltp;

    new-instance v0, Lgs;

    .line 3
    invoke-direct {v0}, Lgs;-><init>()V

    iput-object v0, p0, Ltk;->ew:Lgs;

    new-instance v0, Lzn;

    .line 4
    invoke-direct {v0, p0}, Lzn;-><init>(Lzq;)V

    iput-object v0, p0, Ltk;->k:Lzn;

    .line 5
    invoke-static {p0}, Laew;->a(Laex;)Laew;

    move-result-object v1

    iput-object v1, p0, Ltk;->g:Laew;

    new-instance v1, Ltn;

    new-instance v2, Ltg;

    .line 6
    invoke-direct {v2, p0}, Ltg;-><init>(Ltk;)V

    invoke-direct {v1, v2}, Ltn;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Ltk;->h:Ltn;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Ltk;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lty;

    .line 8
    invoke-direct {v1, p0}, Lty;-><init>(Ltk;)V

    iput-object v1, p0, Ltk;->j:Lty;

    .line 14
    new-instance v1, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Ltk;)V

    .line 9
    invoke-virtual {v0, v1}, Lzn;->b(Lzp;)V

    new-instance v1, Landroidx/activity/ComponentActivity$4;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$4;-><init>(Ltk;)V

    .line 10
    invoke-virtual {v0, v1}, Lzn;->b(Lzp;)V

    new-instance v1, Landroidx/activity/ComponentActivity$5;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$5;-><init>(Ltk;)V

    .line 11
    invoke-virtual {v0, v1}, Lzn;->b(Lzp;)V

    .line 12
    invoke-virtual {p0}, Ltk;->D()Laev;

    move-result-object v0

    new-instance v1, Ltf;

    invoke-direct {v1, p0}, Ltf;-><init>(Ltk;)V

    const-string v2, "android:support:activity-result"

    invoke-virtual {v0, v2, v1}, Laev;->b(Ljava/lang/String;Laeu;)V

    new-instance v0, Lte;

    invoke-direct {v0, p0}, Lte;-><init>(Ltk;)V

    .line 13
    invoke-virtual {p0, v0}, Ltk;->j(Ltq;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltk;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lxr;->b(Landroid/view/View;Lzq;)V

    .line 2
    invoke-virtual {p0}, Ltk;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lxs;->b(Landroid/view/View;Laak;)V

    .line 3
    invoke-virtual {p0}, Ltk;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lew;->r(Landroid/view/View;Laex;)V

    return-void
.end method

.method static synthetic i(Ltk;)V
    .locals 0

    .line 1
    invoke-super {p0}, Ldo;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final C()Lzn;
    .locals 1

    iget-object v0, p0, Ltk;->k:Lzn;

    return-object v0
.end method

.method public final D()Laev;
    .locals 1

    iget-object v0, p0, Ltk;->g:Laew;

    iget-object v0, v0, Laew;->a:Laev;

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltk;->a()V

    .line 2
    invoke-super {p0, p1, p2}, Ldo;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final ai()Laed;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltk;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ltk;->k()V

    iget-object v0, p0, Ltk;->ex:Laed;

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Ltq;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltk;->f:Ltp;

    iget-object v1, v0, Ltp;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ltp;->b:Landroid/content/Context;

    invoke-interface {p1}, Ltq;->a()V

    :cond_0
    iget-object v0, v0, Ltp;->a:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltk;->ex:Laed;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltk;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltj;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ltj;->a:Laed;

    iput-object v0, p0, Ltk;->ex:Laed;

    :cond_0
    iget-object v0, p0, Ltk;->ex:Laed;

    if-nez v0, :cond_1

    new-instance v0, Laed;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Laed;-><init>([B)V

    iput-object v0, p0, Ltk;->ex:Laed;

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ltk;->j:Lty;

    invoke-virtual {v0, p1, p2, p3}, Lty;->e(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Ldo;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltk;->h:Ltn;

    invoke-virtual {v0}, Ltn;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltk;->g:Laew;

    invoke-virtual {v0, p1}, Laew;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Ltk;->f:Ltp;

    iput-object p0, v0, Ltp;->b:Landroid/content/Context;

    iget-object v0, v0, Ltp;->a:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltq;

    .line 3
    invoke-interface {v1}, Ltq;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ldo;->onCreate(Landroid/os/Bundle;)V

    .line 5
    invoke-static {p0}, Laac;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ldo;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object p1, p0, Ltk;->ew:Lgs;

    .line 2
    invoke-virtual {p0}, Ltk;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p1, p1, Lgs;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgt;

    .line 4
    invoke-interface {v0}, Lgt;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ldo;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Ltk;->ew:Lgs;

    iget-object p1, p1, Lgs;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgt;

    .line 3
    invoke-interface {v1}, Lgt;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ltk;->j:Lty;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3
    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    .line 1
    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Lty;->e(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Ldo;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ltk;->ex:Laed;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltk;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltj;

    if-eqz v1, :cond_0

    iget-object v0, v1, Ltj;->a:Laed;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Ltj;

    invoke-direct {v1}, Ltj;-><init>()V

    iput-object v0, v1, Ltj;->a:Laed;

    return-object v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltk;->k:Lzn;

    instance-of v1, v0, Lzn;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lzm;->c:Lzm;

    invoke-virtual {v0, v1}, Lzn;->e(Lzm;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ldo;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Ltk;->g:Laew;

    .line 4
    invoke-virtual {v0, p1}, Laew;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 6

    .line 10
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-static {}, Lafo;->a()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    sget-object v0, Lafo;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-class v0, Landroid/os/Trace;

    const-string v4, "TRACE_TAG_APP"

    .line 1
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    sput-wide v4, Lafo;->a:J

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v2

    const-class v4, Landroid/os/Trace;

    const-string v5, "isTagEnabled"

    .line 3
    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lafo;->b:Ljava/lang/reflect/Method;

    :cond_1
    sget-object v0, Lafo;->b:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    sget-wide v4, Lafo;->a:J

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    nop

    .line 10
    :goto_0
    if-eqz v2, :cond_4

    const-string v0, "reportFullyDrawn() for ComponentActivity"

    .line 11
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    :cond_4
    invoke-super {p0}, Ldo;->reportFullyDrawn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 4
    :catchall_0
    move-exception v0

    .line 13
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 14
    throw v0
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltk;->a()V

    .line 2
    invoke-super {p0, p1}, Ldo;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ltk;->a()V

    .line 4
    invoke-super {p0, p1}, Ldo;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ltk;->a()V

    .line 6
    invoke-super {p0, p1, p2}, Ldo;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
