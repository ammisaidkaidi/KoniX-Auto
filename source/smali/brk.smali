.class public final Lbrk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbro;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbro;

    invoke-direct {v0}, Lbro;-><init>()V

    iput-object v0, p0, Lbrk;->a:Lbro;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbrk;->a:Lbro;

    invoke-virtual {v0, p1}, Lbro;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lbrk;->a:Lbro;

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lbro;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2
    monitor-exit v1

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lbro;->c:Z

    iput-object p1, v0, Lbro;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lbro;->b:Lbrj;

    .line 4
    invoke-virtual {p1, v0}, Lbrj;->b(Lbrh;)V

    .line 2
    :goto_0
    return v3

    .line 4
    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lbrk;->a:Lbro;

    iget-object v1, v0, Lbro;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lbro;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    monitor-exit v1

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lbro;->c:Z

    iput-object p1, v0, Lbro;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lbro;->b:Lbrj;

    .line 3
    invoke-virtual {p1, v0}, Lbrj;->b(Lbrh;)V

    .line 1
    :goto_0
    return v3

    .line 3
    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
