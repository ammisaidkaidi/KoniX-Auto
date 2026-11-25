.class final Lbnb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/Map;

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Lbmz;

.field public f:Landroid/content/ComponentName;

.field final synthetic g:Lbna;


# direct methods
.method public constructor <init>(Lbna;Lbmz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbnb;->g:Lbna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbnb;->e:Lbmz;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lbnb;->a:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lbnb;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ServiceConnection;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbnb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbnb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbnb;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    const-string v0, "ConnectionStatusConfig"

    const/4 v1, 0x3

    iput v1, p0, Lbnb;->b:I

    iget-object v1, p0, Lbnb;->g:Lbna;

    iget-object v1, v1, Lbna;->d:Landroid/content/Context;

    iget-object v2, p0, Lbnb;->e:Lbmz;

    iget-object v3, v2, Lbmz;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lbmz;->f:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v2, Lbmz;->b:Ljava/lang/String;

    .line 2
    const-string v6, "serviceActionBundleKey"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lbmz;->a:Landroid/net/Uri;

    const-string v7, "serviceIntentCall"

    .line 4
    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    move-exception v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Dynamic intent resolution failed: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 4
    :goto_0
    if-nez v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    nop

    .line 6
    const-string v4, "serviceResponseIntentKey"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v4, v3

    .line 4
    :goto_1
    if-nez v4, :cond_3

    iget-object v3, v2, Lbmz;->b:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Dynamic lookup for intent failed for action: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 16
    :cond_1
    new-instance v3, Ljava/lang/String;

    .line 7
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6
    :cond_2
    nop

    .line 7
    :cond_3
    :goto_3
    if-nez v4, :cond_5

    new-instance v0, Landroid/content/Intent;

    iget-object v3, v2, Lbmz;->b:Ljava/lang/String;

    .line 8
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lbmz;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_4

    .line 6
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 9
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, v2, Lbmz;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 10
    :cond_5
    :goto_4
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    goto :goto_5

    .line 11
    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 12
    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    :try_start_1
    invoke-static {v1}, Lboc;->b(Landroid/content/Context;)Ldhq;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ldhq;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 14
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 16
    const-string v0, "ConnectionTracker"

    const-string v1, "Attempted to bind to a service in a STOPPED package."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5
    :catch_1
    move-exception v0

    .line 10
    :cond_7
    :goto_5
    const/16 v0, 0x1081

    .line 15
    invoke-virtual {v1, v4, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    :goto_6
    iput-boolean v2, p0, Lbnb;->c:Z

    if-eqz v2, :cond_8

    iget-object v0, p0, Lbnb;->g:Lbna;

    iget-object v0, v0, Lbna;->e:Landroid/os/Handler;

    iget-object v1, p0, Lbnb;->e:Lbmz;

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbnb;->g:Lbna;

    iget-object v1, v1, Lbna;->e:Landroid/os/Handler;

    iget-object v2, p0, Lbnb;->g:Lbna;

    iget-wide v2, v2, Lbna;->f:J

    .line 18
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lbnb;->b:I

    :try_start_2
    iget-object v0, p0, Lbnb;->g:Lbna;

    iget-object v0, v0, Lbna;->d:Landroid/content/Context;

    .line 19
    invoke-static {v0, p0}, Lbob;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 5
    :catch_2
    move-exception v0

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lbnb;->g:Lbna;

    iget-object v0, v0, Lbna;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbnb;->g:Lbna;

    iget-object v1, v1, Lbna;->e:Landroid/os/Handler;

    iget-object v2, p0, Lbnb;->e:Lbmz;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lbnb;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lbnb;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lbnb;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 3
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lbnb;->b:I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lbnb;->g:Lbna;

    iget-object v0, v0, Lbna;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbnb;->g:Lbna;

    iget-object v1, v1, Lbna;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lbnb;->e:Lbmz;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lbnb;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lbnb;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lbnb;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 3
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lbnb;->b:I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
