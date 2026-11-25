.class public final Lcir;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcir;->a:Ljava/util/List;

    iput-object p2, p0, Lcir;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ldag;
    .locals 6

    .line 1
    check-cast p1, Lcjo;

    iget-object v0, p0, Lcir;->a:Ljava/util/List;

    check-cast v0, Lcrz;

    iget v0, v0, Lcrz;->c:I

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcir;->a:Ljava/util/List;

    check-cast v2, Lcqh;

    .line 3
    invoke-virtual {v2}, Lcqh;->u()Lcsu;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcin;

    .line 4
    invoke-interface {v3}, Lcin;->b()Ldag;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lciq;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v0, v3}, Lciq;-><init>(Lcir;Ljava/util/List;II)V

    .line 5
    invoke-static {v2}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v2

    .line 6
    sget-object v3, Lczj;->a:Lczj;

    iget-object v4, p1, Lcjo;->a:Lcjp;

    iget-object v4, v4, Lcjp;->e:Lcnd;

    .line 7
    invoke-virtual {v4}, Lcnd;->a()V

    iget-object v4, p1, Lcjo;->a:Lcjp;

    iget-object v4, v4, Lcjp;->c:Lcmw;

    .line 8
    invoke-virtual {v4}, Lcmw;->c()Ldag;

    move-result-object v4

    invoke-static {v4}, Lhh;->k(Ldag;)Ldag;

    move-result-object v4

    new-instance v5, Lcjn;

    invoke-direct {v5, p1, v2, v3}, Lcjn;-><init>(Lcjo;Lczc;Ljava/util/concurrent/Executor;)V

    .line 9
    invoke-static {v5}, Lcnm;->b(Lczc;)Lczc;

    move-result-object p1

    sget-object v2, Lczj;->a:Lczj;

    .line 10
    invoke-static {v4, p1, v2}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    new-instance v2, Lciq;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v1, v3}, Lciq;-><init>(Lcir;ILjava/util/List;I)V

    .line 11
    invoke-static {v2}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v0

    sget-object v1, Lczj;->a:Lczj;

    .line 12
    invoke-static {p1, v0, v1}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1
.end method
