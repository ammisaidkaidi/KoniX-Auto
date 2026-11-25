.class final Lhk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field a:Lih;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lgx;


# direct methods
.method public constructor <init>(Landroid/view/View;Lgx;)V
    .locals 0

    iput-object p1, p0, Lhk;->b:Landroid/view/View;

    iput-object p2, p0, Lhk;->c:Lgx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lhk;->a:Lih;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    invoke-static {p2, p1}, Lih;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lih;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lhk;->b:Landroid/view/View;

    .line 2
    invoke-static {p2, v1}, Lhl;->d(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, Lhk;->a:Lih;

    .line 3
    invoke-virtual {v0, p2}, Lih;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lhk;->c:Lgx;

    .line 8
    invoke-interface {p2, p1, v0}, Lgx;->a(Landroid/view/View;Lih;)Lih;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lih;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    iput-object v0, p0, Lhk;->a:Lih;

    iget-object p2, p0, Lhk;->c:Lgx;

    .line 4
    invoke-interface {p2, p1, v0}, Lgx;->a(Landroid/view/View;Lih;)Lih;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 5
    invoke-virtual {p2}, Lih;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-static {p1}, Lhs;->t(Landroid/view/View;)V

    .line 7
    invoke-virtual {p2}, Lih;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
