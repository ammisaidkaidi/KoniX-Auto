.class final Laok;
.super Lrr;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lrr;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x7f09009d

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    const v0, 0x7f090092

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-void
.end method
