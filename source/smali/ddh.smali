.class public final Lddh;
.super Lddf;
.source "PG"

# interfaces
.implements Ldes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lccs;->c:Lccs;

    .line 2
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lddi;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lddf;-><init>(Lddk;)V

    return-void
.end method


# virtual methods
.method public final ak()Lddi;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lddh;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lddh;->b:Lddk;

    check-cast v0, Lddi;

    return-object v0

    :cond_0
    iget-object v0, p0, Lddh;->b:Lddk;

    .line 2
    check-cast v0, Lddi;

    iget-object v0, v0, Lddi;->d:Lddb;

    invoke-virtual {v0}, Lddb;->e()V

    .line 3
    invoke-super {p0}, Lddf;->g()Lddk;

    move-result-object v0

    check-cast v0, Lddi;

    return-object v0
.end method

.method public final bridge synthetic g()Lddk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lddh;->ak()Lddi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lddh;->ak()Lddi;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-super {p0}, Lddf;->k()V

    iget-object v0, p0, Lddh;->b:Lddk;

    .line 2
    check-cast v0, Lddi;

    iget-object v1, v0, Lddi;->d:Lddb;

    invoke-virtual {v1}, Lddb;->c()Lddb;

    move-result-object v1

    iput-object v1, v0, Lddi;->d:Lddb;

    return-void
.end method
