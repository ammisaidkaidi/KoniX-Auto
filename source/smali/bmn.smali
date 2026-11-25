.class public abstract Lbmn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final r:[Lbjb;


# instance fields
.field a:Lbne;

.field public final b:Landroid/content/Context;

.field final c:Landroid/os/Handler;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field protected f:Lbmi;

.field public final g:Ljava/util/ArrayList;

.field public h:I

.field public final i:I

.field public volatile j:Ljava/lang/String;

.field public k:Lbiz;

.field public l:Z

.field public volatile m:Lbmr;

.field protected final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final o:Lbmw;

.field public final p:Lbmx;

.field public q:Lbnk;

.field private volatile s:Ljava/lang/String;

.field private final t:Lbna;

.field private u:Landroid/os/IInterface;

.field private v:Lbmj;

.field private final w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lbjb;

    sput-object v0, Lbmn;->r:[Lbjb;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lbna;Lbje;ILbmw;Lbmx;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbmn;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lbmn;->d:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lbmn;->e:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbmn;->g:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lbmn;->h:I

    iput-object v0, p0, Lbmn;->k:Lbiz;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbmn;->l:Z

    iput-object v0, p0, Lbmn;->m:Lbmr;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lbmn;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lbmn;->b:Landroid/content/Context;

    .line 4
    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lbmn;->t:Lbna;

    .line 6
    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lbmg;

    .line 7
    invoke-direct {p1, p0, p2}, Lbmg;-><init>(Lbmn;Landroid/os/Looper;)V

    iput-object p1, p0, Lbmn;->c:Landroid/os/Handler;

    iput p5, p0, Lbmn;->i:I

    iput-object p6, p0, Lbmn;->o:Lbmw;

    iput-object p7, p0, Lbmn;->p:Lbmx;

    iput-object p8, p0, Lbmn;->w:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic B(Lbmn;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbmn;->F(ILandroid/os/IInterface;)V

    return-void
.end method

.method private final F(ILandroid/os/IInterface;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 1
    :goto_0
    if-nez p2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 20
    :cond_1
    const/4 v3, 0x1

    .line 1
    :goto_1
    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    .line 20
    :cond_2
    nop

    .line 1
    :goto_2
    invoke-static {v0}, Lhr;->e(Z)V

    iget-object v0, p0, Lbmn;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lbmn;->h:I

    iput-object p2, p0, Lbmn;->u:Landroid/os/IInterface;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 19
    :pswitch_0
    invoke-static {p2}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_4

    .line 1
    :pswitch_1
    iget-object p1, p0, Lbmn;->v:Lbmj;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lbmn;->a:Lbne;

    if-eqz p2, :cond_3

    const-string v1, "GmsClient"

    iget-object v2, p2, Lbne;->a:Ljava/lang/String;

    iget-object p2, p2, Lbne;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lbmn;->t:Lbna;

    iget-object v1, p0, Lbmn;->a:Lbne;

    iget-object v2, v1, Lbne;->a:Ljava/lang/String;

    iget-object v3, v1, Lbne;->b:Ljava/lang/String;

    iget v1, v1, Lbne;->c:I

    .line 6
    invoke-virtual {p0}, Lbmn;->E()V

    iget-object v1, p0, Lbmn;->a:Lbne;

    iget-boolean v1, v1, Lbne;->d:Z

    .line 7
    invoke-virtual {p2, v2, p1, v1}, Lbna;->e(Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    iget-object p1, p0, Lbmn;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_3
    new-instance p1, Lbmj;

    iget-object p2, p0, Lbmn;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lbmj;-><init>(Lbmn;I)V

    iput-object p1, p0, Lbmn;->v:Lbmj;

    new-instance p2, Lbne;

    invoke-virtual {p0}, Lbmn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbmn;->f()Z

    move-result v2

    invoke-direct {p2, v1, v2}, Lbne;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lbmn;->a:Lbne;

    iget-boolean p2, p2, Lbne;->d:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lbmn;->a()I

    move-result p2

    const v1, 0x1110e58

    if-ge p2, v1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object v1, p0, Lbmn;->a:Lbne;

    iget-object v1, v1, Lbne;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 21
    :cond_4
    new-instance v1, Ljava/lang/String;

    .line 18
    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_3
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, Lbmn;->t:Lbna;

    iget-object v1, p0, Lbmn;->a:Lbne;

    iget-object v2, v1, Lbne;->a:Ljava/lang/String;

    iget-object v3, v1, Lbne;->b:Ljava/lang/String;

    iget v1, v1, Lbne;->c:I

    .line 10
    invoke-virtual {p0}, Lbmn;->E()V

    iget-object v1, p0, Lbmn;->a:Lbne;

    iget-boolean v1, v1, Lbne;->d:Z

    .line 11
    invoke-virtual {p0}, Lbmn;->C()V

    .line 12
    new-instance v3, Lbmz;

    invoke-direct {v3, v2, v1}, Lbmz;-><init>(Ljava/lang/String;Z)V

    .line 13
    invoke-virtual {p2, v3, p1}, Lbna;->d(Lbmz;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "GmsClient"

    iget-object p2, p0, Lbmn;->a:Lbne;

    iget-object v1, p2, Lbne;->a:Ljava/lang/String;

    iget-object p2, p2, Lbne;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    iget-object p2, p0, Lbmn;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2}, Lbmn;->D(II)V

    goto :goto_4

    .line 21
    :pswitch_2
    iget-object p1, p0, Lbmn;->v:Lbmj;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lbmn;->t:Lbna;

    iget-object v1, p0, Lbmn;->a:Lbne;

    iget-object v2, v1, Lbne;->a:Ljava/lang/String;

    iget-object v3, v1, Lbne;->b:Ljava/lang/String;

    iget v1, v1, Lbne;->c:I

    .line 2
    invoke-virtual {p0}, Lbmn;->E()V

    iget-object v1, p0, Lbmn;->a:Lbne;

    iget-boolean v1, v1, Lbne;->d:Z

    .line 3
    invoke-virtual {p2, v2, p1, v1}, Lbna;->e(Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lbmn;->v:Lbmj;

    .line 21
    :cond_6
    :goto_4
    monitor-exit v0

    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A()[Lbjb;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected C()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected final D(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbmn;->c:Landroid/os/Handler;

    new-instance v1, Lbmm;

    invoke-direct {v1, p0, p1}, Lbmm;-><init>(Lbmn;I)V

    .line 2
    const/4 p1, 0x7

    const/4 v2, -0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbmn;->w:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbmn;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected abstract b(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbmn;->s:Ljava/lang/String;

    invoke-virtual {p0}, Lbmn;->l()V

    return-void
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()[Lbjb;
    .locals 1

    sget-object v0, Lbmn;->r:[Lbjb;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbmn;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Lbmi;)V
    .locals 1

    .line 1
    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lbmn;->f:Lbmi;

    .line 2
    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbmn;->F(ILandroid/os/IInterface;)V

    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbmn;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lbmn;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbmn;->g:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lbmn;->g:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbmh;

    invoke-virtual {v3}, Lbmh;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbmn;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lbmn;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lbmn;->q:Lbnk;

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lbmn;->F(ILandroid/os/IInterface;)V

    return-void

    .line 5
    :catchall_0
    move-exception v0

    .line 6
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 7
    :catchall_1
    move-exception v1

    .line 5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final m()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbmn;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbmn;->h:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lbmn;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbmn;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()[Lbjb;
    .locals 1

    iget-object v0, p0, Lbmn;->m:Lbmr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lbmr;->b:[Lbjb;

    return-object v0
.end method

.method public final q(Lbli;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lbli;->a:Lblj;

    iget-object v0, v0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    new-instance v1, Lblh;

    invoke-direct {v1, p1}, Lblh;-><init>(Lbli;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbmn;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmn;->a:Lbne;

    if-eqz v0, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()V
    .locals 0

    return-void
.end method

.method public final t(Lbng;Ljava/util/Set;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lbmn;->v()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lbmv;

    iget v2, p0, Lbmn;->i:I

    iget-object v3, p0, Lbmn;->j:Ljava/lang/String;

    .line 2
    invoke-direct {v1, v2, v3}, Lbmv;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lbmn;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbmv;->d:Ljava/lang/String;

    iput-object v0, v1, Lbmv;->g:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lbmv;->f:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual {p0}, Lbmn;->o()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lbmn;->u()Landroid/accounts/Account;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    .line 5
    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object p2, v1, Lbmv;->h:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lasp;->a:Landroid/os/IBinder;

    iput-object p1, v1, Lbmv;->e:Landroid/os/IBinder;

    :cond_2
    invoke-virtual {p0}, Lbmn;->A()[Lbjb;

    move-result-object p1

    iput-object p1, v1, Lbmv;->i:[Lbjb;

    .line 6
    invoke-virtual {p0}, Lbmn;->h()[Lbjb;

    move-result-object p1

    iput-object p1, v1, Lbmv;->j:[Lbjb;

    invoke-virtual {p0}, Lbmn;->g()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iput-boolean p2, v1, Lbmv;->m:Z

    :cond_3
    :try_start_0
    iget-object p1, p0, Lbmn;->e:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lbmn;->q:Lbnk;

    if-eqz v0, :cond_4

    new-instance v2, Lbnj;

    iget-object v3, p0, Lbmn;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lbnj;-><init>(Lbmn;I)V

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 10
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 12
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    const/4 p2, 0x0

    invoke-static {v1, v3, p2}, Lbmt;->a(Lbmv;Landroid/os/Parcel;I)V

    iget-object v0, v0, Lbnk;->a:Landroid/os/IBinder;

    const/16 v1, 0x2e

    .line 14
    invoke-interface {v0, v1, v3, v4, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 20
    :catchall_0
    move-exception p2

    .line 16
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 18
    throw p2

    .line 20
    :cond_4
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    .line 19
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_0
    monitor-exit p1

    return-void

    .line 23
    :catchall_1
    move-exception p2

    .line 20
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 24
    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 21
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    iget-object p2, p0, Lbmn;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lbmn;->x(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    .line 28
    :catch_2
    move-exception p1

    .line 24
    throw p1

    .line 19
    :catch_3
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 25
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lbmn;->c:Landroid/os/Handler;

    const/4 p2, 0x6

    iget-object v0, p0, Lbmn;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    .line 27
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public u()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected v()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final w()Landroid/os/IInterface;
    .locals 3

    .line 1
    iget-object v0, p0, Lbmn;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbmn;->h:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lbmn;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbmn;->u:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    .line 2
    invoke-static {v1, v2}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    .line 2
    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final x(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbmn;->c:Landroid/os/Handler;

    new-instance v1, Lbml;

    invoke-direct {v1, p0, p1, p2, p3}, Lbml;-><init>(Lbmn;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2
    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final y(IILandroid/os/IInterface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbmn;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbmn;->h:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p2, p3}, Lbmn;->F(ILandroid/os/IInterface;)V

    .line 3
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Lbmn;->m:Lbmr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
