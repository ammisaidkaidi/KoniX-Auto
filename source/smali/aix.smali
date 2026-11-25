.class public final Laix;
.super Laiz;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lamh;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lajo;->a(Landroid/content/Context;Lamh;)Lajo;

    move-result-object p1

    iget-object p1, p1, Lajo;->b:Lajg;

    invoke-direct {p0, p1}, Laiz;-><init>(Lajk;)V

    return-void
.end method


# virtual methods
.method public final b(Lakk;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lakk;->j:Lagh;

    iget-boolean p1, p1, Lagh;->d:Z

    return p1
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
