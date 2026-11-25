.class final Llt;
.super Lls;
.source "PG"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field private c:Llq;


# direct methods
.method public constructor <init>(Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lls;-><init>(Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Llt;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Llt;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Llt;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public final h(Llq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llt;->c:Llq;

    iget-object p1, p0, Llt;->b:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Llt;->c:Llq;

    if-eqz p1, :cond_0

    iget-object p1, p1, Llq;->a:Llr;

    iget-object p1, p1, Llr;->j:Llo;

    invoke-virtual {p1}, Llo;->C()V

    :cond_0
    return-void
.end method
