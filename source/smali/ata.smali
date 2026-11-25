.class public Lata;
.super Landroid/app/Application;
.source "PG"

# interfaces
.implements Lage;
.implements Lcdy;


# static fields
.field public static final a:Lcsz;


# instance fields
.field b:Latk;

.field c:Laxz;

.field d:Landroid/os/UserManager;

.field e:Lbtz;

.field f:Ldgq;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Lcaa;->a:Lcaa;

    iget-wide v1, v0, Lcaa;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcaa;->c:J

    iget-object v0, v0, Lcaa;->l:Lbzz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbzz;->a:Z

    :cond_0
    const-string v0, "com/google/android/apps/auto/aareceiver/BaseReceiverApp"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lata;->a:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lagf;
    .locals 1

    .line 1
    new-instance v0, Lagf;

    invoke-direct {v0}, Lagf;-><init>()V

    return-object v0
.end method

.method public final b()Lcoc;
    .locals 1

    .line 1
    new-instance v0, Lcdz;

    invoke-direct {v0, p0}, Lcdz;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->initApp(Landroid/content/Context;)V

    iget-object v0, p0, Lata;->f:Ldgq;

    .line 2
    sget-object v1, Ldgq;->c:Ldgq;

    invoke-virtual {v0, v1}, Ldgq;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcdz;->e(Landroid/content/Context;)V

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcdz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lcdz;->d:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcdz;->f:Z

    if-eqz v2, :cond_3

    :cond_1
    sget-boolean v2, Lcdz;->c:Z

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set enableTestMode after a flag was already read. See cause for stack trace where first read occurred."

    sget-boolean v3, Lcdz;->d:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcdz;->e:Ljava/lang/Exception;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v3, Lcdz;->g:Ljava/lang/Exception;

    .line 20
    :goto_0
    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    sput-boolean v1, Lcdz;->c:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_1
    invoke-static {}, Ldju;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lata;->d:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isHeadlessSystemUser(Landroid/os/UserManager;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcaa;->a:Lcaa;

    .line 7
    invoke-static {}, Lbjq;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lcaa;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    iget-wide v2, v0, Lcaa;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcaa;->d:J

    iget-object v2, v0, Lcaa;->l:Lbzz;

    iput-boolean v1, v2, Lbzz;->b:Z

    new-instance v1, Lbzr;

    invoke-direct {v1, v0}, Lbzr;-><init>(Lcaa;)V

    .line 9
    invoke-static {v1}, Lbjq;->g(Ljava/lang/Runnable;)V

    .line 10
    new-instance v1, Lbzy;

    invoke-direct {v1, v0, p0}, Lbzy;-><init>(Lcaa;Landroid/app/Application;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_4
    iget-object v0, p0, Lata;->e:Lbtz;

    iget-object v0, v0, Lbtz;->a:Lbua;

    .line 11
    invoke-interface {v0}, Lbua;->c()V

    iget-object v0, p0, Lata;->e:Lbtz;

    iget-object v0, v0, Lbtz;->a:Lbua;

    .line 12
    invoke-interface {v0}, Lbua;->a()V

    :cond_5
    iget-object v0, p0, Lata;->b:Latk;

    .line 13
    invoke-virtual {v0}, Latk;->a()V

    .line 14
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    iget-object v0, p0, Lata;->d:Landroid/os/UserManager;

    .line 15
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->isHeadlessSystemUser(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lasz;

    invoke-direct {v1, p0, v0}, Lasz;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 18
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_7
    iget-object v0, p0, Lata;->c:Laxz;

    .line 19
    invoke-virtual {v0}, Laxz;->a()V

    return-void

    .line 5
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
