.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$4;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->notifyAllPendingApStarted(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cbs:Ljava/util/List;

.field final synthetic val$cfg:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$4;->val$cbs:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$4;->val$cfg:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 948
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$4;->val$cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    .line 949
    if-eqz v1, :cond_0

    .line 951
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$4;->val$cfg:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onStarted(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    goto :goto_1

    .line 952
    :catchall_0
    move-exception v1

    .line 953
    const-string v2, "AAReceiverCompat"

    const-string v3, "callback.onStarted failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    :cond_0
    :goto_1
    goto :goto_0

    .line 957
    :cond_1
    return-void
.end method
