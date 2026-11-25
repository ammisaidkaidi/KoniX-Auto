.class public final synthetic Lbgv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbgy;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbgy;I)V
    .locals 0

    iput p2, p0, Lbgv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgv;->a:Lbgy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lbgv;->b:I

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lbgv;->a:Lbgy;

    iget-object v0, v0, Lbgy;->e:Lbgu;

    iget-object v0, v0, Lbgu;->b:Landroid/media/MediaCodec;

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Lbgv;->a:Lbgy;

    :try_start_0
    iget-object v1, v0, Lbgy;->h:Lbgp;

    invoke-virtual {v1}, Lbgp;->a()Lbgu;

    move-result-object v1

    iput-object v1, v0, Lbgy;->e:Lbgu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 2
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
