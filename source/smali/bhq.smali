.class public final Lbhq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Landroid/content/ComponentName;

.field private static final d:Lboa;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.google.work"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "cn.google"

    aput-object v4, v0, v1

    sput-object v0, Lbhq;->a:[Ljava/lang/String;

    const-string v0, "androidPackageName"

    sput-object v0, Lbhq;->b:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v4, "com.google.android.gms.auth.GetToken"

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbhq;->c:Landroid/content/ComponentName;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "GoogleAuthUtil"

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Lhm;->d([Ljava/lang/String;)Lboa;

    move-result-object v0

    sput-object v0, Lbhq;->d:Lboa;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .locals 8

    .line 1
    const-class v0, Lcom/google/android/gms/auth/TokenData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    nop

    .line 3
    const-string v1, "tokenDetails"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :cond_1
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    nop

    .line 5
    const-string v0, "TokenData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/TokenData;

    .line 3
    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    const-string v0, "Error"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "userRecoveryIntent"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 8
    sget-object p0, Lbib;->o:Lbib;

    .line 9
    invoke-static {}, Lbib;->values()[Lbib;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    .line 10
    iget-object v7, v6, Lbib;->af:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v5, v7, :cond_4

    move-object p0, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5
    :cond_5
    sget-object v1, Lbib;->i:Lbib;

    .line 11
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->s:Lbib;

    .line 12
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->w:Lbib;

    .line 13
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->x:Lbib;

    .line 14
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->n:Lbib;

    .line 15
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->z:Lbib;

    .line 16
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->M:Lbib;

    .line 17
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->E:Lbib;

    .line 18
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->F:Lbib;

    .line 19
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->G:Lbib;

    .line 20
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->H:Lbib;

    .line 21
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->I:Lbib;

    .line 22
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->J:Lbib;

    .line 23
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->L:Lbib;

    .line 24
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->D:Lbib;

    .line 25
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbib;->K:Lbib;

    .line 26
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 28
    sget-object v1, Lbib;->e:Lbib;

    .line 29
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lbib;->f:Lbib;

    .line 30
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lbib;->g:Lbib;

    .line 31
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 33
    sget-object v1, Lbib;->ae:Lbib;

    .line 32
    invoke-virtual {v1, p0}, Lbib;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    .line 31
    :cond_6
    new-instance p0, Lbhm;

    .line 34
    invoke-direct {p0, v0}, Lbhm;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    new-instance p0, Ljava/io/IOException;

    .line 33
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_8
    sget-object v1, Lbhq;->d:Lboa;

    new-array v2, v5, [Ljava/lang/Object;

    .line 27
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "isUserRecoverableError status: "

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "GoogleAuthUtil"

    invoke-virtual {v1, p0, v2}, Lboa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;Lbhp;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lbiy;

    invoke-direct {v0}, Lbiy;-><init>()V

    .line 2
    invoke-static {p0}, Lbna;->a(Landroid/content/Context;)Lbna;

    move-result-object p0

    .line 3
    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lbmz;

    .line 4
    invoke-direct {v2, p1}, Lbmz;-><init>(Landroid/content/ComponentName;)V

    .line 5
    invoke-virtual {p0, v2, v0}, Lbna;->d(Lbmz;Landroid/content/ServiceConnection;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "BlockingServiceConnection.getService() called on main thread"

    .line 8
    invoke-static {v2}, Lhr;->i(Ljava/lang/String;)V

    iget-boolean v2, v0, Lbiy;->a:Z

    if-nez v2, :cond_0

    .line 9
    iput-boolean v1, v0, Lbiy;->a:Z

    iget-object v1, v0, Lbiy;->b:Ljava/util/concurrent/BlockingQueue;

    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 11
    invoke-interface {p2, v1}, Lbhp;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {p0, p1, v0}, Lbna;->b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V

    return-object p2

    .line 8
    :cond_0
    :try_start_2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call get on this connection more than once"

    .line 9
    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :catchall_0
    move-exception p2

    goto :goto_1

    .line 12
    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 14
    :goto_0
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error on service connection."

    .line 12
    invoke-direct {v1, v2, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :goto_1
    invoke-virtual {p0, p1, v0}, Lbna;->b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V

    .line 14
    throw p2

    .line 7
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 15
    const-string p1, "Could not bind to service."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :catch_2
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "SecurityException while bind to auth service: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoogleAuthUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    .line 7
    const-string p2, "SecurityException while binding to Auth service."

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static c(Lbrh;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lhr;->h()V

    .line 2
    invoke-virtual {p0}, Lbrh;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p0}, Lxq;->e(Lbrh;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v2, Lbrp;

    .line 4
    invoke-direct {v2}, Lbrp;-><init>()V

    .line 5
    invoke-static {p0, v2}, Lxq;->f(Lbrh;Lbrp;)V

    iget-object v2, v2, Lbrp;->a:Ljava/util/concurrent/CountDownLatch;

    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 7
    invoke-static {p0}, Lxq;->e(Lbrh;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :goto_0
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 8
    const-string p1, "Canceled while waiting for the task of %s to finish."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lbhq;->d:Lboa;

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, p1, v1}, Lboa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    .line 10
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :catch_1
    move-exception p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 11
    const-string p1, "Interrupted while waiting for the task of %s to finish."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lbhq;->d:Lboa;

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, p1, v1}, Lboa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    .line 13
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :catch_2
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 15
    instance-of v3, v2, Lbjz;

    if-eqz v3, :cond_1

    .line 16
    check-cast v2, Lbjz;

    throw v2

    .line 7
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 17
    const-string p1, "Unable to get a result for %s due to ExecutionException."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lbhq;->d:Lboa;

    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v0, p1, v1}, Lboa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    .line 19
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Lbjz;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lbhq;->d:Lboa;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    .line 2
    const-string p0, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    invoke-virtual {v0, p0, v1}, Lboa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Landroid/accounts/Account;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lbhq;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 3
    iget-object v3, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string v0, "Account type not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "Account name cannot be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lbjd;->a:Lbjd;

    .line 2
    const v1, 0x1110e58

    invoke-virtual {v0, p0, v1}, Lbje;->c(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlh;->a:Ldlh;

    .line 5
    invoke-virtual {v0}, Ldlh;->b()Ldli;

    move-result-object v0

    invoke-interface {v0}, Ldli;->a()Ldgp;

    move-result-object v0

    iget-object v0, v0, Ldgp;->a:Lddr;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 3

    .line 3
    nop

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lbjp;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Lbjo; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbjn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Lbhm;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbhm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lbhr;

    .line 4
    invoke-virtual {p0}, Lbjo;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object p0, p0, Lbjr;->a:Landroid/content/Intent;

    .line 5
    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4
    invoke-direct {v0, v1}, Lbhr;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    sget-object p0, Lbhq;->d:Lboa;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service call returned null."

    invoke-virtual {p0, v1, v0}, Lboa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/io/IOException;

    .line 2
    const-string v0, "Service unavailable."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
