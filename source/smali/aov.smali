.class final Laov;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "PG"


# instance fields
.field final synthetic F:Laox;


# direct methods
.method public constructor <init>(Laox;IIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Laov;->F:Laox;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public final o(Lro;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->o(Lro;)V

    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Laov;->F:Laox;

    iget-object v0, v0, Laox;->c:Ljava/util/Set;

    .line 2
    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
