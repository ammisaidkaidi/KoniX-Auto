.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$11;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->scheduleAutoLaunchProjectionIfReady(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appCtx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1369
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$11;->val$appCtx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1372
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1373
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2200()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2600()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1374
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2700()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    const-string v0, "AAReceiverCompat"

    const-string v1, "Auto-launching Android Auto for READY_TO_PROJECT device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$11;->val$appCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$2800(Landroid/content/Context;)V

    .line 1378
    :cond_0
    return-void
.end method
