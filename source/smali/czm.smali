.class final Lczm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field final synthetic a:Lczo;

.field final synthetic b:Lczb;


# direct methods
.method public constructor <init>(Lczo;Lczb;)V
    .locals 0

    iput-object p1, p0, Lczm;->a:Lczo;

    iput-object p2, p0, Lczm;->b:Lczb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 3

    .line 1
    iget-object v0, p0, Lczm;->a:Lczo;

    sget-object v1, Lczn;->a:Lczn;

    sget-object v2, Lczn;->c:Lczn;

    invoke-virtual {v0, v1, v2}, Lczo;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lhh;->h()Ldag;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lczm;->b:Lczb;

    .line 3
    invoke-interface {v0}, Lczb;->a()Ldag;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lczm;->b:Lczb;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
