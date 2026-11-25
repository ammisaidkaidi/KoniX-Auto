.class public final synthetic Lbgx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbgy;

.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lbgy;Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgx;->a:Lbgy;

    iput-object p2, p0, Lbgx;->b:Ljava/nio/ByteBuffer;

    iput p3, p0, Lbgx;->c:I

    iput p4, p0, Lbgx;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    iget-object v2, v1, Lbgx;->a:Lbgy;

    iget-object v3, v1, Lbgx;->b:Ljava/nio/ByteBuffer;

    iget v4, v1, Lbgx;->c:I

    iget v5, v1, Lbgx;->d:I

    iget-object v0, v2, Lbgy;->e:Lbgu;

    iget-object v6, v0, Lbgu;->b:Landroid/media/MediaCodec;

    iget-boolean v0, v2, Lbgy;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Landroid/media/MediaCodec;->flush()V

    .line 2
    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    .line 3
    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    iget-object v0, v2, Lbgy;->b:Ljava/util/Queue;

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :try_start_0
    iget-object v0, v2, Lbgy;->h:Lbgp;

    .line 5
    invoke-virtual {v0}, Lbgp;->a()Lbgu;

    move-result-object v0

    iput-object v0, v2, Lbgy;->e:Lbgu;

    iget-object v0, v2, Lbgy;->e:Lbgu;

    iget-object v6, v0, Lbgu;->b:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 6
    sget-object v7, Lbgz;->a:Lcsz;

    invoke-virtual {v7}, Lcsv;->b()Lctq;

    move-result-object v7

    invoke-interface {v7, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v7, 0x102

    const-string v8, "com/google/android/apps/auto/aareceiver/video/ProjectionRenderer$VideoFrameHandler"

    const-string v9, "lambda$configureAndStart$0"

    const-string v10, "ProjectionRenderer.java"

    invoke-interface {v0, v8, v9, v7, v10}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v7, "failed to reinit codec"

    invoke-interface {v0, v7}, Lcsx;->n(Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, v2, Lbgy;->e:Lbgu;

    iget-object v0, v0, Lbgu;->c:Lbgo;

    .line 7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    new-array v7, v7, [B

    const-string v8, "Received an invalid config for H.264."

    .line 9
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    if-ne v9, v10, :cond_1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 10
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v15

    add-int/lit8 v15, v15, -0x4

    if-ge v9, v15, :cond_8

    .line 11
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v15

    if-ne v15, v10, :cond_7

    add-int/lit8 v15, v9, 0x4

    .line 12
    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    shr-int/lit8 v16, v15, 0x7

    if-nez v16, :cond_4

    add-int v17, v15, v15

    shr-int/lit8 v17, v17, 0x6

    if-eqz v17, :cond_4

    and-int/lit8 v10, v15, 0x1f

    const/4 v11, 0x7

    if-ne v10, v11, :cond_4

    if-nez v12, :cond_3

    .line 15
    invoke-static {v3, v0, v9}, Lhl;->l(Ljava/nio/ByteBuffer;[BI)I

    move-result v12

    add-int v9, v12, v13

    add-int/2addr v9, v14

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v2, "Received an invalid config for H.264. Multiple sequence parameter sets found."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    if-nez v16, :cond_6

    add-int v10, v15, v15

    shr-int/lit8 v10, v10, 0x6

    if-eqz v10, :cond_6

    and-int/lit8 v10, v15, 0x1f

    const/16 v11, 0x8

    if-ne v10, v11, :cond_6

    if-nez v13, :cond_5

    .line 14
    invoke-static {v3, v7, v9}, Lhl;->l(Ljava/nio/ByteBuffer;[BI)I

    move-result v13

    add-int v9, v12, v13

    add-int/2addr v9, v14

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v2, "Received an invalid config for H.264. Multiple picture parameter sets found."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_6
    nop

    .line 13
    const/4 v10, 0x0

    invoke-static {v3, v10, v9}, Lhl;->l(Ljava/nio/ByteBuffer;[BI)I

    move-result v9

    add-int/2addr v14, v9

    add-int v9, v12, v13

    add-int/2addr v9, v14

    add-int/lit8 v9, v9, -0x1

    .line 15
    :goto_2
    const/4 v10, 0x1

    add-int/2addr v9, v10

    const/4 v11, 0x0

    goto :goto_1

    .line 41
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string v2, "Received an invalid config for H.264. Extra data found in config."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_8
    if-eqz v12, :cond_b

    if-nez v13, :cond_9

    goto :goto_3

    .line 21
    :cond_9
    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 23
    invoke-static {}, Lcqk;->e()Lcqi;

    move-result-object v7

    .line 24
    sget-object v8, Lbgn;->a:Lbgn;

    invoke-virtual {v7, v8, v0}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lbgn;->b:Lbgn;

    .line 25
    invoke-virtual {v7, v0, v3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v7}, Lcqi;->c()Lcqk;

    move-result-object v0

    iget-object v3, v2, Lbgy;->e:Lbgu;

    iget-object v3, v3, Lbgu;->a:Landroid/media/MediaFormat;

    sget-object v7, Lbgn;->a:Lbgn;

    .line 27
    invoke-virtual {v0, v7}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 28
    const-string v8, "csd-0"

    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    sget-object v7, Lbgn;->b:Lbgn;

    .line 29
    invoke-virtual {v0, v7}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 30
    const-string v7, "csd-1"

    invoke-virtual {v3, v7, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 31
    const-string v0, "width"

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 32
    const-string v0, "height"

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 33
    sget-object v0, Ldky;->a:Ldky;

    .line 34
    invoke-virtual {v0}, Ldky;->b()Ldkz;

    move-result-object v0

    invoke-interface {v0}, Ldkz;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 35
    const-string v0, "vendor.qti-ext-dec-low-latency.enable"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36
    const-string v0, "vendor.qti-ext-dec-picture-order.enable"

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    iget-object v0, v2, Lbgy;->f:Landroid/os/Handler;

    .line 37
    invoke-virtual {v6, v2, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iget-object v0, v2, Lbgy;->d:Landroid/view/Surface;

    .line 38
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v6, v3, v0, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 40
    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V

    iput-boolean v0, v2, Lbgy;->g:Z

    return-void

    .line 13
    :cond_b
    :goto_3
    const-string v0, ""

    if-nez v12, :cond_c

    const-string v2, " No sequence parameter set found."

    goto :goto_4

    .line 18
    :cond_c
    move-object v2, v0

    .line 13
    :goto_4
    if-nez v13, :cond_d

    const-string v0, " No picture parameter set found."

    goto :goto_5

    .line 18
    :cond_d
    nop

    .line 13
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 18
    :cond_e
    new-instance v0, Ljava/lang/String;

    .line 19
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 19
    :cond_f
    new-instance v0, Ljava/lang/String;

    .line 20
    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v2

    :goto_9
    goto :goto_8
.end method
