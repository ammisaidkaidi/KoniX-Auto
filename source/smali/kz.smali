.class public final Lkz;
.super Lpm;
.source "PG"


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkz;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Lpm;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lmg;
    .locals 2

    .line 1
    iget-object v0, p0, Lkz;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Lla;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lla;->a:Lmz;

    iget-object v0, v0, Lmz;->j:Lmt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lma;->a()Lly;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkz;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Lln;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Llr;

    invoke-interface {v1, v0}, Lln;->b(Llr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkz;->a()Lmg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lmg;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
