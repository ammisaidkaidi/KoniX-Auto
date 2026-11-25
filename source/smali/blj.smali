.class public final Lblj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbkd;
.implements Lbke;


# instance fields
.field public final a:Ljava/util/Queue;

.field public final b:Lbjx;

.field public final c:Lbks;

.field public final d:Lblb;

.field public final e:Ljava/util/Map;

.field public final f:I

.field public g:Z

.field public final h:Ljava/util/List;

.field public i:I

.field public final synthetic j:Lbln;

.field private final k:Ljava/util/Set;

.field private final l:Lbma;

.field private m:Lbiz;


# direct methods
.method public constructor <init>(Lbln;Lbkc;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lblj;->j:Lbln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lblj;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lblj;->k:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lblj;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lblj;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lblj;->m:Lbiz;

    const/4 v1, 0x0

    iput v1, p0, Lblj;->i:I

    iget-object v1, p1, Lbln;->l:Landroid/os/Handler;

    .line 5
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p2}, Lbkc;->b()Lbmo;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lbmo;->a()Lbmp;

    move-result-object v5

    iget-object v1, p2, Lbkc;->c:Lbjy;

    iget-object v2, v1, Lbjy;->b:Lbjq;

    iget-object v3, p2, Lbkc;->a:Landroid/content/Context;

    iget-object v6, p2, Lbkc;->d:Lbjw;

    .line 7
    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lbjq;->b(Landroid/content/Context;Landroid/os/Looper;Lbmp;Ljava/lang/Object;Lbkd;Lbke;)Lbjx;

    move-result-object v1

    iget-object v2, p2, Lbkc;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v1

    check-cast v3, Lbmn;

    iput-object v2, v3, Lbmn;->j:Ljava/lang/String;

    :cond_0
    iput-object v1, p0, Lblj;->b:Lbjx;

    iget-object v2, p2, Lbkc;->e:Lbks;

    iput-object v2, p0, Lblj;->c:Lbks;

    new-instance v2, Lblb;

    .line 8
    invoke-direct {v2}, Lblb;-><init>()V

    iput-object v2, p0, Lblj;->d:Lblb;

    iget v2, p2, Lbkc;->g:I

    iput v2, p0, Lblj;->f:I

    .line 9
    invoke-interface {v1}, Lbjx;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Lbln;->f:Landroid/content/Context;

    iget-object p1, p1, Lbln;->l:Landroid/os/Handler;

    .line 10
    new-instance v1, Lbma;

    .line 11
    invoke-virtual {p2}, Lbkc;->b()Lbmo;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lbmo;->a()Lbmp;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lbma;-><init>(Landroid/content/Context;Landroid/os/Handler;Lbmp;)V

    iput-object v1, p0, Lblj;->l:Lbma;

    return-void

    :cond_1
    iput-object v0, p0, Lblj;->l:Lbma;

    return-void
.end method

.method private final p(Lbiz;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lblj;->c:Lbks;

    invoke-static {v0, p1}, Lbln;->a(Lbks;Lbiz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    return-object p1
.end method

.method private final q(Lbiz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lblj;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhp;

    sget-object v0, Lbiz;->a:Lbiz;

    .line 2
    invoke-static {p1, v0}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lblj;->b:Lbjx;

    .line 3
    invoke-interface {p1}, Lbjx;->r()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    :cond_1
    iget-object p1, p0, Lblj;->k:Ljava/util/Set;

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final r(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 1
    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    const/4 v0, 0x1

    .line 1
    :goto_1
    if-eq v2, v0, :cond_6

    .line 2
    iget-object v0, p0, Lblj;->a:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbkr;

    if-eqz p3, :cond_3

    .line 6
    iget v2, v1, Lbkr;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {v1, p1}, Lbkr;->d(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {v1, p2}, Lbkr;->e(Ljava/lang/Exception;)V

    .line 9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 8
    :cond_5
    return-void

    .line 1
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final s(Lbkr;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lblj;->d:Lblb;

    invoke-virtual {p0}, Lblj;->o()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lbkr;->g(Lblb;Z)V

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Lbkr;->f(Lblj;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    move-exception p1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lblj;->a(I)V

    iget-object p1, p0, Lblj;->b:Lbjx;

    .line 4
    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    invoke-interface {p1, v0}, Lbjx;->e(Ljava/lang/String;)V

    return-void
.end method

.method private final t(Lbkr;)Z
    .locals 13

    .line 1
    instance-of v0, p1, Lbkm;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lblj;->s(Lbkr;)V

    return v1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lbkm;

    .line 4
    invoke-virtual {v0, p0}, Lbkm;->b(Lblj;)[Lbjb;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v5, p0, Lblj;->b:Lbjx;

    .line 5
    invoke-interface {v5}, Lbjx;->p()[Lbjb;

    move-result-object v5

    if-nez v5, :cond_1

    new-array v5, v4, [Lbjb;

    :cond_1
    array-length v6, v5

    new-instance v7, Lvb;

    .line 6
    invoke-direct {v7, v6}, Lvb;-><init>(I)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_2

    .line 7
    aget-object v9, v5, v8

    iget-object v10, v9, Lbjb;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v9}, Lbjb;->a()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-gtz v5, :cond_5

    .line 9
    aget-object v6, v2, v5

    iget-object v8, v6, Lbjb;->a:Ljava/lang/String;

    .line 10
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_4

    .line 11
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6}, Lbjb;->a()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    move-object v6, v3

    .line 11
    :goto_2
    if-nez v6, :cond_6

    .line 12
    invoke-direct {p0, p1}, Lblj;->s(Lbkr;)V

    return v1

    :cond_6
    iget-object p1, p0, Lblj;->b:Lbjx;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, v6, Lbjb;->a:Ljava/lang/String;

    invoke-virtual {v6}, Lbjb;->a()J

    move-result-wide v7

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x4d

    add-int/2addr v5, v9

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    const-string v2, "GoogleApiManager"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lblj;->j:Lbln;

    iget-boolean p1, p1, Lbln;->m:Z

    if-eqz p1, :cond_8

    .line 16
    invoke-virtual {v0, p0}, Lbkm;->a(Lblj;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lblk;

    iget-object v0, p0, Lblj;->c:Lbks;

    invoke-direct {p1, v0, v6}, Lblk;-><init>(Lbks;Lbjb;)V

    iget-object v0, p0, Lblj;->h:Ljava/util/List;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, 0x1388

    const/16 v5, 0xf

    if-ltz v0, :cond_7

    iget-object p1, p0, Lblj;->h:Ljava/util/List;

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblk;

    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    .line 20
    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    .line 21
    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 22
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lblj;->h:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    .line 24
    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 25
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    const/16 v1, 0x10

    .line 26
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v1, 0x1d4c0

    .line 27
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lbiz;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v3}, Lbiz;-><init>(ILandroid/app/PendingIntent;)V

    .line 28
    invoke-static {}, Lblj;->u()V

    iget-object v0, p0, Lblj;->j:Lbln;

    iget v1, p0, Lblj;->f:I

    .line 29
    invoke-virtual {v0, p1, v1}, Lbln;->f(Lbiz;I)Z

    .line 22
    :goto_3
    return v4

    .line 29
    :cond_8
    new-instance p1, Lbkl;

    .line 17
    invoke-direct {p1, v6}, Lbkl;-><init>(Lbjb;)V

    invoke-virtual {v0, p1}, Lbkm;->e(Ljava/lang/Exception;)V

    return v1
.end method

.method private static final u()V
    .locals 2

    .line 1
    sget-object v0, Lbln;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lblj;->j:Lbln;

    iget-object v1, v1, Lbln;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lblj;->k(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    new-instance v1, Lblg;

    invoke-direct {v1, p0, p1}, Lblg;-><init>(Lblj;I)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lblj;->j:Lbln;

    iget-object v1, v1, Lbln;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lblj;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    new-instance v1, Lblf;

    invoke-direct {v1, p0}, Lblf;-><init>(Lblj;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lblj;->m:Lbiz;

    return-void
.end method

.method public final d()V
    .locals 10

    .line 1
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    iget-object v0, p0, Lblj;->b:Lbjx;

    .line 2
    invoke-interface {v0}, Lbjx;->m()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lblj;->b:Lbjx;

    invoke-interface {v0}, Lbjx;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Lblj;->j:Lbln;

    iget-object v2, v1, Lbln;->h:Lbnf;

    iget-object v1, v1, Lbln;->f:Landroid/content/Context;

    iget-object v3, p0, Lblj;->b:Lbjx;

    .line 3
    invoke-static {v1}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v3}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v3}, Lbjx;->s()V

    .line 6
    invoke-interface {v3}, Lbjx;->a()I

    move-result v3

    .line 7
    invoke-virtual {v2, v3}, Lbnf;->b(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    goto :goto_2

    .line 25
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v2, Lbnf;->a:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, v2, Lbnf;->a:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    if-le v7, v3, :cond_2

    iget-object v8, v2, Lbnf;->a:Landroid/util/SparseIntArray;

    .line 10
    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    .line 10
    :goto_1
    if-ne v4, v5, :cond_4

    iget-object v4, v2, Lbnf;->b:Lbje;

    .line 11
    invoke-virtual {v4, v1, v3}, Lbje;->c(Landroid/content/Context;I)I

    move-result v1

    move v4, v1

    :cond_4
    iget-object v1, v2, Lbnf;->a:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    :goto_2
    if-eqz v4, :cond_5

    new-instance v1, Lbiz;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2}, Lbiz;-><init>(ILandroid/app/PendingIntent;)V

    const-string v2, "GoogleApiManager"

    iget-object v3, p0, Lblj;->b:Lbjx;

    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "The service for "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not available: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0, v1}, Lblj;->i(Lbiz;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_5
    new-instance v1, Lblm;

    iget-object v2, p0, Lblj;->j:Lbln;

    iget-object v3, p0, Lblj;->b:Lbjx;

    iget-object v4, p0, Lblj;->c:Lbks;

    invoke-direct {v1, v2, v3, v4}, Lblm;-><init>(Lbln;Lbjx;Lbks;)V

    iget-object v2, p0, Lblj;->b:Lbjx;

    .line 17
    invoke-interface {v2}, Lbjx;->o()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lblj;->l:Lbma;

    .line 18
    invoke-static {v2}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lbma;->e:Lbqn;

    if-eqz v3, :cond_6

    .line 19
    invoke-interface {v3}, Lbqn;->l()V

    :cond_6
    iget-object v3, v2, Lbma;->d:Lbmp;

    .line 20
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lbmp;->g:Ljava/lang/Integer;

    iget-object v3, v2, Lbma;->g:Lbjq;

    iget-object v4, v2, Lbma;->a:Landroid/content/Context;

    iget-object v5, v2, Lbma;->b:Landroid/os/Handler;

    .line 21
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, v2, Lbma;->d:Lbmp;

    iget-object v7, v6, Lbmp;->f:Lbqo;

    .line 22
    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lbjq;->b(Landroid/content/Context;Landroid/os/Looper;Lbmp;Ljava/lang/Object;Lbkd;Lbke;)Lbjx;

    move-result-object v3

    iput-object v3, v2, Lbma;->e:Lbqn;

    iput-object v1, v2, Lbma;->f:Lblm;

    iget-object v3, v2, Lbma;->c:Ljava/util/Set;

    if-eqz v3, :cond_8

    .line 23
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 26
    :cond_7
    iget-object v2, v2, Lbma;->e:Lbqn;

    new-instance v3, Lbmk;

    check-cast v2, Lbmn;

    invoke-direct {v3, v2}, Lbmk;-><init>(Lbmn;)V

    .line 25
    invoke-virtual {v2, v3}, Lbmn;->k(Lbmi;)V

    goto :goto_4

    .line 23
    :cond_8
    :goto_3
    iget-object v3, v2, Lbma;->b:Landroid/os/Handler;

    new-instance v4, Lbly;

    invoke-direct {v4, v2}, Lbly;-><init>(Lbma;)V

    .line 24
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    :try_start_1
    iget-object v2, p0, Lblj;->b:Lbjx;

    .line 26
    invoke-interface {v2, v1}, Lbjx;->k(Lbmi;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 16
    :catch_0
    move-exception v1

    new-instance v2, Lbiz;

    invoke-direct {v2, v0}, Lbiz;-><init>(I)V

    .line 27
    invoke-virtual {p0, v2, v1}, Lblj;->j(Lbiz;Ljava/lang/Exception;)V

    return-void

    .line 12
    :catch_1
    move-exception v1

    new-instance v2, Lbiz;

    invoke-direct {v2, v0}, Lbiz;-><init>(I)V

    .line 16
    invoke-virtual {p0, v2, v1}, Lblj;->j(Lbiz;Ljava/lang/Exception;)V

    return-void

    .line 2
    :cond_a
    :goto_5
    return-void
.end method

.method public final e(Lbkr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    iget-object v0, p0, Lblj;->b:Lbjx;

    .line 2
    invoke-interface {v0}, Lbjx;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lblj;->t(Lbkr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lblj;->l()V

    return-void

    :cond_0
    iget-object v0, p0, Lblj;->a:Ljava/util/Queue;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lblj;->a:Ljava/util/Queue;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lblj;->m:Lbiz;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lbiz;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lblj;->m:Lbiz;

    .line 8
    invoke-virtual {p0, p1}, Lblj;->i(Lbiz;)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lblj;->d()V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lblj;->r(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lblj;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbkr;

    iget-object v4, p0, Lblj;->b:Lbjx;

    .line 2
    invoke-interface {v4}, Lbjx;->m()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, v3}, Lblj;->t(Lbkr;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lblj;->a:Ljava/util/Queue;

    .line 4
    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_2
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lblj;->c()V

    sget-object v0, Lbiz;->a:Lbiz;

    .line 2
    invoke-direct {p0, v0}, Lblj;->q(Lbiz;)V

    .line 3
    invoke-virtual {p0}, Lblj;->n()V

    iget-object v0, p0, Lblj;->e:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lblj;->g()V

    .line 7
    invoke-virtual {p0}, Lblj;->l()V

    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblw;

    .line 9
    iget-object v0, v0, Lblw;->b:Lblp;

    const/4 v0, 0x0

    throw v0
.end method

.method public final i(Lbiz;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lblj;->j(Lbiz;Ljava/lang/Exception;)V

    return-void
.end method

.method public final j(Lbiz;Ljava/lang/Exception;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    iget-object v0, p0, Lblj;->l:Lbma;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbma;->e:Lbqn;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lbqn;->l()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lblj;->c()V

    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->h:Lbnf;

    .line 4
    invoke-virtual {v0}, Lbnf;->a()V

    .line 5
    invoke-direct {p0, p1}, Lblj;->q(Lbiz;)V

    iget-object v0, p0, Lblj;->b:Lbjx;

    .line 6
    instance-of v0, v0, Lbnz;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p1, Lbiz;->c:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lblj;->j:Lbln;

    iput-boolean v1, v0, Lbln;->e:Z

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    const/16 v2, 0x13

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    .line 8
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget v0, p1, Lbiz;->c:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    sget-object p1, Lbln;->b:Lcom/google/android/gms/common/api/Status;

    .line 9
    invoke-virtual {p0, p1}, Lblj;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v0, p0, Lblj;->a:Ljava/util/Queue;

    .line 10
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lblj;->m:Lbiz;

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p0, Lblj;->j:Lbln;

    iget-object p1, p1, Lbln;->l:Landroid/os/Handler;

    .line 11
    invoke-static {p1}, Lhr;->g(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, v0, p2, p1}, Lblj;->r(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lblj;->j:Lbln;

    iget-boolean p2, p2, Lbln;->m:Z

    if-nez p2, :cond_5

    .line 13
    invoke-direct {p0, p1}, Lblj;->p(Lbiz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lblj;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 14
    :cond_5
    invoke-direct {p0, p1}, Lblj;->p(Lbiz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 15
    invoke-direct {p0, p2, v0, v1}, Lblj;->r(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lblj;->a:Ljava/util/Queue;

    .line 16
    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lblj;->u()V

    iget-object p2, p0, Lblj;->j:Lbln;

    iget v0, p0, Lblj;->f:I

    .line 18
    invoke-virtual {p2, p1, v0}, Lbln;->f(Lbiz;I)Z

    move-result p2

    if-nez p2, :cond_9

    iget p2, p1, Lbiz;->c:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_7

    iput-boolean v1, p0, Lblj;->g:Z

    :cond_7
    iget-boolean p2, p0, Lblj;->g:Z

    if-eqz p2, :cond_8

    iget-object p1, p0, Lblj;->j:Lbln;

    iget-object p1, p1, Lbln;->l:Landroid/os/Handler;

    const/16 p2, 0x9

    iget-object v0, p0, Lblj;->c:Lbks;

    .line 19
    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1388

    .line 20
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 21
    :cond_8
    invoke-direct {p0, p1}, Lblj;->p(Lbiz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lblj;->f(Lcom/google/android/gms/common/api/Status;)V

    :cond_9
    return-void
.end method

.method public final k(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lblj;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lblj;->g:Z

    iget-object v1, p0, Lblj;->d:Lblb;

    iget-object v2, p0, Lblj;->b:Lbjx;

    .line 2
    invoke-interface {v2}, Lbjx;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    .line 3
    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v0, :cond_0

    .line 4
    const-string p1, " due to service disconnection."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 5
    const-string p1, " due to dead object exception."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 6
    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0, p1}, Lblb;->a(ZLcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lblj;->j:Lbln;

    iget-object p1, p1, Lbln;->l:Landroid/os/Handler;

    const/16 v0, 0x9

    iget-object v1, p0, Lblj;->c:Lbks;

    .line 8
    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lblj;->j:Lbln;

    iget-object p1, p1, Lbln;->l:Landroid/os/Handler;

    const/16 v0, 0xb

    iget-object v1, p0, Lblj;->c:Lbks;

    .line 10
    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lblj;->j:Lbln;

    iget-object p1, p1, Lbln;->h:Lbnf;

    .line 12
    invoke-virtual {p1}, Lbnf;->a()V

    iget-object p1, p0, Lblj;->e:Ljava/util/Map;

    .line 13
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    return-void

    .line 13
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblw;

    .line 14
    iget-object p1, p1, Lblw;->a:Ljava/lang/Runnable;

    const/4 p1, 0x0

    throw p1
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    iget-object v1, p0, Lblj;->c:Lbks;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    iget-object v1, p0, Lblj;->c:Lbks;

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lblj;->j:Lbln;

    iget-wide v2, v2, Lbln;->d:J

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final m()V
    .locals 6

    .line 1
    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    sget-object v0, Lbln;->a:Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-virtual {p0, v0}, Lblj;->f(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lblj;->d:Lblb;

    sget-object v1, Lbln;->a:Lcom/google/android/gms/common/api/Status;

    .line 3
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lblb;->a(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lblj;->e:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lblr;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lblr;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lbkq;

    new-instance v5, Lbrk;

    .line 5
    invoke-direct {v5}, Lbrk;-><init>()V

    invoke-direct {v4, v3, v5}, Lbkq;-><init>(Lblr;Lbrk;)V

    invoke-virtual {p0, v4}, Lblj;->e(Lbkr;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lbiz;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbiz;-><init>(I)V

    .line 6
    invoke-direct {p0, v0}, Lblj;->q(Lbiz;)V

    iget-object v0, p0, Lblj;->b:Lbjx;

    .line 7
    invoke-interface {v0}, Lbjx;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lblj;->b:Lbjx;

    new-instance v1, Lbli;

    invoke-direct {v1, p0}, Lbli;-><init>(Lblj;)V

    .line 8
    invoke-interface {v0, v1}, Lbjx;->q(Lbli;)V

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lblj;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    const/16 v1, 0xb

    iget-object v2, p0, Lblj;->c:Lbks;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    const/16 v1, 0x9

    iget-object v2, p0, Lblj;->c:Lbks;

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lblj;->g:Z

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lblj;->b:Lbjx;

    invoke-interface {v0}, Lbjx;->o()Z

    move-result v0

    return v0
.end method
