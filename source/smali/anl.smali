.class public final Lanl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lanh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/List;)Laop;
    .locals 1

    .line 1
    new-instance v0, Laop;

    invoke-direct {v0, p0}, Laop;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final createRecyclerView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
    .locals 1

    .line 1
    new-instance v0, Laox;

    invoke-direct {v0, p1, p2}, Laox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Lasl;
    .locals 1

    .line 1
    new-instance v0, Laso;

    invoke-direct {v0, p1, p2}, Laso;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final installBaseLayoutAround(Landroid/view/View;Lanc;ZZ)Lare;
    .locals 6

    .line 1
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-eqz p3, :cond_2

    if-gt p4, v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050014

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eq v1, v2, :cond_0

    const v1, 0x7f0c0024

    goto :goto_0

    .line 12
    :cond_0
    const v1, 0x7f0c0025

    goto :goto_0

    :cond_1
    const v1, 0x7f0c0023

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0022

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 7
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f090081

    .line 9
    invoke-static {v1, v2}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_4

    if-gt p4, v0, :cond_3

    new-instance v4, Larn;

    const p3, 0x7f0900aa

    .line 11
    invoke-static {v1, p3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    invoke-direct {v4, p3}, Larn;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance v4, Larn;

    .line 12
    invoke-direct {v4, v1}, Larn;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    nop

    .line 11
    :goto_1
    new-instance p3, Lank;

    .line 13
    invoke-direct {p3, v1, p1}, Lank;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p2, p3, Lank;->g:Lanc;

    return-object v4
.end method
