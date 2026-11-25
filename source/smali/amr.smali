.class public final synthetic Lamr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/car/ui/FocusParkingView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/FocusParkingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamr;->a:Lcom/android/car/ui/FocusParkingView;

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lamr;->a:Lcom/android/car/ui/FocusParkingView;

    instance-of v0, p2, Lcom/android/car/ui/FocusParkingView;

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/car/ui/FocusParkingView;->a(Landroid/view/View;)V

    return-void
.end method
