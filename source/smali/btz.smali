.class public final Lbtz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic b:I

.field private static final c:Lcsz;

.field private static final d:Lbtz;

.field private static volatile e:Z

.field private static volatile f:Lbtz;


# instance fields
.field public final a:Lbua;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/libraries/performance/primes/Primes"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbtz;->c:Lcsz;

    new-instance v0, Lbtz;

    new-instance v1, Lbty;

    invoke-direct {v1}, Lbty;-><init>()V

    invoke-direct {v0, v1}, Lbtz;-><init>(Lbua;)V

    sput-object v0, Lbtz;->d:Lbtz;

    const/4 v1, 0x1

    sput-boolean v1, Lbtz;->e:Z

    sput-object v0, Lbtz;->f:Lbtz;

    return-void
.end method

.method public constructor <init>(Lbua;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtz;->a:Lbua;

    return-void
.end method

.method public static a()Lbtz;
    .locals 2

    sget-object v0, Lbtz;->f:Lbtz;

    sget-object v1, Lbtz;->d:Lbtz;

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lbtz;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lbtz;->e:Z

    :cond_0
    sget-object v0, Lbtz;->f:Lbtz;

    return-object v0
.end method

.method public static declared-synchronized b(Lbtu;)V
    .locals 6

    const-class v0, Lbtz;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lbtz;->f:Lbtz;

    sget-object v2, Lbtz;->d:Lbtz;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lbjq;->h()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lbtz;->c:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/libraries/performance/primes/Primes"

    const-string v3, "initialize"

    const/16 v4, 0x74

    const-string v5, "Primes.java"

    .line 2
    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Primes.initialize() should only be called from the main thread."

    invoke-interface {v1, v2}, Lcsx;->n(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lbtu;->a:Lbtz;

    sput-object p0, Lbtz;->f:Lbtz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :goto_0
    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
