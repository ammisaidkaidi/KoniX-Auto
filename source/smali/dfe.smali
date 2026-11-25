.class final Ldfe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field private final a:Ljava/util/ArrayDeque;

.field private b:Ldcj;


# direct methods
.method public constructor <init>(Ldcl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Ldff;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ldff;

    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p1, Ldff;->g:I

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Ldfe;->a:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Ldff;->e:Ldcl;

    .line 6
    invoke-direct {p0, p1}, Ldfe;->b(Ldcl;)Ldcj;

    move-result-object p1

    iput-object p1, p0, Ldfe;->b:Ldcj;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldfe;->a:Ljava/util/ArrayDeque;

    .line 7
    check-cast p1, Ldcj;

    iput-object p1, p0, Ldfe;->b:Ldcj;

    return-void
.end method

.method private final b(Ldcl;)Ldcj;
    .locals 1

    .line 1
    :goto_0
    instance-of v0, p1, Ldff;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ldff;

    iget-object v0, p0, Ldfe;->a:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Ldff;->a:[I

    .line 5
    iget-object p1, p1, Ldff;->e:Ldcl;

    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Ldcj;

    return-object p1
.end method


# virtual methods
.method public final a()Ldcj;
    .locals 3

    .line 1
    iget-object v0, p0, Ldfe;->b:Ldcj;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v1, p0, Ldfe;->a:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldfe;->a:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldff;

    sget-object v2, Ldff;->a:[I

    .line 4
    iget-object v1, v1, Ldff;->f:Ldcl;

    .line 3
    invoke-direct {p0, v1}, Ldfe;->b(Ldcl;)Ldcj;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ldcl;->B()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    nop

    .line 2
    :goto_0
    iput-object v2, p0, Ldfe;->b:Ldcj;

    return-object v0

    .line 1
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Ldfe;->b:Ldcj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldfe;->a()Ldcj;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
