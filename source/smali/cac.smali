.class public final synthetic Lcac;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcad;

.field public final synthetic b:Lddf;


# direct methods
.method public synthetic constructor <init>(Lcad;Lddf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcac;->a:Lcad;

    iput-object p2, p0, Lcac;->b:Lddf;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 6

    .line 1
    iget-object v0, p0, Lcac;->a:Lcad;

    iget-object v1, p0, Lcac;->b:Lddf;

    iget-object v2, v0, Lcad;->b:Lbwn;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbwn;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    sget-object v0, Ldad;->a:Ldag;

    goto :goto_2

    :cond_0
    iget-object v2, v1, Lddf;->b:Lddk;

    .line 2
    check-cast v2, Ldpf;

    iget v2, v2, Ldpf;->v:I

    invoke-static {v2}, Ldpx;->b(I)I

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    .line 2
    :goto_0
    iget-object v2, v1, Lddf;->b:Lddk;

    .line 3
    check-cast v2, Ldpf;

    iget v2, v2, Ldpf;->v:I

    invoke-static {v2}, Ldpx;->b(I)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, v1, Lddf;->b:Lddk;

    .line 4
    check-cast v2, Ldpf;

    iget v2, v2, Ldpf;->a:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_4

    .line 11
    sget-object v0, Ldad;->a:Ldag;

    goto :goto_2

    .line 3
    :cond_4
    :goto_1
    iget-object v2, v0, Lcad;->c:Ldgz;

    .line 5
    invoke-interface {v2}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbzq;

    iget-object v4, v2, Lbzq;->b:Lcoc;

    sget-object v4, Lcns;->a:Lcns;

    .line 6
    invoke-static {v4}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object v4

    iget-object v2, v2, Lbzq;->a:Lcoc;

    sget-object v2, Lcns;->a:Lcns;

    .line 7
    invoke-static {v2}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object v2

    new-array v3, v3, [Ldag;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    aput-object v2, v3, v5

    .line 8
    invoke-static {v3}, Lhh;->f([Ldag;)Lczz;

    move-result-object v3

    new-instance v5, Lcab;

    invoke-direct {v5, v0, v1, v4, v2}, Lcab;-><init>(Lcad;Lddf;Ldag;Ldag;)V

    .line 9
    sget-object v0, Lczj;->a:Lczj;

    .line 10
    invoke-virtual {v3, v5, v0}, Lczz;->b(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    .line 12
    :goto_2
    return-object v0
.end method
