.class public final Lagx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field b:Ljava/util/UUID;

.field public c:Lakk;

.field final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lagx;->a:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lagx;->d:Ljava/util/Set;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lagx;->b:Ljava/util/UUID;

    .line 3
    new-instance v0, Lakk;

    iget-object v1, p0, Lagx;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lakk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lagx;->c:Lakk;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lagx;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lagx;->c:Lakk;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lakk;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lagy;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lagx;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lagx;->c:Lakk;

    iget-object v0, v0, Lakk;->j:Lagh;

    iget-boolean v0, v0, Lagh;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Lagy;

    invoke-direct {v0, p0}, Lagy;-><init>(Lagx;)V

    iget-object v1, p0, Lagx;->c:Lakk;

    .line 2
    iget-object v1, v1, Lakk;->j:Lagh;

    .line 3
    invoke-virtual {v1}, Lagh;->a()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lagh;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lagh;->b:Z

    if-nez v2, :cond_3

    iget-boolean v1, v1, Lagh;->c:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    goto :goto_1

    .line 9
    :cond_4
    nop

    .line 3
    :goto_1
    iget-object v1, p0, Lagx;->c:Lakk;

    .line 4
    iget-boolean v1, v1, Lakk;->p:Z

    if-eqz v1, :cond_6

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lagx;->b:Ljava/util/UUID;

    new-instance v1, Lakk;

    iget-object v2, p0, Lagx;->c:Lakk;

    .line 6
    invoke-direct {v1, v2}, Lakk;-><init>(Lakk;)V

    iput-object v1, p0, Lagx;->c:Lakk;

    iget-object v2, p0, Lagx;->b:Ljava/util/UUID;

    .line 7
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lakk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lagx;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
