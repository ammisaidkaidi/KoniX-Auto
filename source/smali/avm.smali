.class public final synthetic Lavm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lavp;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lavp;I)V
    .locals 0

    iput p2, p0, Lavm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavm;->a:Lavp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-string v0, "RfcommChannel.java"

    iget v1, p0, Lavm;->b:I

    packed-switch v1, :pswitch_data_0

    .line 7
    iget-object v0, p0, Lavm;->a:Lavp;

    iget-object v0, v0, Lavp;->g:Lavu;

    .line 11
    invoke-virtual {v0}, Lavu;->a()V

    return-void

    .line 1
    :pswitch_0
    iget-object v1, p0, Lavm;->a:Lavp;

    :cond_0
    :goto_0
    iget-boolean v2, v1, Lavp;->d:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {v1, v3}, Lavp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 3
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 4
    invoke-virtual {v1, v5}, Lavp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    packed-switch v4, :pswitch_data_1

    const/4 v3, 0x0

    goto :goto_1

    .line 7
    :pswitch_1
    const/4 v3, 0x7

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x6

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x5

    goto :goto_1

    :pswitch_4
    goto :goto_1

    :pswitch_5
    const/4 v3, 0x3

    goto :goto_1

    :pswitch_6
    const/4 v3, 0x2

    goto :goto_1

    :pswitch_7
    const/4 v3, 0x1

    .line 5
    :goto_1
    if-nez v3, :cond_1

    sget-object v3, Lavp;->a:Lcsz;

    invoke-virtual {v3}, Lcsv;->c()Lctq;

    move-result-object v3

    const-string v5, "com/google/android/apps/auto/aareceiver/bluetooth/RfcommChannel$RawMessage"

    const-string v6, "create"

    const/16 v7, 0xb1

    .line 6
    invoke-interface {v3, v5, v6, v7, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    invoke-interface {v3, v4}, Lcsx;->x(S)V

    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :cond_1
    new-instance v4, Lavo;

    invoke-direct {v4, v3, v5}, Lavo;-><init>(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 6
    :goto_2
    if-eqz v2, :cond_0

    iget-object v3, v1, Lavp;->e:Ljava/util/concurrent/Executor;

    new-instance v4, Lavl;

    invoke-direct {v4, v1, v2}, Lavl;-><init>(Lavp;Lavo;)V

    .line 7
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :catch_0
    move-exception v3

    iget-boolean v4, v1, Lavp;->d:Z

    if-nez v4, :cond_2

    sget-object v4, Lavp;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->c()Lctq;

    move-result-object v4

    .line 8
    invoke-interface {v4, v3}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const/16 v4, 0x5b

    const-string v5, "com/google/android/apps/auto/aareceiver/bluetooth/RfcommChannel"

    const-string v6, "readMessagesLoop"

    invoke-interface {v3, v5, v6, v4, v0}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v3, "Failed to read RFCOMM message"

    invoke-interface {v0, v3}, Lcsx;->n(Ljava/lang/String;)V

    iget-object v0, v1, Lavp;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Lavm;

    invoke-direct {v3, v1, v2}, Lavm;-><init>(Lavp;I)V

    .line 9
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_2
    return-void

    .line 11
    :pswitch_8
    iget-object v0, p0, Lavm;->a:Lavp;

    iget-object v0, v0, Lavp;->g:Lavu;

    .line 10
    invoke-virtual {v0}, Lavu;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
