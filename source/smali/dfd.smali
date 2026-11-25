.class final Ldfd;
.super Ldcg;
.source "PG"


# instance fields
.field final a:Ldfe;

.field b:Ldci;

.field final synthetic c:Ldff;


# direct methods
.method public constructor <init>(Ldff;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ldfd;->c:Ldff;

    invoke-direct {p0}, Ldcg;-><init>()V

    new-instance v0, Ldfe;

    invoke-direct {v0, p1}, Ldfe;-><init>(Ldcl;)V

    iput-object v0, p0, Ldfd;->a:Ldfe;

    .line 2
    invoke-direct {p0}, Ldfd;->b()Ldci;

    move-result-object p1

    iput-object p1, p0, Ldfd;->b:Ldci;

    return-void
.end method

.method private final b()Ldci;
    .locals 1

    .line 1
    iget-object v0, p0, Ldfd;->a:Ldfe;

    invoke-virtual {v0}, Ldfe;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfd;->a:Ldfe;

    invoke-virtual {v0}, Ldfe;->a()Ldcj;

    move-result-object v0

    invoke-virtual {v0}, Ldcl;->s()Ldci;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()B
    .locals 2

    .line 1
    iget-object v0, p0, Ldfd;->b:Ldci;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ldci;->a()B

    move-result v0

    iget-object v1, p0, Ldfd;->b:Ldci;

    .line 3
    invoke-interface {v1}, Ldci;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Ldfd;->b()Ldci;

    move-result-object v1

    iput-object v1, p0, Ldfd;->b:Ldci;

    :cond_0
    return v0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Ldfd;->b:Ldci;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
