.class public final synthetic Lbbc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbbl;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbbl;I)V
    .locals 0

    iput p2, p0, Lbbc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbc;->a:Lbbl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 7
    iget v0, p0, Lbbc;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbbc;->a:Lbbl;

    iget-object v1, v0, Lbbl;->F:Lzn;

    iget-object v1, v1, Lzn;->a:Lzm;

    sget-object v2, Lzm;->b:Lzm;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lbbl;->A:Ldas;

    .line 8
    invoke-virtual {v0, v3}, Ldas;->k(Ljava/lang/Object;)Z

    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lbbc;->a:Lbbl;

    iget-object v0, v0, Lbbl;->f:Landroid/content/Context;

    const v2, 0x7f10008b

    .line 1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lbbc;->a:Lbbl;

    iget-object v0, v0, Lbbl;->f:Landroid/content/Context;

    const v2, 0x7f100091

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lbbl;->u:Laxc;

    .line 9
    invoke-virtual {v1}, Laxc;->d()V

    iget-object v1, v0, Lbbl;->t:Laxf;

    .line 10
    invoke-virtual {v1}, Laxf;->b()V

    iget-object v1, v0, Lbbl;->v:Laxl;

    .line 11
    invoke-virtual {v1}, Laxl;->e()V

    iget-object v1, v0, Lbbl;->c:Lcmj;

    iget-boolean v2, v1, Lcmj;->b:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 12
    const-string v2, "AHU.TRANSPORT_FACTORY"

    const-string v5, "Shutting down..."

    invoke-static {v2, v5}, Lcjz;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v1, Lcmj;->b:Z

    iget-object v1, v1, Lcmj;->c:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcmi;

    .line 14
    invoke-interface {v5}, Lcmi;->a()V

    goto :goto_0

    :cond_1
    nop

    .line 15
    const-string v1, "Shutdown completed."

    invoke-static {v2, v1}, Lcjz;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lbbl;->b:Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v1}, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->j()V

    iget-object v1, v1, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;->f:Lfu;

    .line 17
    invoke-virtual {v1, v3}, Lfu;->e(Lfn;)V

    iput-object v3, v0, Lbbl;->b:Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;

    :cond_3
    iget-object v1, v0, Lbbl;->f:Landroid/content/Context;

    iget-object v2, v0, Lbbl;->D:Landroid/content/ServiceConnection;

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, v0, Lbbl;->F:Lzn;

    .line 19
    sget-object v2, Lzl;->ON_DESTROY:Lzl;

    invoke-virtual {v1, v2}, Lzn;->c(Lzl;)V

    iget-object v1, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    :goto_1
    iget-object v2, v1, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    iget-object v2, v1, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v5, v1, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    .line 23
    invoke-interface {v2}, Lclk;->b()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeShutdown()V

    iget-object v0, v0, Lbbl;->A:Ldas;

    .line 26
    invoke-virtual {v0, v3}, Ldas;->k(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
