.class public Lcom/android/car/ui/FocusAreaAdapterV1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/plugin/oemapis/FocusAreaOEMV1;


# instance fields
.field private final mFocusArea:Lcom/android/car/ui/FocusArea;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/FocusArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/FocusAreaAdapterV1;->mFocusArea:Lcom/android/car/ui/FocusArea;

    return-void
.end method


# virtual methods
.method public getView()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaAdapterV1;->mFocusArea:Lcom/android/car/ui/FocusArea;

    return-object v0
.end method

.method public setBoundsOffset(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/FocusAreaAdapterV1;->mFocusArea:Lcom/android/car/ui/FocusArea;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/car/ui/FocusArea;->c(IIII)V

    return-void
.end method

.method public setDefaultFocus(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaAdapterV1;->mFocusArea:Lcom/android/car/ui/FocusArea;

    iget-object v0, v0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iput-object p1, v0, Lamq;->s:Landroid/view/View;

    return-void
.end method

.method public setHighlightPadding(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/FocusAreaAdapterV1;->mFocusArea:Lcom/android/car/ui/FocusArea;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/car/ui/FocusArea;->d(IIII)V

    return-void
.end method

.method public setNudgeShortcut(ILandroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/FocusAreaAdapterV1;->mFocusArea:Lcom/android/car/ui/FocusArea;

    iget-object v0, v0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    sget-object v1, Lamq;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lamq;->b()V

    if-nez p2, :cond_0

    iget-object p2, v0, Lamq;->t:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :cond_0
    iget-object v0, v0, Lamq;->t:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWrapAround(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaAdapterV1;->mFocusArea:Lcom/android/car/ui/FocusArea;

    iget-object v0, v0, Lcom/android/car/ui/FocusArea;->a:Lamq;

    iput-boolean p1, v0, Lamq;->w:Z

    return-void
.end method
