.class public final synthetic Lcfy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcdz;

.field public final synthetic b:Ldag;

.field public final synthetic c:Lcfn;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcdz;Ldag;Lcfn;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfy;->a:Lcdz;

    iput-object p2, p0, Lcfy;->b:Ldag;

    iput-object p3, p0, Lcfy;->c:Lcfn;

    iput-object p4, p0, Lcfy;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 7

    .line 1
    iget-object v0, p0, Lcfy;->a:Lcdz;

    iget-object v1, p0, Lcfy;->b:Ldag;

    iget-object v2, p0, Lcfy;->c:Lcfn;

    iget-object v3, p0, Lcfy;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcgw;

    iget-object v1, p1, Lcgw;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    sget-object p1, Ldad;->a:Ldag;

    goto :goto_0

    :cond_0
    iget-object v1, v2, Lcfn;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcfr;->a(Lcdz;)Lcjp;

    move-result-object v4

    invoke-virtual {v4}, Lcjp;->a()Ldag;

    move-result-object v4

    invoke-static {v4}, Ldab;->q(Ldag;)Ldab;

    move-result-object v4

    new-instance v5, Lcfp;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcfp;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object v1

    .line 5
    invoke-static {v4, v5, v1}, Lcyt;->o(Ldag;Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ldab;->q(Ldag;)Ldab;

    move-result-object v1

    new-instance v4, Lcga;

    invoke-direct {v4, v3, v2, v0, p1}, Lcga;-><init>(Ljava/lang/String;Lcfn;Lcdz;Lcgw;)V

    .line 7
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object p1

    .line 8
    invoke-static {v1, v4, p1}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    .line 9
    :goto_0
    return-object p1
.end method
