.class public final Lcdh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lccw;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

.field private final c:Lcol;

.field private final d:Z

.field private final e:Lcdc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcoc;Lcdc;Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdh;->a:Landroid/content/Context;

    new-instance v0, Lbya;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lbya;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object p1

    iput-object p1, p0, Lcdh;->c:Lcol;

    .line 2
    invoke-static {p2}, Lcdh;->c(Lcoc;)Z

    move-result p1

    iput-boolean p1, p0, Lcdh;->d:Z

    iput-object p3, p0, Lcdh;->e:Lcdc;

    iput-object p4, p0, Lcdh;->b:Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

    return-void
.end method

.method public static c(Lcoc;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lccv;
    .locals 2

    new-instance v0, Lccv;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lccv;-><init>(I)V

    return-object v0
.end method

.method public final b(Ldpz;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcdh;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Ldpz;->h:Ldpm;

    if-nez v0, :cond_0

    sget-object v0, Ldpm;->i:Ldpm;

    :cond_0
    iget v0, v0, Ldpm;->a:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    return-void

    .line 1
    :cond_2
    :goto_0
    iget v0, p1, Ldpz;->a:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcdh;->c:Lcol;

    .line 2
    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lddf;

    .line 5
    invoke-virtual {v1, p1}, Lddf;->n(Lddk;)V

    iget-object p1, p1, Ldpz;->l:Ldpq;

    if-nez p1, :cond_3

    .line 6
    sget-object p1, Ldpq;->o:Ldpq;

    :cond_3
    iget-object v2, p1, Ldpq;->j:Lddr;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_9

    .line 8
    sget-object v3, Ldpt;->c:Ldpt;

    .line 9
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldpp;

    if-eqz v5, :cond_4

    iget v5, v5, Ldpp;->d:I

    add-int/lit8 v5, v5, 0x1

    iget v7, v6, Ldpp;->c:I

    if-eq v5, v7, :cond_4

    .line 11
    invoke-virtual {v3, v4}, Lddf;->ag(I)V

    .line 12
    invoke-virtual {v3, v5}, Lddf;->af(I)V

    :cond_4
    iget v5, v6, Ldpp;->b:I

    .line 13
    invoke-virtual {v3, v5}, Lddf;->ag(I)V

    iget v5, v6, Ldpp;->c:I

    .line 14
    invoke-virtual {v3, v5}, Lddf;->af(I)V

    move-object v5, v6

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    iget v2, v5, Ldpp;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    iget v2, v5, Ldpp;->d:I

    .line 15
    invoke-virtual {v3, v4}, Lddf;->ag(I)V

    add-int/lit8 v2, v2, 0x1

    .line 16
    invoke-virtual {v3, v2}, Lddf;->af(I)V

    :cond_6
    nop

    .line 17
    invoke-virtual {p1, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lddf;

    .line 19
    invoke-virtual {v0, p1}, Lddf;->n(Lddk;)V

    iget-boolean p1, v0, Lddf;->c:Z

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_7
    iget-object p1, v0, Lddf;->b:Lddk;

    .line 21
    check-cast p1, Ldpq;

    .line 22
    invoke-static {}, Ldpq;->y()Lddr;

    move-result-object v2

    iput-object v2, p1, Ldpq;->j:Lddr;

    iget-boolean p1, v0, Lddf;->c:Z

    if-eqz p1, :cond_8

    .line 23
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_8
    iget-object p1, v0, Lddf;->b:Lddk;

    .line 24
    check-cast p1, Ldpq;

    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Ldpt;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p1, Ldpq;->i:Ldpt;

    iget v2, p1, Ldpq;->a:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p1, Ldpq;->a:I

    .line 26
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldpq;

    :cond_9
    iget-boolean v0, v1, Lddf;->c:Z

    if-eqz v0, :cond_a

    .line 27
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_a
    iget-object v0, v1, Lddf;->b:Lddk;

    .line 28
    check-cast v0, Ldpz;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Ldpz;->l:Ldpq;

    iget p1, v0, Ldpz;->a:I

    or-int/lit16 p1, p1, 0x800

    iput p1, v0, Ldpz;->a:I

    .line 30
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldpz;

    :cond_b
    iget-object v0, p0, Lcdh;->e:Lcdc;

    .line 31
    invoke-virtual {v0}, Lcdc;->a()Ldag;

    move-result-object v0

    new-instance v1, Lcdf;

    invoke-direct {v1, p0, p1}, Lcdf;-><init>(Lcdh;Ldpz;)V

    .line 32
    sget-object p1, Lczj;->a:Lczj;

    .line 33
    invoke-static {v0, v1, p1}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    new-instance v0, Lcdg;

    invoke-direct {v0}, Lcdg;-><init>()V

    sget-object v1, Lczj;->a:Lczj;

    .line 34
    invoke-static {p1, v0, v1}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    return-void
.end method
