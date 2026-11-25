.class public Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;
.super Lbfw;
.source "PG"


# static fields
.field private static final c:Lcsz;


# instance fields
.field public b:Lbgd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->c:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbfw;-><init>()V

    sget-object v0, Lcaa;->a:Lcaa;

    .line 2
    invoke-virtual {v0}, Lcaa;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    const-string v1, "com.google.android.embedded.projection.ui.WaitingForConnectionActivity.FINISH_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ldag;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    new-instance v1, Lbgd;

    .line 2
    invoke-direct {v1, p1}, Lbgd;-><init>(Ldag;)V

    const-string p1, "com.google.android.embedded.projection.KEY_LOCAL_DATA"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;

    .line 3
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    const/high16 v1, 0x20000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final d(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.embedded.projection.ui.WaitingForConnectionActivity.FINISH_ACTIVITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    const-string v0, "com.google.android.embedded.projection.KEY_LOCAL_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    nop

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lbgd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->b:Lbgd;

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lbgd;->a()V

    :cond_3
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->b:Lbgd;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lbgd;->b:Ljava/lang/ref/WeakReference;

    iget-object v0, p1, Lbgd;->a:Ldag;

    new-instance v1, Lbgc;

    invoke-direct {v1, p1}, Lbgc;-><init>(Lbgd;)V

    .line 10
    sget-object p1, Lczj;->a:Lczj;

    .line 11
    invoke-interface {v0, v1, p1}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 4
    :cond_4
    :goto_0
    sget-object p1, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->c:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v0, 0x88

    .line 5
    const-string v1, "com/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity"

    const-string v2, "processIntent"

    const-string v3, "WaitingForConnectionActivity.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Activity started w/o extras provided, ignore."

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->finish()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lbfw;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->d(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f0c007e

    .line 4
    invoke-virtual {p0, p1}, Ltk;->setContentView(I)V

    invoke-static {p0}, Lcom/achour/tweaks/Splash;->show(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/achour/tweaks/V7;->addWaitingBar(Landroid/app/Activity;)V

    :try_start_0
    invoke-static {p0}, Lcom/achour/tweaks/Gal;->rotateActivityRoot(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/achour/tweaks/Gal;->maybeOnboard(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 5
    :goto_0
    invoke-static {}, Ldjo;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090074

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lbgb;

    invoke-direct {v0, p0}, Lbgb;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbfw;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->b:Lbgd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbgd;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->b:Lbgd;

    :cond_0
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lbfw;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->d(Landroid/content/Intent;)V

    return-void
.end method
