.class final Lcqm;
.super Lcqw;
.source "PG"


# instance fields
.field final synthetic a:Lcrd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcqw;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcrd;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcqm;->a:Lcrd;

    invoke-direct {p0}, Lcqw;-><init>()V

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

    iget-object v0, p0, Lcqm;->a:Lcrd;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final e()Lcst;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqa;->d()Lcqh;

    move-result-object v0

    invoke-virtual {v0}, Lcqh;->u()Lcsu;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcqm;->a:Lcrd;

    iget-object v1, v0, Lcrd;->a:Lcsg;

    invoke-virtual {v1}, Lcsg;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcrd;->b:Lcqh;

    invoke-virtual {v0}, Lcqh;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcqm;->a:Lcrd;

    invoke-virtual {v0}, Lcqk;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lcqh;
    .locals 1

    .line 1
    new-instance v0, Lcra;

    invoke-direct {v0, p0}, Lcra;-><init>(Lcqm;)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqm;->e()Lcst;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcqm;->a:Lcrd;

    invoke-virtual {v0}, Lcqk;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcql;

    iget-object v1, p0, Lcqm;->a:Lcrd;

    invoke-direct {v0, v1}, Lcql;-><init>(Lcqk;)V

    return-object v0
.end method
