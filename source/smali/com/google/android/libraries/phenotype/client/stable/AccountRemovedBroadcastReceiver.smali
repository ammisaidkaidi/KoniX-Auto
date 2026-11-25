.class public final Lcom/google/android/libraries/phenotype/client/stable/AccountRemovedBroadcastReceiver;
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
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v0, "accountType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    const-string v1, "com.google.work"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    const-string v1, "cn.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    const-string v1, "__logged_out_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "authAccount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/libraries/phenotype/client/stable/AccountRemovedBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 9
    invoke-static {p1}, Lcdz;->a(Landroid/content/Context;)Lcdz;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x2

    new-array v3, v2, [Ldag;

    .line 10
    invoke-static {v1}, Lcfr;->a(Lcdz;)Lcjp;

    move-result-object v4

    new-instance v5, Lcfp;

    invoke-direct {v5, p2, v2}, Lcfp;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1}, Lcdz;->d()Ldai;

    move-result-object v6

    .line 12
    invoke-virtual {v4, v5, v6}, Lcjp;->b(Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v4

    aput-object v4, v3, v2

    .line 13
    invoke-virtual {v1}, Lcdz;->d()Ldai;

    move-result-object v1

    new-instance v2, Lcfc;

    invoke-direct {v2, p1, p2}, Lcfc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-interface {v1, v2}, Ldai;->a(Ljava/lang/Runnable;)Ldag;

    move-result-object p2

    aput-object p2, v3, p1

    .line 14
    invoke-static {v3}, Lhh;->f([Ldag;)Lczz;

    move-result-object p1

    new-instance p2, Lcfd;

    invoke-direct {p2, v0}, Lcfd;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 15
    sget-object v0, Lczj;->a:Lczj;

    .line 16
    invoke-virtual {p1, p2, v0}, Lczz;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method
