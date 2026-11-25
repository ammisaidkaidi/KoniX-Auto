.class final Lbdn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbdr;


# instance fields
.field final synthetic a:Lbdr;

.field final synthetic b:Lbdq;


# direct methods
.method public constructor <init>(Lbdq;Lbdr;)V
    .locals 0

    iput-object p1, p0, Lbdn;->b:Lbdq;

    iput-object p2, p0, Lbdn;->a:Lbdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbdn;->a:Lbdr;

    invoke-interface {v0, p1}, Lbdr;->a(I)V

    iget-object p1, p0, Lbdn;->b:Lbdq;

    .line 2
    invoke-virtual {p1, p0}, Lbdq;->l(Lbdr;)Z

    return-void
.end method

.method public final b(Lbdt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbdn;->a:Lbdr;

    invoke-interface {v0, p1}, Lbdr;->b(Lbdt;)V

    iget-object p1, p0, Lbdn;->b:Lbdq;

    .line 2
    invoke-virtual {p1, p0}, Lbdq;->l(Lbdr;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbdn;->a:Lbdr;

    invoke-interface {v0}, Lbdr;->c()V

    iget-object v0, p0, Lbdn;->b:Lbdq;

    .line 2
    invoke-virtual {v0, p0}, Lbdq;->l(Lbdr;)Z

    return-void
.end method
