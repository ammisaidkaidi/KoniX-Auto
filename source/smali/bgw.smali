.class public final synthetic Lbgw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbgy;

.field public final synthetic b:Lcma;


# direct methods
.method public synthetic constructor <init>(Lbgy;Lcma;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgw;->a:Lbgy;

    iput-object p2, p0, Lbgw;->b:Lcma;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbgw;->a:Lbgy;

    iget-object v1, p0, Lbgw;->b:Lcma;

    iget-object v2, v0, Lbgy;->e:Lbgu;

    iget-object v2, v2, Lbgu;->b:Landroid/media/MediaCodec;

    :cond_0
    iget-object v3, v0, Lbgy;->b:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lbgy;->b(Landroid/media/MediaCodec;Lcma;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lbgy;->c:Ljava/util/Queue;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v2, v0, Lbgy;->a:Ljava/util/Queue;

    .line 4
    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lbgz;->a:Lcsz;

    sget-object v1, Lcsz;->b:Lcsy;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    iget-object v0, v0, Lbgy;->a:Ljava/util/Queue;

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    return-void
.end method
