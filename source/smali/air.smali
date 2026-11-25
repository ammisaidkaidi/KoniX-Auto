.class public final Lair;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lahg;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/job/JobScheduler;

.field private final d:Lahx;

.field private final e:Laiq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemJobScheduler"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lair;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lahx;)V
    .locals 2

    .line 1
    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Laiq;

    invoke-direct {v1, p1}, Laiq;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lair;->b:Landroid/content/Context;

    iput-object p2, p0, Lair;->d:Lahx;

    iput-object v0, p0, Lair;->c:Landroid/app/job/JobScheduler;

    iput-object v1, p0, Lair;->e:Laiq;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, v0}, Lair;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 5
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lair;->i(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f(Landroid/content/Context;Lahx;)Z
    .locals 7

    .line 1
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 2
    invoke-static {p0, v0}, Lair;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    iget-object v1, p1, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()Lakc;

    move-result-object v1

    .line 4
    const-string v2, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v2

    iget-object v4, v1, Lakc;->a:Laee;

    .line 5
    invoke-virtual {v4}, Laee;->e()V

    iget-object v1, v1, Lakc;->a:Laee;

    .line 6
    invoke-virtual {v1, v2}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 7
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v2}, Laeh;->i()V

    if-eqz p0, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    :goto_1
    new-instance v2, Ljava/util/HashSet;

    .line 15
    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    if-eqz p0, :cond_3

    .line 16
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 18
    invoke-static {v1}, Lair;->g(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 20
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lair;->i(Landroid/app/job/JobScheduler;I)V

    goto :goto_2

    .line 22
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lagr;->d([Ljava/lang/Throwable;)V

    const/4 v3, 0x1

    goto :goto_3

    .line 30
    :cond_5
    nop

    .line 24
    :goto_3
    if-eqz v3, :cond_7

    iget-object p0, p1, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    .line 25
    invoke-virtual {p0}, Laee;->f()V

    .line 26
    :try_start_1
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object p1

    .line 27
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v4, -0x1

    .line 28
    invoke-interface {p1, v1, v4, v5}, Lakl;->h(Ljava/lang/String;J)V

    goto :goto_4

    .line 29
    :cond_6
    invoke-virtual {p0}, Laee;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-virtual {p0}, Laee;->g()V

    goto :goto_5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Laee;->g()V

    .line 31
    throw p1

    .line 30
    :cond_7
    :goto_5
    return v3

    .line 31
    :catchall_1
    move-exception p0

    .line 11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v2}, Laeh;->i()V

    .line 13
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method private static g(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 4

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v1, Lair;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "getAllPendingJobs() is not reliable on this device."

    invoke-static {v1, p1, v2}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 1
    :goto_0
    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 4
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    .line 6
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static i(Landroid/app/job/JobScheduler;I)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v0, Lair;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 5
    const-string p1, "Exception while trying to cancel job (%d)"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Throwable;

    aput-object p0, v1, v4

    .line 2
    invoke-static {v0, p1, v1}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lair;->b:Landroid/content/Context;

    iget-object v1, p0, Lair;->c:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1}, Lair;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 10
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    .line 2
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 4
    invoke-static {v2}, Lair;->g(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1
    :goto_1
    if-eqz v0, :cond_4

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lair;->c:Landroid/app/job/JobScheduler;

    .line 8
    invoke-static {v2, v1}, Lair;->i(Landroid/app/job/JobScheduler;I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lair;->d:Lahx;

    iget-object v0, v0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    .line 9
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()Lakc;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lakc;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final varargs c([Lakk;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lair;->d:Lahx;

    iget-object v0, v0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    new-instance v1, Lald;

    invoke-direct {v1, v0}, Lald;-><init>(Landroidx/work/impl/WorkDatabase;)V

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, p1, v4

    .line 2
    invoke-virtual {v0}, Laee;->f()V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v6

    iget-object v7, v5, Lakk;->b:Ljava/lang/String;

    invoke-interface {v6, v7}, Lakl;->a(Ljava/lang/String;)Lakk;

    move-result-object v6

    if-nez v6, :cond_0

    .line 4
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v6, Lair;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping scheduling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it\'s no longer in the DB"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-static {v6, v5, v7}, Lagr;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0}, Laee;->h()V

    goto :goto_3

    .line 6
    :cond_0
    iget v6, v6, Lakk;->q:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 7
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v6, Lair;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping scheduling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it is no longer enqueued"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-static {v6, v5, v7}, Lagr;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {v0}, Laee;->h()V

    goto :goto_3

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()Lakc;

    move-result-object v6

    iget-object v8, v5, Lakk;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v6, v8}, Lakc;->a(Ljava/lang/String;)Lajz;

    move-result-object v6

    if-eqz v6, :cond_2

    iget v7, v6, Lajz;->b:I

    goto :goto_2

    .line 6
    :cond_2
    iget-object v8, p0, Lair;->d:Lahx;

    iget-object v8, v8, Lahx;->c:Lagf;

    iget v8, v8, Lagf;->d:I

    const-class v8, Lald;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v9, "next_job_scheduler_id"

    .line 11
    invoke-virtual {v1, v9}, Lald;->a(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3

    const-string v9, "next_job_scheduler_id"

    .line 12
    invoke-virtual {v1, v9, v7}, Lald;->b(Ljava/lang/String;I)V

    const/4 v7, 0x0

    goto :goto_1

    .line 11
    :cond_3
    move v7, v9

    .line 13
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_2
    if-nez v6, :cond_4

    :try_start_2
    new-instance v6, Lajz;

    .line 14
    iget-object v8, v5, Lakk;->b:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Lajz;-><init>(Ljava/lang/String;I)V

    iget-object v8, p0, Lair;->d:Lahx;

    iget-object v8, v8, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    .line 15
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->p()Lakc;

    move-result-object v8

    .line 16
    invoke-virtual {v8, v6}, Lakc;->b(Lajz;)V

    .line 17
    :cond_4
    invoke-virtual {p0, v5, v7}, Lair;->e(Lakk;I)V

    .line 18
    invoke-virtual {v0}, Laee;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :goto_3
    invoke-virtual {v0}, Laee;->g()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 19
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 13
    :catchall_1
    move-exception p1

    .line 6
    invoke-virtual {v0}, Laee;->g()V

    .line 20
    throw p1

    .line 13
    :cond_5
    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(Lakk;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lair;->e:Laiq;

    iget-object v1, p1, Lakk;->j:Lagh;

    .line 2
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 3
    iget-object v3, p1, Lakk;->b:Ljava/lang/String;

    const-string v4, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lakk;->d()Z

    move-result v3

    const-string v4, "EXTRA_IS_PERIODIC"

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    iget-object v0, v0, Laiq;->a:Landroid/content/ComponentName;

    invoke-direct {v3, p2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    iget-boolean v0, v1, Lagh;->b:Z

    .line 6
    invoke-virtual {v3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    iget-boolean v3, v1, Lagh;->c:Z

    .line 7
    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    iget v2, v1, Lagh;->i:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x1e

    if-lt v3, v8, :cond_0

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 12
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v3, 0x19

    .line 13
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_b

    packed-switch v3, :pswitch_data_0

    .line 10
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v3

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lez;->n(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    const-string v2, "API version too low. Cannot convert network type value %s"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Lagr;->d([Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    goto :goto_0

    .line 11
    :pswitch_0
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 15
    :goto_1
    iget-boolean v2, v1, Lagh;->c:Z

    if-nez v2, :cond_2

    .line 16
    iget v2, p1, Lakk;->r:I

    .line 17
    if-ne v2, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    .line 24
    :cond_1
    const/4 v2, 0x1

    .line 17
    :goto_2
    iget-wide v8, p1, Lakk;->l:J

    invoke-virtual {v0, v8, v9, v2}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 18
    :cond_2
    invoke-virtual {p1}, Lakk;->a()J

    move-result-wide v2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 20
    const-wide/16 v8, 0x0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-gt v10, v11, :cond_3

    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    .line 47
    :cond_3
    cmp-long v10, v2, v8

    if-lez v10, :cond_4

    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    .line 23
    :cond_4
    iget-boolean v2, p1, Lakk;->p:Z

    if-nez v2, :cond_5

    .line 24
    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    .line 25
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lagh;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lagh;->h:Lagj;

    iget-object v2, v2, Lagj;->a:Ljava/util/Set;

    .line 26
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lagi;

    iget-boolean v8, v3, Lagi;->b:Z

    .line 27
    new-instance v9, Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v3, v3, Lagi;->a:Landroid/net/Uri;

    invoke-direct {v9, v3, v8}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 28
    invoke-virtual {v0, v9}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_4

    :cond_6
    iget-wide v2, v1, Lagh;->f:J

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    iget-wide v2, v1, Lagh;->g:J

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    :cond_7
    nop

    .line 31
    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    iget-boolean v2, v1, Lagh;->d:Z

    .line 32
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    iget-boolean v1, v1, Lagh;->e:Z

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 34
    iget v1, p1, Lakk;->k:I

    .line 35
    invoke-static {}, Lre;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p1, Lakk;->p:Z

    if-eqz v2, :cond_8

    if-gtz v1, :cond_8

    .line 36
    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 37
    :cond_8
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 38
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lakk;->b:Ljava/lang/String;

    aput-object v3, v2, v7

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Scheduling work ID %s Job ID %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Throwable;

    .line 38
    invoke-virtual {v1, v2}, Lagr;->d([Ljava/lang/Throwable;)V

    :try_start_0
    iget-object v1, p0, Lair;->c:Landroid/app/job/JobScheduler;

    .line 40
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-nez v0, :cond_9

    .line 41
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v0, Lair;->a:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p1, Lakk;->b:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "Unable to schedule work ID %s"

    .line 42
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lagr;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 43
    iget-boolean v0, p1, Lakk;->p:Z

    if-eqz v0, :cond_9

    iget v0, p1, Lakk;->s:I

    if-ne v0, v6, :cond_9

    .line 44
    iput-boolean v7, p1, Lakk;->p:Z

    new-array v0, v6, [Ljava/lang/Object;

    .line 45
    iget-object v1, p1, Lakk;->b:Ljava/lang/String;

    aput-object v1, v0, v7

    const-string v1, "Scheduling a non-expedited job (work ID %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lagr;->d([Ljava/lang/Throwable;)V

    .line 47
    invoke-virtual {p0, p1, p2}, Lair;->e(Lakk;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    .line 56
    :catchall_0
    move-exception p2

    .line 48
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v0, Lair;->a:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v7

    const-string p1, "Unable to schedule %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v6, [Ljava/lang/Throwable;

    aput-object p2, v1, v7

    invoke-static {v0, p1, v1}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 11
    :catch_0
    move-exception p1

    iget-object p2, p0, Lair;->b:Landroid/content/Context;

    iget-object v0, p0, Lair;->c:Landroid/app/job/JobScheduler;

    .line 49
    invoke-static {p2, v0}, Lair;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_5

    .line 9
    :cond_a
    const/4 p2, 0x0

    .line 51
    :goto_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v7

    iget-object p2, p0, Lair;->d:Lahx;

    iget-object p2, p2, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    .line 53
    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object p2

    invoke-interface {p2}, Lakl;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v6

    iget-object p2, p0, Lair;->d:Lahx;

    iget-object p2, p2, Lahx;->c:Lagf;

    iget p2, p2, Lagf;->e:I

    const/16 p2, 0x14

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    .line 51
    const-string p2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v0, Lair;->a:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Throwable;

    invoke-static {v0, p2, v1}, Lagr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 48
    :cond_b
    const/4 p1, 0x0

    .line 9
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
