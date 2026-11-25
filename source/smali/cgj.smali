.class public final Lcgj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# static fields
.field public static final synthetic a:I

.field private static volatile b:Lcez;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Object;

.field private final f:Lcfh;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcez;

    sget-object v1, Lcgi;->a:Lcgi;

    invoke-direct {v0, v1}, Lcez;-><init>(Lcfa;)V

    sput-object v0, Lcgj;->b:Lcez;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcfh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcgj;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcgj;->h:Ljava/util/Map;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcgj;->c:Ljava/lang/String;

    iput-object p2, p0, Lcgj;->d:Ljava/lang/String;

    iput-object p3, p0, Lcgj;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcgj;->f:Lcfh;

    return-void
.end method

.method private final c(Lcdz;)Ljava/lang/Object;
    .locals 14

    .line 1
    const-string v0, ""

    iget-object v1, p0, Lcgj;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcgj;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcdz;->f:Z

    sget-object v3, Lcdz;->b:Landroid/content/Context;

    if-nez v3, :cond_1

    sget-boolean v3, Lcdz;->c:Z

    if-nez v3, :cond_1

    sget-object v3, Lcdz;->g:Ljava/lang/Exception;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/Exception;

    .line 3
    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    sput-object v3, Lcdz;->g:Ljava/lang/Exception;

    :cond_1
    sget-boolean v3, Lcdz;->c:Z

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcgj;->e:Ljava/lang/Object;

    goto/16 :goto_a

    .line 33
    :cond_2
    iget-object v3, p0, Lcgj;->f:Lcfh;

    iget-object v4, p0, Lcgj;->c:Ljava/lang/String;

    iget-object v5, p0, Lcgj;->d:Ljava/lang/String;

    move-object v6, v3

    check-cast v6, Lcfg;

    iget-boolean v6, v6, Lcfg;->b:Z

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcdz;->h:Landroid/content/Context;

    .line 4
    invoke-static {v6, v4}, Lcdw;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 22
    :cond_3
    move-object v6, v4

    .line 4
    :goto_0
    move-object v7, v3

    check-cast v7, Lcfg;

    iget-boolean v7, v7, Lcfg;->c:Z

    if-eqz v7, :cond_4

    const-string v7, "DirectBoot aware package %s can not access account-scoped flags."

    .line 5
    invoke-static {v2, v7, v6}, Lex;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_4
    invoke-virtual {p1}, Lcdz;->d()Ldai;

    move-result-object v7

    new-instance v8, Lcgc;

    invoke-direct {v8, p1, v6, v2}, Lcgc;-><init>(Lcdz;Ljava/lang/String;I)V

    .line 7
    invoke-interface {v7, v8}, Ldai;->a(Ljava/lang/Runnable;)Ldag;

    move-result-object v7

    .line 8
    invoke-static {v7}, Laoj;->e(Ldag;)V

    .line 9
    sget-object v7, Lcfm;->a:Lcfl;

    move-object v8, v3

    check-cast v8, Lcfg;

    iget-boolean v8, v8, Lcfg;->c:Z

    move-object v9, v3

    check-cast v9, Lcfg;

    iget-boolean v9, v9, Lcfg;->b:Z

    new-instance v10, Lcfj;

    invoke-direct {v10, p1, v6, v8, v9}, Lcfj;-><init>(Lcdz;Ljava/lang/String;ZZ)V

    const-string v8, ""

    invoke-static {v6, v8}, Lcod;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcod;

    move-result-object v8

    iget-object v9, v7, Lcfl;->a:Lcej;

    .line 10
    invoke-virtual {v9, v8}, Lcpu;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcfm;

    if-nez v9, :cond_8

    .line 11
    invoke-interface {v10}, Lcol;->a()Ljava/lang/Object;

    move-result-object v9

    iget-object v7, v7, Lcfl;->a:Lcej;

    .line 12
    invoke-virtual {v7, v8, v9}, Lcej;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcfm;

    if-nez v7, :cond_7

    iget-object v7, p1, Lcdz;->h:Landroid/content/Context;

    new-instance v10, Lcfi;

    .line 11
    move-object v11, v9

    check-cast v11, Lcfm;

    invoke-direct {v10, v11}, Lcfi;-><init>(Lcfm;)V

    .line 13
    sget-object v11, Lcgf;->c:Lcej;

    .line 14
    invoke-virtual {v11, v8, v10}, Lcej;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v10, Lcgf;->b:Z

    if-nez v10, :cond_6

    sget-object v10, Lcgf;->a:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-boolean v11, Lcgf;->b:Z

    if-nez v11, :cond_5

    new-instance v11, Lcgf;

    .line 15
    invoke-direct {v11}, Lcgf;-><init>()V

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "com.google.android.gms.phenotype.UPDATE"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-boolean v2, Lcgf;->b:Z

    .line 16
    :cond_5
    monitor-exit v10

    goto :goto_1

    .line 33
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_6
    :goto_1
    new-instance v7, Lcfk;

    .line 11
    move-object v10, v9

    check-cast v10, Lcfm;

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11}, Lcfk;-><init>(Lcfm;I)V

    .line 17
    sget-object v10, Lcfr;->a:Lcej;

    .line 18
    invoke-virtual {v10, v8, v7}, Lcej;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :cond_7
    move-object v9, v7

    goto :goto_2

    .line 22
    :cond_8
    nop

    .line 18
    :goto_2
    move-object v7, v9

    check-cast v7, Lcfm;

    .line 19
    iget-boolean v7, v7, Lcfm;->f:Z

    const-string v7, "Package %s cannot be registered both with and without stickyAccountSupport"

    .line 20
    invoke-static {v2, v7, v6}, Lex;->o(ZLjava/lang/String;Ljava/lang/Object;)V

    check-cast v9, Lcfm;

    .line 21
    invoke-virtual {v9, v5}, Lcfm;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v6, 0x0

    if-nez v2, :cond_9

    move-object v2, v6

    goto :goto_5

    .line 30
    :cond_9
    :try_start_3
    move-object v7, v3

    check-cast v7, Lcfg;

    iget-object v7, v7, Lcfg;->e:Lcgn;

    .line 22
    invoke-interface {v7, v2}, Lcgn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    .line 31
    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :goto_3
    :try_start_4
    const-string v7, "PhenotypeCombinedFlags"

    const-string v8, "Invalid Phenotype flag value for flag "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_a

    .line 23
    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 31
    :cond_a
    new-instance v9, Ljava/lang/String;

    .line 23
    invoke-direct {v9, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    :goto_4
    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v6

    .line 21
    :goto_5
    iget-object p1, p1, Lcdz;->h:Landroid/content/Context;

    sget-object v7, Lcfg;->a:Lcoc;

    if-nez v7, :cond_c

    const-class v7, Lcfg;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    sget-object v8, Lcfg;->a:Lcoc;

    if-nez v8, :cond_b

    .line 24
    invoke-static {p1}, Lafo;->c(Landroid/content/Context;)Lcoc;

    move-result-object p1

    sput-object p1, Lcfg;->a:Lcoc;

    :cond_b
    sget-object p1, Lcfg;->a:Lcoc;

    .line 25
    monitor-exit v7

    move-object v7, p1

    goto :goto_6

    .line 16
    :catchall_1
    move-exception p1

    .line 25
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 30
    :cond_c
    nop

    .line 26
    :goto_6
    invoke-virtual {v7}, Lcoc;->d()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 27
    invoke-virtual {v7}, Lcoc;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcqo;

    .line 28
    invoke-static {v4}, Lcdw;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 29
    invoke-virtual {p1, v2, v6, v6, v5}, Lcqo;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez p1, :cond_d

    move-object p1, v6

    goto :goto_9

    :cond_d
    :try_start_7
    check-cast v3, Lcfg;

    iget-object v2, v3, Lcfg;->d:Lcgn;

    .line 30
    invoke-interface {v2, p1}, Lcgn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_9

    .line 25
    :catch_2
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception p1

    :goto_7
    :try_start_8
    const-string v2, "PhenotypeCombinedFlags"

    const-string v3, "Invalid Phenotype flag value for flag "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    .line 31
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 23
    :cond_e
    new-instance v4, Ljava/lang/String;

    .line 31
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_8
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v6

    goto :goto_9

    .line 30
    :cond_f
    move-object p1, v2

    .line 29
    :goto_9
    if-nez p1, :cond_10

    iget-object p1, p0, Lcgj;->e:Ljava/lang/Object;

    .line 3
    :cond_10
    :goto_a
    iget-object v2, p0, Lcgj;->h:Ljava/util/Map;

    .line 32
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v1

    return-object p1

    .line 22
    :catchall_2
    move-exception p1

    .line 33
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x1

    sput-boolean v0, Lcdz;->d:Z

    sget-object v0, Lcdz;->b:Landroid/content/Context;

    if-nez v0, :cond_2

    sget-boolean v0, Lcdz;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcdz;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 2
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    sput-object v0, Lcdz;->e:Ljava/lang/Exception;

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "Must call PhenotypeContext.setContext() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2
    invoke-static {v0}, Lcdz;->a(Landroid/content/Context;)Lcdz;

    move-result-object v0

    .line 1
    :goto_1
    invoke-direct {p0, v0}, Lcgj;->c(Lcdz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1}, Lcdz;->a(Landroid/content/Context;)Lcdz;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcgj;->c(Lcdz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
