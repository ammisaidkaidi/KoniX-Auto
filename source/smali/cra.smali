.class final Lcra;
.super Lcqh;
.source "PG"


# instance fields
.field final synthetic a:Lcqm;


# direct methods
.method public constructor <init>(Lcqm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcra;->a:Lcqm;

    invoke-direct {p0}, Lcqh;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcra;->a:Lcqm;

    iget-object v1, v1, Lcqm;->a:Lcrd;

    iget-object v1, v1, Lcrd;->a:Lcsg;

    iget-object v1, v1, Lcsg;->d:Lcqh;

    invoke-virtual {v1, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcra;->a:Lcqm;

    iget-object v2, v2, Lcqm;->a:Lcrd;

    iget-object v2, v2, Lcrd;->b:Lcqh;

    invoke-virtual {v2, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcra;->a:Lcqm;

    iget-object v0, v0, Lcqm;->a:Lcrd;

    invoke-virtual {v0}, Lcrd;->size()I

    move-result v0

    return v0
.end method
