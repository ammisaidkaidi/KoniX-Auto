.class public final synthetic Lbba;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lclp;


# instance fields
.field public final synthetic a:Lbbl;


# direct methods
.method public synthetic constructor <init>(Lbbl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbba;->a:Lbbl;

    return-void
.end method


# virtual methods
.method public final h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbba;->a:Lbbl;

    iget-object v0, v0, Lbbl;->m:Ljava/util/Set;

    check-cast v0, Lcsp;

    invoke-virtual {v0}, Lcsp;->e()Lcst;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lclp;

    .line 2
    invoke-interface {v1, p1}, Lclp;->h(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
