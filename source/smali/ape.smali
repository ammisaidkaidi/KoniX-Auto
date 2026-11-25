.class public final Lape;
.super Lre;
.source "PG"


# instance fields
.field final synthetic a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    iput-object p1, p0, Lape;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-direct {p0}, Lre;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lape;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-static {p2}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mupdatePaginationButtons(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iget-object p2, p0, Lape;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 2
    invoke-static {p2, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->-$$Nest$mcacheChildrenHeight(Lcom/android/car/ui/recyclerview/DefaultScrollBar;Lra;)V

    return-void
.end method
