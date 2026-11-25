.class public abstract Lcci;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ldpy;


# direct methods
.method public constructor <init>(Ldpy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcci;->a:Ldpy;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)J
.end method

.method public abstract b(Ljava/lang/Long;)Ldpy;
.end method

.method public abstract c()Z
.end method

.method public final d()Ldpy;
    .locals 4

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcci;->e(Ljava/lang/Long;)Ldpy;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Lddf;

    .line 3
    invoke-virtual {v1, v0}, Lddf;->n(Lddk;)V

    iget-boolean v0, v1, Lddf;->c:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lddf;->c:Z

    :cond_0
    iget-object v0, v1, Lddf;->b:Lddk;

    .line 5
    check-cast v0, Ldpy;

    sget-object v2, Ldpy;->d:Ldpy;

    iget v2, v0, Ldpy;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Ldpy;->a:I

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Ldpy;->b:J

    .line 6
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldpy;

    return-object v0
.end method

.method public final e(Ljava/lang/Long;)Ldpy;
    .locals 5

    .line 1
    iget-object v0, p0, Lcci;->a:Ldpy;

    iget v0, v0, Ldpy;->c:I

    invoke-static {v0}, Ldpx;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcci;->a:Ldpy;

    iget-wide v2, v2, Ldpy;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ldpy;->d:Ldpy;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-object v1, p0, Lcci;->a:Ldpy;

    iget v1, v1, Ldpy;->c:I

    invoke-static {v1}, Ldpx;->a(I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-boolean v2, v0, Lddf;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_3
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v2, Ldpy;

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Ldpy;->c:I

    iget v1, v2, Ldpy;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Ldpy;->a:I

    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-boolean p1, v0, Lddf;->c:Z

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_4
    iget-object p1, v0, Lddf;->b:Lddk;

    .line 7
    check-cast p1, Ldpy;

    iget v3, p1, Ldpy;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p1, Ldpy;->a:I

    iput-wide v1, p1, Ldpy;->b:J

    .line 8
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldpy;

    return-object p1

    .line 1
    :cond_5
    :goto_0
    iget-object p1, p0, Lcci;->a:Ldpy;

    return-object p1
.end method
