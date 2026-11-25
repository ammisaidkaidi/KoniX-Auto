.class public final Lazf;
.super Lazj;
.source "PG"


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lazj;-><init>()V

    new-instance v0, Laze;

    .line 2
    invoke-direct {v0, p0}, Laze;-><init>(Lazf;)V

    iput-object v0, p0, Lazf;->a:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lazf;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcqw;
    .locals 1

    .line 1
    sget-object v0, Lckw;->j:Lckw;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lazf;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lazf;->c:Z

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    return-void

    .line 2
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lazf;->c:Z

    .line 3
    sget-object p1, Lckw;->j:Lckw;

    new-instance v2, Lazd;

    invoke-direct {v2, v0, v1}, Lazd;-><init>(ZI)V

    invoke-virtual {p0, p1, v2}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final c(Lcqw;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lazf;->b:Landroid/content/Context;

    iget-object v0, p0, Lazf;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lazf;->b(Z)V

    return-void
.end method

.method protected final d(Lcqw;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lazf;->b:Landroid/content/Context;

    iget-object v0, p0, Lazf;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
