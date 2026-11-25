.class public final synthetic Latn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Latp;


# direct methods
.method public synthetic constructor <init>(Latp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latn;->a:Latp;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Latn;->a:Latp;

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "csd-0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    iget-object p1, v0, Latp;->f:Landroid/media/MediaCodec;

    .line 7
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, v0, Latp;->g:Z

    .line 8
    invoke-virtual {v0}, Latp;->a()V

    iget-object p1, v0, Latp;->d:Landroid/os/ConditionVariable;

    .line 9
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    const/4 p1, 0x0

    iput-object p1, v0, Latp;->f:Landroid/media/MediaCodec;

    iget-object p1, v0, Latq;->i:Laue;

    .line 10
    invoke-virtual {p1}, Laue;->f()V

    return v4

    .line 11
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {v0, v4}, Latp;->e(Z)V

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_0
    iget-object p1, v0, Latp;->h:Ljava/util/Queue;

    .line 13
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v0, Latp;->f:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    .line 14
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 15
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {p1}, Laul;->a(Landroid/os/Message;)J

    move-result-wide v9

    iget-boolean p1, v0, Latp;->g:Z

    if-eqz p1, :cond_2

    iget-object p1, v0, Latp;->h:Ljava/util/Queue;

    .line 16
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, v0, Latp;->h:Ljava/util/Queue;

    .line 18
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object p1, v0, Latp;->f:Landroid/media/MediaCodec;

    .line 19
    invoke-virtual {p1, v6}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, v0, Latp;->f:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    .line 21
    array-length v8, v1

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v3, 0x1

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    iget-object p1, v0, Latp;->h:Ljava/util/Queue;

    .line 17
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    const/4 v3, 0x1

    goto :goto_1

    .line 22
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    iget-boolean v1, v0, Latp;->g:Z

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {v0, v4}, Latp;->e(Z)V

    .line 4
    :cond_3
    iget-object v1, v0, Latp;->e:Landroid/media/MediaFormat;

    .line 24
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 25
    invoke-virtual {v0}, Latp;->d()V

    const/4 v3, 0x1

    goto :goto_1

    .line 3
    :pswitch_4
    iget-boolean p1, v0, Latp;->g:Z

    if-nez p1, :cond_5

    iget-object p1, v0, Latp;->e:Landroid/media/MediaFormat;

    .line 5
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {v0}, Latp;->d()V

    return v4

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 1
    :pswitch_5
    iget-object p1, v0, Latq;->i:Laue;

    .line 2
    invoke-virtual {p1}, Laue;->c()V

    :try_start_0
    const-string p1, "audio/mp4a-latm"

    .line 3
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, v0, Latp;->f:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_1

    .line 23
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
