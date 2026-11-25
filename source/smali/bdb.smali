.class final Lbdb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcok;

.field public b:Lj$/time/Instant;


# direct methods
.method public constructor <init>(Lcor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lj$/time/Instant;->MIN:Lj$/time/Instant;

    iput-object v0, p0, Lbdb;->b:Lj$/time/Instant;

    .line 2
    invoke-static {p1}, Lcok;->b(Lcor;)Lcok;

    move-result-object p1

    iput-object p1, p0, Lbdb;->a:Lcok;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lbdb;->a:Lcok;

    iget-boolean v0, v0, Lcok;->b:Z

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lj$/time/Instant;->MIN:Lj$/time/Instant;

    iget-object v1, p0, Lbdb;->b:Lj$/time/Instant;

    invoke-virtual {v0, v1}, Lj$/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lbdb;->b:Lj$/time/Instant;

    :cond_0
    iget-object v0, p0, Lbdb;->a:Lcok;

    .line 3
    invoke-virtual {v0}, Lcok;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbdb;->a:Lcok;

    iget-object v1, v0, Lcok;->a:Lcor;

    invoke-virtual {v1}, Lcor;->a()J

    move-result-wide v1

    iget-boolean v3, v0, Lcok;->b:Z

    const-string v4, "This stopwatch is already stopped."

    .line 2
    invoke-static {v3, v4}, Lex;->s(ZLjava/lang/Object;)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcok;->b:Z

    iget-wide v3, v0, Lcok;->c:J

    iget-wide v5, v0, Lcok;->d:J

    sub-long/2addr v1, v5

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcok;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
