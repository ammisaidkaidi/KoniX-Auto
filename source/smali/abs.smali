.class final Labs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Labw;

.field final synthetic e:Labx;

.field private final synthetic f:I


# direct methods
.method public constructor <init>(Labw;Labx;ILjava/lang/String;II)V
    .locals 0

    iput p6, p0, Labs;->f:I

    iput-object p1, p0, Labs;->d:Labw;

    iput-object p2, p0, Labs;->e:Labx;

    iput p3, p0, Labs;->a:I

    iput-object p4, p0, Labs;->b:Ljava/lang/String;

    iput p5, p0, Labs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Labw;Labx;Ljava/lang/String;III)V
    .locals 0

    iput p6, p0, Labs;->f:I

    iput-object p1, p0, Labs;->d:Labw;

    iput-object p2, p0, Labs;->e:Labx;

    iput-object p3, p0, Labs;->b:Ljava/lang/String;

    iput p4, p0, Labs;->c:I

    iput p5, p0, Labs;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 14
    iget v0, p0, Labs;->f:I

    const/4 v1, 0x0

    const-string v2, "MBServiceCompat"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Labs;->e:Labx;

    invoke-virtual {v0}, Labx;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v4, p0, Labs;->d:Labw;

    iget-object v4, v4, Labw;->a:Labz;

    iget-object v4, v4, Labz;->b:Lvb;

    .line 15
    invoke-virtual {v4, v0}, Lvi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Labe;

    iget-object v5, p0, Labs;->d:Labw;

    iget-object v6, v5, Labw;->a:Labz;

    iget-object v7, p0, Labs;->b:Ljava/lang/String;

    iget v8, p0, Labs;->c:I

    iget v9, p0, Labs;->a:I

    iget-object v10, p0, Labs;->e:Labx;

    .line 16
    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Labe;-><init>(Labz;Ljava/lang/String;IILabx;)V

    iget-object v5, p0, Labs;->d:Labw;

    iget-object v5, v5, Labw;->a:Labz;

    iget-object v6, p0, Labs;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v5, v6}, Labz;->b(Ljava/lang/String;)Labc;

    move-result-object v5

    iput-object v5, v4, Labe;->e:Labc;

    iget-object v5, v4, Labe;->e:Labc;

    const/4 v6, 0x2

    if-nez v5, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto/16 :goto_3

    .line 29
    :pswitch_0
    iget-object v0, p0, Labs;->e:Labx;

    .line 1
    invoke-virtual {v0}, Labx;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v4, p0, Labs;->d:Labw;

    iget-object v4, v4, Labw;->a:Labz;

    iget-object v4, v4, Labz;->b:Lvb;

    .line 2
    invoke-virtual {v4, v0}, Lvi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Labs;->d:Labw;

    iget-object v4, v4, Labw;->a:Labz;

    iget-object v4, v4, Labz;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labe;

    .line 6
    iget v6, v5, Labe;->c:I

    iget v7, p0, Labs;->a:I

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Labs;->b:Ljava/lang/String;

    .line 7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Labs;->c:I

    if-gtz v6, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    new-instance v3, Labe;

    iget-object v6, p0, Labs;->d:Labw;

    iget-object v8, v6, Labw;->a:Labz;

    .line 8
    iget-object v9, v5, Labe;->a:Ljava/lang/String;

    iget v10, v5, Labe;->b:I

    iget v11, v5, Labe;->c:I

    iget-object v12, p0, Labs;->e:Labx;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Labe;-><init>(Labz;Ljava/lang/String;IILabx;)V

    .line 9
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 12
    :cond_3
    nop

    .line 9
    :goto_2
    if-nez v3, :cond_4

    new-instance v3, Labe;

    iget-object v4, p0, Labs;->d:Labw;

    iget-object v5, v4, Labw;->a:Labz;

    iget-object v6, p0, Labs;->b:Ljava/lang/String;

    iget v7, p0, Labs;->c:I

    iget v8, p0, Labs;->a:I

    iget-object v9, p0, Labs;->e:Labx;

    .line 10
    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Labe;-><init>(Labz;Ljava/lang/String;IILabx;)V

    :cond_4
    iget-object v4, p0, Labs;->d:Labw;

    iget-object v4, v4, Labw;->a:Labz;

    iget-object v4, v4, Labz;->b:Lvb;

    .line 11
    invoke-virtual {v4, v0, v3}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :try_start_0
    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 13
    const-string v0, "IBinder is already dead."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :goto_3
    :try_start_1
    iget-object v0, p0, Labs;->e:Labx;

    .line 19
    invoke-virtual {v0, v6, v3}, Labx;->b(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 12
    :catch_1
    move-exception v0

    iget-object v0, p0, Labs;->b:Ljava/lang/String;

    const-string v1, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 19
    :cond_5
    :try_start_2
    iget-object v3, p0, Labs;->d:Labw;

    iget-object v3, v3, Labw;->a:Labz;

    iget-object v3, v3, Labz;->b:Lvb;

    .line 21
    invoke-virtual {v3, v0, v4}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v0, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Labs;->d:Labw;

    iget-object v1, v1, Labw;->a:Labz;

    iget-object v1, v1, Labz;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v1, :cond_7

    iget-object v3, p0, Labs;->e:Labx;

    iget-object v4, v4, Labe;->e:Labc;

    iget-object v5, v4, Labc;->a:Ljava/lang/String;

    iget-object v4, v4, Labc;->b:Landroid/os/Bundle;

    const-string v5, "AAReceiverRootId"

    if-nez v4, :cond_6

    new-instance v4, Landroid/os/Bundle;

    .line 23
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_6
    const-string v7, "extra_service_version"

    .line 24
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v6, Landroid/os/Bundle;

    .line 25
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "data_media_item_id"

    .line 26
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "data_media_session_token"

    .line 27
    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "data_root_hints"

    .line 28
    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v3, v1, v6}, Labx;->b(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    return-void

    .line 20
    :catch_2
    move-exception v1

    iget-object v1, p0, Labs;->b:Ljava/lang/String;

    const-string v3, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Labs;->d:Labw;

    iget-object v1, v1, Labw;->a:Labz;

    iget-object v1, v1, Labz;->b:Lvb;

    .line 31
    invoke-virtual {v1, v0}, Lvi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
