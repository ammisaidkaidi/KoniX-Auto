.class public final Lagf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Laha;

.field public final d:I

.field public final e:I

.field public final f:Lahb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lagf;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lagf;->a:Ljava/util/concurrent/Executor;

    .line 2
    const/4 v0, 0x1

    invoke-static {v0}, Lagf;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lagf;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Laha;

    invoke-direct {v0}, Laha;-><init>()V

    iput-object v0, p0, Lagf;->c:Laha;

    new-instance v0, Lahb;

    .line 4
    invoke-direct {v0}, Lahb;-><init>()V

    iput-object v0, p0, Lagf;->f:Lahb;

    const v0, 0x7fffffff

    iput v0, p0, Lagf;->d:I

    const/16 v0, 0x14

    iput v0, p0, Lagf;->e:I

    return-void
.end method

.method private static final a(Z)Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lagd;

    .line 2
    invoke-direct {v1, p0}, Lagd;-><init>(Z)V

    .line 3
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
