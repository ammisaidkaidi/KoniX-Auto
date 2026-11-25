.class public final synthetic Lbbb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcny;


# instance fields
.field public final synthetic a:Lbbl;


# direct methods
.method public synthetic constructor <init>(Lbbl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbb;->a:Lbbl;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lbbb;->a:Lbbl;

    check-cast p1, Lclz;

    iget-object v1, v0, Lbbl;->l:Ljava/util/Map;

    check-cast v1, Lcqk;

    invoke-virtual {v1}, Lcqk;->k()Lcqw;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lbaz;->a:Lbaz;

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laxg;

    invoke-virtual {v4}, Laxg;->a()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/projection/protocol/GalReceiver;->d(ILclk;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    .line 4
    sget-object v2, Laxg;->b:Laxg;

    .line 5
    invoke-virtual {v2}, Laxg;->a()I

    move-result v2

    iget-object v3, v0, Lbbl;->p:Lcqk;

    sget-object v4, Lckb;->a:Lckb;

    invoke-virtual {v3, v4}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lclk;

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/GalReceiver;->d(ILclk;)V

    iget-object v1, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    sget-object v2, Laxg;->c:Laxg;

    .line 6
    invoke-virtual {v2}, Laxg;->a()I

    move-result v2

    iget-object v3, v0, Lbbl;->v:Laxl;

    sget-object v4, Lckb;->a:Lckb;

    invoke-virtual {v3, v4}, Laxl;->a(Lckb;)Lcom/google/android/projection/protocol/InputSource;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/GalReceiver;->d(ILclk;)V

    iget-object v1, v0, Lbbl;->p:Lcqk;

    sget-object v2, Lckb;->b:Lckb;

    .line 8
    invoke-virtual {v1, v2}, Lcqk;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    sget-object v2, Laxg;->a:Laxg;

    .line 9
    invoke-virtual {v2}, Laxg;->a()I

    move-result v2

    iget-object v3, v0, Lbbl;->p:Lcqk;

    sget-object v4, Lckb;->b:Lckb;

    invoke-virtual {v3, v4}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lclk;

    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/GalReceiver;->d(ILclk;)V

    iget-object v1, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    sget-object v2, Laxg;->d:Laxg;

    .line 11
    invoke-virtual {v2}, Laxg;->a()I

    move-result v2

    iget-object v3, v0, Lbbl;->v:Laxl;

    sget-object v4, Lckb;->b:Lckb;

    .line 12
    invoke-virtual {v3, v4}, Laxl;->a(Lckb;)Lcom/google/android/projection/protocol/InputSource;

    move-result-object v3

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/GalReceiver;->d(ILclk;)V

    :cond_2
    iget-object v1, v0, Lbbl;->u:Laxc;

    iget-object v2, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    .line 14
    invoke-virtual {v1, v2}, Laxc;->a(Lcom/google/android/projection/protocol/GalReceiver;)V

    iget-object v1, v0, Lbbl;->t:Laxf;

    .line 15
    invoke-virtual {v1}, Laxf;->a()V

    iget-object v1, v0, Lbbl;->v:Laxl;

    .line 16
    invoke-virtual {v1}, Laxl;->c()V

    sget-object v1, Lckb;->a:Lckb;

    .line 17
    invoke-virtual {v0, v1}, Lbbl;->b(Lckb;)V

    iget-object v1, v0, Lbbl;->p:Lcqk;

    sget-object v2, Lckb;->b:Lckb;

    .line 18
    invoke-virtual {v1, v2}, Lcqk;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lckb;->b:Lckb;

    .line 19
    invoke-virtual {v0, v1}, Lbbl;->b(Lckb;)V

    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lbbl;->f:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;

    .line 20
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    const-string v2, "mediaBrowserServiceIntentAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lbbl;->f:Landroid/content/Context;

    iget-object v3, v0, Lbbl;->D:Landroid/content/ServiceConnection;

    .line 22
    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, v0, Lbbl;->F:Lzn;

    .line 23
    sget-object v2, Lzl;->ON_CREATE:Lzl;

    invoke-virtual {v1, v2}, Lzn;->c(Lzl;)V

    iget-object v0, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    iget-boolean v1, v0, Lcom/google/android/projection/protocol/GalReceiver;->e:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lclk;

    .line 27
    invoke-interface {v3}, Lclk;->a()J

    move-result-wide v3

    .line 28
    invoke-virtual {v0, v3, v4}, Lcom/google/android/projection/protocol/GalReceiver;->nativeRegister(J)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    .line 29
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed to register."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AHU.GAL_RECEIVER"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 35
    :cond_5
    iget-object v1, v0, Lcom/google/android/projection/protocol/GalReceiver;->c:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetTransportConfigurationListener(Lcom/google/android/projection/protocol/ConnectionConfigurationCallbacks;)Z

    invoke-virtual {v0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeStart()V

    iget-object v0, v0, Lcom/google/android/projection/protocol/GalReceiver;->d:Lclv;

    new-instance v1, Lclt;

    .line 31
    invoke-direct {v1, v0, p1}, Lclt;-><init>(Lclv;Lclz;)V

    iput-object v1, v0, Lclv;->e:Lclt;

    new-instance v1, Lclu;

    .line 32
    invoke-direct {v1, v0, p1}, Lclu;-><init>(Lclv;Lclz;)V

    iput-object v1, v0, Lclv;->f:Lclu;

    iget-object p1, v0, Lclv;->e:Lclt;

    .line 33
    invoke-virtual {p1}, Lclt;->start()V

    iget-object p1, v0, Lclv;->f:Lclu;

    .line 34
    invoke-virtual {p1}, Lclu;->start()V

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    const-string v0, "can\'t be started after teardown"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
