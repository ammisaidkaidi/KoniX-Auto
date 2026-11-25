.class public final Lbfe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lbfc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Ldit;->a:Ldit;

    .line 2
    invoke-virtual {v0}, Ldit;->b()Ldiu;

    move-result-object v0

    invoke-interface {v0}, Ldiu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfe;->a:Lbfc;

    .line 3
    invoke-virtual {v0}, Lbfc;->a()Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
