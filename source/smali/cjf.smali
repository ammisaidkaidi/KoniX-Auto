.class public final Lcjf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcjq;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ldag;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lchm;

.field public final e:Lcim;

.field public final f:Ljava/lang/Object;

.field public g:Ldag;

.field private final h:Lcnd;

.field private final i:Lczq;

.field private final j:Lcjw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldag;Lcjw;Ljava/util/concurrent/Executor;Lchm;Lcim;Lcnd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcjf;->f:Ljava/lang/Object;

    invoke-static {}, Lczq;->a()Lczq;

    move-result-object v0

    iput-object v0, p0, Lcjf;->i:Lczq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcjf;->g:Ldag;

    iput-object p1, p0, Lcjf;->a:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lhh;->k(Ldag;)Ldag;

    move-result-object p1

    iput-object p1, p0, Lcjf;->b:Ldag;

    iput-object p3, p0, Lcjf;->j:Lcjw;

    .line 3
    invoke-static {p4}, Lhi;->m(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcjf;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcjf;->d:Lchm;

    iput-object p6, p0, Lcjf;->e:Lcim;

    iput-object p7, p0, Lcjf;->h:Lcnd;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 4

    .line 1
    iget-object v0, p0, Lcjf;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcjf;->g:Ldag;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ldag;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcjf;->g:Ldag;

    .line 2
    invoke-static {v1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcjf;->g:Ldag;

    .line 2
    :cond_0
    :goto_0
    iget-object v1, p0, Lcjf;->g:Ldag;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcjf;->i:Lczq;

    new-instance v2, Lciy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lciy;-><init>(Lcjf;I)V

    .line 3
    invoke-static {v2}, Lcnm;->a(Lczb;)Lczb;

    move-result-object v2

    iget-object v3, p0, Lcjf;->c:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {v1, v2, v3}, Lczq;->b(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lhh;->k(Ldag;)Ldag;

    move-result-object v1

    iput-object v1, p0, Lcjf;->g:Ldag;

    :cond_1
    iget-object v1, p0, Lcjf;->g:Ldag;

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final b(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcjf;->h:Lcnd;

    const-string v1, "Read "

    iget-object v2, p0, Lcjf;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 1
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Lcnd;->b(Ljava/lang/String;)Lcng;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcjf;->d:Lchm;

    new-instance v2, Lcie;

    invoke-direct {v2}, Lcie;-><init>()V

    .line 3
    invoke-virtual {v1, p1, v2}, Lchm;->b(Landroid/net/Uri;Lchl;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcjf;->j:Lcjw;

    iget-object v3, v2, Lcjw;->a:Lder;

    .line 4
    invoke-interface {v3}, Lder;->A()Ldex;

    move-result-object v3

    iget-object v2, v2, Lcjw;->b:Ldcz;

    invoke-interface {v3, v1, v2}, Ldex;->c(Ljava/io/InputStream;Ldcz;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lcng;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    .line 1
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :cond_2
    :goto_1
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 8
    :catchall_2
    move-exception v1

    .line 1
    :try_start_7
    invoke-virtual {v0}, Lcng;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :goto_2
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 7
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1
    :catch_1
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcjf;->d:Lchm;

    .line 6
    invoke-virtual {v1, p1}, Lchm;->d(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1
    iget-object v0, p0, Lcjf;->j:Lcjw;

    iget-object p1, v0, Lcjw;->a:Lder;

    return-object p1

    .line 7
    :cond_3
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_3
    iget-object v1, p0, Lcjf;->d:Lchm;

    .line 8
    invoke-static {v1, p1, v0}, Lbvs;->p(Lchm;Landroid/net/Uri;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final c(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, ".tmp"

    invoke-static {p1, v0}, Lbxr;->d(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcjf;->h:Lcnd;

    const-string v2, "Write "

    iget-object v3, p0, Lcjf;->a:Ljava/lang/String;

    .line 2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/String;

    .line 2
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 3
    :goto_0
    invoke-virtual {v1, v2}, Lcnd;->b(Ljava/lang/String;)Lcng;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lchs;

    invoke-direct {v2}, Lchs;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcjf;->d:Lchm;

    new-instance v4, Lcif;

    invoke-direct {v4}, Lcif;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Lchs;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    iput-object v5, v4, Lcif;->a:[Lchs;

    .line 4
    invoke-virtual {v3, v0, v4}, Lchm;->b(Landroid/net/Uri;Lchl;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    :try_start_3
    check-cast p2, Lder;

    .line 6
    invoke-interface {p2, v3}, Lder;->g(Ljava/io/OutputStream;)V

    iget-object p2, v2, Lchs;->b:Lchz;

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, v2, Lchs;->a:Ljava/io/OutputStream;

    .line 8
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    iget-object p2, v2, Lchs;->b:Lchz;

    iget-object p2, p2, Lchz;->a:Ljava/io/FileOutputStream;

    .line 9
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    .line 11
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 13
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Lcng;->close()V

    iget-object p2, p0, Lcjf;->d:Lchm;

    .line 14
    invoke-virtual {p2, v0, p1}, Lchm;->c(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    .line 6
    :cond_2
    :try_start_6
    new-instance p2, Lchx;

    const-string v2, "Cannot sync underlying stream"

    .line 7
    invoke-direct {p2, v2}, Lchx;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 12
    :catchall_0
    move-exception p2

    if-eqz v3, :cond_3

    .line 10
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :cond_3
    :goto_1
    :try_start_8
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2
    :catch_0
    move-exception p2

    :try_start_9
    iget-object v2, p0, Lcjf;->d:Lchm;

    .line 12
    invoke-static {v2, p1, p2}, Lbvs;->p(Lchm;Landroid/net/Uri;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 18
    :catchall_2
    move-exception p1

    .line 2
    :try_start_a
    invoke-virtual {v1}, Lcng;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    .line 10
    :catchall_3
    move-exception p2

    .line 2
    :goto_2
    :try_start_b
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcjf;->d:Lchm;

    .line 15
    invoke-virtual {p2, v0}, Lchm;->d(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_4

    :try_start_c
    iget-object p2, p0, Lcjf;->d:Lchm;

    .line 16
    invoke-virtual {p2, v0}, Lchm;->a(Landroid/net/Uri;)Lchk;

    move-result-object p2

    iget-object v0, p2, Lchk;->a:Lcig;

    iget-object p2, p2, Lchk;->d:Landroid/net/Uri;

    .line 17
    invoke-interface {v0, p2}, Lcig;->k(Landroid/net/Uri;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_3

    .line 10
    :catch_2
    move-exception p2

    .line 18
    :cond_4
    :goto_3
    throw p1
.end method

.method public final d(Lczc;Ljava/util/concurrent/Executor;)Ldag;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcjf;->a()Ldag;

    move-result-object v0

    iget-object v1, p0, Lcjf;->i:Lczq;

    new-instance v2, Lciz;

    invoke-direct {v2, p0, v0, p1, p2}, Lciz;-><init>(Lcjf;Ldag;Lczc;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-static {v2}, Lcnm;->a(Lczb;)Lczb;

    move-result-object p1

    .line 3
    sget-object p2, Lczj;->a:Lczj;

    .line 4
    invoke-virtual {v1, p1, p2}, Lczq;->b(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1
.end method
