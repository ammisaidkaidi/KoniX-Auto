.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;

.field final synthetic val$lohsDone:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->val$lohsDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1$1;-><init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;)V

    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;

    iget-object v2, v2, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    goto :goto_0

    .line 1177
    :catchall_0
    move-exception v0

    .line 1178
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->val$lohsDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1179
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1800(Landroid/net/wifi/WifiManager;)V

    .line 1180
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1900(I)V

    .line 1182
    :goto_0
    return-void
.end method
