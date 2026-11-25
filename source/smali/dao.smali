.class public final Ldao;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldan;

.field public b:D

.field c:D

.field public d:D

.field public e:J

.field private volatile f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldan;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldao;->a:Ldan;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldao;->e:J

    return-void
.end method

.method public static a(D)Ldao;
    .locals 9

    .line 1
    new-instance v0, Ldan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldan;-><init>([B)V

    new-instance v1, Ldao;

    invoke-direct {v1, v0}, Ldao;-><init>(Ldan;)V

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmpl-double v4, p0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    nop

    .line 2
    :goto_0
    const-string v4, "rate must be positive"

    .line 3
    invoke-static {v0, v4}, Lex;->m(ZLjava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Ldao;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v4, v1, Ldao;->a:Ldan;

    .line 5
    invoke-virtual {v4}, Ldan;->a()J

    move-result-wide v4

    .line 6
    invoke-virtual {v1, v4, v5}, Ldao;->c(J)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    .line 7
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, p0

    :try_start_1
    iput-wide v4, v1, Ldao;->d:D

    iget-wide v4, v1, Ldao;->c:D

    iput-wide p0, v1, Ldao;->c:D

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v8, v4, v6

    if-nez v8, :cond_1

    iput-wide p0, v1, Ldao;->b:D

    goto :goto_2

    .line 8
    :cond_1
    cmpl-double v6, v4, v2

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v2, v1, Ldao;->b:D

    mul-double v2, v2, p0

    div-double/2addr v2, v4

    :goto_1
    iput-wide v2, v1, Ldao;->b:D

    :goto_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldao;->f:Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldao;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldao;->f:Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final c(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Ldao;->e:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Ldao;->d:D

    iget-wide v4, p0, Ldao;->c:D

    iget-wide v6, p0, Ldao;->b:D

    sub-long v0, p1, v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    add-double/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ldao;->b:D

    iput-wide p1, p0, Ldao;->e:J

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ldao;->b()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 2
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p0, Ldao;->d:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    .line 3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "RateLimiter[stableRate=%3.1fqps]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
