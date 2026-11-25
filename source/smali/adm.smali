.class final Ladm;
.super Lgh;
.source "PG"


# instance fields
.field final synthetic b:Ladn;


# direct methods
.method public constructor <init>(Ladn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ladm;->b:Ladn;

    invoke-direct {p0}, Lgh;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Lik;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ladm;->b:Ladn;

    iget-object v0, v0, Ladn;->e:Lgh;

    invoke-virtual {v0, p1, p2}, Lgh;->c(Landroid/view/View;Lik;)V

    iget-object v0, p0, Ladm;->b:Ladn;

    iget-object v0, v0, Ladn;->d:Landroid/support/v7/widget/RecyclerView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Ladm;->b:Ladn;

    iget-object v0, v0, Ladn;->d:Landroid/support/v7/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->e()Lqq;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ladg;

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    check-cast v0, Ladg;

    .line 6
    invoke-virtual {v0, p1}, Ladg;->d(I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Lik;)V

    return-void
.end method

.method public final i(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ladm;->b:Ladn;

    iget-object v0, v0, Ladn;->e:Lgh;

    invoke-virtual {v0, p1, p2, p3}, Lgh;->i(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
