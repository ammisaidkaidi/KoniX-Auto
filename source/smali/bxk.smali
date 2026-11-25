.class final Lbxk;
.super Lbxg;
.source "PG"

# interfaces
.implements Lbwq;
.implements Lbuw;
.implements Lbvd;
.implements Lbvb;


# static fields
.field public static final a:Lcsz;


# instance fields
.field volatile b:Lbtx;

.field public final c:Landroid/content/Context;

.field public final d:Lbwn;

.field public final e:Ldgz;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile i:Z

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Z

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Lcoc;

.field private final n:Lbvh;

.field private final o:Lcbv;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbxk;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Lbwo;Landroid/content/Context;Ljava/util/concurrent/Executor;Ldgz;Lcoc;Lbvh;Lcbv;Lcoc;Ldny;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbxg;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbxk;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbxk;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbxk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbxk;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbxk;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lbxk;->e:Ldgz;

    iput-object p5, p0, Lbxk;->m:Lcoc;

    iput-object p6, p0, Lbxk;->n:Lbvh;

    iput-object p7, p0, Lbxk;->o:Lcbv;

    .line 6
    sget-object p5, Lczj;->a:Lczj;

    .line 7
    const/4 p6, 0x0

    invoke-virtual {p1, p5, p4, p6}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lbxk;->d:Lbwn;

    iput-object p2, p0, Lbxk;->c:Landroid/content/Context;

    iput-object p3, p0, Lbxk;->l:Ljava/util/concurrent/Executor;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p8, p1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lbxk;->k:Z

    new-instance p1, Lbxi;

    invoke-direct {p1, p0, p9}, Lbxi;-><init>(Lbxk;Ldny;)V

    iput-object p1, p0, Lbxk;->q:Ljava/lang/Runnable;

    return-void
.end method

.method private final f(ILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lbxh;

    invoke-direct {v0, p0, p2, p1}, Lbxh;-><init>(Lbxk;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    iget-object p1, p0, Lbxk;->l:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, p1}, Lhh;->m(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lbxk;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    iget-object p2, p0, Lbxk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {p0, p1, p2}, Lbxk;->f(ILjava/util/concurrent/atomic/AtomicInteger;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    const/4 v0, 0x0

    invoke-static {v0}, Lcoe;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lbtx;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "null"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Lbtx;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lbtx;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lbtx;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_1
    iput-object v0, p0, Lbxk;->b:Lbtx;

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lbxk;->b:Lbtx;

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbxk;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lbxj;

    invoke-direct {v1, p0, v0}, Lbxj;-><init>(Lbxk;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method final e(ILbxf;)Ldag;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lbxf;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget p2, p2, Lbxf;->a:F

    iget-object v0, p0, Lbxk;->o:Lcbv;

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v2, p2, v1

    .line 2
    invoke-virtual {v0, v2}, Lcbv;->a(F)Lcbu;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcbu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Ldad;->a:Ldag;

    return-object p1

    :cond_0
    iget-object v0, p0, Lbxk;->d:Lbwn;

    .line 5
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v2

    .line 6
    sget-object v3, Ldpz;->y:Ldpz;

    .line 7
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 8
    sget-object v4, Ldpv;->d:Ldpv;

    .line 9
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    div-float/2addr v1, p2

    float-to-int p2, v1

    iget-boolean v1, v4, Lddf;->c:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v5, v4, Lddf;->c:Z

    :cond_1
    iget-object v1, v4, Lddf;->b:Lddk;

    .line 11
    check-cast v1, Ldpv;

    iget v6, v1, Ldpv;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v1, Ldpv;->a:I

    iput p2, v1, Ldpv;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Ldpv;->b:I

    or-int/lit8 p1, v6, 0x1

    iput p1, v1, Ldpv;->a:I

    iget-boolean p1, v3, Lddf;->c:Z

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v5, v3, Lddf;->c:Z

    :cond_2
    iget-object p1, v3, Lddf;->b:Lddk;

    .line 13
    check-cast p1, Ldpz;

    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object p2

    check-cast p2, Ldpv;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Ldpz;->i:Ldpv;

    iget p2, p1, Ldpz;->a:I

    or-int/lit16 p2, p2, 0x80

    iput p2, p1, Ldpz;->a:I

    .line 15
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldpz;

    .line 16
    invoke-virtual {v2, p1}, Lbwi;->d(Ldpz;)V

    .line 17
    invoke-virtual {v2}, Lbwi;->a()Lbwj;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object p1

    return-object p1

    .line 19
    :cond_3
    sget-object p1, Ldad;->a:Ldag;

    return-object p1
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbxk;->m:Lcoc;

    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxk;->m:Lcoc;

    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxm;

    invoke-interface {v0}, Lbxm;->a()V

    :cond_0
    iget-object v0, p0, Lbxk;->n:Lbvh;

    .line 2
    invoke-virtual {v0, p0}, Lbvh;->a(Lbvg;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lbxk;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {p0, v0, v1}, Lbxk;->f(ILjava/util/concurrent/atomic/AtomicInteger;)V

    iget-boolean v0, p0, Lbxk;->k:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lbxk;->d()V

    :cond_1
    iget-object v0, p0, Lbxk;->q:Ljava/lang/Runnable;

    iget-object v1, p0, Lbxk;->l:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {v0, v1}, Lhh;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method
