.class public final synthetic Lbs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltq;


# instance fields
.field public final synthetic a:Lbv;


# direct methods
.method public synthetic constructor <init>(Lbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbs;->a:Lbv;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbs;->a:Lbv;

    iget-object v0, v0, Lbv;->a:Lca;

    iget-object v0, v0, Lca;->a:Lcc;

    iget-object v1, v0, Lcc;->e:Lcr;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Lcr;->k(Lcc;Lby;Lbr;)V

    return-void
.end method
