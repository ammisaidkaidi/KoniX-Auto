.class public final Ldhc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldht;


# instance fields
.field protected final a:Landroid/app/Activity;

.field private volatile b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ldht;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldhc;->c:Ljava/lang/Object;

    iput-object p1, p0, Ldhc;->a:Landroid/app/Activity;

    new-instance v0, Ldhi;

    check-cast p1, Ltk;

    invoke-direct {v0, p1}, Ldhi;-><init>(Ltk;)V

    iput-object v0, p0, Ldhc;->d:Ldht;

    return-void
.end method


# virtual methods
.method public final aT()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ldhc;->b:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Ldhc;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldhc;->b:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p0, Ldhc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Ldht;

    if-nez v1, :cond_1

    const-class v1, Landroid/app/Application;

    iget-object v2, p0, Ldhc;->a:Landroid/app/Activity;

    .line 2
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Sting Activity must be attached to an @Sting Application. Did you forget to specify your Application\'s class name in your manifest\'s <application />\'s android:name attribute?"

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Ldhc;->a:Landroid/app/Activity;

    .line 4
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    const-string v3, "Sting Activity must be attached to an @Sting Application. Found: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v1, p0, Ldhc;->d:Ldht;

    const-class v2, Ldhb;

    .line 5
    invoke-static {v1, v2}, Ldpx;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhb;

    .line 6
    invoke-interface {v1}, Ldhb;->b()Latc;

    move-result-object v1

    new-instance v2, Lass;

    iget-object v1, v1, Latc;->a:Latj;

    invoke-direct {v2, v1}, Lass;-><init>(Latj;)V

    iput-object v2, p0, Ldhc;->b:Ljava/lang/Object;

    .line 7
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    iget-object v0, p0, Ldhc;->b:Ljava/lang/Object;

    return-object v0
.end method
