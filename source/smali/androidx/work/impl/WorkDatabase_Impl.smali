.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "PG"


# instance fields
.field private volatile j:Lakl;

.field private volatile k:Lakx;

.field private volatile l:Lakc;

.field private volatile m:Laki;

.field private volatile n:Lakx;

.field private volatile o:Lakx;

.field private volatile p:Lakx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Laeb;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    .line 2
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Laeb;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Dependency"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "WorkSpec"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "WorkTag"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "SystemIdInfo"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "WorkName"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string v4, "WorkProgress"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string v4, "Preference"

    aput-object v4, v3, v1

    .line 3
    invoke-direct {v2, p0, v0, v3}, Laeb;-><init>(Laee;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method protected final b(Ladx;)Lafd;
    .locals 3

    .line 1
    new-instance v0, Laez;

    new-instance v1, Lahw;

    invoke-direct {v1, p0}, Lahw;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    invoke-direct {v0, p1, v1}, Laez;-><init>(Ladx;Laef;)V

    iget-object v1, p1, Ladx;->b:Landroid/content/Context;

    invoke-static {v1}, Lafb;->a(Landroid/content/Context;)Lafa;

    move-result-object v1

    iget-object v2, p1, Ladx;->c:Ljava/lang/String;

    iput-object v2, v1, Lafa;->b:Ljava/lang/String;

    iput-object v0, v1, Lafa;->c:Laez;

    .line 2
    invoke-virtual {v1}, Lafa;->a()Lafb;

    move-result-object v0

    iget-object p1, p1, Ladx;->a:Lafc;

    .line 3
    invoke-interface {p1, v0}, Lafc;->a(Lafb;)Lafd;

    move-result-object p1

    return-object p1
.end method

.method public final n()Lakl;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Lakl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Lakl;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Lakl;

    if-nez v0, :cond_1

    new-instance v0, Lakv;

    invoke-direct {v0, p0}, Lakv;-><init>(Laee;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Lakl;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Lakl;

    .line 2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p()Lakc;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lakc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lakc;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lakc;

    if-nez v0, :cond_1

    new-instance v0, Lakc;

    invoke-direct {v0, p0}, Lakc;-><init>(Laee;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lakc;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lakc;

    .line 2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final q()Laki;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Laki;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Laki;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Laki;

    if-nez v0, :cond_1

    new-instance v0, Laki;

    invoke-direct {v0, p0}, Laki;-><init>(Laee;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Laki;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Laki;

    .line 2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final r()Lakx;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Lakx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Lakx;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Lakx;

    if-nez v0, :cond_1

    new-instance v0, Lakx;

    invoke-direct {v0, p0}, Lakx;-><init>(Laee;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Lakx;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Lakx;

    .line 2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s()Lakx;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lakx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lakx;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lakx;

    if-nez v0, :cond_1

    new-instance v0, Lakx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lakx;-><init>(Laee;[B)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lakx;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lakx;

    .line 2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final t()Lakx;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lakx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lakx;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lakx;

    if-nez v0, :cond_1

    new-instance v0, Lakx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lakx;-><init>(Laee;[C)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lakx;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lakx;

    .line 2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final u()Lakx;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lakx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lakx;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lakx;

    if-nez v0, :cond_1

    new-instance v0, Lakx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lakx;-><init>(Laee;[B[B)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lakx;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lakx;

    .line 2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
