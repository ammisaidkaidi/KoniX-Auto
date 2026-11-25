.class public final Lbsv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbsn;


# instance fields
.field public final a:Landroid/content/Context;

.field private b:Lcoc;

.field private final c:Ljava/lang/Object;

.field private final d:Ldhq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldhq;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p3, Lcns;->a:Lcns;

    iput-object p3, p0, Lbsv;->b:Lcoc;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbsv;->c:Ljava/lang/Object;

    iput-object p1, p0, Lbsv;->a:Landroid/content/Context;

    iput-object p2, p0, Lbsv;->d:Ldhq;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbsv;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbsv;->b:Lcoc;

    invoke-virtual {v1}, Lcoc;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsv;->b:Lcoc;

    invoke-virtual {v1}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbsv;->b()Z

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lbsv;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lbsv;->d:Ldhq;

    iget-object v2, v2, Ldhq;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_cb"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v2

    iput-object v2, p0, Lbsv;->b:Lcoc;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    monitor-exit v0

    return v3

    .line 3
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4
    :catch_0
    move-exception v2

    .line 3
    monitor-exit v0

    return v1

    .line 5
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
