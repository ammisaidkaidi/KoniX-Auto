.class public Lddf;
.super Ldbu;
.source "PG"

# interfaces
.implements Ldes;


# instance fields
.field public final a:Lddk;

.field public b:Lddk;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lb;->c:Lb;

    .line 2
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lddk;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldbu;-><init>()V

    iput-object p1, p0, Lddf;->a:Lddk;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lddk;

    iput-object p1, p0, Lddf;->b:Lddk;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lddf;->c:Z

    return-void
.end method

.method private static final ak(Lddk;Lddk;)V
    .locals 1

    .line 1
    sget-object v0, Ldez;->a:Ldez;

    invoke-virtual {v0, p0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ldfg;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldgn;

    sget-object v1, Ldgn;->m:Ldgn;

    .line 3
    invoke-virtual {v0}, Ldgn;->c()V

    iget-object v0, v0, Ldgn;->k:Lddq;

    .line 4
    invoke-interface {v0, p1, p2}, Lddq;->e(J)V

    return-void
.end method

.method public final B(Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldon;

    sget-object v1, Ldon;->e:Ldon;

    iget-object v1, v0, Ldon;->b:Lddr;

    .line 3
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Ldon;->b:Lddr;

    :cond_1
    iget-object v0, v0, Ldon;->b:Lddr;

    .line 5
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final C(Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldon;

    sget-object v1, Ldon;->e:Ldon;

    iget-object v1, v0, Ldon;->c:Lddr;

    .line 3
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Ldon;->c:Lddr;

    :cond_1
    iget-object v0, v0, Ldon;->c:Lddr;

    .line 5
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final D(I)Ldor;
    .locals 1

    .line 1
    iget-object v0, p0, Lddf;->b:Lddk;

    check-cast v0, Ldos;

    iget-object v0, v0, Ldos;->g:Lddr;

    .line 2
    invoke-interface {v0, p1}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldor;

    return-object p1
.end method

.method public final E(I)Ldor;
    .locals 1

    .line 1
    iget-object v0, p0, Lddf;->b:Lddk;

    check-cast v0, Ldos;

    iget-object v0, v0, Ldos;->h:Lddr;

    .line 2
    invoke-interface {v0, p1}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldor;

    return-object p1
.end method

.method public final F(I)Ldor;
    .locals 1

    .line 1
    iget-object v0, p0, Lddf;->b:Lddk;

    check-cast v0, Ldos;

    iget-object v0, v0, Ldos;->i:Lddr;

    .line 2
    invoke-interface {v0, p1}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldor;

    return-object p1
.end method

.method public final G(I)Ldor;
    .locals 1

    .line 1
    iget-object v0, p0, Lddf;->b:Lddk;

    check-cast v0, Ldos;

    iget-object v0, v0, Ldos;->j:Lddr;

    .line 2
    invoke-interface {v0, p1}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldor;

    return-object p1
.end method

.method public final H(I)Ldor;
    .locals 1

    .line 1
    iget-object v0, p0, Lddf;->b:Lddk;

    check-cast v0, Ldos;

    iget-object v0, v0, Ldos;->k:Lddr;

    .line 2
    invoke-interface {v0, p1}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldor;

    return-object p1
.end method

.method public final I(I)Ldor;
    .locals 1

    .line 1
    iget-object v0, p0, Lddf;->b:Lddk;

    check-cast v0, Ldos;

    iget-object v0, v0, Ldos;->l:Lddr;

    .line 2
    invoke-interface {v0, p1}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldor;

    return-object p1
.end method

.method public final J(I)Ldor;
    .locals 1

    .line 1
    iget-object v0, p0, Lddf;->b:Lddk;

    check-cast v0, Ldos;

    iget-object v0, v0, Ldos;->n:Lddr;

    .line 2
    invoke-interface {v0, p1}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldor;

    return-object p1
.end method

.method public final K(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {v0}, Ldos;->J()V

    iget-object v0, v0, Ldos;->l:Lddr;

    .line 4
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final L(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {v0}, Ldos;->K()V

    iget-object v0, v0, Ldos;->n:Lddr;

    .line 4
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final M(Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    iget-object v1, v0, Ldos;->u:Lddr;

    .line 3
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Ldos;->u:Lddr;

    :cond_1
    iget-object v0, v0, Ldos;->u:Lddr;

    .line 5
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final N(Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    iget-object v1, v0, Ldos;->p:Lddr;

    .line 3
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Ldos;->p:Lddr;

    :cond_1
    iget-object v0, v0, Ldos;->p:Lddr;

    .line 5
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final O(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {v0}, Ldos;->I()V

    iget-object v0, v0, Ldos;->k:Lddr;

    .line 4
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final P(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {v0}, Ldos;->H()V

    iget-object v0, v0, Ldos;->j:Lddr;

    .line 4
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final Q(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {v0}, Ldos;->c()V

    iget-object v0, v0, Ldos;->g:Lddr;

    .line 4
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final R(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {v0}, Ldos;->k()V

    iget-object v0, v0, Ldos;->h:Lddr;

    .line 4
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final S(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {v0}, Ldos;->G()V

    iget-object v0, v0, Ldos;->i:Lddr;

    .line 4
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final T(J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    iget v1, v0, Ldos;->b:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, v0, Ldos;->b:I

    iput-wide p1, v0, Ldos;->am:J

    return-void
.end method

.method public final U(J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    iget v1, v0, Ldos;->b:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Ldos;->b:I

    iput-wide p1, v0, Ldos;->aq:J

    return-void
.end method

.method public final V(ILdor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ldos;->J()V

    iget-object v0, v0, Ldos;->l:Lddr;

    .line 5
    invoke-interface {v0, p1, p2}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final W(Ldor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    iput-object p1, v0, Ldos;->an:Ldor;

    iget p1, v0, Ldos;->b:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Ldos;->b:I

    return-void
.end method

.method public final X(ILdor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ldos;->K()V

    iget-object v0, v0, Ldos;->n:Lddr;

    .line 5
    invoke-interface {v0, p1, p2}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Y(ILdor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ldos;->I()V

    iget-object v0, v0, Ldos;->k:Lddr;

    .line 5
    invoke-interface {v0, p1, p2}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Z(J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    iget v1, v0, Ldos;->b:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Ldos;->b:I

    iput-wide p1, v0, Ldos;->ap:J

    return-void
.end method

.method public final bridge synthetic a()Ldbu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lddf;->e()Lddf;

    move-result-object v0

    return-object v0
.end method

.method public final aa(J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    iget v1, v0, Ldos;->b:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Ldos;->b:I

    iput-wide p1, v0, Ldos;->ao:J

    return-void
.end method

.method public final ab(ILdor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ldos;->H()V

    iget-object v0, v0, Ldos;->j:Lddr;

    .line 5
    invoke-interface {v0, p1, p2}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ac(ILdor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ldos;->c()V

    iget-object v0, v0, Ldos;->g:Lddr;

    .line 5
    invoke-interface {v0, p1, p2}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ad(ILdor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ldos;->k()V

    iget-object v0, v0, Ldos;->h:Lddr;

    .line 5
    invoke-interface {v0, p1, p2}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ae(ILdor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldos;

    sget-object v1, Ldos;->ar:Ldos;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ldos;->G()V

    iget-object v0, v0, Ldos;->i:Lddr;

    .line 5
    invoke-interface {v0, p1, p2}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final af(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldpt;

    sget-object v1, Ldpt;->c:Ldpt;

    iget-object v1, v0, Ldpt;->b:Lddp;

    .line 3
    invoke-interface {v1}, Lddp;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lddk;->v(Lddp;)Lddp;

    move-result-object v1

    iput-object v1, v0, Ldpt;->b:Lddp;

    :cond_1
    iget-object v0, v0, Ldpt;->b:Lddp;

    .line 5
    invoke-interface {v0, p1}, Lddp;->g(I)V

    return-void
.end method

.method public final ag(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldpt;

    sget-object v1, Ldpt;->c:Ldpt;

    iget-object v1, v0, Ldpt;->a:Lddp;

    .line 3
    invoke-interface {v1}, Lddp;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lddk;->v(Lddp;)Lddp;

    move-result-object v1

    iput-object v1, v0, Ldpt;->a:Lddp;

    :cond_1
    iget-object v0, v0, Ldpt;->a:Lddp;

    .line 5
    invoke-interface {v0, p1}, Lddp;->g(I)V

    return-void
.end method

.method public final ah(Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldqc;

    sget-object v1, Ldqc;->e:Ldqc;

    iget-object v1, v0, Ldqc;->c:Ldem;

    iget-boolean v2, v1, Ldem;->b:Z

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v1}, Ldem;->a()Ldem;

    move-result-object v1

    iput-object v1, v0, Ldqc;->c:Ldem;

    :cond_1
    iget-object v0, v0, Ldqc;->c:Ldem;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final ai(Lddf;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Lk;

    invoke-virtual {p1}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Lm;

    sget-object v1, Lk;->e:Lk;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Lk;->b()V

    iget-object v0, v0, Lk;->a:Lddr;

    .line 5
    invoke-interface {v0, p1}, Lddr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final aj(Lddf;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldgx;

    invoke-virtual {p1}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldgw;

    sget-object v1, Ldgx;->h:Ldgx;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Ldgx;->e:Lddr;

    .line 4
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Ldgx;->e:Lddr;

    :cond_1
    iget-object v0, v0, Ldgx;->e:Lddr;

    .line 6
    invoke-interface {v0, p1}, Lddr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final synthetic b(Ldbv;)Ldbu;
    .locals 0

    .line 1
    check-cast p1, Lddk;

    .line 2
    invoke-virtual {p0, p1}, Lddf;->n(Lddk;)V

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lddf;->e()Lddf;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lddf;
    .locals 2

    .line 1
    iget-object v0, p0, Lddf;->a:Lddk;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lddf;

    .line 3
    invoke-virtual {p0}, Lddf;->g()Lddk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->n(Lddk;)V

    return-object v0
.end method

.method public final f()Lddk;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lddf;->g()Lddk;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lddk;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ldfq;

    .line 3
    invoke-direct {v0}, Ldfq;-><init>()V

    .line 4
    throw v0
.end method

.method public g()Lddk;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lddf;->b:Lddk;

    return-object v0

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    sget-object v1, Ldez;->a:Ldez;

    invoke-virtual {v1, v0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v1

    invoke-interface {v1, v0}, Ldfg;->f(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lddf;->c:Z

    iget-object v0, p0, Lddf;->b:Lddk;

    return-object v0
.end method

.method public bridge synthetic h()Lder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lddf;->f()Lddk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lddf;->g()Lddk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j()Lder;
    .locals 1

    iget-object v0, p0, Lddf;->a:Lddk;

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lddf;->b:Lddk;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddk;

    iget-object v1, p0, Lddf;->b:Lddk;

    .line 2
    invoke-static {v0, v1}, Lddf;->ak(Lddk;Lddk;)V

    iput-object v0, p0, Lddf;->b:Lddk;

    return-void
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final m(Ldcp;Ldcz;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Ldez;->a:Ldez;

    iget-object v1, p0, Lddf;->b:Lddk;

    invoke-virtual {v0, v1}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v0

    iget-object v1, p0, Lddf;->b:Lddk;

    .line 3
    invoke-static {p1}, Ldcq;->p(Ldcp;)Ldcq;

    move-result-object p1

    .line 2
    invoke-interface {v0, v1, p1, p2}, Ldfg;->h(Ljava/lang/Object;Ldfc;Ldcz;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 6
    :cond_1
    throw p1
.end method

.method public final n(Lddk;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    invoke-static {v0, p1}, Lddf;->ak(Lddk;Lddk;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Lcem;

    sget-object v1, Lcem;->i:Lcem;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcem;->f:Lddr;

    .line 4
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Lcem;->f:Lddr;

    :cond_1
    iget-object v0, v0, Lcem;->f:Lddr;

    .line 6
    invoke-interface {v0, p1}, Lddr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Lcen;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Lcem;

    sget-object v1, Lcem;->i:Lcem;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcem;->e:Lddr;

    .line 4
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Lcem;->e:Lddr;

    :cond_1
    iget-object v0, v0, Lcem;->e:Lddr;

    .line 6
    invoke-interface {v0, p1}, Lddr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Lcfb;

    sget-object v1, Lcfb;->d:Lcfb;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcfb;->b:Lddr;

    .line 4
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Lcfb;->b:Lddr;

    :cond_1
    iget-object v0, v0, Lcfb;->b:Lddr;

    .line 6
    invoke-interface {v0, p1}, Lddr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r(Ljava/lang/String;Lcfb;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 4
    check-cast v0, Lcff;

    sget-object v1, Lcff;->b:Lcff;

    .line 5
    invoke-virtual {v0}, Lcff;->b()Ldem;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final s(Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldbt;

    sget-object v1, Ldbt;->p:Ldbt;

    iget-object v1, v0, Ldbt;->g:Lddr;

    .line 3
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Ldbt;->g:Lddr;

    :cond_1
    iget-object v0, v0, Ldbt;->g:Lddr;

    .line 5
    invoke-static {p1, v0}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final t(Ldgk;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldgj;

    sget-object v1, Ldgj;->c:Ldgj;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Ldgj;->b:Lddr;

    .line 4
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Ldgj;->b:Lddr;

    :cond_1
    iget-object v0, v0, Ldgj;->b:Lddr;

    .line 6
    invoke-interface {v0, p1}, Lddr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final u(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldgj;

    sget-object v1, Ldgj;->c:Ldgj;

    iget-object v1, v0, Ldgj;->a:Lddp;

    .line 3
    invoke-interface {v1}, Lddp;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lddk;->v(Lddp;)Lddp;

    move-result-object v1

    iput-object v1, v0, Ldgj;->a:Lddp;

    :cond_1
    iget-object v0, v0, Ldgj;->a:Lddp;

    add-int/lit8 p1, p1, -0x1

    .line 5
    invoke-interface {v0, p1}, Lddp;->g(I)V

    return-void
.end method

.method public final v(Ldgj;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldgk;

    sget-object v1, Ldgk;->c:Ldgk;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Ldgk;->b:Lddr;

    .line 4
    invoke-interface {v1}, Lddr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {v1}, Lddk;->z(Lddr;)Lddr;

    move-result-object v1

    iput-object v1, v0, Ldgk;->b:Lddr;

    :cond_1
    iget-object v0, v0, Ldgk;->b:Lddr;

    .line 6
    invoke-interface {v0, p1}, Lddr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final w(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldgk;

    sget-object v1, Ldgk;->c:Ldgk;

    iget-object v1, v0, Ldgk;->a:Lddp;

    .line 3
    invoke-interface {v1}, Lddp;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lddk;->v(Lddp;)Lddp;

    move-result-object v1

    iput-object v1, v0, Ldgk;->a:Lddp;

    :cond_1
    iget-object v0, v0, Ldgk;->a:Lddp;

    add-int/lit8 p1, p1, -0x1

    .line 5
    invoke-interface {v0, p1}, Lddp;->g(I)V

    return-void
.end method

.method public final x(Ldgj;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldgl;

    sget-object v1, Ldgl;->c:Ldgl;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Ldgl;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Ldgl;->a:I

    return-void
.end method

.method public final y(Ldgk;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldgl;

    sget-object v1, Ldgl;->c:Ldgl;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Ldgl;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, v0, Ldgl;->a:I

    return-void
.end method

.method public final z(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddf;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_0
    iget-object v0, p0, Lddf;->b:Lddk;

    .line 2
    check-cast v0, Ldgl;

    sget-object v1, Ldgl;->c:Ldgl;

    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Ldgl;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, v0, Ldgl;->a:I

    return-void
.end method
