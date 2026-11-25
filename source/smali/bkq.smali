.class public final Lbkq;
.super Lbkn;
.source "PG"


# instance fields
.field public final b:Lblr;


# direct methods
.method public constructor <init>(Lblr;Lbrk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lbkn;-><init>(Lbrk;)V

    iput-object p1, p0, Lbkq;->b:Lblr;

    return-void
.end method


# virtual methods
.method public final a(Lblj;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lblj;->e:Ljava/util/Map;

    iget-object v0, p0, Lbkq;->b:Lblr;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblw;

    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final b(Lblj;)[Lbjb;
    .locals 1

    .line 1
    iget-object p1, p1, Lblj;->e:Ljava/util/Map;

    iget-object v0, p0, Lbkq;->b:Lblr;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblw;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    return-object v0

    :cond_0
    throw v0
.end method

.method public final c(Lblj;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lblj;->e:Ljava/util/Map;

    iget-object v0, p0, Lbkq;->b:Lblr;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblw;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lbkq;->a:Lbrk;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbrk;->c(Ljava/lang/Object;)Z

    return-void

    .line 1
    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final bridge synthetic g(Lblb;Z)V
    .locals 0

    return-void
.end method
