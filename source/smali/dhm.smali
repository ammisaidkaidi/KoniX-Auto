.class public final Ldhm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldht;


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:Lbr;


# direct methods
.method public constructor <init>(Lbr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldhm;->b:Ljava/lang/Object;

    iput-object p1, p0, Ldhm;->c:Lbr;

    return-void
.end method


# virtual methods
.method public final aT()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ldhm;->a:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Ldhm;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldhm;->a:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p0, Ldhm;->c:Lbr;

    invoke-virtual {v1}, Lbr;->E()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Sting Fragments must be attached before creating the component."

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldhm;->c:Lbr;

    invoke-virtual {v1}, Lbr;->E()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ldht;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ldhm;->c:Lbr;

    invoke-virtual {v4}, Lbr;->E()Ljava/lang/Object;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Sting Fragments must be attached to an @Sting Activity. Found: %s"

    .line 3
    invoke-static {v1, v3, v2}, Ldpx;->o(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Ldhm;->c:Lbr;

    invoke-virtual {v1}, Lbr;->E()Ljava/lang/Object;

    move-result-object v1

    const-class v2, Ldhl;

    .line 4
    invoke-static {v1, v2}, Ldpx;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhl;

    .line 5
    invoke-interface {v1}, Ldhl;->a()Latf;

    move-result-object v1

    iget-object v2, p0, Ldhm;->c:Lbr;

    iput-object v2, v1, Latf;->a:Lbr;

    iget-object v1, v1, Latf;->a:Lbr;

    const-class v2, Lbr;

    .line 6
    invoke-static {v1, v2}, Ldpx;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lasu;

    invoke-direct {v1}, Lasu;-><init>()V

    iput-object v1, p0, Ldhm;->a:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    iget-object v0, p0, Ldhm;->a:Ljava/lang/Object;

    return-object v0
.end method
