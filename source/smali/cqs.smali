.class final Lcqs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lcqh;


# direct methods
.method public constructor <init>(Lcqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqs;->a:Lcqh;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcqs;->a:Lcqh;

    invoke-virtual {v0}, Lcqh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcqt;->a:Lcqt;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcqs;->a:Lcqh;

    .line 3
    sget-object v1, Lcrv;->a:Lcrv;

    invoke-static {v1}, Lcqh;->q(Ljava/lang/Object;)Lcqh;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lfv;->G(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcqt;->b:Lcqt;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcqt;

    iget-object v1, p0, Lcqs;->a:Lcqh;

    invoke-direct {v0, v1}, Lcqt;-><init>(Lcqh;)V

    return-object v0
.end method
