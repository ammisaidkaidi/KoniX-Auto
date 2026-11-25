.class public final Lta;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lvi;

.field public final b:Lvg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lvi;

    invoke-direct {v0}, Lvi;-><init>()V

    iput-object v0, p0, Lta;->a:Lvi;

    new-instance v0, Lvg;

    invoke-direct {v0}, Lvg;-><init>()V

    iput-object v0, p0, Lta;->b:Lvg;

    return-void
.end method


# virtual methods
.method public final a(Lrr;I)Lqu;
    .locals 4

    .line 1
    iget-object v0, p0, Lta;->a:Lvi;

    invoke-virtual {v0, p1}, Lvi;->c(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lta;->a:Lvi;

    .line 2
    invoke-virtual {v1, p1}, Lvi;->i(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsz;

    if-eqz v1, :cond_4

    iget v2, v1, Lsz;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v2

    iput v0, v1, Lsz;->a:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, v1, Lsz;->b:Lqu;

    goto :goto_0

    .line 4
    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    iget-object p2, v1, Lsz;->c:Lqu;

    .line 2
    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Lta;->a:Lvi;

    .line 3
    invoke-virtual {v0, p1}, Lvi;->g(I)Ljava/lang/Object;

    .line 4
    invoke-static {v1}, Lsz;->b(Lsz;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method final b(Lrr;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lta;->a:Lvi;

    invoke-virtual {v0, p1}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsz;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lsz;->a()Lsz;

    move-result-object v0

    iget-object v1, p0, Lta;->a:Lvi;

    .line 3
    invoke-virtual {v1, p1, v0}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iget p1, v0, Lsz;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lsz;->a:I

    return-void
.end method

.method public final c(JLrr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lta;->b:Lvg;

    invoke-virtual {v0, p1, p2, p3}, Lvg;->f(JLjava/lang/Object;)V

    return-void
.end method

.method public final d(Lrr;Lqu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lta;->a:Lvi;

    invoke-virtual {v0, p1}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsz;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lsz;->a()Lsz;

    move-result-object v0

    iget-object v1, p0, Lta;->a:Lvi;

    .line 3
    invoke-virtual {v1, p1, v0}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-object p2, v0, Lsz;->c:Lqu;

    iget p1, v0, Lsz;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lsz;->a:I

    return-void
.end method

.method public final e(Lrr;Lqu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lta;->a:Lvi;

    invoke-virtual {v0, p1}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsz;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lsz;->a()Lsz;

    move-result-object v0

    iget-object v1, p0, Lta;->a:Lvi;

    .line 3
    invoke-virtual {v1, p1, v0}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-object p2, v0, Lsz;->b:Lqu;

    iget p1, v0, Lsz;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lsz;->a:I

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lta;->a:Lvi;

    invoke-virtual {v0}, Lvi;->clear()V

    iget-object v0, p0, Lta;->b:Lvg;

    .line 2
    invoke-virtual {v0}, Lvg;->e()V

    return-void
.end method

.method final g(Lrr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lta;->a:Lvi;

    invoke-virtual {v0, p1}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsz;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lsz;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lsz;->a:I

    return-void
.end method

.method final h(Lrr;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lta;->b:Lvg;

    invoke-virtual {v0}, Lvg;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lta;->b:Lvg;

    .line 2
    invoke-virtual {v1, v0}, Lvg;->d(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lta;->b:Lvg;

    iget-object v2, v1, Lvg;->d:[Ljava/lang/Object;

    .line 3
    aget-object v2, v2, v0

    sget-object v3, Lvg;->a:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lvg;->d:[Ljava/lang/Object;

    sget-object v3, Lvg;->a:Ljava/lang/Object;

    .line 4
    aput-object v3, v2, v0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lvg;->b:Z

    goto :goto_1

    .line 6
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Lta;->a:Lvi;

    .line 5
    invoke-virtual {v0, p1}, Lvi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsz;

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p1}, Lsz;->b(Lsz;)V

    :cond_2
    return-void
.end method

.method public final i(Lrr;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lta;->a:Lvi;

    invoke-virtual {v0, p1}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsz;

    if-eqz p1, :cond_0

    iget p1, p1, Lsz;->a:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
