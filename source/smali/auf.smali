.class public final synthetic Lauf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lauj;


# direct methods
.method public synthetic constructor <init>(Lauj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lauf;->a:Lauj;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lauf;->a:Lauj;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const-string v3, "AudioSinkManager.java"

    const-string v4, "com/google/android/apps/auto/aareceiver/audio/AudioSinkManager"

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {v0}, Lauj;->a()V

    return v6

    .line 4
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Lauj;->n:Ljava/util/Map;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "handleStop"

    if-nez v1, :cond_0

    sget-object v0, Lauj;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x130

    .line 6
    invoke-interface {v0, v4, v8, v1, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Decoder for session=%d couldn\'t be found and stopped"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_0
    iget-object p1, v0, Lauj;->n:Ljava/util/Map;

    .line 7
    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Latq;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1, v5}, Latq;->h(Z)V

    iget-object v1, v0, Lauj;->i:Latt;

    iget-object v5, p1, Latq;->i:Laue;

    iget-object v5, v5, Laue;->b:Lauc;

    .line 9
    invoke-interface {v1, v5}, Latt;->b(Lauc;)V

    iget-object v1, v0, Lauj;->m:Latq;

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v2, v0, Lauj;->m:Latq;

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_1
    sget-object p1, Lauj;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v0, 0x13f

    .line 11
    invoke-interface {p1, v4, v8, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Stopped decoder is different than active decoder."

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    nop

    :goto_0
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 12
    :pswitch_2
    invoke-static {p1}, Laul;->a(Landroid/os/Message;)J

    move-result-wide v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    iget-object v7, v0, Lauj;->m:Latq;

    if-nez v7, :cond_3

    sget-object p1, Lauj;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v0, 0x11a

    .line 13
    const-string v1, "handleAudioData"

    invoke-interface {p1, v4, v1, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Audio data arrived while decoder is not active!"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 14
    :cond_3
    invoke-virtual {v7, p1, v1, v2}, Latq;->c([BJ)V

    iget-object p1, v0, Lauj;->f:Lcom/google/android/projection/protocol/AudioSink;

    iget v0, v0, Lauj;->l:I

    new-array v3, v6, [J

    aput-wide v1, v3, v5

    .line 15
    invoke-virtual {p1, v0, v3}, Lcom/google/android/projection/protocol/AudioSink;->nativeAckFramesNew(I[J)V

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 16
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 17
    array-length v1, p1

    iget-object v0, v0, Lauj;->c:Ljava/util/Map;

    .line 18
    new-instance v1, Lauh;

    invoke-direct {v1, p1}, Lauh;-><init>([B)V

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    return v6

    .line 19
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lauj;->l:I

    iget v1, v0, Lauj;->o:I

    if-eqz v1, :cond_5

    packed-switch v1, :pswitch_data_1

    .line 21
    :pswitch_5
    new-instance p1, Ljava/lang/AssertionError;

    .line 27
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :pswitch_6
    iget-object v1, v0, Lauj;->c:Ljava/util/Map;

    .line 23
    sget-object v2, Lauc;->a:Lauc;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latq;

    goto :goto_1

    .line 26
    :pswitch_7
    iget-object v1, v0, Lauj;->g:Lbbl;

    iget-boolean v1, v1, Lbbl;->C:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lauj;->c:Ljava/util/Map;

    .line 21
    sget-object v2, Lauc;->c:Lauc;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latq;

    goto :goto_1

    .line 20
    :cond_4
    iget-object v1, v0, Lauj;->c:Ljava/util/Map;

    .line 22
    sget-object v2, Lauc;->b:Lauc;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latq;

    .line 23
    :goto_1
    iput-object v1, v0, Lauj;->m:Latq;

    iget-object v1, v0, Lauj;->i:Latt;

    iget-object v2, v0, Lauj;->m:Latq;

    iget-object v2, v2, Latq;->i:Laue;

    iget-object v2, v2, Laue;->b:Lauc;

    .line 24
    invoke-interface {v1, v2}, Latt;->a(Lauc;)V

    iget-object v1, v0, Lauj;->n:Ljava/util/Map;

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, v0, Lauj;->m:Latq;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Lauj;->m:Latq;

    .line 26
    invoke-virtual {p1}, Latq;->g()V

    const/4 v5, 0x1

    goto :goto_2

    .line 27
    :cond_5
    nop

    .line 20
    throw v2

    .line 1
    :pswitch_8
    iget-object p1, v0, Lauj;->c:Ljava/util/Map;

    .line 2
    new-instance v1, Laug;

    invoke-direct {v1, v0, v6}, Laug;-><init>(Lauj;I)V

    invoke-static {p1, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    iput-boolean v6, v0, Lauj;->k:Z

    return v6

    .line 1
    :goto_2
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
