.class public final synthetic Lcfp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcny;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcfp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfp;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 25
    iget v0, p0, Lcfp;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcfp;->a:Ljava/lang/String;

    check-cast p1, Lcff;

    sget-object v2, Lcfr;->a:Lcej;

    const/4 v2, 0x5

    .line 26
    invoke-virtual {p1, v2}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Lddf;

    .line 28
    invoke-virtual {v2, p1}, Lddf;->n(Lddk;)V

    iget-boolean p1, v2, Lddf;->c:Z

    if-eqz p1, :cond_7

    .line 26
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v1, v2, Lddf;->c:Z

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcfp;->a:Ljava/lang/String;

    .line 1
    check-cast p1, Lcff;

    sget-object v2, Lcfr;->a:Lcej;

    .line 2
    sget-object v2, Lcff;->b:Lcff;

    .line 3
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    iget-object p1, p1, Lcff;->a:Ldem;

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcfb;

    .line 7
    sget-object v5, Lcfb;->d:Lcfb;

    .line 8
    invoke-virtual {v5}, Lddk;->n()Lddf;

    move-result-object v5

    iget-object v6, v4, Lcfb;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v4, Lcfb;->c:Ljava/lang/String;

    iget-boolean v7, v5, Lddf;->c:Z

    if-eqz v7, :cond_0

    .line 10
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v1, v5, Lddf;->c:Z

    :cond_0
    iget-object v7, v5, Lddf;->b:Lddk;

    .line 11
    check-cast v7, Lcfb;

    .line 12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Lcfb;->a:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcfb;->a:I

    iput-object v6, v7, Lcfb;->c:Ljava/lang/String;

    :cond_1
    iget-object v4, v4, Lcfb;->b:Lddr;

    .line 13
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 14
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 15
    invoke-virtual {v5, v6}, Lddf;->q(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Lcfb;

    invoke-virtual {v2, v3, v4}, Lddf;->r(Ljava/lang/String;Lcfb;)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Lcff;

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcfp;->a:Ljava/lang/String;

    .line 18
    check-cast p1, Lcff;

    sget-object v1, Lcfr;->a:Lcej;

    .line 19
    sget-object v1, Lcfb;->d:Lcfb;

    iget-object p1, p1, Lcff;->a:Ldem;

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcfb;

    :cond_5
    iget-object p1, v1, Lcfb;->b:Lddr;

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcfp;->a:Ljava/lang/String;

    .line 21
    check-cast p1, Lcff;

    sget-object v1, Lcfr;->a:Lcej;

    .line 22
    sget-object v1, Lcfb;->d:Lcfb;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcff;->a:Ldem;

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcfb;

    :cond_6
    iget-object p1, v1, Lcfb;->c:Ljava/lang/String;

    return-object p1

    .line 26
    :cond_7
    :goto_2
    iget-object p1, v2, Lddf;->b:Lddk;

    .line 29
    check-cast p1, Lcff;

    sget-object v1, Lcff;->b:Lcff;

    .line 30
    invoke-virtual {p1}, Lcff;->b()Ldem;

    move-result-object p1

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Lcff;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
