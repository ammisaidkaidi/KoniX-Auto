.class public final synthetic Lcfq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcny;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfq;->a:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcfq;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcfq;->a:Ljava/lang/String;

    iget-object v1, p0, Lcfq;->b:Ljava/lang/String;

    check-cast p1, Lcff;

    sget-object v2, Lcfr;->a:Lcej;

    sget-object v2, Lcfb;->d:Lcfb;

    iget-object v3, p1, Lcff;->a:Ldem;

    .line 2
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcfb;

    .line 3
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lddf;

    .line 5
    invoke-virtual {v4, v2}, Lddf;->n(Lddk;)V

    iget-object v2, v4, Lddf;->b:Lddk;

    .line 6
    check-cast v2, Lcfb;

    iget-object v2, v2, Lcfb;->b:Lddr;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v4, v1}, Lddf;->q(Ljava/lang/String;)V

    :cond_1
    nop

    .line 9
    invoke-virtual {p1, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lddf;

    .line 11
    invoke-virtual {v2, p1}, Lddf;->n(Lddk;)V

    iget-boolean p1, v4, Lddf;->c:Z

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {v4}, Lddf;->k()V

    const/4 p1, 0x0

    iput-boolean p1, v4, Lddf;->c:Z

    :cond_2
    iget-object p1, v4, Lddf;->b:Lddk;

    .line 13
    check-cast p1, Lcfb;

    iget v3, p1, Lcfb;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcfb;->a:I

    iput-object v1, p1, Lcfb;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Lcfb;

    invoke-virtual {v2, v0, p1}, Lddf;->r(Ljava/lang/String;Lcfb;)V

    .line 14
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Lcff;

    return-object p1
.end method
