.class final Lmv;
.super Lpm;
.source "PG"


# instance fields
.field final synthetic a:Lmw;


# direct methods
.method public constructor <init>(Lmw;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmv;->a:Lmw;

    invoke-direct {p0, p2}, Lpm;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lmg;
    .locals 1

    .line 1
    iget-object v0, p0, Lmv;->a:Lmw;

    iget-object v0, v0, Lmw;->a:Lmz;

    iget-object v0, v0, Lmz;->i:Lmx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lma;->a()Lly;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmv;->a:Lmw;

    iget-object v0, v0, Lmw;->a:Lmz;

    invoke-virtual {v0}, Lmz;->m()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmv;->a:Lmw;

    iget-object v0, v0, Lmw;->a:Lmz;

    iget-object v1, v0, Lmz;->k:Lmu;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lmz;->k()Z

    const/4 v0, 0x1

    return v0
.end method
