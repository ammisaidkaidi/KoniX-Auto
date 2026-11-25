.class public final Layf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lbcj;

.field private b:I


# direct methods
.method private constructor <init>(Lbcj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layf;->a:Lbcj;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Layh;Landroid/car/CarProjectionManager;Lbcj;)Layf;
    .locals 4

    const-class v0, Layf;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Layf;

    invoke-direct {v1, p3}, Layf;-><init>(Lbcj;)V

    iget-object p3, p1, Layh;->b:Landroid/content/om/OverlayManager;

    if-eqz p3, :cond_1

    iget-object p1, p1, Layh;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Landroid/content/om/OverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/om/OverlayInfo;

    .line 3
    invoke-virtual {p3}, Landroid/content/om/OverlayInfo;->getTargetOverlayableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "AareceiverOverlayableResources"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    sget-object p1, Ldkg;->a:Ldkg;

    .line 7
    invoke-virtual {p1}, Ldkg;->b()Ldkh;

    move-result-object p1

    invoke-interface {p1}, Ldkh;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0a000c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    iput p0, v1, Layf;->b:I

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Landroid/car/projection/ProjectionOptions;

    .line 9
    invoke-static {p2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getProjectionOptions(Landroid/car/CarProjectionManager;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/car/projection/ProjectionOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/car/projection/ProjectionOptions;->getUiMode()I

    move-result p0

    iput p0, v1, Layf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, Layf;->a:Lbcj;

    invoke-interface {v0}, Lbcj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layf;->a:Lbcj;

    .line 2
    invoke-interface {v0}, Lbcj;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Layf;->a:Lbcj;

    .line 3
    invoke-interface {v0}, Lbcj;->a()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Layf;->b:I

    return v0
.end method
