.class public final Laja;
.super Laiz;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lamh;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lajo;->a(Landroid/content/Context;Lamh;)Lajo;

    move-result-object p1

    iget-object p1, p1, Lajo;->c:Lajm;

    invoke-direct {p0, p1}, Laiz;-><init>(Lajk;)V

    return-void
.end method


# virtual methods
.method public final b(Lakk;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lakk;->j:Lagh;

    iget p1, p1, Lagh;->i:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lait;

    iget-boolean v0, p1, Lait;->a:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lait;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
