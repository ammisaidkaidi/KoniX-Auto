.class public final Lcbz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ldny;

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>(Ldny;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcbz;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcbz;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcbz;->d:J

    iput-object p1, p0, Lcbz;->b:Ldny;

    return-void
.end method

.method public static a(Ldny;)Lcbz;
    .locals 1

    new-instance v0, Lcbz;

    invoke-direct {v0, p0}, Lcbz;-><init>(Ldny;)V

    return-object v0
.end method

.method public static b(I)Lcbz;
    .locals 1

    new-instance v0, Lcby;

    invoke-direct {v0, p0}, Lcby;-><init>(I)V

    invoke-static {v0}, Lcbz;->a(Ldny;)Lcbz;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcbz;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcbz;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcbz;->c:I

    iget-wide v3, p0, Lcbz;->d:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcbz;->c:I

    iput-wide v0, p0, Lcbz;->d:J

    .line 2
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcbz;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcbz;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Lcbz;->c:I

    if-ge v4, v0, :cond_2

    .line 2
    monitor-exit v3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lcbz;->d:J

    .line 3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v3, 0x3e8

    cmp-long v0, v6, v3

    if-lez v0, :cond_3

    const/4 v1, 0x0

    .line 1
    :goto_0
    return v1

    .line 4
    :cond_3
    return v1

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
