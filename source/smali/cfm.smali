.class final Lcfm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcfl;


# instance fields
.field final b:Lcdz;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Lcgh;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field private volatile i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcfl;

    invoke-direct {v0}, Lcfl;-><init>()V

    sput-object v0, Lcfm;->a:Lcfl;

    return-void
.end method

.method protected constructor <init>(Lcdz;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfm;->b:Lcdz;

    iput-object p2, p0, Lcfm;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcfm;->f:Z

    const-string p1, ""

    iput-object p1, p0, Lcfm;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lcfm;->g:Z

    iput-boolean p4, p0, Lcfm;->h:Z

    new-instance p1, Lcgh;

    new-instance p2, Lcfk;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcfk;-><init>(Lcfm;I)V

    invoke-direct {p1, p2}, Lcgh;-><init>(Lcol;)V

    iput-object p1, p0, Lcfm;->e:Lcgh;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcfm;->e:Lcgh;

    iget-object v1, v0, Lcgh;->b:Ljava/util/Map;

    if-nez v1, :cond_1

    iget-object v2, v0, Lcgh;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Lcgh;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcgh;->c:Lcol;

    invoke-interface {v1}, Lcol;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcgh;->b:Ljava/util/Map;

    const/4 v3, 0x0

    iput-object v3, v0, Lcgh;->c:Lcol;

    goto :goto_0

    .line 2
    :cond_0
    nop

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v2

    goto :goto_1

    .line 4
    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 4
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    :goto_1
    return-object p1
.end method

.method protected final b()Ldag;
    .locals 4

    .line 1
    iget-object v0, p0, Lcfm;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ldad;->a:Ldag;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcfm;->b:Lcdz;

    .line 3
    invoke-virtual {v0}, Lcdz;->b()Lceo;

    move-result-object v0

    iget-object v1, p0, Lcfm;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lceo;->a(Ljava/lang/String;)Ldag;

    move-result-object v0

    new-instance v1, Lcgp;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcgp;-><init>(Lcfm;I)V

    const-class v2, Lcep;

    iget-object v3, p0, Lcfm;->b:Lcdz;

    .line 4
    invoke-virtual {v3}, Lcdz;->d()Ldai;

    move-result-object v3

    .line 5
    invoke-static {v0, v2, v1, v3}, Lcyb;->e(Ldag;Ljava/lang/Class;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/util/Map;
    .locals 7

    .line 1
    const-string v0, "Unable to retrieve flag snapshot for "

    const-string v1, "ProtoDataStoreFlagStore"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcfm;->b:Lcdz;

    iget-object v4, p0, Lcfm;->c:Ljava/lang/String;

    iget-object v5, p0, Lcfm;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lcfm;->g:Z

    .line 2
    invoke-static {v3, v4, v5, v6}, Lcgv;->g(Lcdz;Ljava/lang/String;Ljava/lang/String;Z)Lcjp;

    move-result-object v3

    invoke-virtual {v3}, Lcjp;->a()Ldag;

    move-result-object v3

    .line 3
    invoke-static {v3}, Lhi;->j(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcgw;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 4
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 12
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcfm;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x33

    new-instance v6, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from storage."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    iget-object v2, v3, Lcgw;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    iget-object v0, v3, Lcgw;->b:Ljava/lang/String;

    iput-object v0, p0, Lcfm;->i:Ljava/lang/String;

    iget-object v0, p0, Lcfm;->b:Lcdz;

    .line 10
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object v0

    new-instance v1, Lcgq;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcgq;-><init>(Lcfm;I)V

    invoke-interface {v0, v1}, Ldai;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcfm;->b:Lcdz;

    .line 11
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object v0

    new-instance v1, Lcgq;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcgq;-><init>(Lcfm;I)V

    invoke-interface {v0, v1}, Ldai;->execute(Ljava/lang/Runnable;)V

    .line 12
    invoke-static {v3}, Lcgv;->c(Lcgw;)Lcqk;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    :goto_2
    iget-object v2, p0, Lcfm;->b:Lcdz;

    .line 8
    invoke-virtual {v2}, Lcdz;->d()Ldai;

    move-result-object v2

    new-instance v3, Lcgq;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcgq;-><init>(Lcfm;I)V

    invoke-interface {v2, v3}, Ldai;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcfm;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x36

    .line 9
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", using defaults."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcse;->a:Lcqk;

    return-object v0

    .line 5
    :goto_3
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    throw v0
.end method

.method protected final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcfm;->b:Lcdz;

    iget-object v1, p0, Lcfm;->c:Ljava/lang/String;

    iget-object v2, p0, Lcfm;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcgv;->d(Lcdz;Ljava/lang/String;Ljava/lang/String;)Ldag;

    move-result-object v0

    new-instance v1, Lcgp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcgp;-><init>(Lcfm;I)V

    iget-object v2, p0, Lcfm;->b:Lcdz;

    .line 2
    invoke-virtual {v2}, Lcdz;->d()Ldai;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v1

    new-instance v2, Lcgr;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcgr;-><init>(Lcfm;Ldag;I)V

    iget-object v0, p0, Lcfm;->b:Lcdz;

    .line 4
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object v0

    .line 5
    invoke-interface {v1, v2, v0}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final synthetic e(Ldag;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcgw;

    invoke-static {p1}, Lcgv;->c(Lcgw;)Lcqk;

    move-result-object p1

    iget-object v0, p0, Lcfm;->e:Lcgh;

    iget-object v1, v0, Lcgh;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, v0, Lcgh;->b:Ljava/util/Map;

    if-nez v2, :cond_0

    iput-object p1, v0, Lcgh;->b:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, v0, Lcgh;->c:Lcol;

    .line 2
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, v0, Lcgh;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    :try_start_2
    iget-object p1, p0, Lcfm;->b:Lcdz;

    .line 5
    invoke-virtual {p1}, Lcdz;->c()Lcgg;

    iget-object p1, p0, Lcfm;->b:Lcdz;

    .line 6
    invoke-virtual {p1}, Lcdz;->c()Lcgg;

    move-result-object p1

    invoke-interface {p1}, Lcgg;->a()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 6
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lcfm;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to update local snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", may result in stale flags."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ProtoDataStoreFlagStore"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
