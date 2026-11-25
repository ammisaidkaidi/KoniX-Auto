.class public final Laib;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final a:Ljava/lang/String;

.field public static final synthetic j:I


# instance fields
.field final b:Landroid/content/Context;

.field c:Lakk;

.field d:Landroidx/work/ListenableWorker;

.field e:Ldag;

.field public volatile f:Z

.field final g:Lamh;

.field final h:Lame;

.field i:Lex;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/util/List;

.field private final m:Lagf;

.field private final n:Lajp;

.field private final o:Landroidx/work/impl/WorkDatabase;

.field private final p:Lakl;

.field private q:Ljava/util/List;

.field private r:Ljava/lang/String;

.field private final s:Lakx;

.field private final t:Lakx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laib;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Laia;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lex;->f()Lex;

    move-result-object v0

    iput-object v0, p0, Laib;->i:Lex;

    .line 2
    invoke-static {}, Lame;->h()Lame;

    move-result-object v0

    iput-object v0, p0, Laib;->h:Lame;

    const/4 v0, 0x0

    iput-object v0, p0, Laib;->e:Ldag;

    iget-object v1, p1, Laia;->a:Landroid/content/Context;

    iput-object v1, p0, Laib;->b:Landroid/content/Context;

    iget-object v1, p1, Laia;->g:Lamh;

    iput-object v1, p0, Laib;->g:Lamh;

    iget-object v1, p1, Laia;->b:Lajp;

    iput-object v1, p0, Laib;->n:Lajp;

    iget-object v1, p1, Laia;->e:Ljava/lang/String;

    iput-object v1, p0, Laib;->k:Ljava/lang/String;

    iget-object v1, p1, Laia;->f:Ljava/util/List;

    iput-object v1, p0, Laib;->l:Ljava/util/List;

    iput-object v0, p0, Laib;->d:Landroidx/work/ListenableWorker;

    iget-object v0, p1, Laia;->c:Lagf;

    iput-object v0, p0, Laib;->m:Lagf;

    iget-object p1, p1, Laia;->d:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v0

    iput-object v0, p0, Laib;->p:Lakl;

    .line 4
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->u()Lakx;

    move-result-object v0

    iput-object v0, p0, Laib;->t:Lakx;

    .line 5
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->r()Lakx;

    move-result-object p1

    iput-object p1, p0, Laib;->s:Lakx;

    return-void
.end method

.method private final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Laee;->f()V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Laib;->p:Lakl;

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Laib;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2
    invoke-interface {v1, v0, v2}, Lakl;->i(I[Ljava/lang/String;)V

    iget-object v1, p0, Laib;->p:Lakl;

    iget-object v2, p0, Laib;->k:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lakl;->e(Ljava/lang/String;J)V

    iget-object v1, p0, Laib;->p:Lakl;

    iget-object v2, p0, Laib;->k:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 4
    invoke-interface {v1, v2, v3, v4}, Lakl;->h(Ljava/lang/String;J)V

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 5
    invoke-virtual {v1}, Laee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 6
    invoke-virtual {v1}, Laee;->g()V

    .line 7
    invoke-direct {p0, v0}, Laib;->f(Z)V

    return-void

    .line 5
    :catchall_0
    move-exception v1

    iget-object v2, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 6
    invoke-virtual {v2}, Laee;->g()V

    .line 7
    invoke-direct {p0, v0}, Laib;->f(Z)V

    .line 8
    throw v1
.end method

.method private final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Laee;->f()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Laib;->p:Lakl;

    iget-object v2, p0, Laib;->k:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lakl;->e(Ljava/lang/String;J)V

    iget-object v1, p0, Laib;->p:Lakl;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Laib;->k:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 3
    invoke-interface {v1, v2, v3}, Lakl;->i(I[Ljava/lang/String;)V

    iget-object v1, p0, Laib;->p:Lakl;

    iget-object v3, p0, Laib;->k:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Lakv;

    iget-object v4, v4, Lakv;->a:Laee;

    .line 4
    invoke-virtual {v4}, Laee;->e()V

    move-object v4, v1

    check-cast v4, Lakv;

    iget-object v4, v4, Lakv;->e:Laej;

    .line 5
    invoke-virtual {v4}, Laej;->d()Lafn;

    move-result-object v4

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v4, v2}, Lafm;->e(I)V

    goto :goto_0

    .line 18
    :cond_0
    nop

    .line 7
    invoke-virtual {v4, v2, v3}, Lafm;->f(ILjava/lang/String;)V

    .line 6
    :goto_0
    move-object v2, v1

    check-cast v2, Lakv;

    iget-object v2, v2, Lakv;->a:Laee;

    .line 8
    invoke-virtual {v2}, Laee;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {v4}, Lafn;->a()V

    move-object v2, v1

    check-cast v2, Lakv;

    iget-object v2, v2, Lakv;->a:Laee;

    .line 10
    invoke-virtual {v2}, Laee;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object v2, v1

    check-cast v2, Lakv;

    iget-object v2, v2, Lakv;->a:Laee;

    .line 11
    invoke-virtual {v2}, Laee;->g()V

    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->e:Laej;

    .line 12
    invoke-virtual {v1, v4}, Laej;->e(Lafn;)V

    iget-object v1, p0, Laib;->p:Lakl;

    iget-object v2, p0, Laib;->k:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 14
    invoke-interface {v1, v2, v3, v4}, Lakl;->h(Ljava/lang/String;J)V

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 15
    invoke-virtual {v1}, Laee;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {v1}, Laee;->g()V

    .line 17
    invoke-direct {p0, v0}, Laib;->f(Z)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    move-object v3, v1

    check-cast v3, Lakv;

    iget-object v3, v3, Lakv;->a:Laee;

    .line 11
    invoke-virtual {v3}, Laee;->g()V

    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->e:Laej;

    .line 12
    invoke-virtual {v1, v4}, Laej;->e(Lafn;)V

    .line 13
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {v2}, Laee;->g()V

    .line 17
    invoke-direct {p0, v0}, Laib;->f(Z)V

    .line 18
    throw v1
.end method

.method private final f(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Laee;->f()V

    :try_start_0
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v0

    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 3
    const/4 v2, 0x0

    invoke-static {v1, v2}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v1

    .line 2
    move-object v3, v0

    check-cast v3, Lakv;

    iget-object v3, v3, Lakv;->a:Laee;

    .line 4
    invoke-virtual {v3}, Laee;->e()V

    .line 2
    check-cast v0, Lakv;

    iget-object v0, v0, Lakv;->a:Laee;

    .line 5
    invoke-virtual {v0, v1}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 8
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v1}, Laeh;->i()V

    if-nez v3, :cond_1

    iget-object v0, p0, Laib;->b:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 11
    invoke-static {v0, v1, v2}, Lale;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Laib;->p:Lakl;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v3, p0, Laib;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 12
    invoke-interface {v0, v4, v1}, Lakl;->i(I[Ljava/lang/String;)V

    iget-object v0, p0, Laib;->p:Lakl;

    iget-object v1, p0, Laib;->k:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 13
    invoke-interface {v0, v1, v2, v3}, Lakl;->h(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Laib;->c:Lakk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laib;->d:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laib;->n:Lajp;

    iget-object v1, p0, Laib;->k:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Lahf;

    iget-object v2, v2, Lahf;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v3, v0

    check-cast v3, Lahf;

    iget-object v3, v3, Lahf;->d:Ljava/util/Map;

    .line 14
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lahf;

    .line 15
    invoke-virtual {v0}, Lahf;->d()V

    .line 16
    monitor-exit v2

    goto :goto_1

    .line 10
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 17
    invoke-virtual {v0}, Laee;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 18
    invoke-virtual {v0}, Laee;->g()V

    iget-object v0, p0, Laib;->h:Lame;

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lame;->e(Ljava/lang/Object;)V

    return-void

    .line 19
    :catchall_1
    move-exception p1

    .line 8
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v1}, Laeh;->i()V

    .line 10
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 20
    :catchall_2
    move-exception p1

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 18
    invoke-virtual {v0}, Laee;->g()V

    .line 19
    throw p1
.end method

.method private final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Laib;->p:Lakl;

    iget-object v1, p0, Laib;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lakl;->f(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p0, Laib;->k:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v4, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lagr;->d([Ljava/lang/Throwable;)V

    .line 3
    invoke-direct {p0, v2}, Laib;->f(Z)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Laib;->k:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-static {v0}, Lfv;->z(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 5
    const-string v0, "Status for %s is %s; not doing any work"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v4, v0}, Lagr;->d([Ljava/lang/Throwable;)V

    .line 6
    invoke-direct {p0, v3}, Laib;->f(Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Laib;->c()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Laee;->f()V

    :try_start_0
    iget-object v0, p0, Laib;->p:Lakl;

    iget-object v1, p0, Laib;->k:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Lakl;->f(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 4
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->q()Laki;

    move-result-object v1

    iget-object v2, p0, Laib;->k:Ljava/lang/String;

    iget-object v3, v1, Laki;->a:Laee;

    .line 5
    invoke-virtual {v3}, Laee;->e()V

    iget-object v3, v1, Laki;->b:Laej;

    .line 6
    invoke-virtual {v3}, Laej;->d()Lafn;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v3, v4}, Lafm;->e(I)V

    goto :goto_0

    .line 45
    :cond_0
    nop

    .line 8
    invoke-virtual {v3, v4, v2}, Lafm;->f(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object v2, v1, Laki;->a:Laee;

    .line 9
    invoke-virtual {v2}, Laee;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 10
    :try_start_1
    invoke-virtual {v3}, Lafn;->a()V

    iget-object v2, v1, Laki;->a:Laee;

    .line 11
    invoke-virtual {v2}, Laee;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, v1, Laki;->a:Laee;

    .line 12
    invoke-virtual {v2}, Laee;->g()V

    iget-object v1, v1, Laki;->b:Laej;

    .line 13
    invoke-virtual {v1, v3}, Laej;->e(Lafn;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 15
    invoke-direct {p0, v1}, Laib;->f(Z)V

    goto/16 :goto_4

    .line 62
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Laib;->i:Lex;

    .line 16
    instance-of v2, v0, Lagq;

    if-eqz v2, :cond_7

    .line 17
    invoke-static {}, Lagr;->a()Lagr;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Laib;->r:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v2, "Worker result SUCCESS for %s"

    .line 18
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Throwable;

    .line 17
    invoke-static {v0}, Lagr;->f([Ljava/lang/Throwable;)V

    iget-object v0, p0, Laib;->c:Lakk;

    .line 19
    invoke-virtual {v0}, Lakk;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-direct {p0}, Laib;->e()V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 20
    invoke-virtual {v0}, Laee;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, p0, Laib;->p:Lakl;

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Laib;->k:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v3, 0x3

    .line 21
    invoke-interface {v0, v3, v2}, Lakl;->i(I[Ljava/lang/String;)V

    iget-object v0, p0, Laib;->i:Lex;

    .line 22
    check-cast v0, Lagq;

    iget-object v0, v0, Lagq;->a:Lagk;

    iget-object v2, p0, Laib;->p:Lakl;

    iget-object v3, p0, Laib;->k:Ljava/lang/String;

    .line 23
    invoke-interface {v2, v3, v0}, Lakl;->d(Ljava/lang/String;Lagk;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Laib;->t:Lakx;

    iget-object v5, p0, Laib;->k:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v5}, Lakx;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Laib;->p:Lakl;

    .line 27
    invoke-interface {v6, v5}, Lakl;->f(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Laib;->t:Lakx;

    const-string v7, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    .line 28
    invoke-static {v7, v4}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v7

    if-nez v5, :cond_4

    .line 29
    invoke-virtual {v7, v4}, Laeh;->e(I)V

    goto :goto_2

    .line 40
    :cond_4
    nop

    .line 30
    invoke-virtual {v7, v4, v5}, Laeh;->f(ILjava/lang/String;)V

    .line 29
    :goto_2
    iget-object v8, v6, Lakx;->a:Laee;

    .line 31
    invoke-virtual {v8}, Laee;->e()V

    iget-object v6, v6, Lakx;->a:Laee;

    .line 32
    invoke-virtual {v6, v7}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 34
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    .line 40
    :cond_5
    const/4 v8, 0x0

    .line 35
    :goto_3
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 36
    invoke-virtual {v7}, Laeh;->i()V

    if-eqz v8, :cond_3

    .line 37
    invoke-static {}, Lagr;->a()Lagr;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v1

    const-string v7, "Setting status to enqueued for %s"

    .line 38
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Throwable;

    .line 37
    invoke-static {v6}, Lagr;->f([Ljava/lang/Throwable;)V

    iget-object v6, p0, Laib;->p:Lakl;

    new-array v7, v4, [Ljava/lang/String;

    aput-object v5, v7, v1

    .line 39
    invoke-interface {v6, v4, v7}, Lakl;->i(I[Ljava/lang/String;)V

    iget-object v6, p0, Laib;->p:Lakl;

    .line 40
    invoke-interface {v6, v5, v2, v3}, Lakl;->e(Ljava/lang/String;J)V

    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 36
    invoke-virtual {v7}, Laeh;->i()V

    .line 41
    throw v0

    .line 30
    :cond_6
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 42
    invoke-virtual {v0}, Laee;->h()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 43
    invoke-virtual {v0}, Laee;->g()V

    .line 44
    invoke-direct {p0, v1}, Laib;->f(Z)V

    goto :goto_4

    .line 14
    :catchall_1
    move-exception v0

    iget-object v2, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 43
    invoke-virtual {v2}, Laee;->g()V

    .line 44
    invoke-direct {p0, v1}, Laib;->f(Z)V

    .line 45
    throw v0

    .line 47
    :cond_7
    instance-of v0, v0, Lagp;

    if-eqz v0, :cond_8

    .line 53
    invoke-static {}, Lagr;->a()Lagr;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Laib;->r:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v2, "Worker result RETRY for %s"

    .line 54
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Throwable;

    .line 53
    invoke-static {v0}, Lagr;->f([Ljava/lang/Throwable;)V

    .line 55
    invoke-direct {p0}, Laib;->d()V

    goto :goto_4

    .line 48
    :cond_8
    invoke-static {}, Lagr;->a()Lagr;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Laib;->r:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v2, "Worker result FAILURE for %s"

    .line 49
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Throwable;

    .line 48
    invoke-static {v0}, Lagr;->f([Ljava/lang/Throwable;)V

    iget-object v0, p0, Laib;->c:Lakk;

    .line 50
    invoke-virtual {v0}, Lakk;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51
    invoke-direct {p0}, Laib;->e()V

    goto :goto_4

    .line 52
    :cond_9
    invoke-virtual {p0}, Laib;->b()V

    goto :goto_4

    :cond_a
    invoke-static {v0}, Lfv;->A(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 56
    invoke-direct {p0}, Laib;->d()V

    .line 15
    :cond_b
    :goto_4
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 57
    invoke-virtual {v0}, Laee;->h()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 58
    invoke-virtual {v0}, Laee;->g()V

    goto :goto_5

    .line 59
    :catchall_2
    move-exception v0

    :try_start_7
    iget-object v2, v1, Laki;->a:Laee;

    .line 12
    invoke-virtual {v2}, Laee;->g()V

    iget-object v1, v1, Laki;->b:Laej;

    .line 13
    invoke-virtual {v1, v3}, Laej;->e(Lafn;)V

    .line 14
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 41
    :catchall_3
    move-exception v0

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 58
    invoke-virtual {v1}, Laee;->g()V

    .line 59
    throw v0

    .line 58
    :cond_c
    :goto_5
    iget-object v0, p0, Laib;->l:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahg;

    iget-object v2, p0, Laib;->k:Ljava/lang/String;

    .line 61
    invoke-interface {v1, v2}, Lahg;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Laib;->m:Lagf;

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Laib;->l:Ljava/util/List;

    .line 62
    invoke-static {v0, v1, v2}, Lahh;->b(Lagf;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_e
    return-void
.end method

.method final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Laee;->f()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Laib;->k:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedList;

    .line 2
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Laib;->p:Lakl;

    .line 6
    invoke-interface {v3, v1}, Lakl;->f(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Laib;->p:Lakl;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v5, 0x4

    .line 7
    invoke-interface {v3, v5, v4}, Lakl;->i(I[Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Laib;->t:Lakx;

    .line 8
    invoke-virtual {v3, v1}, Lakx;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Laib;->i:Lex;

    .line 9
    check-cast v1, Lago;

    iget-object v1, v1, Lago;->a:Lagk;

    iget-object v2, p0, Laib;->p:Lakl;

    iget-object v3, p0, Laib;->k:Ljava/lang/String;

    .line 10
    invoke-interface {v2, v3, v1}, Lakl;->d(Ljava/lang/String;Lagk;)V

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 11
    invoke-virtual {v1}, Laee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 12
    invoke-virtual {v1}, Laee;->g()V

    .line 13
    invoke-direct {p0, v0}, Laib;->f(Z)V

    return-void

    .line 11
    :catchall_0
    move-exception v1

    iget-object v2, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 12
    invoke-virtual {v2}, Laee;->g()V

    .line 13
    invoke-direct {p0, v0}, Laib;->f(Z)V

    .line 14
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final c()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Laib;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Laib;->r:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "Work interrupted for %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v0, p0, Laib;->p:Lakl;

    iget-object v3, p0, Laib;->k:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v3}, Lakl;->f(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, v1}, Laib;->f(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lfv;->A(I)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 4
    invoke-direct {p0, v0}, Laib;->f(Z)V

    .line 3
    :goto_0
    return v2

    .line 4
    :cond_1
    return v1
.end method

.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Laib;->s:Lakx;

    iget-object v1, p0, Laib;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakx;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laib;->q:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    const-string v2, "Work [ id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laib;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v2, ", tags={ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 6
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    nop

    .line 8
    const-string v0, " } ]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laib;->r:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Laib;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 10
    invoke-virtual {v0}, Laee;->f()V

    :try_start_0
    iget-object v0, p0, Laib;->p:Lakl;

    iget-object v1, p0, Laib;->k:Ljava/lang/String;

    .line 11
    invoke-interface {v0, v1}, Lakl;->a(Ljava/lang/String;)Lakk;

    move-result-object v0

    iput-object v0, p0, Laib;->c:Lakk;

    if-nez v0, :cond_3

    .line 12
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v0, Laib;->a:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laib;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Didn\'t find WorkSpec for id %s"

    .line 13
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Throwable;

    .line 12
    invoke-static {v0, v1, v3}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 14
    invoke-direct {p0, v2}, Laib;->f(Z)V

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 15
    invoke-virtual {v0}, Laee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 16
    :goto_1
    invoke-virtual {v0}, Laee;->g()V

    return-void

    :cond_3
    :try_start_1
    iget v1, v0, Lakk;->q:I

    if-eq v1, v3, :cond_4

    .line 82
    invoke-direct {p0}, Laib;->g()V

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 83
    invoke-virtual {v0}, Laee;->h()V

    .line 84
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laib;->c:Lakk;

    iget-object v3, v3, Lakk;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "%s is not in ENQUEUED state. Nothing more to do."

    .line 85
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Throwable;

    .line 84
    invoke-virtual {v0, v1}, Lagr;->d([Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    goto :goto_1

    .line 16
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lakk;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Laib;->c:Lakk;

    .line 17
    invoke-virtual {v0}, Lakk;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Laib;->c:Lakk;

    .line 19
    iget-wide v5, v4, Lakk;->m:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    invoke-virtual {v4}, Lakk;->a()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-gez v6, :cond_7

    .line 78
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p0, Laib;->c:Lakk;

    iget-object v4, v4, Lakk;->c:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "Delaying execution for %s because it is being executed before schedule."

    .line 79
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Throwable;

    .line 78
    invoke-virtual {v0, v1}, Lagr;->d([Ljava/lang/Throwable;)V

    .line 80
    invoke-direct {p0, v3}, Laib;->f(Z)V

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 81
    invoke-virtual {v0}, Laee;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 66
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    goto :goto_1

    .line 19
    :cond_7
    :goto_2
    :try_start_3
    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 21
    invoke-virtual {v0}, Laee;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v0, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {v0}, Laee;->g()V

    iget-object v0, p0, Laib;->c:Lakk;

    .line 22
    invoke-virtual {v0}, Lakk;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Laib;->c:Lakk;

    .line 23
    iget-object v0, v0, Lakk;->e:Lagk;

    move-object v6, v0

    goto/16 :goto_5

    .line 60
    :cond_8
    iget-object v0, p0, Laib;->c:Lakk;

    .line 24
    iget-object v0, v0, Lakk;->d:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Lagn;->b(Ljava/lang/String;)Lagn;

    move-result-object v0

    if-nez v0, :cond_9

    .line 26
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v0, Laib;->a:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laib;->c:Lakk;

    iget-object v3, v3, Lakk;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Could not create Input Merger %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 27
    invoke-virtual {p0}, Laib;->b()V

    return-void

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Laib;->c:Lakk;

    .line 29
    iget-object v4, v4, Lakk;->e:Lagk;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Laib;->p:Lakl;

    iget-object v5, p0, Laib;->k:Ljava/lang/String;

    .line 30
    const-string v6, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    invoke-static {v6, v3}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v6

    if-nez v5, :cond_a

    .line 31
    invoke-virtual {v6, v3}, Laeh;->e(I)V

    goto :goto_3

    .line 44
    :cond_a
    nop

    .line 32
    invoke-virtual {v6, v3, v5}, Laeh;->f(ILjava/lang/String;)V

    .line 31
    :goto_3
    check-cast v4, Lakv;

    iget-object v5, v4, Lakv;->a:Laee;

    .line 33
    invoke-virtual {v5}, Laee;->e()V

    iget-object v4, v4, Lakv;->a:Laee;

    .line 34
    invoke-virtual {v4, v6}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    .line 35
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 37
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 38
    invoke-static {v7}, Lagk;->a([B)Lagk;

    move-result-object v7

    .line 39
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 40
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 41
    invoke-virtual {v6}, Laeh;->i()V

    .line 43
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {v0, v1}, Lagn;->a(Ljava/util/List;)Lagk;

    move-result-object v0

    move-object v6, v0

    .line 23
    :goto_5
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v1, p0, Laib;->k:Ljava/lang/String;

    .line 45
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    iget-object v7, p0, Laib;->q:Ljava/util/List;

    iget-object v1, p0, Laib;->c:Lakk;

    iget v1, v1, Lakk;->k:I

    iget-object v1, p0, Laib;->m:Lagf;

    iget-object v8, v1, Lagf;->a:Ljava/util/concurrent/Executor;

    iget-object v9, v1, Lagf;->c:Laha;

    .line 46
    sget v1, Lalq;->a:I

    new-instance v10, Lalp;

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    iget-object v4, p0, Laib;->n:Lajp;

    iget-object v11, p0, Laib;->g:Lamh;

    invoke-direct {v10, v1, v4, v11}, Lalp;-><init>(Landroidx/work/impl/WorkDatabase;Lajp;Lamh;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Lagk;Ljava/util/Collection;Ljava/util/concurrent/Executor;Laha;Lagm;)V

    iget-object v1, p0, Laib;->d:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_c

    iget-object v1, p0, Laib;->m:Lagf;

    iget-object v1, v1, Lagf;->c:Laha;

    iget-object v4, p0, Laib;->b:Landroid/content/Context;

    iget-object v5, p0, Laib;->c:Lakk;

    .line 47
    iget-object v5, v5, Lakk;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v0}, Laha;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v1

    iput-object v1, p0, Laib;->d:Landroidx/work/ListenableWorker;

    :cond_c
    iget-object v1, p0, Laib;->d:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_d

    .line 48
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v0, Laib;->a:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laib;->c:Lakk;

    iget-object v3, v3, Lakk;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 49
    const-string v3, "Could not create Worker %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 48
    invoke-static {v0, v1, v2}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {p0}, Laib;->b()V

    return-void

    :cond_d
    iget-boolean v4, v1, Landroidx/work/ListenableWorker;->d:Z

    if-eqz v4, :cond_e

    .line 51
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v0, Laib;->a:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laib;->c:Lakk;

    iget-object v3, v3, Lakk;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 52
    const-string v3, "Received an already-used Worker %s; WorkerFactory should return new instances"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 51
    invoke-static {v0, v1, v2}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 53
    invoke-virtual {p0}, Laib;->b()V

    return-void

    :cond_e
    iput-boolean v3, v1, Landroidx/work/ListenableWorker;->d:Z

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 54
    invoke-virtual {v1}, Laee;->f()V

    :try_start_5
    iget-object v1, p0, Laib;->p:Lakl;

    iget-object v4, p0, Laib;->k:Ljava/lang/String;

    .line 55
    invoke-interface {v1, v4}, Lakl;->f(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_10

    iget-object v1, p0, Laib;->p:Lakl;

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Laib;->k:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    .line 56
    invoke-interface {v1, v2, v4}, Lakl;->i(I[Ljava/lang/String;)V

    iget-object v1, p0, Laib;->p:Lakl;

    iget-object v2, p0, Laib;->k:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Lakv;

    iget-object v4, v4, Lakv;->a:Laee;

    .line 57
    invoke-virtual {v4}, Laee;->e()V

    move-object v4, v1

    check-cast v4, Lakv;

    iget-object v4, v4, Lakv;->d:Laej;

    .line 58
    invoke-virtual {v4}, Laej;->d()Lafn;

    move-result-object v4

    if-nez v2, :cond_f

    .line 59
    invoke-virtual {v4, v3}, Lafm;->e(I)V

    goto :goto_6

    .line 77
    :cond_f
    nop

    .line 60
    invoke-virtual {v4, v3, v2}, Lafm;->f(ILjava/lang/String;)V

    .line 59
    :goto_6
    move-object v2, v1

    check-cast v2, Lakv;

    iget-object v2, v2, Lakv;->a:Laee;

    .line 61
    invoke-virtual {v2}, Laee;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 62
    :try_start_6
    invoke-virtual {v4}, Lafn;->a()V

    move-object v2, v1

    check-cast v2, Lakv;

    iget-object v2, v2, Lakv;->a:Laee;

    .line 63
    invoke-virtual {v2}, Laee;->h()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    move-object v2, v1

    check-cast v2, Lakv;

    iget-object v2, v2, Lakv;->a:Laee;

    .line 64
    invoke-virtual {v2}, Laee;->g()V

    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->d:Laej;

    .line 65
    invoke-virtual {v1, v4}, Laej;->e(Lafn;)V

    const/4 v2, 0x1

    goto :goto_7

    .line 69
    :catchall_0
    move-exception v0

    move-object v2, v1

    check-cast v2, Lakv;

    iget-object v2, v2, Lakv;->a:Laee;

    .line 64
    invoke-virtual {v2}, Laee;->g()V

    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->d:Laej;

    .line 65
    invoke-virtual {v1, v4}, Laej;->e(Lafn;)V

    .line 66
    throw v0

    .line 60
    :cond_10
    nop

    .line 65
    :goto_7
    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 67
    invoke-virtual {v1}, Laee;->h()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 68
    invoke-virtual {v1}, Laee;->g()V

    if-eqz v2, :cond_12

    .line 70
    invoke-virtual {p0}, Laib;->c()Z

    move-result v1

    if-nez v1, :cond_11

    .line 71
    invoke-static {}, Lame;->h()Lame;

    move-result-object v1

    .line 72
    new-instance v8, Laln;

    iget-object v3, p0, Laib;->b:Landroid/content/Context;

    iget-object v4, p0, Laib;->c:Lakk;

    iget-object v5, p0, Laib;->d:Landroidx/work/ListenableWorker;

    iget-object v6, v0, Landroidx/work/WorkerParameters;->e:Lagm;

    iget-object v7, p0, Laib;->g:Lamh;

    .line 73
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Laln;-><init>(Landroid/content/Context;Lakk;Landroidx/work/ListenableWorker;Lagm;Lamh;)V

    iget-object v0, p0, Laib;->g:Lamh;

    iget-object v0, v0, Lamh;->c:Ljava/util/concurrent/Executor;

    .line 74
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v8, Laln;->f:Lame;

    new-instance v2, Lahy;

    invoke-direct {v2, p0, v0, v1}, Lahy;-><init>(Laib;Ldag;Lame;)V

    iget-object v3, p0, Laib;->g:Lamh;

    iget-object v3, v3, Lamh;->c:Ljava/util/concurrent/Executor;

    .line 75
    invoke-interface {v0, v2, v3}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Laib;->r:Ljava/lang/String;

    new-instance v2, Lahz;

    invoke-direct {v2, p0, v1, v0}, Lahz;-><init>(Laib;Lame;Ljava/lang/String;)V

    iget-object v0, p0, Laib;->g:Lamh;

    iget-object v0, v0, Lamh;->a:Lalh;

    .line 76
    invoke-virtual {v1, v2, v0}, Lame;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 9
    :cond_11
    :goto_8
    return-void

    .line 77
    :cond_12
    invoke-direct {p0}, Laib;->g()V

    return-void

    .line 86
    :catchall_1
    move-exception v0

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 68
    invoke-virtual {v1}, Laee;->g()V

    .line 69
    throw v0

    .line 81
    :catchall_2
    move-exception v0

    .line 40
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 41
    invoke-virtual {v6}, Laeh;->i()V

    .line 42
    throw v0

    :catchall_3
    move-exception v0

    iget-object v1, p0, Laib;->o:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {v1}, Laee;->g()V

    .line 86
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
