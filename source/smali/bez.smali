.class public final synthetic Lbez;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;I)V
    .locals 0

    iput p2, p0, Lbez;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbez;->a:Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lbez;->b:I

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lbez;->a:Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Lbez;->a:Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;

    invoke-static {}, Ldkj;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->w:Lbgz;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lbgz;->h()V

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->finish()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lbfi;->x()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
