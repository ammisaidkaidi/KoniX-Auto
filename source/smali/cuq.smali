.class public final Lcuq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcum;

.field private static final b:Lcul;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcuo;

    invoke-direct {v0}, Lcuo;-><init>()V

    sput-object v0, Lcuq;->a:Lcum;

    new-instance v0, Lcup;

    invoke-direct {v0}, Lcup;-><init>()V

    sput-object v0, Lcuq;->b:Lcul;

    return-void
.end method

.method public static a(Ljava/util/Set;)Lcun;
    .locals 5

    .line 1
    sget-object v0, Lcuq;->a:Lcum;

    new-instance v1, Lcuj;

    invoke-direct {v1, v0}, Lcuj;-><init>(Lcum;)V

    sget-object v0, Lcuq;->b:Lcul;

    iput-object v0, v1, Lcuj;->f:Lcul;

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctt;

    .line 3
    const-string v2, "key"

    invoke-static {v0, v2}, Lhf;->u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v3, v0, Lctt;->b:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcuj;->b:Lcul;

    .line 4
    invoke-static {v0, v2}, Lhf;->u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v2, v0, Lctt;->b:Z

    .line 5
    const-string v4, "key must be repeating"

    invoke-static {v2, v4}, Lhf;->v(ZLjava/lang/String;)V

    iget-object v2, v1, Lcuj;->c:Ljava/util/Map;

    .line 6
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcuj;->d:Ljava/util/Map;

    .line 7
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v3, Lcuj;->a:Lcum;

    .line 8
    invoke-static {v0, v2}, Lhf;->u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, v1, Lcuj;->d:Ljava/util/Map;

    .line 9
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcuj;->c:Ljava/util/Map;

    .line 10
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Lcuk;

    .line 11
    invoke-direct {p0, v1}, Lcuk;-><init>(Lcuj;)V

    return-object p0
.end method
