.class public final Lcbg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Lcay;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/List;

.field private final f:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/trace/TraceData"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcbg;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcbg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcbg;->d:Ljava/util/Map;

    new-instance v0, Lcbf;

    .line 3
    invoke-direct {v0, p0}, Lcbf;-><init>(Lcbg;)V

    iput-object v0, p0, Lcbg;->f:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcbg;->e:Ljava/util/List;

    .line 5
    new-instance v0, Lcay;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-direct {v0, p1, v1, v2, v3}, Lcay;-><init>(Ljava/lang/String;JI)V

    iput-object v0, p0, Lcbg;->c:Lcay;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcbg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcbg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/util/ArrayDeque;
    .locals 1

    .line 1
    iget-object v0, p0, Lcbg;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    return-object v0
.end method
