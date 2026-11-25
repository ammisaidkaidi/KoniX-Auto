.class public Lcom/android/car/ui/FocusParkingViewAdapterV1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/plugin/oemapis/FocusParkingViewOEMV1;


# instance fields
.field private final mFocusParkingView:Lcom/android/car/ui/FocusParkingView;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/FocusParkingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/FocusParkingViewAdapterV1;->mFocusParkingView:Lcom/android/car/ui/FocusParkingView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/FocusParkingViewAdapterV1;->mFocusParkingView:Lcom/android/car/ui/FocusParkingView;

    return-object v0
.end method

.method public setShouldRestoreFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/FocusParkingViewAdapterV1;->mFocusParkingView:Lcom/android/car/ui/FocusParkingView;

    iput-boolean p1, v0, Lcom/android/car/ui/FocusParkingView;->b:Z

    return-void
.end method
