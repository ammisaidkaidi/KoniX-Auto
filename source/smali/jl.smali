.class final Ljl;
.super Lhw;
.source "PG"


# instance fields
.field final synthetic a:Ljw;


# direct methods
.method public constructor <init>(Ljw;)V
    .locals 0

    iput-object p1, p0, Ljl;->a:Ljw;

    invoke-direct {p0}, Lhw;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljl;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Ljl;->a:Ljw;

    iget-object v0, v0, Ljw;->G:Lbew;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbew;->d(Lhv;)V

    iget-object v0, p0, Ljl;->a:Ljw;

    iput-object v1, v0, Ljw;->G:Lbew;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljl;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Ljl;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Ljl;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljl;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 4
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lhs;->t(Landroid/view/View;)V

    :cond_0
    return-void
.end method
