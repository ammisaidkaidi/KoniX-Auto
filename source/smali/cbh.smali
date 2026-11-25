.class public final Lcbh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbwq;
.implements Lcbc;


# instance fields
.field public final a:Lbwn;

.field public final b:Ldgz;

.field public final c:Ldgz;

.field public final d:Lcbv;

.field public final e:Lcbz;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field private final g:Ldai;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbwo;Ldai;Ldgz;Ldgz;Ldny;Lcbv;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcbh;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcbh;->g:Ldai;

    iput-object p3, p0, Lcbh;->b:Ldgz;

    iput-object p4, p0, Lcbh;->c:Ldgz;

    iput-object p6, p0, Lcbh;->d:Lcbv;

    sget-object p4, Lcbj;->a:Lcbj;

    .line 3
    invoke-virtual {p1, p2, p4, p5}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lcbh;->a:Lbwn;

    new-instance p1, Lcbl;

    invoke-direct {p1, p3}, Lcbl;-><init>(Ldgz;)V

    invoke-static {p1}, Lcbz;->a(Ldny;)Lcbz;

    move-result-object p1

    iput-object p1, p0, Lcbh;->e:Lcbz;

    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p6, p1}, Lcbv;->a(F)Lcbu;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJ)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    .line 2
    sget-object v0, Lcbm;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbg;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcbg;->c:Lcay;

    .line 4
    iget-wide v1, v1, Lcay;->c:J

    cmp-long v3, v1, p2

    if-gtz v3, :cond_1

    new-instance v10, Lcay;

    add-long v5, p2, p4

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    const/4 v9, 0x4

    move-object v1, v10

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v9}, Lcay;-><init>(Ljava/lang/String;JJJI)V

    iget-object v1, v0, Lcbg;->e:Ljava/util/List;

    .line 6
    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcbg;->e:Ljava/util/List;

    .line 7
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Lcbg;->b()I

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcbh;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbu;

    invoke-virtual {v0}, Lcbu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcbm;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;)Ldag;
    .locals 3

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    move-object p1, v0

    .line 2
    :cond_0
    invoke-static {p1}, Lcbm;->d(Ljava/lang/String;)Lcbg;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Ldad;->a:Ldag;

    return-object p1

    :cond_1
    new-instance v0, Lcbi;

    invoke-direct {v0, p0, p1}, Lcbi;-><init>(Lcbh;Lcbg;)V

    iget-object p1, p0, Lcbh;->g:Ldai;

    .line 4
    invoke-static {v0, p1}, Lhh;->m(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final u()V
    .locals 2

    .line 1
    new-instance v0, Lcbk;

    invoke-direct {v0, p0}, Lcbk;-><init>(Lcbh;)V

    iget-object v1, p0, Lcbh;->g:Ldai;

    invoke-static {v0, v1}, Lhh;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method
