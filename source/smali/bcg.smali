.class final Lbcg;
.super Landroid/database/ContentObserver;
.source "PG"


# instance fields
.field final synthetic a:Lbci;


# direct methods
.method public constructor <init>(Lbci;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbcg;->a:Lbci;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lbcg;->a:Lbci;

    invoke-virtual {p1}, Lbci;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lbci;->a:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcl;

    iget-object v0, v0, Lbcl;->a:Lbcm;

    .line 3
    invoke-virtual {v0}, Lbcm;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method
