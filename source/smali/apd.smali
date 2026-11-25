.class public final Lapd;
.super Lqs;
.source "PG"


# instance fields
.field final synthetic a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    iput-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-direct {p0}, Lqs;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mclearCachedHeights(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iget-object v0, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    .line 2
    invoke-static {v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mupdatePaginationButtons(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mclearCachedHeights(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    .line 2
    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mupdatePaginationButtons(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mclearCachedHeights(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    .line 4
    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mupdatePaginationButtons(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mclearCachedHeights(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    .line 2
    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mupdatePaginationButtons(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mclearCachedHeights(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    .line 2
    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mupdatePaginationButtons(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mclearCachedHeights(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iget-object p1, p0, Lapd;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    .line 2
    invoke-static {p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mupdatePaginationButtons(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    return-void
.end method
