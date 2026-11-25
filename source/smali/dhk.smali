.class public final Ldhk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldht;


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:Latl;


# direct methods
.method public constructor <init>(Latl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldhk;->b:Ljava/lang/Object;

    iput-object p1, p0, Ldhk;->c:Latl;

    return-void
.end method


# virtual methods
.method public final aT()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ldhk;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldhk;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldhk;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Ldhk;->c:Latl;

    invoke-static {}, Latj;->a()Late;

    move-result-object v2

    new-instance v3, Ldhq;

    iget-object v1, v1, Latl;->a:Latm;

    invoke-direct {v3, v1}, Ldhq;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Late;->a:Ldhq;

    iget-object v1, v2, Late;->a:Ldhq;

    const-class v3, Ldhq;

    .line 2
    invoke-static {v1, v3}, Ldpx;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Latj;

    iget-object v2, v2, Late;->a:Ldhq;

    .line 3
    invoke-direct {v1, v2}, Latj;-><init>(Ldhq;)V

    iput-object v1, p0, Ldhk;->a:Ljava/lang/Object;

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Ldhk;->a:Ljava/lang/Object;

    return-object v0
.end method
