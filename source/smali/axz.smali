.class public final Laxz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field static final b:[Ljava/lang/String;


# instance fields
.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lceo;

.field public final e:Lj$/util/Optional;

.field public final f:Landroid/net/ConnectivityManager;

.field public g:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Landroid/content/Context;

.field private final j:Landroid/content/pm/PackageManager;

.field private final k:Lj$/util/Optional;

.field private final l:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Laxz;->a:Lcsz;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AARECEIVER_ANDROID_PRIMES"

    aput-object v2, v0, v1

    sput-object v0, Laxz;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lceo;Lj$/util/Optional;Ldai;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lj$/util/Optional;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Laxz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Laxz;->i:Landroid/content/Context;

    iput-object p2, p0, Laxz;->d:Lceo;

    iput-object p3, p0, Laxz;->e:Lj$/util/Optional;

    iput-object p4, p0, Laxz;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Laxz;->f:Landroid/net/ConnectivityManager;

    iput-object p6, p0, Laxz;->j:Landroid/content/pm/PackageManager;

    iput-object p7, p0, Laxz;->l:Landroid/os/UserManager;

    iput-object p8, p0, Laxz;->k:Lj$/util/Optional;

    .line 2
    invoke-static {p1}, Lcei;->f(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Laxz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laxz;->l:Landroid/os/UserManager;

    .line 2
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    const-string v1, "PhenotypeManager.java"

    const-string v2, "com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager"

    if-eqz v0, :cond_3

    iget-object v0, p0, Laxz;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    sget-object v0, Ldad;->a:Ldag;

    goto/16 :goto_2

    .line 14
    :cond_1
    :try_start_0
    iget-object v0, p0, Laxz;->j:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Laxz;->i:Landroid/content/Context;

    .line 4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    sget-object v4, Laxz;->a:Lcsz;

    invoke-virtual {v4}, Lcsv;->b()Lctq;

    move-result-object v4

    .line 5
    invoke-interface {v4, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v4, 0xd3

    const-string v5, "getPackageInfo"

    invoke-interface {v0, v2, v5, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v4, "Unknown package name from application context."

    invoke-interface {v0, v4}, Lcsx;->n(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    .line 7
    :goto_0
    sget-object v4, Lawq;->e:Lawq;

    .line 8
    invoke-virtual {v0, v4}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    .line 9
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    sget-object v0, Laxz;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v5, 0xa1

    .line 10
    const-string v6, "registerOnce"

    invoke-interface {v0, v2, v6, v5, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Invalid version code"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    move v4, v0

    .line 10
    :goto_1
    iget-object v0, p0, Laxz;->d:Lceo;

    sget-object v1, Laxz;->b:[Ljava/lang/String;

    iget-object v2, p0, Laxz;->k:Lj$/util/Optional;

    .line 11
    sget-object v5, Lbhk;->b:Lbhk;

    invoke-virtual {v2, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhk;

    invoke-virtual {v2}, Ldbv;->h()[B

    move-result-object v2

    .line 12
    invoke-interface {v0, v4, v1, v2}, Lceo;->d(I[Ljava/lang/String;[B)Ldag;

    move-result-object v0

    .line 13
    :goto_2
    new-instance v1, Laxy;

    invoke-direct {v1, p0, v3}, Laxy;-><init>(Laxz;I)V

    iget-object v2, p0, Laxz;->c:Ljava/util/concurrent/Executor;

    .line 14
    invoke-static {v0, v1, v2}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    return-void

    .line 12
    :cond_3
    sget-object v0, Laxz;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v3, 0x67

    .line 15
    const-string v4, "initialRegisterAndSync"

    invoke-interface {v0, v2, v4, v3, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Still in direct boot mode. Waiting for user unlock..."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    return-void
.end method
