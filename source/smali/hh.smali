.class public final Lhh;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method static b(Landroid/view/View;)Landroid/view/Display;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lez;->l(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;Lawo;Lawp;Lcla;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.embedded.projection.PROJECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    .line 2
    const-string v2, "com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    const-string v1, "com.google.android.embedded.projection.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    const-string p1, "com.google.android.embedded.projection.START_REQUEST_REASON"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    sget-object p1, Lawp;->a:Lawp;

    invoke-virtual {p1, p2}, Lawp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 7
    const-string p2, "com.google.android.embedded.projection.USE_USB"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static e(Ljava/lang/Iterable;)Lczz;
    .locals 2

    .line 1
    new-instance v0, Lczz;

    invoke-static {p0}, Lcqh;->m(Ljava/lang/Iterable;)Lcqh;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lczz;-><init>(ZLcqh;)V

    return-object v0
.end method

.method public static varargs f([Ldag;)Lczz;
    .locals 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lczz;

    invoke-static {p0}, Lcqh;->o([Ljava/lang/Object;)Lcqh;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lczz;-><init>(ZLcqh;)V

    return-object v0
.end method

.method public static g(Ljava/lang/Iterable;)Lczz;
    .locals 2

    .line 1
    new-instance v0, Lczz;

    invoke-static {p0}, Lcqh;->m(Ljava/lang/Iterable;)Lcqh;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lczz;-><init>(ZLcqh;)V

    return-object v0
.end method

.method public static h()Ldag;
    .locals 1

    .line 1
    new-instance v0, Ldac;

    invoke-direct {v0}, Ldac;-><init>()V

    return-object v0
.end method

.method public static i(Ljava/lang/Throwable;)Ldag;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Ldac;

    invoke-direct {v0, p0}, Ldac;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static j(Ljava/lang/Object;)Ldag;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    sget-object p0, Ldad;->a:Ldag;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ldad;

    invoke-direct {v0, p0}, Ldad;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static k(Ldag;)Ldag;
    .locals 2

    .line 1
    invoke-interface {p0}, Ldag;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ldaa;

    invoke-direct {v0, p0}, Ldaa;-><init>(Ldag;)V

    .line 3
    sget-object v1, Lczj;->a:Lczj;

    .line 4
    invoke-interface {p0, v0, v1}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ldag;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldax;->o(Ljava/lang/Runnable;Ljava/lang/Object;)Ldax;

    move-result-object p0

    .line 2
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static m(Lczb;Ljava/util/concurrent/Executor;)Ldag;
    .locals 0

    .line 1
    invoke-static {p0}, Ldax;->e(Lczb;)Ldax;

    move-result-object p0

    .line 2
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static n(Ljava/lang/Iterable;)Ldag;
    .locals 1

    .line 1
    new-instance v0, Lcze;

    invoke-static {p0}, Lcqh;->m(Ljava/lang/Iterable;)Lcqh;

    move-result-object p0

    invoke-direct {v0, p0}, Lcze;-><init>(Lcqa;)V

    return-object v0
.end method

.method public static o(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lex;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lhi;->j(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lczx;

    invoke-direct {v0, p0, p1}, Lczx;-><init>(Ljava/util/concurrent/Future;Lczv;)V

    .line 2
    invoke-interface {p0, v0, p2}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static q(Ldag;Ljava/util/concurrent/Future;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcyp;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcyp;

    invoke-virtual {p0, p1}, Lcyp;->j(Ljava/util/concurrent/Future;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ldag;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 4
    invoke-interface {p1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public static r()Ljava/util/concurrent/Callable;
    .locals 2

    new-instance v0, Lcge;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcge;-><init>(I)V

    return-object v0
.end method

.method public static s(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static t(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p1, p0

    return p1
.end method

.method public static u(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const p1, 0x3fffffff    # 1.9999999f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
