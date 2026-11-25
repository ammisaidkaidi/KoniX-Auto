.class public final synthetic Lcdb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcdc;

.field public final synthetic b:Ldag;

.field public final synthetic c:Ldag;

.field public final synthetic d:Ldag;


# direct methods
.method public synthetic constructor <init>(Lcdc;Ldag;Ldag;Ldag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdb;->a:Lcdc;

    iput-object p2, p0, Lcdb;->b:Ldag;

    iput-object p3, p0, Lcdb;->c:Ldag;

    iput-object p4, p0, Lcdb;->d:Ldag;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcdb;->a:Lcdc;

    iget-object v1, p0, Lcdb;->b:Ldag;

    iget-object v2, p0, Lcdb;->c:Ldag;

    iget-object v3, p0, Lcdb;->d:Ldag;

    sget-object v4, Lcda;->h:Lcda;

    .line 2
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    iget-object v5, v0, Lcdc;->b:Ljava/lang/String;

    iget-boolean v6, v4, Lddf;->c:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 3
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v7, v4, Lddf;->c:Z

    :cond_0
    iget-object v6, v4, Lddf;->b:Lddk;

    .line 4
    check-cast v6, Lcda;

    iget v8, v6, Lcda;->a:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcda;->a:I

    iput-object v5, v6, Lcda;->b:Ljava/lang/String;

    iget-object v5, v0, Lcdc;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcda;->a:I

    iput-object v5, v6, Lcda;->c:Ljava/lang/String;

    iget-boolean v0, v0, Lcdc;->c:Z

    or-int/lit8 v5, v8, 0x4

    iput v5, v6, Lcda;->a:I

    iput-boolean v0, v6, Lcda;->d:Z

    .line 6
    :try_start_0
    invoke-static {v1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoc;

    .line 7
    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, v4, Lddf;->c:Z

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v7, v4, Lddf;->c:Z

    :cond_1
    iget-object v1, v4, Lddf;->b:Lddk;

    .line 10
    check-cast v1, Lcda;

    iget v5, v1, Lcda;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Lcda;->a:I

    iput-object v0, v1, Lcda;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 11
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {v2}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-boolean v1, v4, Lddf;->c:Z

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v7, v4, Lddf;->c:Z

    :cond_3
    iget-object v1, v4, Lddf;->b:Lddk;

    .line 13
    check-cast v1, Lcda;

    iget-object v2, v1, Lcda;->g:Lddp;

    .line 14
    invoke-interface {v2}, Lddp;->c()Z

    move-result v5

    if-nez v5, :cond_4

    .line 15
    invoke-static {v2}, Lddk;->v(Lddp;)Lddp;

    move-result-object v2

    iput-object v2, v1, Lcda;->g:Lddp;

    :cond_4
    iget-object v1, v1, Lcda;->g:Lddp;

    .line 16
    invoke-static {v0, v1}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 32
    :catch_1
    move-exception v0

    .line 17
    :goto_1
    :try_start_2
    invoke-static {v3}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoc;

    .line 18
    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, v4, Lddf;->c:Z

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v7, v4, Lddf;->c:Z

    :cond_5
    iget-object v1, v4, Lddf;->b:Lddk;

    .line 21
    check-cast v1, Lcda;

    iget v2, v1, Lcda;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcda;->a:I

    iput-object v0, v1, Lcda;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 33
    :catch_2
    move-exception v0

    .line 22
    :cond_6
    :goto_2
    sget-object v0, Lccs;->c:Lccs;

    .line 23
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    check-cast v0, Lddh;

    sget-object v1, Lcda;->i:Ldcx;

    .line 24
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Lcda;

    iget-object v3, v1, Ldcx;->a:Lder;

    iget-object v4, v0, Lddf;->a:Lddk;

    if-ne v3, v4, :cond_a

    iget-boolean v3, v0, Lddf;->c:Z

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v7, v0, Lddf;->c:Z

    :cond_7
    iget-object v3, v0, Lddh;->b:Lddk;

    .line 25
    check-cast v3, Lddi;

    iget-object v3, v3, Lddi;->d:Lddb;

    iget-boolean v4, v3, Lddb;->c:Z

    if-eqz v4, :cond_8

    .line 26
    invoke-virtual {v3}, Lddb;->c()Lddb;

    move-result-object v3

    iget-object v4, v0, Lddh;->b:Lddk;

    .line 27
    check-cast v4, Lddi;

    iput-object v3, v4, Lddi;->d:Lddb;

    .line 28
    :cond_8
    iget-object v1, v1, Ldcx;->d:Lddj;

    .line 29
    invoke-virtual {v1}, Lddj;->a()Ldgd;

    move-result-object v4

    sget-object v5, Ldgd;->h:Ldgd;

    if-ne v4, v5, :cond_9

    .line 30
    check-cast v2, Lddm;

    invoke-interface {v2}, Lddm;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 32
    :cond_9
    nop

    .line 31
    :goto_3
    invoke-virtual {v3, v1, v2}, Lddb;->l(Lddj;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lccs;

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
