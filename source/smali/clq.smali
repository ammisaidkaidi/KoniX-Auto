.class final Lclq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lclv;


# direct methods
.method public constructor <init>(Lclv;)V
    .locals 0

    iput-object p1, p0, Lclq;->a:Lclv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lclq;->a:Lclv;

    iget-object v0, v0, Lclv;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 2
    const-string v0, "AHU.GAL_RECEIVER"

    const-string v1, "Threads did not stop in 2500 ms"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lclq;->a:Lclv;

    iget-object v1, v1, Lclv;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lclq;->a:Lclv;

    iget-object v1, v1, Lclv;->e:Lclt;

    .line 4
    invoke-virtual {v1}, Lclt;->interrupt()V

    iget-object v1, p0, Lclq;->a:Lclv;

    iget-object v1, v1, Lclv;->f:Lclu;

    .line 5
    invoke-virtual {v1}, Lclu;->interrupt()V

    :try_start_0
    iget-object v1, p0, Lclq;->a:Lclv;

    iget-object v1, v1, Lclv;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0xfa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 6
    :goto_0
    nop

    .line 7
    const-string v1, "Threads unresponsive to interrupt; notifying of termination anyway"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lclq;->a:Lclv;

    iget-object v0, v0, Lclv;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lclq;->a:Lclv;

    iget-object v3, v0, Lclv;->g:Lclo;

    iget-object v0, v0, Lclv;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcly;

    iget-object v3, v3, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v3, v3, Lcom/google/android/projection/protocol/GalReceiver;->f:Lbbh;

    iget-object v4, v3, Lbbh;->a:Lbbl;

    iput-object v0, v4, Lbbl;->z:Lcly;

    iget-object v5, v4, Lbbl;->e:Lbby;

    iget-object v4, v4, Lbbl;->h:Lawo;

    .line 10
    invoke-interface {v5, v4, v0}, Lbby;->g(Lawo;Lcly;)Lawo;

    iget-object v4, v3, Lbbh;->a:Lbbl;

    iget-object v4, v4, Lbbl;->i:Landroid/os/Handler;

    .line 11
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, v3, Lbbh;->a:Lbbl;

    iget-object v6, v4, Lbbl;->i:Landroid/os/Handler;

    new-instance v7, Lbbc;

    const/4 v8, 0x2

    invoke-direct {v7, v4, v8}, Lbbc;-><init>(Lbbl;I)V

    .line 12
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    sget-object v4, Lawp;->a:Lawp;

    sget-object v4, Lcly;->a:Lcly;

    invoke-virtual {v0}, Lcly;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v4, v3, Lbbh;->a:Lbbl;

    iget-object v4, v4, Lbbl;->g:Lawp;

    sget-object v6, Lawp;->b:Lawp;

    if-ne v4, v6, :cond_1

    iget-object v0, v3, Lbbh;->a:Lbbl;

    iget-object v1, v0, Lbbl;->i:Landroid/os/Handler;

    new-instance v3, Lbbc;

    invoke-direct {v3, v0, v2}, Lbbc;-><init>(Lbbl;I)V

    .line 14
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    sget-object v2, Lcly;->e:Lcly;

    if-ne v0, v2, :cond_3

    iget-object v0, v3, Lbbh;->a:Lbbl;

    iget-object v2, v0, Lbbl;->f:Landroid/content/Context;

    iget-object v0, v0, Lbbl;->h:Lawo;

    .line 15
    invoke-static {v2, v0}, Lbeh;->a(Landroid/content/Context;Lawo;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, v3, Lbbh;->a:Lbbl;

    iget-object v2, v0, Lbbl;->i:Landroid/os/Handler;

    new-instance v3, Lbbc;

    invoke-direct {v3, v0, v1}, Lbbc;-><init>(Lbbl;I)V

    .line 16
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 17
    :cond_2
    invoke-static {}, Ldkd;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v3, Lbbh;->a:Lbbl;

    iget-object v0, v0, Lbbl;->i:Landroid/os/Handler;

    new-instance v2, Lbbf;

    invoke-direct {v2, v3, v1, v5}, Lbbf;-><init>(Lbbh;I[B)V

    .line 18
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 13
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
