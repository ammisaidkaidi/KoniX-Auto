.class public final Lbpv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;

.field private static final b:Lcqw;

.field private static final c:Lcqw;

.field private static volatile d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com/google/android/gms/phenotype/core/common/Users"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbpv;->a:Lcsz;

    const-string v0, "com.google"

    const-string v1, "com.google.work"

    invoke-static {v0, v1}, Lcqw;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lbpv;->b:Lcqw;

    .line 2
    const-string v0, "cn.google"

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lbpv;->c:Lcqw;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lbpv;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "cn.google"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lbpv;->d:Ljava/lang/Boolean;

    :cond_0
    sget-object v1, Lbpv;->d:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lbpv;->c:Lcqw;

    goto :goto_0

    .line 16
    :cond_1
    sget-object v1, Lbpv;->b:Lcqw;

    .line 4
    :goto_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    const-string v2, "AccountManager.getAccounts"

    .line 5
    invoke-static {v2}, Lcnr;->f(Ljava/lang/String;)Lcng;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    invoke-virtual {p1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v2}, Lcng;->close()V

    new-instance v2, Ljava/util/ArrayList;

    .line 9
    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 10
    aget-object v5, p1, v4

    .line 11
    iget-object v6, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-array p1, v0, [Ljava/lang/String;

    .line 13
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 14
    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    invoke-virtual {v2}, Lcng;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_2
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 16
    :catch_0
    move-exception p1

    sget-object v1, Lbpv;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    .line 14
    invoke-interface {v1, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const/16 v1, 0x26

    const-string v2, "com/google/android/gms/phenotype/core/common/Users"

    const-string v3, "getDeviceUsers"

    const-string v4, "Users.java"

    invoke-interface {p1, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v1, "Failed to get device user accounts"

    invoke-interface {p1, v1}, Lcsx;->n(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/String;

    .line 15
    :goto_3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    .line 16
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return v0
.end method
