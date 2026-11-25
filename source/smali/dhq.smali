.class public final Ldhq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldhq;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 2
    const/4 v0, 0x1

    const-string v1, "Context cannot be null"

    invoke-static {v0, v1, p2}, Lbvs;->q(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ldhq;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldhq;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldhq;->a:Landroid/content/Context;

    return-void
.end method

.method private final e(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldhq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Ldhq;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    .line 2
    :cond_0
    const/4 p2, 0x1

    .line 1
    :goto_0
    nop

    .line 2
    invoke-virtual {v0, v1, p2, p1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private final f()Lcqw;
    .locals 4

    .line 1
    new-instance v0, Lcqu;

    invoke-direct {v0}, Lcqu;-><init>()V

    .line 2
    sget-object v1, Laxv;->a:Lcqw;

    invoke-virtual {v1}, Lcqw;->e()Lcst;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Ldhq;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v3, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Lcqu;->h(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcqu;->f()Lcqw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Ldhq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    const-string v3, "com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity.AvailableIcon"

    invoke-direct {p0, v3, v2}, Ldhq;->e(Ljava/lang/String;Z)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 2
    :cond_1
    nop

    .line 1
    :goto_1
    nop

    .line 2
    const-string p1, "com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity.UnavailableIcon"

    invoke-direct {p0, p1, v0}, Ldhq;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()Lcqw;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Laxv;->a:Lcqw;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-direct {p0}, Ldhq;->f()Lcqw;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {v0}, Lcqw;->m(Ljava/util/Collection;)Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Ldhq;->f()Lcqw;

    move-result-object v0

    sget-object v1, Laxv;->a:Lcqw;

    invoke-virtual {v0, v1}, Lcqw;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
