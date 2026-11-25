.class final Lmy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmb;


# instance fields
.field final synthetic a:Lmz;


# direct methods
.method public constructor <init>(Lmz;)V
    .locals 0

    iput-object p1, p0, Lmy;->a:Lmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llo;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lmk;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Llo;->a()Llo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llo;->i(Z)V

    :cond_0
    iget-object v0, p0, Lmy;->a:Lmz;

    iget-object v0, v0, Llb;->e:Lmb;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1, p2}, Lmb;->a(Llo;Z)V

    :cond_1
    return-void
.end method

.method public final b(Llo;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmy;->a:Lmz;

    iget-object v1, v0, Lmz;->c:Llo;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    :cond_0
    move-object v1, p1

    check-cast v1, Lmk;

    iget-object v1, v1, Lmk;->k:Llr;

    iget-object v0, v0, Llb;->e:Lmb;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Lmb;->b(Llo;)Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method
