.class public final Latk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Lcsz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Latk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "com/google/android/apps/auto/aareceiver/FloggerConfig"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Latk;->b:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Latk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcvg;

    invoke-direct {v0}, Lcvg;-><init>()V

    new-instance v2, Lcve;

    invoke-direct {v2}, Lcve;-><init>()V

    new-instance v3, Lcve;

    const-string v4, "AAP."

    iget-boolean v2, v2, Lcve;->b:Z

    invoke-direct {v3, v4, v2}, Lcve;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Lcve;

    iget-object v3, v3, Lcve;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcve;-><init>(Ljava/lang/String;Z)V

    iput-object v2, v0, Lcvg;->a:Lcvf;

    .line 2
    sget-object v2, Lcvh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcvg;->a:Lcvf;

    if-nez v0, :cond_0

    new-instance v0, Lcvp;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 4
    invoke-direct {v0, v1}, Lcvp;-><init>(Ljava/util/logging/Level;)V

    .line 5
    :cond_0
    sget-object v1, Lcvn;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcvn;->e()V

    .line 9
    sget-object v0, Lcvo;->a:Lcvo;

    iget-object v0, v0, Lcvo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    sget-object v1, Lcvu;->a:Lcvs;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Logger backends can only be configured once."

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Logger backend configuration may only occur once."

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Latk;->b:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/FloggerConfig"

    const-string v2, "configure"

    const/16 v3, 0x17

    const-string v4, "FloggerConfig.java"

    .line 13
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Flogger already configured"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
