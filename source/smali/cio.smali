.class public final synthetic Lcio;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcir;

.field public final synthetic b:Lder;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcir;Lder;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcio;->a:Lcir;

    iput-object p2, p0, Lcio;->b:Lder;

    iput p3, p0, Lcio;->c:I

    iput-object p4, p0, Lcio;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 7

    .line 1
    iget-object v0, p0, Lcio;->a:Lcir;

    iget-object v1, p0, Lcio;->b:Lder;

    iget v2, p0, Lcio;->c:I

    iget-object v3, p0, Lcio;->d:Ljava/util/List;

    invoke-static {v1}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    invoke-static {v5}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcir;->a:Ljava/util/List;

    .line 3
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcin;

    new-instance v6, Lcip;

    invoke-direct {v6, v5}, Lcip;-><init>(Lcin;)V

    .line 4
    invoke-static {v6}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v5

    .line 5
    sget-object v6, Lczj;->a:Lczj;

    .line 6
    invoke-static {v1, v5, v6}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
