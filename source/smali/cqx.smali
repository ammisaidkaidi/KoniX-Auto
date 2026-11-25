.class public final Lcqx;
.super Lcqw;
.source "PG"


# instance fields
.field private final transient a:Lcqz;


# direct methods
.method public constructor <init>(Lcqz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcqw;-><init>()V

    iput-object p1, p0, Lcqx;->a:Lcqz;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcqx;->a:Lcqz;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lcov;->a()Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final e()Lcst;
    .locals 2

    .line 1
    iget-object v0, p0, Lcqx;->a:Lcqz;

    new-instance v1, Lcqn;

    invoke-direct {v1, v0}, Lcqn;-><init>(Lcqq;)V

    return-object v1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqx;->e()Lcst;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcqx;->a:Lcqz;

    iget v0, v0, Lcqq;->c:I

    return v0
.end method
