.class public final Lbna;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Landroid/os/HandlerThread;

.field private static i:Lbna;


# instance fields
.field public final c:Ljava/util/HashMap;

.field public final d:Landroid/content/Context;

.field public volatile e:Landroid/os/Handler;

.field public final f:J

.field private final g:Lbnc;

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbna;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbna;->c:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lbnc;

    invoke-direct {v0, p0}, Lbnc;-><init>(Lbna;)V

    iput-object v0, p0, Lbna;->g:Lbnc;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbna;->d:Landroid/content/Context;

    new-instance p1, Lboh;

    .line 5
    invoke-direct {p1, p2, v0}, Lboh;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lbna;->e:Landroid/os/Handler;

    sget-object p1, Lbob;->b:Lbob;

    if-nez p1, :cond_1

    sget-object p1, Lbob;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lbob;->b:Lbob;

    if-nez p2, :cond_0

    new-instance p2, Lbob;

    .line 6
    invoke-direct {p2}, Lbob;-><init>()V

    sput-object p2, Lbob;->b:Lbob;

    .line 7
    :cond_0
    monitor-exit p1

    goto :goto_0

    .line 8
    :catchall_0
    move-exception p2

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lbob;->b:Lbob;

    .line 8
    invoke-static {p1}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lbna;->h:J

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lbna;->f:J

    return-void
.end method

.method public static a(Landroid/content/Context;)Lbna;
    .locals 3

    .line 1
    sget-object v0, Lbna;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbna;->i:Lbna;

    if-nez v1, :cond_0

    new-instance v1, Lbna;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lbna;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lbna;->i:Lbna;

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lbna;->i:Lbna;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 1
    new-instance v0, Lbmz;

    .line 2
    invoke-direct {v0, p1}, Lbmz;-><init>(Landroid/content/ComponentName;)V

    .line 1
    invoke-virtual {p0, v0, p2}, Lbna;->c(Lbmz;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected final c(Lbmz;Landroid/content/ServiceConnection;)V
    .locals 3

    .line 1
    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lbna;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbna;->c:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbnb;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1, p2}, Lbnb;->a(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, v1, Lbnb;->a:Ljava/util/Map;

    .line 5
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Lbnb;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lbna;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lbna;->e:Landroid/os/Handler;

    iget-wide v1, p0, Lbna;->h:J

    .line 8
    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Nonexistent connection status for service config: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Lbmz;Landroid/content/ServiceConnection;)Z
    .locals 4

    .line 1
    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lbna;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbna;->c:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbnb;

    if-nez v1, :cond_0

    new-instance v1, Lbnb;

    .line 3
    invoke-direct {v1, p0, p1}, Lbnb;-><init>(Lbna;Lbmz;)V

    .line 4
    invoke-virtual {v1, p2, p2}, Lbnb;->c(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V

    .line 5
    invoke-virtual {v1}, Lbnb;->d()V

    iget-object p2, p0, Lbna;->c:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lbna;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {v1, p2}, Lbnb;->a(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {v1, p2, p2}, Lbnb;->c(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V

    iget p1, v1, Lbnb;->b:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 12
    :pswitch_0
    invoke-virtual {v1}, Lbnb;->d()V

    goto :goto_0

    :pswitch_1
    iget-object p1, v1, Lbnb;->f:Landroid/content/ComponentName;

    iget-object v2, v1, Lbnb;->d:Landroid/os/IBinder;

    .line 11
    invoke-interface {p2, p1, v2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 6
    :goto_0
    iget-boolean p1, v1, Lbnb;->c:Z

    .line 13
    monitor-exit v0

    return p1

    .line 8
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/String;Landroid/content/ServiceConnection;Z)V
    .locals 1

    .line 1
    new-instance v0, Lbmz;

    invoke-direct {v0, p1, p3}, Lbmz;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p2}, Lbna;->c(Lbmz;Landroid/content/ServiceConnection;)V

    return-void
.end method
