.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$5;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->notifyAllPendingApFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cbs:Ljava/util/List;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$5;->val$cbs:Ljava/util/List;

    iput p2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$5;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 971
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$5;->val$cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    .line 972
    if-eqz v1, :cond_0

    .line 974
    :try_start_0
    iget v2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$5;->val$reason:I

    invoke-virtual {v1, v2}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onFailed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    goto :goto_1

    .line 975
    :catchall_0
    move-exception v1

    .line 976
    const-string v2, "AAReceiverCompat"

    const-string v3, "callback.onFailed error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    :cond_0
    :goto_1
    goto :goto_0

    .line 980
    :cond_1
    return-void
.end method
