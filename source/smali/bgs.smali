.class public final synthetic Lbgs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbgt;


# direct methods
.method public synthetic constructor <init>(Lbgt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgs;->a:Lbgt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbgs;->a:Lbgt;

    iget-object v1, v0, Lbgt;->b:Lbgz;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lbgt;->b:Lbgz;

    iget v2, v2, Lbgz;->j:I

    iget-object v2, v0, Lbgt;->b:Lbgz;

    invoke-virtual {v2}, Lbgz;->j()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lbgt;->b:Lbgz;

    iget-object v2, v0, Lbgz;->p:Lbey;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lbgz;->h:Z

    iget-object v0, v2, Lbey;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    new-instance v4, Lbex;

    invoke-direct {v4, v2, v3}, Lbex;-><init>(Lbey;I)V

    .line 2
    invoke-virtual {v0, v4}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Ldkm;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lbey;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    .line 4
    sget-object v3, Lbdf;->g:Lbdf;

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Lbde;->b(Lbdf;I)V

    iget-object v0, v2, Lbey;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->r:Lbde;

    sget-object v2, Lbdf;->h:Lbdf;

    .line 5
    invoke-virtual {v0, v2, v4}, Lbde;->b(Lbdf;I)V

    .line 6
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
