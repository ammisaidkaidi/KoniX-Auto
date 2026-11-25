.class final Lzv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzy;


# direct methods
.method public constructor <init>(Lzy;)V
    .locals 0

    iput-object p1, p0, Lzv;->a:Lzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzv;->a:Lzy;

    iget-object v0, v0, Lzy;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lzv;->a:Lzy;

    iget-object v1, v1, Lzy;->g:Ljava/lang/Object;

    iget-object v2, p0, Lzv;->a:Lzy;

    sget-object v3, Lzy;->a:Ljava/lang/Object;

    iput-object v3, v2, Lzy;->g:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lzv;->a:Lzy;

    .line 2
    invoke-virtual {v0, v1}, Lzy;->g(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
