.class final Lkd;
.super Lhw;
.source "PG"


# instance fields
.field final synthetic a:Lkh;


# direct methods
.method public constructor <init>(Lkh;)V
    .locals 0

    iput-object p1, p0, Lkd;->a:Lkh;

    invoke-direct {p0}, Lhw;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkd;->a:Lkh;

    iget-boolean v1, v0, Lkh;->k:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lkh;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lkd;->a:Lkh;

    iget-object v0, v0, Lkh;->c:Landroid/support/v7/widget/ActionBarContainer;

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lkd;->a:Lkh;

    iget-object v0, v0, Lkh;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Lkd;->a:Lkh;

    iget-object v0, v0, Lkh;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->a(Z)V

    iget-object v0, p0, Lkd;->a:Lkh;

    const/4 v1, 0x0

    iput-object v1, v0, Lkh;->m:Lkw;

    iget-object v2, v0, Lkh;->i:Lkn;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lkh;->h:Lko;

    .line 5
    invoke-interface {v2, v3}, Lkn;->a(Lko;)V

    iput-object v1, v0, Lkh;->h:Lko;

    iput-object v1, v0, Lkh;->i:Lkn;

    :cond_1
    iget-object v0, p0, Lkd;->a:Lkh;

    iget-object v0, v0, Lkh;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0}, Lhs;->t(Landroid/view/View;)V

    :cond_2
    return-void
.end method
