.class public final Lcwg;
.super Lcwd;
.source "PG"


# direct methods
.method public constructor <init>(Lcty;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcwd;-><init>(Lcty;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcwe;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lctx;->f:Lctx;

    iget-object v1, p0, Lcwd;->b:Lcty;

    invoke-interface {p1, p2, v0, v1}, Lcwe;->a(Ljava/lang/Object;Lctx;Lcty;)V

    return-void
.end method
