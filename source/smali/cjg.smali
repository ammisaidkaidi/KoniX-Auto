.class public final synthetic Lcjg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcjp;

.field public final synthetic b:Ldag;

.field public final synthetic c:Lczc;

.field public final synthetic d:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcjp;Ldag;Lczc;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjg;->a:Lcjp;

    iput-object p2, p0, Lcjg;->b:Ldag;

    iput-object p3, p0, Lcjg;->c:Lczc;

    iput-object p4, p0, Lcjg;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 5

    .line 1
    iget-object v0, p0, Lcjg;->a:Lcjp;

    iget-object v1, p0, Lcjg;->b:Ldag;

    iget-object v2, p0, Lcjg;->c:Lczc;

    iget-object v3, p0, Lcjg;->d:Ljava/util/concurrent/Executor;

    new-instance v4, Lcjj;

    invoke-direct {v4, v0, v2, v3}, Lcjj;-><init>(Lcjp;Lczc;Ljava/util/concurrent/Executor;)V

    invoke-static {v4}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v0

    .line 2
    sget-object v2, Lczj;->a:Lczj;

    .line 3
    invoke-static {v1, v0, v2}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    return-object v0
.end method
