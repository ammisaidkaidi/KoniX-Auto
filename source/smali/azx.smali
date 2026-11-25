.class final Lazx;
.super Lbzv;
.source "PG"


# instance fields
.field private final a:Lckb;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lckb;Lazy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbzv;-><init>()V

    iput-object p1, p0, Lazx;->a:Lckb;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lazx;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lazx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iget-object v1, p0, Lazx;->a:Lckb;

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lazy;->b(Lckb;)Lj$/util/Optional;

    move-result-object v0

    .line 4
    new-instance v1, Lazt;

    invoke-direct {v1, p1}, Lazt;-><init>([B)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final aV(IILckz;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lazx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iget-object v1, p0, Lazx;->a:Lckb;

    .line 2
    invoke-virtual {v1}, Lckb;->name()Ljava/lang/String;

    iget v2, p3, Lckz;->d:I

    iget v2, p3, Lckz;->e:I

    .line 3
    invoke-virtual {v0, v1}, Lazy;->b(Lckb;)Lj$/util/Optional;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lhi;->g(Lj$/util/Optional;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lazy;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 p2, 0x126

    .line 5
    const-string p3, "com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler"

    const-string v0, "onSourceVideoConfigChanged"

    const-string v1, "AndroidAutoHeadunitProjectionHandler.java"

    invoke-interface {p1, p3, v0, p2, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Unable to notify activity of imminent video codec config"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lazy;->b(Lckb;)Lj$/util/Optional;

    move-result-object v0

    .line 6
    new-instance v1, Lazp;

    invoke-direct {v1, p1, p2, p3}, Lazp;-><init>(IILckz;)V

    .line 7
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcma;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lazx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iget-object v1, p0, Lazx;->a:Lckb;

    .line 2
    invoke-virtual {v0, v1}, Lazy;->b(Lckb;)Lj$/util/Optional;

    move-result-object v0

    .line 3
    new-instance v1, Lazs;

    invoke-direct {v1, p1}, Lazs;-><init>(Lcma;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lazx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iget-object v1, p0, Lazx;->a:Lckb;

    .line 2
    invoke-virtual {v1}, Lckb;->name()Ljava/lang/String;

    sget-object v2, Lckb;->b:Lckb;

    .line 3
    invoke-virtual {v2, v1}, Lckb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lazy;->i:Lbah;

    iget-object v2, v2, Lbah;->h:Lbbl;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lbbl;->s:Z

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Lazy;->b(Lckb;)Lj$/util/Optional;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lhi;->g(Lj$/util/Optional;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lazy;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v2, 0x145

    .line 6
    const-string v3, "com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler"

    const-string v4, "onCodecSetup"

    const-string v5, "AndroidAutoHeadunitProjectionHandler.java"

    invoke-interface {v0, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    invoke-virtual {v1}, Lckb;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s: Unable to give MD video focus"

    invoke-interface {v0, v2, v1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Lazy;->b(Lckb;)Lj$/util/Optional;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbaw;

    invoke-interface {v2}, Lbaw;->a()Ldag;

    move-result-object v2

    new-instance v3, Lazo;

    invoke-direct {v3, v0, v1}, Lazo;-><init>(Lazy;Lckb;)V

    .line 8
    sget-object v0, Lczj;->a:Lczj;

    .line 9
    invoke-interface {v2, v3, v0}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lazx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iget-object v1, p0, Lazx;->a:Lckb;

    .line 2
    invoke-virtual {v1}, Lckb;->name()Ljava/lang/String;

    sget-object v2, Lckb;->a:Lckb;

    if-ne v1, v2, :cond_0

    new-instance v1, Lazn;

    invoke-direct {v1, v0, p1}, Lazn;-><init>(Lazy;I)V

    iget-object p1, v0, Lazy;->c:Landroid/os/Handler;

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lazx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iget-object v1, p0, Lazx;->a:Lckb;

    .line 2
    invoke-static {}, Ldka;->c()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lazy;->l:Lazi;

    iget v2, v2, Lazi;->f:I

    if-eq v2, v3, :cond_2

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lazy;->b(Lckb;)Lj$/util/Optional;

    move-result-object v2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 4
    new-instance p1, Lazq;

    invoke-direct {p1, v0, v1}, Lazq;-><init>(Lazy;Lckb;)V

    invoke-virtual {v2, p1}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    return-void

    :cond_1
    const/4 v4, 0x3

    if-eq p1, v3, :cond_3

    if-ne p1, v4, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    .line 5
    :cond_2
    return-void

    :cond_3
    nop

    :goto_0
    new-instance v3, Lazr;

    invoke-direct {v3, v0, v1, p1}, Lazr;-><init>(Lazy;Lckb;I)V

    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    return-void
.end method
