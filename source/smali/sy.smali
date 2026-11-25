.class public final Lsy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Lsx;

.field final b:Lsw;


# direct methods
.method public constructor <init>(Lsx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsy;->a:Lsx;

    new-instance p1, Lsw;

    invoke-direct {p1}, Lsw;-><init>()V

    iput-object p1, p0, Lsy;->b:Lsw;

    return-void
.end method


# virtual methods
.method public final a(IIII)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Lsy;->a:Lsx;

    invoke-interface {v0}, Lsx;->d()I

    move-result v0

    iget-object v1, p0, Lsy;->a:Lsx;

    .line 2
    invoke-interface {v1}, Lsx;->c()I

    move-result v1

    const/4 v2, 0x1

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    const/4 v3, -0x1

    .line 2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    iget-object v5, p0, Lsy;->a:Lsx;

    .line 3
    invoke-interface {v5, p1}, Lsx;->e(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lsy;->a:Lsx;

    .line 4
    invoke-interface {v6, v5}, Lsx;->b(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lsy;->a:Lsx;

    .line 5
    invoke-interface {v7, v5}, Lsx;->a(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lsy;->b:Lsw;

    .line 6
    invoke-virtual {v8, v0, v1, v6, v7}, Lsw;->c(IIII)V

    iget-object v6, p0, Lsy;->b:Lsw;

    .line 7
    invoke-virtual {v6}, Lsw;->b()V

    iget-object v6, p0, Lsy;->b:Lsw;

    .line 8
    invoke-virtual {v6, p3}, Lsw;->a(I)V

    iget-object v6, p0, Lsy;->b:Lsw;

    invoke-virtual {v6}, Lsw;->d()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lsy;->b:Lsw;

    .line 9
    invoke-virtual {v6}, Lsw;->b()V

    iget-object v6, p0, Lsy;->b:Lsw;

    .line 10
    invoke-virtual {v6, p4}, Lsw;->a(I)V

    iget-object v6, p0, Lsy;->b:Lsw;

    invoke-virtual {v6}, Lsw;->d()Z

    move-result v6

    if-ne v2, v6, :cond_1

    move-object v4, v5

    :cond_1
    add-int/2addr p1, v3

    goto :goto_1

    :cond_2
    return-object v5

    :cond_3
    return-object v4
.end method

.method final b(Landroid/view/View;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lsy;->b:Lsw;

    iget-object v1, p0, Lsy;->a:Lsx;

    invoke-interface {v1}, Lsx;->d()I

    move-result v1

    iget-object v2, p0, Lsy;->a:Lsx;

    invoke-interface {v2}, Lsx;->c()I

    move-result v2

    iget-object v3, p0, Lsy;->a:Lsx;

    .line 2
    invoke-interface {v3, p1}, Lsx;->b(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lsy;->a:Lsx;

    invoke-interface {v4, p1}, Lsx;->a(Landroid/view/View;)I

    move-result p1

    .line 1
    invoke-virtual {v0, v1, v2, v3, p1}, Lsw;->c(IIII)V

    iget-object p1, p0, Lsy;->b:Lsw;

    .line 3
    invoke-virtual {p1}, Lsw;->b()V

    iget-object p1, p0, Lsy;->b:Lsw;

    .line 4
    const/16 v0, 0x6003

    invoke-virtual {p1, v0}, Lsw;->a(I)V

    iget-object p1, p0, Lsy;->b:Lsw;

    invoke-virtual {p1}, Lsw;->d()Z

    move-result p1

    return p1
.end method
