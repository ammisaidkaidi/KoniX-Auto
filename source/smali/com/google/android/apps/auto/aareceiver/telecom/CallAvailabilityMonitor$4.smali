.class public Lcom/google/android/apps/auto/aareceiver/telecom/CallAvailabilityMonitor$4;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzj;


# instance fields
.field final synthetic a:Lbcu;


# direct methods
.method public constructor <init>(Lbcu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/telecom/CallAvailabilityMonitor$4;->a:Lbcu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/telecom/CallAvailabilityMonitor$4;->a:Lbcu;

    iget-boolean v1, v0, Lbcu;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbcu;->b:Landroid/content/Context;

    iget-object v2, v0, Lbcu;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbcu;->d:Z

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lbcu;->b()V

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
