.class public Lbkc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lbjy;

.field public final d:Lbjw;

.field public final e:Lbks;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Lbkf;

.field public final i:Lbln;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbjy;Lbjw;Lbkb;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbkc;->a:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getAttributionTag"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_1

    .line 12
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :cond_0
    :goto_0
    nop

    .line 5
    :goto_1
    iput-object v1, p0, Lbkc;->b:Ljava/lang/String;

    iput-object p2, p0, Lbkc;->c:Lbjy;

    iput-object p3, p0, Lbkc;->d:Lbjw;

    .line 6
    iget-object p1, p4, Lbkb;->b:Landroid/os/Looper;

    iput-object p1, p0, Lbkc;->f:Landroid/os/Looper;

    new-instance p1, Lbks;

    .line 7
    invoke-direct {p1, p2, p3, v1}, Lbks;-><init>(Lbjy;Lbjw;Ljava/lang/String;)V

    iput-object p1, p0, Lbkc;->e:Lbks;

    .line 8
    new-instance p1, Lblc;

    invoke-direct {p1, p0}, Lblc;-><init>(Lbkc;)V

    iput-object p1, p0, Lbkc;->h:Lbkf;

    iget-object p1, p0, Lbkc;->a:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lbln;->c(Landroid/content/Context;)Lbln;

    move-result-object p1

    iput-object p1, p0, Lbkc;->i:Lbln;

    iget-object p2, p1, Lbln;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Lbkc;->g:I

    .line 11
    iget-object p2, p4, Lbkb;->c:Lho;

    iget-object p1, p1, Lbln;->l:Landroid/os/Handler;

    const/4 p2, 0x7

    .line 12
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final a(ILbmc;)Lbrh;
    .locals 13

    .line 1
    new-instance v0, Lbrk;

    invoke-direct {v0}, Lbrk;-><init>()V

    iget-object v9, p0, Lbkc;->i:Lbln;

    iget v3, p2, Lbmc;->c:I

    if-eqz v3, :cond_8

    iget-object v4, p0, Lbkc;->e:Lbks;

    invoke-virtual {v9}, Lbln;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lbnp;->a()Lbnp;

    move-result-object v1

    iget-object v1, v1, Lbnp;->a:Lbnq;

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    iget-boolean v6, v1, Lbnq;->b:Z

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    iget-boolean v1, v1, Lbnq;->c:Z

    .line 1
    invoke-virtual {v9, v4}, Lbln;->b(Lbks;)Lblj;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v6, Lblj;->b:Lbjx;

    .line 3
    instance-of v8, v7, Lbmn;

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    check-cast v7, Lbmn;

    .line 4
    invoke-virtual {v7}, Lbmn;->z()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lbmn;->n()Z

    move-result v8

    if-nez v8, :cond_4

    .line 5
    invoke-static {v6, v7, v3}, Lbls;->b(Lblj;Lbmn;I)Lbms;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget v2, v6, Lblj;->i:I

    add-int/2addr v2, v5

    iput v2, v6, Lblj;->i:I

    iget-boolean v5, v1, Lbms;->c:Z

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_0

    .line 7
    :cond_5
    nop

    .line 5
    :goto_0
    new-instance v10, Lbls;

    const-wide/16 v1, 0x0

    if-eqz v5, :cond_6

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_1

    .line 7
    :cond_6
    move-wide v6, v1

    .line 6
    :goto_1
    if-eqz v5, :cond_7

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_2

    :cond_7
    nop

    :goto_2
    move-wide v11, v1

    move-object v1, v10

    move-object v2, v9

    move-wide v5, v6

    move-wide v7, v11

    invoke-direct/range {v1 .. v8}, Lbls;-><init>(Lbln;ILbks;JJ)V

    move-object v2, v10

    .line 1
    :goto_3
    if-eqz v2, :cond_8

    iget-object v1, v0, Lbrk;->a:Lbro;

    iget-object v3, v9, Lbln;->l:Landroid/os/Handler;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lbld;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lbld;-><init>(Landroid/os/Handler;I)V

    invoke-virtual {v1, v4, v2}, Lbrh;->f(Ljava/util/concurrent/Executor;Lbrc;)V

    :cond_8
    new-instance v1, Lbkp;

    .line 9
    invoke-direct {v1, p1, p2, v0}, Lbkp;-><init>(ILbmc;Lbrk;)V

    iget-object p1, v9, Lbln;->l:Landroid/os/Handler;

    new-instance p2, Lblv;

    iget-object v2, v9, Lbln;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {p2, v1, v2, p0}, Lblv;-><init>(Lbkr;ILbkc;)V

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, v0, Lbrk;->a:Lbro;

    return-object p1
.end method

.method public static h(Landroid/content/Context;)Lbkc;
    .locals 5

    .line 1
    new-instance v0, Lbkc;

    sget-object v1, Lbik;->a:Lbjy;

    sget-object v2, Lbjw;->a:Lbjv;

    new-instance v3, Lho;

    invoke-direct {v3}, Lho;-><init>()V

    new-instance v4, Lbka;

    invoke-direct {v4}, Lbka;-><init>()V

    iput-object v3, v4, Lbka;->a:Lho;

    .line 2
    invoke-virtual {v4}, Lbka;->a()Lbkb;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lbkc;-><init>(Landroid/content/Context;Lbjy;Lbjw;Lbkb;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbmo;
    .locals 4

    .line 1
    new-instance v0, Lbmo;

    invoke-direct {v0}, Lbmo;-><init>()V

    iget-object v1, p0, Lbkc;->d:Lbjw;

    instance-of v2, v1, Lbju;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2
    check-cast v1, Lbju;

    .line 3
    invoke-interface {v1}, Lbju;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v3, Landroid/accounts/Account;

    .line 6
    const-string v2, "com.google"

    invoke-direct {v3, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbkc;->d:Lbjw;

    .line 4
    instance-of v2, v1, Lbjt;

    if-eqz v2, :cond_2

    .line 5
    check-cast v1, Lbjt;

    invoke-interface {v1}, Lbjt;->a()Landroid/accounts/Account;

    move-result-object v3

    goto :goto_0

    :cond_2
    nop

    .line 3
    :goto_0
    iput-object v3, v0, Lbmo;->a:Landroid/accounts/Account;

    iget-object v1, p0, Lbkc;->d:Lbjw;

    .line 7
    instance-of v2, v1, Lbju;

    if-eqz v2, :cond_4

    .line 8
    check-cast v1, Lbju;

    .line 9
    invoke-interface {v1}, Lbju;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-nez v1, :cond_3

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->a()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 10
    :goto_1
    iget-object v2, v0, Lbmo;->b:Lvd;

    if-nez v2, :cond_5

    new-instance v2, Lvd;

    invoke-direct {v2}, Lvd;-><init>()V

    iput-object v2, v0, Lbmo;->b:Lvd;

    :cond_5
    iget-object v2, v0, Lbmo;->b:Lvd;

    .line 13
    invoke-virtual {v2, v1}, Lvd;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbkc;->a:Landroid/content/Context;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbmo;->d:Ljava/lang/String;

    iget-object v1, p0, Lbkc;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbmo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lbmc;)Lbrh;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lbkc;->a(ILbmc;)Lbrh;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lbmc;)Lbrh;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lbkc;->a(ILbmc;)Lbrh;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Lbrh;
    .locals 2

    .line 1
    invoke-static {}, Lbmc;->a()Lbmb;

    move-result-object v0

    new-instance v1, Lbou;

    invoke-direct {v1, p1}, Lbou;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lbmb;->a:Lblx;

    invoke-virtual {v0}, Lbmb;->a()Lbmc;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lbkc;->c(Lbmc;)Lbrh;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;I[Ljava/lang/String;[B)Lbrh;
    .locals 2

    .line 1
    invoke-static {}, Lbmc;->a()Lbmb;

    move-result-object v0

    new-instance v1, Lbow;

    invoke-direct {v1, p1, p2, p3, p4}, Lbow;-><init>(Ljava/lang/String;I[Ljava/lang/String;[B)V

    iput-object v1, v0, Lbmb;->a:Lblx;

    invoke-virtual {v0}, Lbmb;->a()Lbmc;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lbkc;->c(Lbmc;)Lbrh;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Lbrh;
    .locals 2

    .line 1
    invoke-static {}, Lbmc;->a()Lbmb;

    move-result-object v0

    new-instance v1, Lbot;

    invoke-direct {v1, p1, p2}, Lbot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lbmb;->a:Lblx;

    invoke-virtual {v0}, Lbmb;->a()Lbmc;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lbkc;->c(Lbmc;)Lbrh;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lbmc;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lbkc;->a(ILbmc;)Lbrh;

    return-void
.end method
