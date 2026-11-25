.class final Labv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lgb;

.field final synthetic d:Labw;

.field final synthetic e:Labx;


# direct methods
.method public constructor <init>(Labw;Labx;Ljava/lang/String;Landroid/os/Bundle;Lgb;)V
    .locals 0

    iput-object p1, p0, Labv;->d:Labw;

    iput-object p2, p0, Labv;->e:Labx;

    iput-object p3, p0, Labv;->a:Ljava/lang/String;

    iput-object p4, p0, Labv;->b:Landroid/os/Bundle;

    iput-object p5, p0, Labv;->c:Lgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Labv;->e:Labx;

    invoke-virtual {v0}, Labx;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Labv;->d:Labw;

    iget-object v1, v1, Labw;->a:Labz;

    iget-object v1, v1, Labz;->b:Lvb;

    .line 2
    invoke-virtual {v1, v0}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labe;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCustomAction for callback that isn\'t registered action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labv;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBServiceCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Labv;->a:Ljava/lang/String;

    iget-object v1, p0, Labv;->b:Landroid/os/Bundle;

    iget-object v2, p0, Labv;->c:Lgb;

    new-instance v3, Labo;

    invoke-direct {v3, v0}, Labo;-><init>(Ljava/lang/Object;)V

    iget-boolean v4, v3, Labo;->f:Z

    if-nez v4, :cond_2

    iget-boolean v4, v3, Labo;->g:Z

    if-nez v4, :cond_2

    .line 4
    const/4 v4, 0x1

    iput-boolean v4, v3, Labo;->g:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v2, v4, v5}, Lgb;->b(ILandroid/os/Bundle;)V

    invoke-virtual {v3}, Labo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    return-void

    .line 5
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCustomAction must call detach() or sendResult() or sendError() before returning for action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " extras="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendError() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Labo;->e:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
