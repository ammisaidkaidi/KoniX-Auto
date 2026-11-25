.class public final Lbbh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Lbbl;


# direct methods
.method public constructor <init>(Lbbl;)V
    .locals 0

    iput-object p1, p0, Lbbh;->a:Lbbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbbl;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbh;->a:Lbbl;

    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbbh;->a:Lbbl;

    iget-object v1, v0, Lbbl;->n:Ljava/util/Set;

    check-cast v1, Lcsf;

    invoke-virtual {v1}, Lcsf;->e()Lcst;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbbh;

    .line 2
    invoke-virtual {v2, p1, p2}, Lbbh;->a([BLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lbbl;->o:Ljava/util/Set;

    check-cast p1, Lcsp;

    .line 3
    invoke-virtual {p1}, Lcsp;->e()Lcst;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbbo;

    .line 4
    invoke-interface {p2}, Lbbo;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method
