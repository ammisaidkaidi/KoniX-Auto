.class public abstract Lcei;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/Object;

.field public static final synthetic d:I

.field private static volatile e:Lceh;

.field private static volatile f:Z

.field private static final g:Lcez;

.field private static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final b:Lceg;

.field final c:Ljava/lang/String;

.field private final i:Ljava/lang/Object;

.field private volatile j:I

.field private volatile k:Ljava/lang/Object;

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcei;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcei;->e:Lceh;

    const/4 v0, 0x0

    sput-boolean v0, Lcei;->f:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lcez;

    sget-object v1, Lcgi;->b:Lcgi;

    .line 2
    invoke-direct {v0, v1}, Lcez;-><init>(Lcfa;)V

    sput-object v0, Lcei;->g:Lcez;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcei;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lceg;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcei;->j:I

    iget-object v0, p1, Lceg;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Lceg;->b:Landroid/net/Uri;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p1, Lceg;->b:Landroid/net/Uri;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass one of SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_3
    :goto_1
    iput-object p1, p0, Lcei;->b:Lceg;

    iput-object p2, p0, Lcei;->c:Ljava/lang/String;

    iput-object p3, p0, Lcei;->i:Ljava/lang/Object;

    iput-boolean p4, p0, Lcei;->l:Z

    return-void
.end method

.method public static b(Lceg;Ljava/lang/String;Ljava/lang/Object;Lcef;Z)Lcei;
    .locals 7

    .line 1
    new-instance v6, Lcee;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcee;-><init>(Lceg;Ljava/lang/String;Ljava/lang/Object;ZLcef;)V

    return-object v6
.end method

.method static e()V
    .locals 1

    .line 1
    sget-object v0, Lcei;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcei;->e:Lceh;

    if-nez v0, :cond_4

    sget-object v0, Lcei;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcei;->e:Lceh;

    if-nez v1, :cond_3

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcei;->e:Lceh;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lceh;->a:Landroid/content/Context;

    if-eq v1, p0, :cond_2

    .line 2
    :cond_1
    invoke-static {}, Lcdo;->b()V

    .line 3
    invoke-static {}, Lcel;->b()V

    .line 4
    invoke-static {}, Lcdu;->d()V

    new-instance v1, Lbya;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lbya;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-static {v1}, Lex;->i(Lcol;)Lcol;

    move-result-object v1

    new-instance v2, Lceh;

    .line 6
    invoke-direct {v2, p0, v1}, Lceh;-><init>(Landroid/content/Context;Lcol;)V

    sput-object v2, Lcei;->e:Lceh;

    .line 7
    invoke-static {}, Lcei;->e()V

    .line 8
    :cond_2
    monitor-exit v0

    goto :goto_0

    .line 9
    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 9
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    return-void
.end method

.method private final g(Lceh;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcei;->b:Lceg;

    iget-boolean v1, v0, Lceg;->e:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v0, v0, Lceg;->i:Lcny;

    iget-object p1, p1, Lceh;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcdu;->b(Landroid/content/Context;)Lcdu;

    move-result-object p1

    iget-object v0, p0, Lcei;->b:Lceg;

    .line 3
    iget-boolean v1, v0, Lceg;->e:Z

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lceg;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcei;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Lcdu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    return-object v2
.end method

.method private final h(Lceh;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcei;->b:Lceg;

    iget-boolean v0, v0, Lceg;->g:Z

    iget-object v0, p1, Lceh;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcdu;->b(Landroid/content/Context;)Lcdu;

    move-result-object v0

    const-string v1, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 3
    invoke-virtual {v0, v1}, Lcdu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    sget-object v2, Lbrr;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_0
    iget-object v0, p0, Lcei;->b:Lceg;

    .line 5
    iget-object v2, v0, Lceg;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    iget-object v0, p1, Lceh;->a:Landroid/content/Context;

    .line 23
    sget-object v4, Lcdv;->b:Ljava/lang/Object;

    .line 24
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.google.android.gms.phenotype"

    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    const-string p1, "PhenotypeClientHelper"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    goto/16 :goto_a

    .line 51
    :cond_1
    sget-object v2, Lcdv;->a:Lcoc;

    .line 27
    invoke-virtual {v2}, Lcoc;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcdv;->a:Lcoc;

    .line 28
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_4

    .line 48
    :cond_2
    sget-object v2, Lcdv;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v4, Lcdv;->a:Lcoc;

    .line 29
    invoke-virtual {v4}, Lcoc;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lcdv;->a:Lcoc;

    .line 30
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v2

    goto :goto_4

    :cond_3
    const-string v4, "com.google.android.gms"

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 32
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.android.gms.phenotype"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    .line 35
    :cond_5
    const/high16 v6, 0x10000000

    .line 33
    :goto_0
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v5, "com.google.android.gms"

    .line 34
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    .line 36
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "com.google.android.gms"

    .line 37
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :try_start_2
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    .line 41
    :cond_7
    goto :goto_3

    .line 40
    :catch_0
    move-exception v0

    goto :goto_3

    .line 35
    :cond_8
    :goto_2
    nop

    .line 39
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0

    sput-object v0, Lcdv;->a:Lcoc;

    .line 40
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v0, Lcdv;->a:Lcoc;

    .line 41
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 28
    :goto_4
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcei;->b:Lceg;

    .line 42
    iget-boolean v0, v0, Lceg;->h:Z

    iget-object p1, p1, Lceh;->a:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcei;->b:Lceg;

    iget-object v0, v0, Lceg;->b:Landroid/net/Uri;

    .line 44
    sget-object v2, Lcdo;->a:Ljava/util/Map;

    const-class v2, Lcdo;

    monitor-enter v2

    :try_start_3
    sget-object v3, Lcdo;->a:Ljava/util/Map;

    .line 45
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcdo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_9

    :try_start_4
    new-instance v4, Lcdo;

    .line 46
    invoke-direct {v4, p1, v0}, Lcdo;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object p1, Lcdo;->a:Ljava/util/Map;

    .line 47
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 49
    :catch_1
    move-exception p1

    .line 48
    :goto_5
    move-object v3, v4

    goto :goto_6

    .line 49
    :catch_2
    move-exception p1

    goto :goto_6

    .line 48
    :cond_9
    nop

    :goto_6
    :try_start_6
    monitor-exit v2

    goto :goto_a

    .line 9
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    .line 48
    :cond_a
    move-object v3, v1

    goto :goto_a

    .line 49
    :catchall_1
    move-exception p1

    .line 40
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    .line 35
    :cond_b
    iget-object p1, p1, Lceh;->a:Landroid/content/Context;

    .line 6
    iget-object v0, v0, Lceg;->a:Ljava/lang/String;

    .line 7
    sget v2, Lbtj;->a:I

    const-string v2, "direct_boot:"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    .line 9
    :cond_c
    invoke-static {p1}, Lbtj;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object v3, v1

    goto :goto_a

    .line 8
    :cond_d
    :goto_7
    const-class v2, Lcel;

    monitor-enter v2

    :try_start_8
    sget-object v4, Lcel;->a:Ljava/util/Map;

    .line 10
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcel;

    if-nez v4, :cond_f

    new-instance v4, Lcel;

    .line 11
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    const-string v6, "direct_boot:"

    .line 12
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    const/16 v6, 0xc

    .line 14
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {p1, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_8

    .line 21
    :cond_e
    nop

    .line 17
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 16
    :goto_8
    :try_start_a
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 19
    invoke-direct {v4, p1}, Lcel;-><init>(Landroid/content/SharedPreferences;)V

    sget-object p1, Lcel;->a:Ljava/util/Map;

    .line 20
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    goto :goto_9

    .line 40
    :catchall_2
    move-exception p1

    .line 16
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 18
    throw p1

    .line 16
    :cond_f
    move-object v3, v4

    .line 21
    :goto_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 26
    :goto_a
    if-eqz v3, :cond_10

    .line 50
    invoke-virtual {p0}, Lcei;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcdr;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 51
    invoke-virtual {p0, p1}, Lcei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_10
    return-object v1

    .line 40
    :catchall_3
    move-exception p1

    .line 22
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p1
.end method

.method private final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcei;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcei;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final c()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcei;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcei;->g:Lcez;

    iget-object v2, p0, Lcei;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Lcez;->a:Z

    const-string v0, "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error."

    .line 2
    invoke-static {v1, v0}, Lex;->s(ZLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcei;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, p0, Lcei;->j:I

    if-ge v2, v0, :cond_8

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcei;->j:I

    if-ge v2, v0, :cond_7

    sget-object v2, Lcei;->e:Lceh;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    const-string v3, "Must call PhenotypeFlag.init() first"

    .line 4
    invoke-static {v1, v3}, Lex;->s(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcei;->b:Lceg;

    .line 5
    iget-boolean v1, v1, Lceg;->f:Z

    if-eqz v1, :cond_3

    .line 6
    invoke-direct {p0, v2}, Lcei;->g(Lceh;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-direct {p0, v2}, Lcei;->h(Lceh;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0, v2}, Lcei;->h(Lceh;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 9
    invoke-direct {p0, v2}, Lcei;->g(Lceh;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 7
    :goto_1
    iget-object v1, p0, Lcei;->i:Ljava/lang/Object;

    .line 6
    :cond_4
    :goto_2
    iget-object v2, v2, Lceh;->b:Lcol;

    .line 10
    invoke-interface {v2}, Lcol;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoc;

    .line 11
    invoke-virtual {v2}, Lcoc;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 12
    invoke-virtual {v2}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcqo;

    iget-object v2, p0, Lcei;->b:Lceg;

    iget-object v3, v2, Lceg;->b:Landroid/net/Uri;

    iget-object v4, v2, Lceg;->a:Ljava/lang/String;

    iget-object v2, v2, Lceg;->d:Ljava/lang/String;

    iget-object v5, p0, Lcei;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v3, v4, v2, v5}, Lcqo;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcei;->i:Ljava/lang/Object;

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {p0, v1}, Lcei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    :cond_6
    :goto_3
    iput-object v1, p0, Lcei;->k:Ljava/lang/Object;

    iput v0, p0, Lcei;->j:I

    .line 15
    :cond_7
    monitor-exit p0

    goto :goto_4

    .line 9
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    :goto_4
    iget-object v0, p0, Lcei;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcei;->b:Lceg;

    iget-object v0, v0, Lceg;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcei;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
