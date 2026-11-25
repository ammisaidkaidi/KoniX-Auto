.class public final Lbre;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbri;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lbrp;

.field private final c:Ljava/util/concurrent/Executor;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lbrp;I)V
    .locals 0

    iput p3, p0, Lbre;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbre;->a:Ljava/lang/Object;

    iput-object p1, p0, Lbre;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lbre;->b:Lbrp;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lbrp;I[B)V
    .locals 0

    iput p3, p0, Lbre;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbre;->a:Ljava/lang/Object;

    iput-object p1, p0, Lbre;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lbre;->b:Lbrp;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lbrp;I[C)V
    .locals 0

    iput p3, p0, Lbre;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbre;->a:Ljava/lang/Object;

    iput-object p1, p0, Lbre;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lbre;->b:Lbrp;

    return-void
.end method


# virtual methods
.method public final a(Lbrh;)V
    .locals 3

    .line 6
    iget v0, p0, Lbre;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lbrh;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbre;->a:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_0

    .line 8
    :pswitch_0
    check-cast p1, Lbro;

    iget-boolean p1, p1, Lbro;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbre;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 1
    :try_start_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbre;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lbqz;

    invoke-direct {v0, p0, v1}, Lbqz;-><init>(Lbre;[B)V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2
    :cond_0
    return-void

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Lbrh;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lbro;

    iget-boolean v0, v0, Lbro;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbre;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lbre;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lbrd;

    invoke-direct {v1, p0, p1}, Lbrd;-><init>(Lbre;Lbrh;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1
    :catchall_1
    move-exception p1

    .line 4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 5
    :cond_1
    return-void

    .line 7
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lbre;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lbrf;

    invoke-direct {v2, p0, p1, v1}, Lbrf;-><init>(Lbre;Lbrh;[B)V

    .line 8
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :catchall_2
    move-exception p1

    .line 7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 8
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
