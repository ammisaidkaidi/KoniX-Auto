.class public final synthetic Lbgb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgb;->a:Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lbgb;->a:Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;

    iget-object v0, p1, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->b:Lbgd;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbgd;->a:Ldag;

    invoke-interface {v0}, Ldag;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->b:Lbgd;

    .line 2
    iget-object v0, v0, Lbgd;->a:Ldag;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ldag;->cancel(Z)Z

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->finish()V

    return-void
.end method
