.class abstract Lbcc;
.super Lany;
.source "PG"

# interfaces
.implements Ldht;


# instance fields
.field private volatile ad:Ldhm;

.field private final ae:Ljava/lang/Object;

.field private af:Z

.field private f:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lany;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbcc;->ae:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbcc;->af:Z

    return-void
.end method

.method private final ar()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbcc;->f:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    invoke-super {p0}, Lany;->r()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ldhp;

    invoke-direct {v1, v0, p0}, Ldhp;-><init>(Landroid/content/Context;Lbr;)V

    iput-object v1, p0, Lbcc;->f:Landroid/content/ContextWrapper;

    :cond_0
    return-void
.end method


# virtual methods
.method public final I(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lany;->I(Landroid/app/Activity;)V

    iget-object v0, p0, Lbcc;->f:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    :goto_0
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_0

    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 3
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    nop

    .line 3
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 4
    const-string v0, "onAttach called multiple times with different Context! Sting Fragments should not be retained."

    invoke-static {v2, v0, p1}, Ldpx;->o(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lbcc;->ar()V

    .line 6
    invoke-virtual {p0}, Lbcc;->at()V

    return-void
.end method

.method public final aR(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lany;->aR(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lbcc;->ar()V

    .line 3
    invoke-virtual {p0}, Lbcc;->at()V

    return-void
.end method

.method public final aT()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lbcc;->ad:Ldhm;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbcc;->ae:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbcc;->ad:Ldhm;

    if-nez v1, :cond_0

    new-instance v1, Ldhm;

    invoke-direct {v1, p0}, Ldhm;-><init>(Lbr;)V

    iput-object v1, p0, Lbcc;->ad:Ldhm;

    .line 2
    :cond_0
    monitor-exit v0

    goto :goto_0

    .line 3
    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lbcc;->ad:Ldhm;

    .line 3
    invoke-virtual {v0}, Ldhm;->aT()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final at()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbcc;->af:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbcc;->af:Z

    invoke-virtual {p0}, Lbcc;->aT()Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lbcb;

    :cond_0
    return-void
.end method

.method public final m()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbr;->ab()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Ldhp;

    .line 2
    invoke-direct {v1, v0, p0}, Ldhp;-><init>(Landroid/view/LayoutInflater;Lbr;)V

    .line 3
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final r()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lany;->r()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcc;->f:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lbcc;->ar()V

    iget-object v0, p0, Lbcc;->f:Landroid/content/ContextWrapper;

    return-object v0
.end method
