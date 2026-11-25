.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->startAutoLaunchWaitLoop(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appCtx:Landroid/content/Context;

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$ticks:[I


# direct methods
.method constructor <init>([ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1387
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;->val$ticks:[I

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;->val$appCtx:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1390
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;->val$ticks:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1391
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2200()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1395
    :cond_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2200()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2600()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 1396
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1397
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;->val$appCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2800(Landroid/content/Context;)V

    .line 1398
    return-void

    .line 1400
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;->val$ticks:[I

    aget v0, v0, v1

    const/16 v2, 0x37

    if-lt v0, v2, :cond_2

    .line 1401
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1402
    return-void

    .line 1404
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$12;->val$h:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1405
    return-void

    .line 1392
    :cond_3
    :goto_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1393
    return-void
.end method
