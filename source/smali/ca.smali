.class public final Lca;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcc;


# direct methods
.method public constructor <init>(Lcc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lca;->a:Lcc;

    return-void
.end method


# virtual methods
.method public final a()Lcr;
    .locals 1

    iget-object v0, p0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    invoke-virtual {v0}, Lcr;->G()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lca;->a:Lcc;

    iget-object v0, v0, Lcc;->e:Lcr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcr;->Z(Z)V

    return-void
.end method
