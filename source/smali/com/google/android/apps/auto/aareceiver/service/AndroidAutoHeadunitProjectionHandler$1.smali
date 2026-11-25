.class public Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzj;


# instance fields
.field final synthetic a:Lbbl;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lazy;


# direct methods
.method public constructor <init>(Lazy;Lbbl;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->a:Lbbl;

    iput-boolean p3, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->b:Z

    iput-object p4, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iget-object v0, v0, Lazy;->i:Lbah;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->a:Lbbl;

    iget-object v2, v1, Lbbl;->h:Lawo;

    invoke-virtual {v0, v2}, Lbah;->g(Lawo;)Lbaf;

    move-result-object v2

    invoke-virtual {v2}, Lbaf;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lbah;->c:Landroid/app/NotificationManager;

    iget v2, v2, Lbaf;->d:I

    .line 2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v2, Lbah;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->c()Lctq;

    move-result-object v2

    const/16 v3, 0xd2

    .line 3
    const-string v4, "com/google/android/apps/auto/aareceiver/service/DeviceTracker"

    const-string v5, "onProjectionStarted"

    const-string v6, "DeviceTracker.java"

    invoke-interface {v2, v4, v5, v3, v6}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    iget-object v3, v1, Lbbl;->h:Lawo;

    const-string v4, "Failed to find notification for %s"

    invoke-interface {v2, v4, v3}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    :goto_0
    iget-object v2, v0, Lbah;->d:Lbby;

    iget-object v3, v1, Lbbl;->h:Lawo;

    .line 4
    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lbby;->g(Lawo;Lcly;)Lawo;

    iget-object v2, v0, Lbah;->g:Ljava/util/List;

    .line 5
    invoke-static {v2}, Lcqh;->n(Ljava/util/Collection;)Lcqh;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 5
    check-cast v6, Lbag;

    .line 7
    invoke-interface {v6, v1}, Lbag;->h(Lbbl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Ldkd;->c()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lbah;->i:Lawo;

    if-eqz v2, :cond_2

    .line 1
    invoke-virtual {v0, v2}, Lbah;->p(Lawo;)V

    iput-object v4, v0, Lbah;->i:Lawo;

    :cond_2
    iput-object v1, v0, Lbah;->h:Lbbl;

    iget-object v1, v1, Lbbl;->g:Lawp;

    .line 9
    sget-object v2, Lawp;->b:Lawp;

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lbah;->e:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->a(Landroid/content/Context;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iget-object v1, v0, Lazy;->i:Lbah;

    iget-object v0, v0, Lazy;->d:Lawo;

    .line 11
    invoke-virtual {v1, v0}, Lbah;->m(Lawo;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iget-boolean v0, v0, Lazy;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->a:Lbbl;

    .line 12
    invoke-virtual {v0}, Lbbl;->f()Ldag;

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iget-object v0, v0, Lazy;->m:Lj$/util/Optional;

    .line 13
    sget-object v1, Lazu;->a:Lazu;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    sget-object v0, Lazy;->sSessionStarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final b()V
    .locals 10

    sget-object v0, Lazy;->sSessionStarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->a:Lbbl;

    iget v0, v0, Lbbl;->G:I

    sget-object v1, Lazy;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1"

    const-string v3, "onDestroy"

    const/16 v4, 0xb5

    const-string v5, "AndroidAutoHeadunitProjectionHandler.java"

    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    add-int/lit16 v4, v0, -0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 8
    :cond_0
    move-object v4, v2

    const/4 v0, 0x0

    .line 1
    :goto_0
    const-string v5, "Session error: %s"

    invoke-interface {v1, v5, v4}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0xe8

    const-wide/16 v4, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe9

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iget-object v1, v1, Lazy;->j:Landroid/content/Context;

    const-class v6, Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;

    .line 2
    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->c:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iget-object v0, v0, Lazy;->b:Lazw;

    iget-wide v6, v0, Lazw;->e:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lazw;->e:J

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iget-object v0, v0, Lazy;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaw;

    iget-object v7, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->a:Lbbl;

    iget-object v7, v7, Lbbl;->z:Lcly;

    .line 5
    sget-object v8, Lcly;->d:Lcly;

    if-ne v7, v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v1, v6}, Lbaw;->f(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iget-object v0, v0, Lazy;->i:Lbah;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->a:Lbbl;

    iget-object v7, v0, Lbah;->h:Lbbl;

    if-eq v7, v1, :cond_5

    sget-object v2, Lbah;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->c()Lctq;

    move-result-object v2

    const/16 v3, 0xee

    .line 17
    const-string v6, "com/google/android/apps/auto/aareceiver/service/DeviceTracker"

    const-string v7, "onProjectionFinished"

    const-string v8, "DeviceTracker.java"

    invoke-interface {v2, v6, v7, v3, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    iget-object v0, v0, Lbah;->h:Lbbl;

    const-string v3, "Ignore onProjectionFinished for %s, current projection session: %s"

    invoke-interface {v2, v3, v1, v0}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_5
    iget-object v7, v1, Lbbl;->h:Lawo;

    iput-object v7, v0, Lbah;->i:Lawo;

    iget-object v7, v0, Lbah;->d:Lbby;

    iget-object v8, v0, Lbah;->i:Lawo;

    iget-object v9, v1, Lbbl;->z:Lcly;

    .line 6
    invoke-interface {v7, v8, v9}, Lbby;->g(Lawo;Lcly;)Lawo;

    iget-object v7, v1, Lbbl;->g:Lawp;

    iput-object v7, v0, Lbah;->j:Lawp;

    iput-object v2, v0, Lbah;->h:Lbbl;

    iget-object v2, v1, Lbbl;->g:Lawp;

    .line 7
    sget-object v7, Lawp;->b:Lawp;

    if-ne v2, v7, :cond_6

    iget-boolean v2, v1, Lbbl;->B:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lbbl;->h:Lawo;

    .line 8
    invoke-virtual {v0, v2}, Lbah;->g(Lawo;)Lbaf;

    move-result-object v2

    sget-object v7, Lawp;->b:Lawp;

    invoke-virtual {v0, v2, v7}, Lbah;->s(Lbaf;Lawp;)V

    :cond_6
    iget-boolean v2, v1, Lbbl;->B:Z

    if-nez v2, :cond_8

    iget-object v1, v1, Lbbl;->h:Lawo;

    invoke-virtual {v0, v1}, Lbah;->g(Lawo;)Lbaf;

    move-result-object v1

    invoke-virtual {v1}, Lbaf;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Lbah;->j(Lbaf;)V

    iput v6, v1, Lbaf;->f:I

    goto :goto_3

    :cond_7
    iput v3, v1, Lbaf;->f:I

    :goto_3
    invoke-virtual {v0}, Lbah;->t()V

    .line 9
    :cond_8
    invoke-static {}, Ldkd;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lbah;->j:Lawp;

    sget-object v2, Lawp;->a:Lawp;

    if-eq v1, v2, :cond_9

    goto :goto_4

    .line 8
    :cond_9
    invoke-virtual {v0}, Lbah;->i()Lcqh;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lbad;

    invoke-direct {v2, v0, v3}, Lbad;-><init>(Lbah;I)V

    .line 11
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->anyMatch(Lj$/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lbah;->i:Lawo;

    .line 8
    invoke-virtual {v0, v1}, Lbah;->p(Lawo;)V

    .line 12
    :cond_a
    :goto_4
    sget-object v1, Ldih;->a:Ldih;

    .line 13
    invoke-virtual {v1}, Ldih;->b()Ldii;

    move-result-object v1

    invoke-interface {v1}, Ldii;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lbah;->j:Lawp;

    sget-object v2, Lawp;->b:Lawp;

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lbah;->i:Lawo;

    .line 14
    invoke-interface {v1}, Lawo;->c()Lcly;

    move-result-object v1

    sget-object v2, Lcly;->e:Lcly;

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lbah;->i:Lawo;

    .line 8
    invoke-virtual {v0, v1}, Lbah;->g(Lawo;)Lbaf;

    move-result-object v1

    invoke-virtual {v1}, Lbaf;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, v0, Lbah;->e:Landroid/content/Context;

    iget-object v1, v1, Lbaf;->g:Lawo;

    sget-object v2, Lawp;->b:Lawp;

    .line 15
    sget-object v3, Lcla;->c:Lcla;

    .line 16
    invoke-static {v0, v1, v2, v3}, Lhh;->d(Landroid/content/Context;Lawo;Lawp;Lcla;)Landroid/content/Intent;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;->d:Lazy;

    iget-object v0, v0, Lazy;->b:Lazw;

    iget-wide v1, v0, Lazw;->f:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Lazw;->f:J

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method
