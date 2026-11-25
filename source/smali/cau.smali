.class public final Lcau;
.super Lcar;
.source "PG"

# interfaces
.implements Lbwq;


# static fields
.field static final a:Lcqw;

.field public static final synthetic f:I

.field private static final g:Lcsz;


# instance fields
.field public final b:Lbwn;

.field final c:Lj$/util/concurrent/ConcurrentHashMap;

.field public final d:Ldgz;

.field public final e:Lcol;

.field private final h:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "com/google/android/libraries/performance/primes/metrics/timer/TimerMetricServiceImpl"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcau;->g:Lcsz;

    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Warm startup activity onStart"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, "Cold startup class loading"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "Cold startup from process creation"

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string v1, "Cold startup interactive before onDraw from process creation"

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string v1, "Cold startup interactive from process creation"

    aput-object v1, v7, v0

    const-string v1, "Cold startup"

    const-string v2, "Cold startup interactive"

    const-string v3, "Cold startup interactive before onDraw"

    const-string v4, "Warm startup"

    const-string v5, "Warm startup interactive"

    const-string v6, "Warm startup interactive before onDraw"

    invoke-static/range {v1 .. v7}, Lcqw;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lcau;->a:Lcqw;

    return-void
.end method

.method public constructor <init>(Lbwo;Ljava/util/concurrent/Executor;Ldgz;Ldny;Lcbv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcar;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcau;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    sget-object v0, Lczj;->a:Lczj;

    .line 3
    invoke-virtual {p1, v0, p3, p4}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lcau;->b:Lbwn;

    iput-object p2, p0, Lcau;->h:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcau;->d:Ldgz;

    new-instance p1, Lcas;

    invoke-direct {p1, p5, p3}, Lcas;-><init>(Lcbv;Ldgz;)V

    .line 4
    invoke-static {p1}, Lex;->i(Lcol;)Lcol;

    move-result-object p1

    iput-object p1, p0, Lcau;->e:Lcol;

    return-void
.end method

.method private final declared-synchronized c(Ljava/lang/String;I)Ldag;
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcau;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcaq;

    .line 2
    invoke-static {v0}, Lcaq;->b(Lcaq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Ldad;->a:Ldag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcau;->b:Lbwn;

    .line 4
    invoke-virtual {v1, p1}, Lbwn;->a(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v1, -0x1

    cmp-long v3, v5, v1

    if-eqz v3, :cond_4

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcaq;->c:J

    iput p2, v0, Lcaq;->e:I

    .line 6
    invoke-virtual {v0}, Lcaq;->a()J

    .line 7
    const/4 p2, 0x0

    invoke-static {p2}, Lcoe;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    move-object v4, p2

    goto :goto_0

    :cond_1
    move-object v4, p1

    .line 8
    :goto_0
    sget-object p1, Ldpz;->y:Ldpz;

    .line 9
    invoke-virtual {p1}, Lddk;->n()Lddf;

    move-result-object p1

    .line 10
    sget-object p2, Ldqa;->d:Ldqa;

    .line 11
    invoke-virtual {p2}, Lddk;->n()Lddf;

    move-result-object p2

    .line 12
    invoke-virtual {v0}, Lcaq;->a()J

    move-result-wide v7

    iget-boolean v1, p2, Lddf;->c:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lddf;->k()V

    iput-boolean v3, p2, Lddf;->c:Z

    :cond_2
    iget-object v1, p2, Lddf;->b:Lddk;

    .line 13
    check-cast v1, Ldqa;

    iget v9, v1, Ldqa;->a:I

    or-int/2addr v9, v2

    iput v9, v1, Ldqa;->a:I

    iput-wide v7, v1, Ldqa;->b:J

    iget v0, v0, Lcaq;->e:I

    add-int/lit8 v0, v0, -0x1

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 18
    :pswitch_0
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_3
    nop

    .line 13
    :goto_1
    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ldqa;->c:I

    or-int/lit8 v0, v9, 0x2

    iput v0, v1, Ldqa;->a:I

    .line 14
    invoke-virtual {p2}, Lddf;->f()Lddk;

    move-result-object p2

    check-cast p2, Ldqa;

    iget-boolean v0, p1, Lddf;->c:Z

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v3, p1, Lddf;->c:Z

    :cond_3
    iget-object v0, p1, Lddf;->b:Lddk;

    .line 15
    check-cast v0, Ldpz;

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, v0, Ldpz;->e:Ldqa;

    iget p2, v0, Ldpz;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, v0, Ldpz;->a:I

    .line 17
    invoke-virtual {p1}, Lddf;->f()Lddk;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ldpz;

    new-instance p1, Lcat;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcat;-><init>(Lcau;Ljava/lang/String;JLdpz;)V

    iget-object p2, p0, Lcau;->h:Ljava/util/concurrent/Executor;

    .line 18
    invoke-static {p1, p2}, Lhh;->m(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 19
    :cond_4
    :try_start_2
    sget-object p1, Ldad;->a:Ldag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lbtx;)Lcaq;
    .locals 5

    .line 1
    iget-object p1, p1, Lbtx;->a:Ljava/lang/String;

    sget-object v0, Lcau;->a:Lcqw;

    invoke-virtual {v0, p1}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcau;->g:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x78

    .line 2
    const-string v2, "com/google/android/libraries/performance/primes/metrics/timer/TimerMetricServiceImpl"

    const-string v3, "startGlobal"

    const-string v4, "TimerMetricServiceImpl.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "%s is reserved event. Dropping timer."

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lcaq;->a:Lcaq;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcau;->b:Lbwn;

    .line 4
    invoke-virtual {v0}, Lbwn;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object p1, Lcaq;->a:Lcaq;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcaq;

    .line 7
    invoke-direct {v0}, Lcaq;-><init>()V

    iget-object v1, p0, Lcau;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 3
    :goto_0
    return-object p1
.end method

.method public final b(Lbtx;I)Ldag;
    .locals 0

    .line 1
    iget-object p1, p1, Lbtx;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcau;->c(Ljava/lang/String;I)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic u()V
    .locals 0

    return-void
.end method
