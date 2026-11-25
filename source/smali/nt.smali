.class final Lnt;
.super Landroid/widget/PopupWindow;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v1, Lki;->r:[I

    invoke-static {p1, p2, v1, p3}, Lsm;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lsm;

    move-result-object p1

    .line 3
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lsm;->p(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p1, p2, v0}, Lsm;->o(IZ)Z

    move-result p2

    .line 5
    invoke-static {p0, p2}, Lis;->a(Landroid/widget/PopupWindow;Z)V

    :cond_0
    nop

    .line 6
    invoke-virtual {p1, v0}, Lsm;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnt;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {p1}, Lsm;->n()V

    return-void
.end method
