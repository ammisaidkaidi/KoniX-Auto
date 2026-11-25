.class public final synthetic Lcab;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcad;

.field public final synthetic b:Ldag;

.field public final synthetic c:Ldag;

.field public final synthetic d:Lddf;


# direct methods
.method public synthetic constructor <init>(Lcad;Lddf;Ldag;Ldag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab;->a:Lcad;

    iput-object p2, p0, Lcab;->d:Lddf;

    iput-object p3, p0, Lcab;->b:Ldag;

    iput-object p4, p0, Lcab;->c:Ldag;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 13

    .line 1
    iget-object v0, p0, Lcab;->a:Lcad;

    iget-object v1, p0, Lcab;->d:Lddf;

    iget-object v2, p0, Lcab;->b:Ldag;

    iget-object v3, p0, Lcab;->c:Ldag;

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoc;

    invoke-virtual {v2}, Lcoc;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    iget-object v5, v1, Lddf;->b:Lddk;

    .line 3
    check-cast v5, Ldpf;

    iget-wide v5, v5, Ldpf;->b:J

    .line 4
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v9, v5

    iget-boolean v7, v1, Lddf;->c:Z

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_1
    iget-object v7, v1, Lddf;->b:Lddk;

    .line 6
    check-cast v7, Ldpf;

    iget-object v11, v7, Ldpf;->y:Ldem;

    iget-boolean v12, v11, Ldem;->b:Z

    if-nez v12, :cond_2

    .line 7
    invoke-virtual {v11}, Ldem;->a()Ldem;

    move-result-object v11

    iput-object v11, v7, Ldpf;->y:Ldem;

    :cond_2
    iget-object v7, v7, Ldpf;->y:Ldem;

    .line 6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v5, Lcad;->a:Lcsz;

    invoke-virtual {v5}, Lcsv;->c()Lctq;

    move-result-object v5

    .line 2
    invoke-interface {v5, v2}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const/16 v5, 0x76

    const-string v6, "com/google/android/libraries/performance/primes/metrics/startup/StartupMetricRecordingService"

    const-string v7, "setCustomTimestamps"

    const-string v8, "StartupMetricRecordingService.java"

    invoke-interface {v2, v6, v7, v5, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const-string v5, "Failed to get custom timestamps future"

    invoke-interface {v2, v5}, Lcsx;->n(Ljava/lang/String;)V

    .line 1
    :cond_3
    :goto_1
    iget-object v0, v0, Lcad;->b:Lbwn;

    .line 8
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v2

    .line 9
    sget-object v5, Ldpz;->y:Ldpz;

    .line 10
    invoke-virtual {v5}, Lddk;->n()Lddf;

    move-result-object v5

    .line 11
    sget-object v6, Ldpb;->f:Ldpb;

    .line 12
    invoke-virtual {v6}, Lddk;->n()Lddf;

    move-result-object v6

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7

    iget-boolean v9, v6, Lddf;->c:Z

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v4, v6, Lddf;->c:Z

    :cond_4
    iget-object v9, v6, Lddf;->b:Lddk;

    .line 14
    check-cast v9, Ldpb;

    iget v10, v9, Ldpb;->a:I

    const/4 v11, 0x1

    or-int/2addr v10, v11

    iput v10, v9, Ldpb;->a:I

    iput-wide v7, v9, Ldpb;->b:J

    const/4 v7, 0x2

    iput v7, v9, Ldpb;->c:I

    or-int/2addr v7, v10

    iput v7, v9, Ldpb;->a:I

    .line 15
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldpf;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v9, Ldpb;->e:Ldpf;

    iget v1, v9, Ldpb;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v9, Ldpb;->a:I

    iget-boolean v1, v5, Lddf;->c:Z

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v4, v5, Lddf;->c:Z

    :cond_5
    iget-object v1, v5, Lddf;->b:Lddk;

    .line 18
    check-cast v1, Ldpz;

    invoke-virtual {v6}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Ldpb;

    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v1, Ldpz;->n:Ldpb;

    iget v4, v1, Ldpz;->a:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v1, Ldpz;->a:I

    .line 20
    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldpz;

    .line 21
    invoke-virtual {v2, v1}, Lbwi;->d(Ldpz;)V

    .line 22
    invoke-static {v3}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoc;

    invoke-virtual {v1}, Lcoc;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldot;

    iput-object v1, v2, Lbwi;->b:Ldot;

    const/4 v1, 0x0

    iput-object v1, v2, Lbwi;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v11}, Lbwi;->c(Z)V

    .line 24
    invoke-virtual {v2}, Lbwi;->a()Lbwj;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object v0

    return-object v0
.end method
