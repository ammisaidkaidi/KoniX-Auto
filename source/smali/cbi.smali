.class public final synthetic Lcbi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcbg;

.field public final synthetic b:Lcbh;


# direct methods
.method public synthetic constructor <init>(Lcbh;Lcbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbi;->b:Lcbh;

    iput-object p2, p0, Lcbi;->a:Lcbg;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 8

    .line 1
    iget-object v0, p0, Lcbi;->b:Lcbh;

    iget-object v1, p0, Lcbi;->a:Lcbg;

    iget-object v2, v0, Lcbh;->c:Ldgz;

    invoke-interface {v2}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcbe;

    invoke-virtual {v2}, Lcbe;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    sget-object v0, Ldad;->a:Ldag;

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lcbh;->b:Ldgz;

    .line 3
    invoke-interface {v2}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcbb;

    iget-object v2, v0, Lcbh;->e:Lcbz;

    .line 4
    invoke-virtual {v2}, Lcbz;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget-object v0, Ldad;->a:Ldag;

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lcbh;->e:Lcbz;

    .line 6
    invoke-virtual {v2}, Lcbz;->c()V

    .line 7
    invoke-static {v1}, Lcbm;->b(Lcbg;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 10
    :cond_2
    sget-object v2, Ldpb;->f:Ldpb;

    .line 11
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    iget-boolean v5, v2, Lddf;->c:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v6, v2, Lddf;->c:Z

    :cond_3
    iget-object v5, v2, Lddf;->b:Lddk;

    .line 13
    check-cast v5, Ldpb;

    iget v7, v5, Ldpb;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v5, Ldpb;->a:I

    iput-wide v3, v5, Ldpb;->b:J

    .line 14
    invoke-virtual {v5}, Ldpb;->c()V

    iget-object v3, v5, Ldpb;->d:Lddr;

    .line 15
    invoke-static {v1, v3}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 16
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldpb;

    iget-object v2, v1, Ldpb;->d:Lddr;

    .line 17
    invoke-interface {v2}, Lddr;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, v1, Ldpb;->d:Lddr;

    .line 18
    invoke-interface {v2, v6}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldpc;

    iget-object v2, v2, Ldpc;->b:Ljava/lang/String;

    goto :goto_0

    .line 29
    :cond_4
    const/4 v2, 0x0

    .line 18
    :goto_0
    iget-object v3, v0, Lcbh;->a:Lbwn;

    .line 19
    invoke-virtual {v3, v2}, Lbwn;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_5

    .line 20
    sget-object v0, Ldad;->a:Ldag;

    goto :goto_2

    .line 21
    :cond_5
    sget-object v4, Ldpz;->y:Ldpz;

    .line 22
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    iget-boolean v5, v4, Lddf;->c:Z

    if-eqz v5, :cond_6

    .line 21
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v6, v4, Lddf;->c:Z

    :cond_6
    iget-object v5, v4, Lddf;->b:Lddk;

    .line 23
    check-cast v5, Ldpz;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v5, Ldpz;->n:Ldpb;

    iget v6, v5, Ldpz;->a:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, v5, Ldpz;->a:I

    .line 21
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Ldpz;

    iget-wide v5, v1, Ldpb;->b:J

    iget-object v0, v0, Lcbh;->a:Lbwn;

    .line 25
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v4}, Lbwi;->d(Ldpz;)V

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lbwi;->d:Ljava/lang/Long;

    .line 28
    invoke-virtual {v1}, Lbwi;->a()Lbwj;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object v0

    goto :goto_2

    .line 9
    :cond_7
    :goto_1
    sget-object v0, Ldad;->a:Ldag;

    .line 2
    :goto_2
    return-object v0
.end method
