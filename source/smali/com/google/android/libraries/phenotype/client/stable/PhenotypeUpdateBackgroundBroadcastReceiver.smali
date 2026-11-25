.class public final Lcom/google/android/libraries/phenotype/client/stable/PhenotypeUpdateBackgroundBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "com.google.android.gms.phenotype.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2
    invoke-static {p1}, Lcdz;->a(Landroid/content/Context;)Lcdz;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcgv;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcfn;

    if-eqz p1, :cond_3

    iget v1, p1, Lcfn;->f:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    return-void

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/phenotype/client/stable/PhenotypeUpdateBackgroundBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_4

    .line 7
    invoke-static {v0}, Lcfr;->a(Lcdz;)Lcjp;

    move-result-object p1

    new-instance v3, Lcfp;

    const/4 v4, 0x3

    invoke-direct {v3, p2, v4}, Lcfp;-><init>(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object v4

    .line 9
    invoke-virtual {p1, v3, v4}, Lcjp;->b(Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    .line 10
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object v3

    new-instance v4, Lcgc;

    invoke-direct {v4, v0, p2, v2}, Lcgc;-><init>(Lcdz;Ljava/lang/String;I)V

    .line 11
    invoke-interface {v3, v4}, Ldai;->a(Ljava/lang/Runnable;)Ldag;

    move-result-object v2

    .line 12
    invoke-static {p1, v2}, Lcqh;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcqh;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lhh;->e(Ljava/lang/Iterable;)Lczz;

    move-result-object p1

    sget-object v2, Lcge;->a:Lcge;

    .line 14
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lczz;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {v0}, Lcfr;->a(Lcdz;)Lcjp;

    move-result-object v3

    invoke-virtual {v3}, Lcjp;->a()Ldag;

    move-result-object v3

    invoke-static {v3}, Ldab;->q(Ldag;)Ldab;

    move-result-object v3

    new-instance v4, Lcfp;

    const/4 v5, 0x1

    invoke-direct {v4, p2, v5}, Lcfp;-><init>(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object v5

    .line 17
    invoke-static {v3, v4, v5}, Lcyt;->o(Ldag;Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v3

    .line 18
    invoke-static {v3}, Ldab;->q(Ldag;)Ldab;

    move-result-object v3

    new-instance v4, Lcfz;

    invoke-direct {v4, p1, p2, v0, v2}, Lcfz;-><init>(Lcfn;Ljava/lang/String;Lcdz;I)V

    .line 19
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object p1

    .line 20
    invoke-static {v3, v4, p1}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    .line 14
    :goto_1
    new-instance v2, Lcgd;

    invoke-direct {v2, p1, p2, v1}, Lcgd;-><init>(Ldag;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 21
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object p2

    .line 22
    invoke-interface {p1, v2, p2}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 20
    :cond_5
    return-void
.end method
