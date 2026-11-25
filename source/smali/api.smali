.class public final Lapi;
.super Landroid/support/v7/widget/RecyclerView;
.source "PG"


# instance fields
.field private final P:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lapi;->P:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    return-void
.end method


# virtual methods
.method public final I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lapi;->P:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public final W(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lapi;->P:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public final Y(Lqq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lapi;->P:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setAdapter(Lqq;)V

    return-void
.end method

.method public final e()Lqq;
    .locals 1

    .line 1
    iget-object v0, p0, Lapi;->P:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->getAdapter()Lqq;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final focusableViewAvailable(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lapi;->P:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method

.method public final p(Lqx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lapi;->P:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->addItemDecoration(Lqx;)V

    return-void
.end method
