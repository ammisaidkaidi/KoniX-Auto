.class final Lbuq;
.super Ljava/lang/ThreadLocal;
.source "PG"


# instance fields
.field final synthetic a:Lbut;


# direct methods
.method public constructor <init>(Lbut;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbuq;->a:Lbut;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lbuv;

    invoke-direct {v0}, Lbuv;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lbuq;->a:Lbut;

    iget-object v2, v2, Lbut;->a:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lbuq;->a:Lbut;

    iget-object v3, v3, Lbut;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v3, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
