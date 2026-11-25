.class public Lcom/google/android/apps/auto/aareceiver/vec/HotwordManager$2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzj;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbgi;


# direct methods
.method public constructor <init>(Lbgi;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/vec/HotwordManager$2;->b:Lbgi;

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/vec/HotwordManager$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/vec/HotwordManager$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/vec/HotwordManager$2;->b:Lbgi;

    iget-object v1, v1, Lbgi;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.projection.protocol.action.ACTION_HOTWORD_DOWNSTREAM"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/vec/HotwordManager$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/vec/HotwordManager$2;->b:Lbgi;

    iget-object v1, v1, Lbgi;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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
