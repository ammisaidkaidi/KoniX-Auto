.class final Lcpd;
.super Ljava/util/AbstractSet;
.source "PG"


# instance fields
.field final synthetic a:Lcpi;


# direct methods
.method public constructor <init>(Lcpi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcpd;->a:Lcpi;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcpd;->a:Lcpi;

    invoke-virtual {v0}, Lcpi;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcpd;->a:Lcpi;

    invoke-virtual {v0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcpd;->a:Lcpi;

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Lcpi;->d(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcpd;->a:Lcpi;

    .line 7
    invoke-virtual {v2, v0}, Lcpi;->h(I)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lew;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcpd;->a:Lcpi;

    invoke-virtual {v0}, Lcpi;->i()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcpd;->a:Lcpi;

    invoke-virtual {v0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcpd;->a:Lcpi;

    invoke-virtual {v0}, Lcpi;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcpd;->a:Lcpi;

    invoke-virtual {v0}, Lcpi;->c()I

    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Lcpd;->a:Lcpi;

    .line 7
    invoke-virtual {p1}, Lcpi;->g()Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Lcpd;->a:Lcpi;

    .line 8
    invoke-virtual {p1}, Lcpi;->p()[I

    move-result-object v6

    iget-object p1, p0, Lcpd;->a:Lcpi;

    .line 9
    invoke-virtual {p1}, Lcpi;->q()[Ljava/lang/Object;

    move-result-object v7

    iget-object p1, p0, Lcpd;->a:Lcpi;

    .line 10
    invoke-virtual {p1}, Lcpi;->r()[Ljava/lang/Object;

    move-result-object v8

    .line 11
    move v4, v0

    invoke-static/range {v2 .. v8}, Lez;->u(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcpd;->a:Lcpi;

    .line 12
    invoke-virtual {v1, p1, v0}, Lcpi;->m(II)V

    iget-object p1, p0, Lcpd;->a:Lcpi;

    iget v0, p1, Lcpi;->f:I

    add-int/2addr v0, v2

    iput v0, p1, Lcpi;->f:I

    .line 13
    invoke-virtual {p1}, Lcpi;->k()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcpd;->a:Lcpi;

    invoke-virtual {v0}, Lcpi;->size()I

    move-result v0

    return v0
.end method
