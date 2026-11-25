.class public final synthetic Lcca;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lccd;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcch;

.field public final synthetic d:Ldgz;

.field public final synthetic e:Ldny;

.field public final synthetic f:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lccd;Landroid/content/Context;Lcch;Ldgz;Ldny;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcca;->a:Lccd;

    iput-object p2, p0, Lcca;->b:Landroid/content/Context;

    iput-object p3, p0, Lcca;->c:Lcch;

    iput-object p4, p0, Lcca;->d:Ldgz;

    iput-object p5, p0, Lcca;->e:Ldny;

    iput-object p6, p0, Lcca;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcca;->a:Lccd;

    iget-object v6, p0, Lcca;->b:Landroid/content/Context;

    iget-object v2, p0, Lcca;->c:Lcch;

    iget-object v3, p0, Lcca;->d:Ldgz;

    iget-object v4, p0, Lcca;->e:Ldny;

    iget-object v5, p0, Lcca;->f:Ljava/util/concurrent/Executor;

    new-instance v7, Lccc;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lccc;-><init>(Lccd;Lcch;Ldgz;Ldny;Ljava/util/concurrent/Executor;)V

    invoke-static {v6}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v2, Lbti;

    .line 5
    invoke-direct {v2, v1, v7}, Lbti;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v6, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    invoke-static {v6}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v6, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 10
    :cond_1
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-void
.end method
