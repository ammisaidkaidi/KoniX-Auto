.class final Lbrd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbrh;

.field final synthetic b:Lbre;


# direct methods
.method public constructor <init>(Lbre;Lbrh;)V
    .locals 0

    iput-object p1, p0, Lbrd;->b:Lbre;

    iput-object p2, p0, Lbrd;->a:Lbrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbrd;->b:Lbre;

    iget-object v0, v0, Lbre;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbrd;->b:Lbre;

    iget-object v1, v1, Lbre;->b:Lbrp;

    iget-object v2, p0, Lbrd;->a:Lbrh;

    invoke-virtual {v2}, Lbrh;->a()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lbrp;->a:Ljava/util/concurrent/CountDownLatch;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
