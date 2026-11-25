.class public final Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;
.super Lbfm;
.source "PG"

# interfaces
.implements Lbaw;


# static fields
.field public static final a:Lcsz;


# instance fields
.field private A:Lbgg;

.field private B:Ltt;

.field private final C:Landroid/view/View$OnTouchListener;

.field public b:Landroid/view/View;

.field public c:Z

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field e:Landroid/car/projection/ProjectionOptions;

.field public l:Landroid/car/CarProjectionManager;

.field public m:Lbah;

.field public n:Lawh;

.field public o:Lawy;

.field public p:Lbcj;

.field public q:Lj$/util/Optional;

.field public r:Lbde;

.field public s:Layf;

.field public t:Lbed;

.field public u:Ldhq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->a:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbfm;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->c:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lbeq;

    invoke-direct {v0, p0}, Lbeq;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->C:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private final A()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    sget-object v1, Lbdf;->f:Lbdf;

    invoke-virtual {v0, v1}, Lbde;->a(Lbdf;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    sget-object v1, Lbdf;->g:Lbdf;

    .line 2
    invoke-virtual {v0, v1}, Lbde;->a(Lbdf;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    sget-object v1, Lbdf;->h:Lbdf;

    .line 3
    invoke-virtual {v0, v1}, Lbde;->a(Lbdf;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Ltk;->setContentView(I)V

    invoke-static {p0}, Lcom/achour/tweaks/Splash;->show(Landroid/app/Activity;)V

    :try_start_0
    const v0, 0x7f090119

    invoke-static {p0, v0}, Lcom/achour/tweaks/Gal;->rotateViewById(Landroid/app/Activity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 6
    :goto_0
    const v0, 0x7f090117

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->b:Landroid/view/View;

    .line 7
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->x:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->C:Landroid/view/View$OnTouchListener;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    const v0, 0x7f0901b1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->y:Landroid/view/SurfaceView;

    .line 10
    invoke-virtual {p0}, Lbfi;->v()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->s:Layf;

    .line 11
    invoke-virtual {v0}, Layf;->a()I

    move-result v0

    invoke-static {v0}, Lhj;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->b:Landroid/view/View;

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->b:Landroid/view/View;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->y:Landroid/view/SurfaceView;

    .line 17
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lber;

    invoke-direct {v1, p0}, Lber;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 19
    invoke-static {}, Ldjo;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090073

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lbei;

    invoke-direct {v1, p0}, Lbei;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->s:Layf;

    .line 23
    invoke-virtual {v0}, Layf;->a()I

    move-result v0

    invoke-static {v0}, Lhj;->e(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lhj;->f(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lbgg;

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->b:Landroid/view/View;

    invoke-static {v0}, Lhj;->e(I)Z

    move-result v0

    .line 24
    invoke-direct {v1, v2, v0}, Lbgg;-><init>(Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->A:Lbgg;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->n:Lawh;

    new-instance v1, Lbew;

    .line 25
    invoke-direct {v1, p0}, Lbew;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lawh;->n:Lbew;

    .line 26
    invoke-virtual {p0}, Lbfi;->w()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    .line 27
    sget-object v1, Lckb;->a:Lckb;

    invoke-virtual {v0, v1, p0}, Lazy;->c(Lckb;Lbaw;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r()V

    .line 29
    invoke-static {}, Ldjr;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Luc;

    invoke-direct {v0}, Luc;-><init>()V

    new-instance v1, Lbej;

    invoke-direct {v1, p0}, Lbej;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V

    iget-object v2, p0, Ltk;->j:Lty;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity_rq#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltk;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltk;->k:Lzn;

    iget-object v5, v4, Lzn;->a:Lzm;

    .line 32
    sget-object v6, Lzm;->d:Lzm;

    invoke-virtual {v5, v6}, Lzm;->a(Lzm;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 30
    invoke-virtual {v2, v3}, Lty;->c(Ljava/lang/String;)V

    iget-object v5, v2, Lty;->d:Ljava/util/Map;

    .line 35
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltx;

    if-nez v5, :cond_4

    new-instance v5, Ltx;

    .line 36
    invoke-direct {v5, v4}, Ltx;-><init>(Lzn;)V

    goto :goto_1

    .line 40
    :cond_4
    nop

    .line 36
    :goto_1
    new-instance v4, Landroidx/activity/result/ActivityResultRegistry$1;

    invoke-direct {v4, v2, v3, v1, v0}, Landroidx/activity/result/ActivityResultRegistry$1;-><init>(Lty;Ljava/lang/String;Lts;Lub;)V

    iget-object v1, v5, Ltx;->a:Lzn;

    .line 37
    invoke-virtual {v1, v4}, Lzn;->b(Lzp;)V

    iget-object v1, v5, Ltx;->b:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lty;->d:Ljava/util/Map;

    .line 39
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ltu;

    invoke-direct {v1, v2, v3, v0}, Ltu;-><init>(Lty;Ljava/lang/String;Lub;)V

    iput-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->B:Ltt;

    goto :goto_2

    .line 32
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifecycleOwner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is attempting to register while current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lzn;->a:Lzm;

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". LifecycleOwners must call register before they are STARTED."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->B()V

    return-void
.end method

.method private final B()V
    .locals 6

    .line 1
    invoke-static {}, Ldjr;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->u:Ldhq;

    .line 5
    invoke-virtual {v0}, Ldhq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->u:Ldhq;

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->B:Ltt;

    .line 6
    invoke-virtual {v0}, Ldhq;->c()Lcqw;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Ltu;

    iget-object v3, v1, Ltu;->c:Lty;

    iget-object v3, v3, Lty;->c:Ljava/util/Map;

    iget-object v4, v1, Ltu;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 9
    iget-object v4, v1, Ltu;->c:Lty;

    iget-object v4, v4, Lty;->e:Ljava/util/ArrayList;

    iget-object v5, v1, Ltu;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    move-object v4, v2

    check-cast v4, Ltu;

    iget-object v4, v4, Ltu;->c:Lty;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v2, Ltu;

    iget-object v2, v2, Ltu;->b:Lub;

    invoke-virtual {v4, v3, v0}, Lty;->f(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    move-exception v0

    iget-object v2, v1, Ltu;->c:Lty;

    iget-object v2, v2, Lty;->e:Ljava/util/ArrayList;

    iget-object v1, v1, Ltu;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    throw v0

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ltu;->b:Lub;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and input "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->u:Ldhq;

    .line 2
    invoke-virtual {v0}, Ldhq;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->u:Ldhq;

    .line 3
    invoke-virtual {v0}, Ldhq;->c()Lcqw;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_3
    :goto_0
    return-void
.end method

.method private final E(Landroid/content/Intent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "com.google.android.embedded.projection.START_REQUEST_REASON"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcla;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcla;->a:Lcla;

    .line 3
    :goto_0
    nop

    .line 5
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    iget-object p1, p1, Lbah;->h:Lbbl;

    if-eqz p1, :cond_1

    return v4

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    iget-object p1, p1, Lbah;->f:Lbav;

    .line 6
    invoke-virtual {p1}, Lbav;->d()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaf;

    .line 7
    invoke-virtual {v0}, Lbaf;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object p1, v0, Lbaf;->g:Lawo;

    .line 9
    iget-boolean v0, v0, Lbaf;->c:Z

    if-eqz v0, :cond_3

    sget-object v0, Lawp;->b:Lawp;

    goto :goto_1

    :cond_3
    sget-object v0, Lawp;->a:Lawp;

    .line 8
    :goto_1
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_2

    .line 9
    :cond_4
    const/4 p1, 0x0

    .line 8
    :goto_2
    if-eqz p1, :cond_5

    .line 10
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lawo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lawp;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->t(Lawo;Lawp;Lcla;)V

    return v4

    :cond_5
    return v3

    .line 9
    :cond_6
    nop

    .line 11
    const-string v2, "com.google.android.embedded.projection.PROJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "AndroidAutoHeadunitActivity.java"

    const-string v6, "processIntent"

    const-string v7, "com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity"

    if-eqz v2, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    .line 12
    const-string v2, "com.google.android.embedded.projection.DEVICE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lawo;

    if-nez v2, :cond_8

    if-eqz v0, :cond_7

    iget-object v2, v0, Lbbl;->h:Lawo;

    goto :goto_3

    .line 19
    :cond_7
    sget-object p1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v0, 0x260

    .line 20
    invoke-interface {p1, v7, v6, v0, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Missing device for projection"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    return v3

    .line 12
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    .line 13
    invoke-virtual {v3, v2}, Lbah;->b(Lawo;)Lawo;

    move-result-object v2

    .line 14
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->z(Landroid/content/Intent;)Lawp;

    move-result-object p1

    if-eqz v0, :cond_b

    iget-object v3, v0, Lbbl;->z:Lcly;

    if-nez v3, :cond_a

    iget-object v3, v0, Lbbl;->h:Lawo;

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    return v4

    .line 16
    :cond_a
    :goto_4
    invoke-virtual {v0}, Lbbl;->f()Ldag;

    move-result-object v0

    new-instance v3, Lbem;

    invoke-direct {v3, p0, v2, p1, v1}, Lbem;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Lawo;Lawp;Lcla;)V

    .line 17
    sget-object p1, Lczj;->a:Lczj;

    .line 18
    invoke-interface {v0, v3, p1}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_5

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->c:Z

    if-eqz v0, :cond_c

    .line 19
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->t(Lawo;Lawp;Lcla;)V

    .line 18
    :cond_c
    :goto_5
    return v4

    .line 20
    :cond_d
    nop

    .line 21
    const-string p1, "com.google.android.embedded.projection.GAIN_FOCUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v4

    :cond_e
    sget-object p1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v1, 0x27f

    .line 22
    invoke-interface {p1, v7, v6, v1, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v1, "Unknown action %s. Finishing activity."

    invoke-interface {p1, v1, v0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method private final F(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    sget-object v1, Lbdf;->g:Lbdf;

    invoke-virtual {v0, v1, p1}, Lbde;->b(Lbdf;I)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    sget-object v1, Lbdf;->f:Lbdf;

    .line 2
    invoke-virtual {v0, v1, p1}, Lbde;->b(Lbdf;I)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    sget-object v1, Lbdf;->h:Lbdf;

    .line 3
    invoke-virtual {v0, v1, p1}, Lbde;->b(Lbdf;I)V

    return-void
.end method

.method private static z(Landroid/content/Intent;)Lawp;
    .locals 2

    .line 1
    const-string v0, "com.google.android.embedded.projection.USE_USB"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lawp;->a:Lawp;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lawp;->b:Lawp;

    .line 2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()Ldag;
    .locals 3

    .line 1
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1, p0, v0}, Lben;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Ldas;)V

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Ldkm;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lbeu;

    invoke-direct {v1, p0}, Lbeu;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V

    .line 5
    sget-object v2, Lczj;->a:Lczj;

    .line 6
    invoke-static {v0, v1, v2}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object v0
.end method

.method public final b(IIII)V
    .locals 7

    .line 1
    new-instance v6, Lbel;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbel;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;IIII)V

    invoke-virtual {p0, v6}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->w:Lbgz;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lbgz;->g(IIII)V

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->q:Lj$/util/Optional;

    .line 3
    sget-object p2, Lazu;->c:Lazu;

    invoke-virtual {p1, p2}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final c(Lcma;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    .line 2
    sget-object v1, Lbdf;->h:Lbdf;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lbde;->b(Lbdf;I)V

    .line 3
    invoke-static {}, Ldju;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lbtz;->a()Lbtz;

    move-result-object v0

    new-instance v1, Lbtx;

    const-string v2, "FirstVideoFrame"

    invoke-direct {v1, v2}, Lbtx;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lbtz;->a:Lbua;

    .line 5
    invoke-interface {v0, v1}, Lbua;->d(Lbtx;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->w:Lbgz;

    .line 6
    invoke-virtual {v0, p1}, Lbgz;->a(Lcma;)V

    return-void
.end method

.method public final d([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->w:Lbgz;

    invoke-virtual {v0, p1}, Lbgz;->b([B)V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 1
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->c:Z

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "layoutReady: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->z:Z

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x11

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "background: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->e:Landroid/car/projection/ProjectionOptions;

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x13

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "projectionOptions: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->w:Lbgz;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProjectionRenderer {"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lbgz;->k:Landroid/graphics/Point;

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0xb

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "videoSize: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lbgz;->l:Landroid/graphics/Point;

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x12

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "videoCroppedSize: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v2, v0, Lbgz;->m:D

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x24

    add-int/2addr v4, v6

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "videoScale: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v2, v0, Lbgz;->j:I

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lbgz;->o:Ldas;

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x11

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "videoFocusReady: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lbgz;->i:Lbgy;

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x13

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "videoFrameHandler: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x8

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "*** "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ***"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lazy;->e:Landroid/util/Size;

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenSize: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, v0, Lazy;->f:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lazy;->b:Lazw;

    iget-wide v1, v0, Lazw;->a:J

    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "videoFrameAcks: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v1, v0, Lazw;->b:J

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x21

    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "touchEvents: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v1, v0, Lazw;->c:J

    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "keyEvents: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lazw;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "videoFocusMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v1, v0, Lazw;->e:J

    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "sslErrors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v1, v0, Lazw;->f:J

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "sessionsDestroyed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v0, v0, Lazw;->g:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "sessionsCreated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lbfm;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->F(I)V

    new-instance v0, Lbeo;

    invoke-direct {v0, p0, p1}, Lbeo;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Z)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity"

    const-string v1, "onInitFailed"

    const/16 v2, 0x340

    const-string v3, "AndroidAutoHeadunitActivity.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "ProjectionHandler failed to initialize"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    .line 2
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->F(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->a(Landroid/content/Context;)V

    new-instance p1, Lbek;

    invoke-direct {p1, p0}, Lbek;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final l()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->y:Landroid/view/SurfaceView;

    return-object v0
.end method

.method protected final m()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->x:Landroid/view/View;

    return-object v0
.end method

.method protected final n()Lbhd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->q:Lj$/util/Optional;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhd;

    return-object v0
.end method

.method public final o()Lckb;
    .locals 1

    .line 1
    sget-object v0, Lckb;->a:Lckb;

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lbfm;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0x36b34a2

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->finish()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->A()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    sget-object v1, Lckb;->a:Lckb;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lazy;->e(Lckb;Landroid/view/KeyEvent;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    sget-object v1, Lckb;->a:Lckb;

    new-instance v2, Landroid/view/KeyEvent;

    .line 2
    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lazy;->e(Lckb;Landroid/view/KeyEvent;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lbfm;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->z(Landroid/content/Intent;)Lawp;

    .line 4
    const-string v0, "com.google.android.embedded.projection.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->l:Landroid/car/CarProjectionManager;

    .line 5
    invoke-static {v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getProjectionOptions(Landroid/car/CarProjectionManager;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->p:Lbcj;

    .line 6
    invoke-interface {v2}, Lbcj;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->p:Lbcj;

    .line 7
    invoke-interface {v2}, Lbcj;->a()I

    move-result v2

    const-string v3, "android.car.projection.systemUiFlags"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    :cond_0
    new-instance v2, Landroid/car/projection/ProjectionOptions;

    invoke-direct {v2, v1}, Landroid/car/projection/ProjectionOptions;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->e:Landroid/car/projection/ProjectionOptions;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->getFilesDir()Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->e:Landroid/car/projection/ProjectionOptions;

    .line 10
    invoke-virtual {v1}, Landroid/car/projection/ProjectionOptions;->getConsentActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lawo;

    new-instance v0, Landroid/content/Intent;

    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    invoke-interface {p1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "com.google.android.embedded.projection.consent.device.bt"

    .line 16
    invoke-interface {p1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    :cond_1
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "com.google.android.embedded.projection.consent.device.usb"

    .line 18
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const p1, 0x36b34a2

    const/high16 v2, 0x4000000

    .line 19
    invoke-static {p0, p1, v0, v2}, Lchb;->a(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const v4, 0x36b34a2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 21
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 25
    :catch_0
    move-exception p1

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const/16 v0, 0x110

    const-string v2, "com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity"

    const-string v3, "onCreate"

    const-string v4, "AndroidAutoHeadunitActivity.java"

    invoke-interface {p1, v2, v3, v0, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    .line 23
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "Unable to start consent activity: %s"

    invoke-interface {p1, v1, v0}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->finish()V

    return-void

    .line 25
    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->A()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbfm;->onDestroy()V

    .line 2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->F(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    sget-object v0, Lckb;->a:Lckb;

    invoke-virtual {p1, v0, p2}, Lazy;->e(Lckb;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    sget-object v0, Lckb;->a:Lckb;

    invoke-virtual {p1, v0, p2}, Lazy;->e(Lckb;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lbfm;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->E(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->setIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    iget-object p1, p1, Lbah;->h:Lbbl;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5
    const-string v1, "android.car.intent.extra.MEDIA_COMPONENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lckb;->a:Lckb;

    new-instance v1, Landroid/view/KeyEvent;

    const v3, 0x10001

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lbbl;->c(Lckb;Landroid/view/KeyEvent;)V

    sget-object v0, Lckb;->a:Lckb;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    .line 7
    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lbbl;->c(Lckb;Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method protected final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lbfm;->onPause()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->A:Lbgg;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lbgg;->a:Landroid/os/Handler;

    iget-object v2, v0, Lbgg;->c:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lbgg;->b:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lbfm;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {}, Ldjr;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->p()V

    return-void
.end method

.method protected final onResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->A:Lbgg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbgg;->a()V

    iget-object v1, v0, Lbgg;->b:Landroid/view/View;

    .line 2
    new-instance v2, Lbge;

    invoke-direct {v2, v0}, Lbge;-><init>(Lbgg;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lbfm;->onResume()V

    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->u:Ldhq;

    invoke-virtual {v0}, Ldhq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r()V

    return-void

    .line 3
    :cond_0
    sget-object v0, Ldjr;->a:Ldjr;

    .line 4
    invoke-virtual {v0}, Ldjr;->b()Ldjs;

    move-result-object v0

    invoke-interface {v0}, Ldjs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;

    .line 6
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public final q(Lawp;Lawo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->u:Ldhq;

    invoke-virtual {v0}, Ldhq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 p2, 0x2c9

    .line 2
    const-string v0, "com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity"

    const-string v1, "initProjectionHandler"

    const-string v2, "AndroidAutoHeadunitActivity.java"

    invoke-interface {p1, v0, v1, p2, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Missing permissions, not calling projection handler init"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->B()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->b:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    .line 5
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lazy;->d(Landroid/content/Context;Lawp;Lawo;IIZ)V

    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->u:Ldhq;

    invoke-virtual {v0}, Ldhq;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->E(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->finish()V

    :cond_2
    return-void
.end method

.method protected final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    sget-object v1, Lckb;->a:Lckb;

    .line 2
    invoke-virtual {v0, v1, p0}, Lazy;->f(Lckb;Lbaw;)V

    return-void
.end method

.method public final t(Lawo;Lawp;Lcla;)V
    .locals 8

    .line 1
    sget-object v0, Lawp;->a:Lawp;

    invoke-virtual {p2}, Lawp;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 22
    return-void

    .line 15
    :pswitch_0
    invoke-interface {p1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 p2, 0x29b

    .line 16
    const-string p3, "com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity"

    const-string v0, "startWirelessMode"

    const-string v1, "AndroidAutoHeadunitActivity.java"

    invoke-interface {p1, p3, v0, p2, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Missing wireless BT device"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->finish()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    .line 18
    invoke-virtual {p2, p1}, Lbah;->u(Lawo;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    new-instance p3, Lbes;

    invoke-direct {p3, p0, p1}, Lbes;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Ldas;)V

    .line 20
    invoke-virtual {p2, p3}, Lbah;->n(Lbag;)V

    .line 21
    invoke-static {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->b(Landroid/content/Context;Ldag;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->n:Lawh;

    new-instance v0, Lbet;

    invoke-direct {v0, p0, p1}, Lbet;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Lawo;)V

    const/4 v1, 0x1

    .line 22
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->onWirelessStartRequested()V

    invoke-virtual {p2, p1, v1, p3, v0}, Lawh;->k(Lawo;ILcla;Lbdr;)V

    return-void

    .line 1
    :pswitch_1
    iget-object p2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->t:Lbed;

    iget-object p3, p2, Lbed;->b:Landroid/content/Context;

    .line 2
    invoke-static {p3, p1}, Lbeh;->a(Landroid/content/Context;Lawo;)Landroid/hardware/usb/UsbDevice;

    move-result-object p3

    const-string v0, "UsbHostPermissionChecker.java"

    const-string v1, "checkHostPermission"

    const-string v2, "com/google/android/apps/auto/aareceiver/transport/usb/UsbHostPermissionChecker"

    if-nez p3, :cond_2

    sget-object p2, Lbed;->a:Lcsz;

    invoke-virtual {p2}, Lcsv;->b()Lctq;

    move-result-object p2

    const/16 p3, 0x26

    .line 3
    invoke-interface {p2, v2, v1, p3, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string p3, "Missing USB device"

    invoke-interface {p2, p3}, Lcsx;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v3, p2, Lbed;->b:Landroid/content/Context;

    .line 4
    const-string v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 5
    invoke-virtual {v3, p3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object p2, Lawp;->a:Lawp;

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->q(Lawp;Lawo;)V

    return-void

    :cond_3
    new-instance v4, Landroid/content/Intent;

    .line 7
    const-string v5, "com.google.android.embedded.projection.transport.usb.ACTION_USB_DEVICE_PERMISSION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p2, Lbed;->b:Landroid/content/Context;

    const-class v7, Landroid/content/BroadcastReceiver;

    .line 8
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p2, p2, Lbed;->b:Landroid/content/Context;

    const/4 v5, 0x0

    .line 9
    const/high16 v6, 0x44000000    # 512.0f

    invoke-static {v4, v6}, Lchb;->b(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v4

    .line 10
    invoke-static {p2, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p3, p2}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    sget-object p2, Lbed;->a:Lcsz;

    invoke-virtual {p2}, Lcsv;->b()Lctq;

    move-result-object p2

    const/16 v3, 0x2a

    .line 12
    invoke-interface {p2, v2, v1, v3, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v0, "Permissions not granted to %s"

    invoke-interface {p2, v0, p3}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    .line 13
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbah;->l(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final u()Lbey;
    .locals 1

    new-instance v0, Lbey;

    invoke-direct {v0, p0}, Lbey;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V

    return-object v0
.end method
