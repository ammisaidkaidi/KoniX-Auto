.class public final Lams;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field final synthetic b:Lcom/android/car/ui/FocusParkingView;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/FocusParkingView;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lams;->b:Lcom/android/car/ui/FocusParkingView;

    iput-object p2, p0, Lams;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lams;->a:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lams;->b:Lcom/android/car/ui/FocusParkingView;

    .line 2
    invoke-virtual {v0}, Lcom/android/car/ui/FocusParkingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
