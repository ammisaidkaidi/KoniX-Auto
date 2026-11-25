.class public Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;
.super Lbfi;
.source "PG"

# interfaces
.implements Lbaw;


# static fields
.field private static final a:Lcsz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/ui/ClusterActivity"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->a:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbfi;-><init>()V

    return-void
.end method

.method private final p(Landroid/content/Intent;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.car.cluster.ClusterActivityState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    const-string v0, "android.car:activityState.unobscured"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->v:Lazy;

    iget-object v0, v0, Lazy;->i:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    const-string v1, "updateClusterContentArea"

    if-nez v0, :cond_2

    sget-object p1, Lazy;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 v0, 0x115

    .line 3
    const-string v2, "com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler"

    const-string v3, "AndroidAutoHeadunitProjectionHandler.java"

    invoke-interface {p1, v2, v1, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "updateClusterContentArea called outside of the session."

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, v0, Lbbl;->r:Landroid/view/Display;

    if-nez v2, :cond_3

    sget-object p1, Lbbl;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 v0, 0x315

    .line 4
    const-string v2, "com/google/android/apps/auto/aareceiver/session/ProjectionSession"

    const-string v3, "ProjectionSession.java"

    invoke-interface {p1, v2, v1, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Trying to update cluster UiConfig while cluster is null!"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_3
    sget-object v1, Lcke;->f:Lcke;

    .line 6
    invoke-virtual {v1}, Lddk;->n()Lddf;

    move-result-object v1

    .line 5
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-boolean v3, v1, Lddf;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_4
    iget-object v3, v1, Lddf;->b:Lddk;

    .line 8
    check-cast v3, Lcke;

    iget v5, v3, Lcke;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcke;->a:I

    iput v2, v3, Lcke;->b:I

    .line 7
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-boolean v3, v1, Lddf;->c:Z

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_5
    iget-object v3, v1, Lddf;->b:Lddk;

    .line 10
    check-cast v3, Lcke;

    iget v5, v3, Lcke;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Lcke;->a:I

    iput v2, v3, Lcke;->d:I

    iget-object v2, v0, Lbbl;->r:Landroid/view/Display;

    .line 11
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-boolean v3, v1, Lddf;->c:Z

    if-eqz v3, :cond_6

    .line 12
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_6
    iget-object v3, v1, Lddf;->b:Lddk;

    .line 13
    check-cast v3, Lcke;

    iget v5, v3, Lcke;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Lcke;->a:I

    iput v2, v3, Lcke;->c:I

    iget-object v2, v0, Lbbl;->r:Landroid/view/Display;

    .line 14
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    iget-boolean p1, v1, Lddf;->c:Z

    if-eqz p1, :cond_7

    .line 15
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_7
    iget-object p1, v1, Lddf;->b:Lddk;

    .line 16
    check-cast p1, Lcke;

    iget v3, p1, Lcke;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p1, Lcke;->a:I

    iput v2, p1, Lcke;->e:I

    .line 17
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Lcke;

    .line 18
    sget-object v1, Lckx;->f:Lckx;

    .line 19
    invoke-virtual {v1}, Lddk;->n()Lddf;

    move-result-object v1

    iget-boolean v2, v1, Lddf;->c:Z

    if-eqz v2, :cond_8

    .line 20
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_8
    iget-object v2, v1, Lddf;->b:Lddk;

    .line 21
    check-cast v2, Lckx;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v2, Lckx;->c:Lcke;

    iget v3, v2, Lckx;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lckx;->a:I

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v2, Lckx;->d:Lcke;

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lckx;->a:I

    .line 24
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Lckx;

    iget-object v0, v0, Lbbl;->p:Lcqk;

    .line 25
    sget-object v2, Lckb;->b:Lckb;

    invoke-virtual {v0, v2}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/protocol/VideoSink;

    iget-object v2, v0, Lcom/google/android/projection/protocol/VideoSink;->b:Lckx;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lckx;->c:Lcke;

    if-nez v2, :cond_9

    sget-object v2, Lcke;->f:Lcke;

    .line 26
    :cond_9
    invoke-virtual {p1, v2}, Lddk;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 27
    :cond_a
    invoke-virtual {v1}, Ldbv;->h()[B

    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/VideoSink;->nativeUpdateUiConfig([B)V

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 2

    .line 1
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object v0

    new-instance v1, Lbfb;

    invoke-direct {v1, p0, v0}, Lbfb;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;Ldas;)V

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final b(IIII)V
    .locals 7

    .line 1
    new-instance v6, Lbfa;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbfa;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;IIII)V

    invoke-virtual {p0, v6}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->w:Lbgz;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lbgz;->g(IIII)V

    return-void
.end method

.method public final c(Lcma;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->w:Lbgz;

    invoke-virtual {v0, p1}, Lbgz;->a(Lcma;)V

    return-void
.end method

.method public final d([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->w:Lbgz;

    invoke-virtual {v0, p1}, Lbgz;->b([B)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    new-instance p1, Lbez;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lbez;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;I)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "com/google/android/apps/auto/aareceiver/ui/ClusterActivity"

    const-string v1, "onInitFailed"

    const/16 v2, 0x5c

    const-string v3, "ClusterActivity.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Service failed to initialize"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    new-instance p1, Lbez;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lbez;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final l()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->y:Landroid/view/SurfaceView;

    return-object v0
.end method

.method protected final m()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->x:Landroid/view/View;

    return-object v0
.end method

.method protected final n()Lbhd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Lckb;
    .locals 1

    .line 1
    sget-object v0, Lckb;->b:Lckb;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lbfi;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0c004c

    invoke-virtual {p0, p1}, Ltk;->setContentView(I)V

    .line 3
    const p1, 0x7f0900e0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->x:Landroid/view/View;

    .line 4
    const p1, 0x7f0900e2

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->y:Landroid/view/SurfaceView;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->p(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Lbfi;->v()V

    .line 7
    invoke-virtual {p0}, Lbfi;->w()V

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->v:Lazy;

    .line 8
    sget-object v0, Lckb;->b:Lckb;

    invoke-virtual {p1, v0, p0}, Lazy;->c(Lckb;Lbaw;)V

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lbfi;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->p(Landroid/content/Intent;)V

    return-void
.end method

.method protected final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->v:Lazy;

    sget-object v1, Lckb;->b:Lckb;

    .line 2
    invoke-virtual {v0, v1, p0}, Lazy;->f(Lckb;Lbaw;)V

    return-void
.end method

.method protected final u()Lbey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
