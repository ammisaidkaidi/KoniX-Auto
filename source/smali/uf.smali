.class public final Luf;
.super Lhq;
.source "PG"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field private static volatile c:Luf;


# instance fields
.field public final b:Lhq;

.field private final d:Lhq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Larm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Larm;-><init>(I)V

    sput-object v0, Luf;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lhq;-><init>()V

    new-instance v0, Luh;

    invoke-direct {v0}, Luh;-><init>()V

    iput-object v0, p0, Luf;->d:Lhq;

    iput-object v0, p0, Luf;->b:Lhq;

    return-void
.end method

.method public static g()Luf;
    .locals 2

    .line 1
    sget-object v0, Luf;->c:Luf;

    if-eqz v0, :cond_0

    sget-object v0, Luf;->c:Luf;

    return-object v0

    :cond_0
    const-class v0, Luf;

    monitor-enter v0

    :try_start_0
    sget-object v1, Luf;->c:Luf;

    if-nez v1, :cond_1

    new-instance v1, Luf;

    invoke-direct {v1}, Luf;-><init>()V

    sput-object v1, Luf;->c:Luf;

    .line 2
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Luf;->c:Luf;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final h()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
