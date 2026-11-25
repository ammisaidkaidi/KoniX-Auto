.class public final synthetic Lciz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcjf;

.field public final synthetic b:Ldag;

.field public final synthetic c:Lczc;

.field public final synthetic d:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcjf;Ldag;Lczc;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lciz;->a:Lcjf;

    iput-object p2, p0, Lciz;->b:Ldag;

    iput-object p3, p0, Lciz;->c:Lczc;

    iput-object p4, p0, Lciz;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 6

    .line 1
    iget-object v0, p0, Lciz;->a:Lcjf;

    iget-object v1, p0, Lciz;->b:Ldag;

    iget-object v2, p0, Lciz;->c:Lczc;

    iget-object v3, p0, Lciz;->d:Ljava/util/concurrent/Executor;

    new-instance v4, Lcja;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcja;-><init>(Lcjf;I)V

    sget-object v5, Lczj;->a:Lczj;

    .line 2
    invoke-static {v1, v4, v5}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v1

    .line 3
    invoke-static {v1, v2, v3}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v2

    new-instance v3, Lcjc;

    invoke-direct {v3, v0, v1, v2}, Lcjc;-><init>(Lcjf;Ldag;Ldag;)V

    .line 4
    invoke-static {v3}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v0

    sget-object v1, Lczj;->a:Lczj;

    .line 5
    invoke-static {v2, v0, v1}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    return-object v0
.end method
