.class public final Lczq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lczp;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ldad;->a:Ldag;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lczq;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lczp;

    invoke-direct {v0}, Lczp;-><init>()V

    iput-object v0, p0, Lczq;->a:Lczp;

    return-void
.end method

.method public static a()Lczq;
    .locals 1

    .line 1
    new-instance v0, Lczq;

    invoke-direct {v0}, Lczq;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b(Lczb;Ljava/util/concurrent/Executor;)Ldag;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lczo;

    .line 3
    invoke-direct {v5, p2, p0}, Lczo;-><init>(Ljava/util/concurrent/Executor;Lczq;)V

    new-instance p2, Lczm;

    invoke-direct {p2, v5, p1}, Lczm;-><init>(Lczo;Lczb;)V

    .line 4
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object v2

    iget-object p1, p0, Lczq;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ldag;

    .line 6
    invoke-static {p2}, Ldax;->e(Lczb;)Ldax;

    move-result-object p1

    .line 7
    invoke-interface {v3, p1, v5}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 8
    invoke-static {p1}, Lhh;->k(Ldag;)Ldag;

    move-result-object p2

    new-instance v6, Lczl;

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lczl;-><init>(Ldax;Ldas;Ldag;Ldag;Lczo;)V

    .line 9
    sget-object v0, Lczj;->a:Lczj;

    .line 10
    invoke-interface {p2, v6, v0}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget-object v0, Lczj;->a:Lczj;

    .line 11
    invoke-virtual {p1, v6, v0}, Lcyp;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method
