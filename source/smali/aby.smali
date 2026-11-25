.class public final Laby;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field final synthetic a:Labz;

.field private final b:Labw;


# direct methods
.method public constructor <init>(Labz;)V
    .locals 1

    .line 1
    iput-object p1, p0, Laby;->a:Labz;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Labw;

    invoke-direct {v0, p1}, Labw;-><init>(Labz;)V

    iput-object v0, p0, Laby;->b:Labw;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Laby;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Laby;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const-string v5, "data_callback_token"

    const-string v6, "data_calling_uid"

    const-string v7, "data_calling_pid"

    const-string v8, "data_package_name"

    const-string v9, "data_root_hints"

    const-string v10, "data_result_receiver"

    const-string v11, "data_media_item_id"

    packed-switch v3, :pswitch_data_0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  Service version: 2\n  Client version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBServiceCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :pswitch_0
    const-string v3, "data_custom_action_extras"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 4
    invoke-static {v8}, Lfu;->c(Landroid/os/Bundle;)V

    iget-object v5, v0, Laby;->b:Labw;

    .line 5
    const-string v3, "data_custom_action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lgb;

    new-instance v6, Labx;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v6, v1}, Labx;-><init>(Landroid/os/Messenger;)V

    .line 7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v9, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, v5, Labw;->a:Labz;

    iget-object v1, v1, Labz;->c:Laby;

    new-instance v2, Labv;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Labv;-><init>(Labw;Labx;Ljava/lang/String;Landroid/os/Bundle;Lgb;)V

    .line 8
    invoke-virtual {v1, v2}, Laby;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    nop

    .line 9
    const-string v3, "data_search_extras"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lfu;->c(Landroid/os/Bundle;)V

    iget-object v5, v0, Laby;->b:Labw;

    .line 11
    const-string v3, "data_search_query"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lgb;

    new-instance v6, Labx;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v6, v1}, Labx;-><init>(Landroid/os/Messenger;)V

    .line 13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v8, :cond_1

    iget-object v1, v5, Labw;->a:Labz;

    iget-object v1, v1, Labz;->c:Laby;

    new-instance v2, Labu;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Labu;-><init>(Labw;Labx;Ljava/lang/String;Lgb;I)V

    .line 14
    invoke-virtual {v1, v2}, Laby;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v2, v0, Laby;->b:Labw;

    new-instance v3, Labx;

    .line 15
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v1}, Labx;-><init>(Landroid/os/Messenger;)V

    iget-object v1, v2, Labw;->a:Labz;

    iget-object v1, v1, Labz;->c:Laby;

    new-instance v5, Labt;

    invoke-direct {v5, v2, v3, v4}, Labt;-><init>(Labw;Labx;I)V

    .line 16
    invoke-virtual {v1, v5}, Laby;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    nop

    .line 17
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 18
    invoke-static {v3}, Lfu;->c(Landroid/os/Bundle;)V

    iget-object v10, v0, Laby;->b:Labw;

    new-instance v11, Labx;

    .line 19
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v11, v1}, Labx;-><init>(Landroid/os/Messenger;)V

    .line 20
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 21
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 22
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    iget-object v1, v10, Labw;->a:Labz;

    iget-object v1, v1, Labz;->c:Laby;

    new-instance v2, Labs;

    const/4 v15, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Labs;-><init>(Labw;Labx;ILjava/lang/String;II)V

    .line 23
    invoke-virtual {v1, v2}, Laby;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    iget-object v4, v0, Laby;->b:Labw;

    .line 24
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lgb;

    new-instance v5, Labx;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v1}, Labx;-><init>(Landroid/os/Messenger;)V

    .line 26
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v7, :cond_1

    iget-object v1, v4, Labw;->a:Labz;

    iget-object v1, v1, Labz;->c:Laby;

    new-instance v2, Labu;

    const/4 v8, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Labu;-><init>(Labw;Labx;Ljava/lang/String;Lgb;I)V

    .line 27
    invoke-virtual {v1, v2}, Laby;->a(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    return-void

    .line 27
    :pswitch_5
    iget-object v3, v0, Laby;->b:Labw;

    .line 28
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    new-instance v5, Labx;

    .line 30
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v1}, Labx;-><init>(Landroid/os/Messenger;)V

    iget-object v1, v3, Labw;->a:Labz;

    iget-object v1, v1, Labz;->c:Laby;

    new-instance v6, Labr;

    invoke-direct {v6, v3, v5, v4, v2}, Labr;-><init>(Labw;Labx;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 31
    invoke-virtual {v1, v6}, Laby;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    nop

    .line 32
    const-string v3, "data_options"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    .line 33
    invoke-static/range {v17 .. v17}, Lfu;->c(Landroid/os/Bundle;)V

    iget-object v13, v0, Laby;->b:Labw;

    .line 34
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 35
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    new-instance v14, Labx;

    .line 36
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v14, v1}, Labx;-><init>(Landroid/os/Messenger;)V

    iget-object v1, v13, Labw;->a:Labz;

    iget-object v1, v1, Labz;->c:Laby;

    new-instance v2, Labq;

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Labq;-><init>(Labw;Labx;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {v1, v2}, Laby;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_7
    iget-object v2, v0, Laby;->b:Labw;

    new-instance v3, Labx;

    .line 38
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v1}, Labx;-><init>(Landroid/os/Messenger;)V

    iget-object v1, v2, Labw;->a:Labz;

    iget-object v1, v1, Labz;->c:Laby;

    new-instance v4, Labt;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v3, v5}, Labt;-><init>(Labw;Labx;I)V

    .line 39
    invoke-virtual {v1, v4}, Laby;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_8
    nop

    .line 40
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 41
    invoke-static {v3}, Lfu;->c(Landroid/os/Bundle;)V

    iget-object v10, v0, Laby;->b:Labw;

    .line 42
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 43
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 44
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    new-instance v11, Labx;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v11, v1}, Labx;-><init>(Landroid/os/Messenger;)V

    iget-object v1, v10, Labw;->a:Labz;

    if-eqz v12, :cond_3

    .line 45
    invoke-virtual {v1}, Labz;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 47
    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_3

    .line 48
    aget-object v3, v1, v4

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v10, Labw;->a:Labz;

    iget-object v1, v1, Labz;->c:Laby;

    new-instance v2, Labs;

    const/4 v15, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Labs;-><init>(Labw;Labx;Ljava/lang/String;III)V

    .line 50
    invoke-virtual {v1, v2}, Laby;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 44
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package/uid mismatch: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lev;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "data_calling_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "data_calling_pid"

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_0
    nop

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
