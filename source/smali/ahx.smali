.class public final Lahx;
.super Lagw;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field private static k:Lahx;

.field private static l:Lahx;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lagf;

.field public final d:Landroidx/work/impl/WorkDatabase;

.field public final e:Ljava/util/List;

.field public final f:Lahf;

.field public g:Z

.field public h:Landroid/content/BroadcastReceiver$PendingResult;

.field public final i:Lamh;

.field public final j:Lald;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lahx;->k:Lahx;

    sput-object v0, Lahx;->l:Lahx;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lahx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lagf;Lamh;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p3, Lamh;->a:Lalh;

    .line 3
    invoke-static {v1, v2, v0}, Landroidx/work/impl/WorkDatabase;->m(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-direct {p0}, Lagw;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lagr;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lagr;-><init>(I)V

    .line 5
    invoke-static {v2}, Lagr;->c(Lagr;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lahg;

    .line 6
    invoke-static {v1, p0}, Lahh;->a(Landroid/content/Context;Lahx;)Lahg;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v2, v9

    new-instance v3, Laie;

    invoke-direct {v3, v1, p2, p3, p0}, Laie;-><init>(Landroid/content/Context;Lagf;Lamh;Lahx;)V

    const/4 v1, 0x1

    aput-object v3, v2, v1

    .line 7
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 8
    new-instance v2, Lahf;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lahf;-><init>(Landroid/content/Context;Lagf;Lamh;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lahx;->b:Landroid/content/Context;

    iput-object p2, p0, Lahx;->c:Lagf;

    iput-object p3, p0, Lahx;->i:Lamh;

    iput-object v0, p0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    iput-object v1, p0, Lahx;->e:Ljava/util/List;

    iput-object v2, p0, Lahx;->f:Lahf;

    new-instance p2, Lald;

    invoke-direct {p2, v0}, Lald;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object p2, p0, Lahx;->j:Lald;

    iput-boolean v9, p0, Lahx;->g:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p2

    if-nez p2, :cond_0

    .line 12
    nop

    .line 11
    new-instance p2, Lalc;

    invoke-direct {p2, p1, p0}, Lalc;-><init>(Landroid/content/Context;Lahx;)V

    invoke-virtual {p3, p2}, Lamh;->a(Ljava/lang/Runnable;)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Landroid/content/Context;)Lahx;
    .locals 6

    .line 1
    sget-object v0, Lahx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lahx;->k:Lahx;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lahx;->l:Lahx;

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :goto_0
    if-nez v1, :cond_6

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v1, p0, Lage;

    if-eqz v1, :cond_5

    .line 8
    move-object v1, p0

    check-cast v1, Lage;

    .line 9
    invoke-interface {v1}, Lage;->a()Lagf;

    move-result-object v1

    .line 10
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v2, Lahx;->k:Lahx;

    if-eqz v2, :cond_2

    sget-object v3, Lahx;->l:Lahx;

    if-nez v3, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    .line 16
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    :goto_1
    if-nez v2, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lahx;->l:Lahx;

    if-nez v3, :cond_3

    new-instance v3, Lahx;

    new-instance v4, Lamh;

    iget-object v5, v1, Lagf;->b:Ljava/util/concurrent/Executor;

    .line 12
    invoke-direct {v4, v5}, Lamh;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v3, v2, v1, v4}, Lahx;-><init>(Landroid/content/Context;Lagf;Lamh;)V

    sput-object v3, Lahx;->l:Lahx;

    :cond_3
    sget-object v1, Lahx;->l:Lahx;

    sput-object v1, Lahx;->k:Lahx;

    .line 13
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-static {p0}, Lahx;->c(Landroid/content/Context;)Lahx;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 17
    :catchall_0
    move-exception p0

    .line 13
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    .line 5
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    .line 17
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_6
    nop

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v1

    .line 18
    :catchall_1
    move-exception p0

    .line 5
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    .line 4
    :catchall_2
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lahi;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lahi;-><init>(Lahx;Ljava/lang/String;Ljava/util/List;)V

    .line 1
    invoke-virtual {v0}, Lahi;->M()V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    sget-object v0, Lahx;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lahx;->g:Z

    iget-object v1, p0, Lahx;->h:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Lahx;->h:Landroid/content/BroadcastReceiver$PendingResult;

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lahx;->b:Landroid/content/Context;

    invoke-static {v0}, Lair;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lakv;

    iget-object v2, v1, Lakv;->a:Laee;

    .line 3
    invoke-virtual {v2}, Laee;->e()V

    .line 2
    iget-object v2, v1, Lakv;->f:Laej;

    .line 4
    invoke-virtual {v2}, Laej;->d()Lafn;

    move-result-object v2

    .line 2
    iget-object v3, v1, Lakv;->a:Laee;

    .line 5
    invoke-virtual {v3}, Laee;->f()V

    .line 6
    :try_start_0
    invoke-virtual {v2}, Lafn;->a()V

    .line 2
    check-cast v0, Lakv;

    iget-object v0, v0, Lakv;->a:Laee;

    .line 7
    invoke-virtual {v0}, Laee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, v1, Lakv;->a:Laee;

    .line 8
    invoke-virtual {v0}, Laee;->g()V

    .line 2
    iget-object v0, v1, Lakv;->f:Laej;

    .line 9
    invoke-virtual {v0, v2}, Laej;->e(Lafn;)V

    iget-object v0, p0, Lahx;->c:Lagf;

    iget-object v1, p0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Lahx;->e:Ljava/util/List;

    .line 11
    invoke-static {v0, v1, v2}, Lahh;->b(Lagf;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 2
    iget-object v3, v1, Lakv;->a:Laee;

    .line 8
    invoke-virtual {v3}, Laee;->g()V

    .line 2
    iget-object v1, v1, Lakv;->f:Laej;

    .line 9
    invoke-virtual {v1, v2}, Laej;->e(Lafn;)V

    .line 10
    throw v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lahx;->h(Ljava/lang/String;Lfw;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lahx;->i:Lamh;

    new-instance v1, Lalj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lalj;-><init>(Lahx;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lamh;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Ljava/lang/String;Lfw;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lahx;->i:Lamh;

    new-instance v7, Lali;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lali;-><init>(Lahx;Ljava/lang/String;Lfw;[B[B)V

    invoke-virtual {v0, v7}, Lamh;->a(Ljava/lang/Runnable;)V

    return-void
.end method
