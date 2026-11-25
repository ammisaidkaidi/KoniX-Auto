.class public final Ldcv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldcu;


# direct methods
.method public constructor <init>(Ldcu;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Ldds;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldcv;->a:Ldcu;

    iput-object p0, p1, Ldcu;->f:Ldcv;

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->l(IZ)V

    return-void
.end method

.method public final b(ILdcl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->m(ILdcl;)V

    return-void
.end method

.method public final c(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2, p3}, Ldcu;->am(ID)V

    return-void
.end method

.method public final d(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->s(II)V

    return-void
.end method

.method public final e(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->o(II)V

    return-void
.end method

.method public final f(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2, p3}, Ldcu;->q(IJ)V

    return-void
.end method

.method public final g(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->ao(IF)V

    return-void
.end method

.method public final h(ILjava/lang/Object;Ldfg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    check-cast p2, Lder;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Ldcu;->A(II)V

    iget-object v1, v0, Ldcu;->f:Ldcv;

    .line 2
    invoke-interface {p3, p2, v1}, Ldfg;->l(Ljava/lang/Object;Ldcv;)V

    .line 1
    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Ldcu;->A(II)V

    return-void
.end method

.method public final i(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->s(II)V

    return-void
.end method

.method public final j(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2, p3}, Ldcu;->D(IJ)V

    return-void
.end method

.method public final k(ILjava/lang/Object;Ldfg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    check-cast p2, Lder;

    invoke-virtual {v0, p1, p2, p3}, Ldcu;->u(ILder;Ldfg;)V

    return-void
.end method

.method public final l(ILjava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p2, Ldcl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcv;->a:Ldcu;

    .line 2
    check-cast p2, Ldcl;

    invoke-virtual {v0, p1, p2}, Ldcu;->x(ILdcl;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldcv;->a:Ldcu;

    .line 3
    check-cast p2, Lder;

    invoke-virtual {v0, p1, p2}, Ldcu;->w(ILder;)V

    return-void
.end method

.method public final m(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->o(II)V

    return-void
.end method

.method public final n(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2, p3}, Ldcu;->q(IJ)V

    return-void
.end method

.method public final o(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->ar(II)V

    return-void
.end method

.method public final p(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2, p3}, Ldcu;->at(IJ)V

    return-void
.end method

.method public final q(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->y(ILjava/lang/String;)V

    return-void
.end method

.method public final r(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2}, Ldcu;->B(II)V

    return-void
.end method

.method public final s(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcv;->a:Ldcu;

    invoke-virtual {v0, p1, p2, p3}, Ldcu;->D(IJ)V

    return-void
.end method
