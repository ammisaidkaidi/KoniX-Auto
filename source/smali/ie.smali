.class Lie;
.super Lid;
.source "PG"


# direct methods
.method public constructor <init>(Lih;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lid;-><init>(Lih;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final b(IIII)Lih;
    .locals 1

    .line 1
    iget-object v0, p0, Lie;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lih;->k(Landroid/view/WindowInsets;)Lih;

    move-result-object p1

    return-object p1
.end method

.method public final j(Leh;)V
    .locals 0

    return-void
.end method
