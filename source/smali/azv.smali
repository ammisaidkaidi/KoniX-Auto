.class final Lazv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczv;


# instance fields
.field final synthetic a:Lazy;


# direct methods
.method public constructor <init>(Lazy;)V
    .locals 0

    iput-object p1, p0, Lazv;->a:Lazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lazv;->a:Lazy;

    iget-object v0, v0, Lazy;->i:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lazv;->a:Lazy;

    iget-object v0, v0, Lazy;->g:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaw;

    .line 2
    invoke-interface {v1, p1}, Lbaw;->g(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
