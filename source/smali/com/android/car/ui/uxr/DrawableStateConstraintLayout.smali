.class public Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PG"

# interfaces
.implements Lask;


# instance fields
.field private h:Lasj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a([I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->h:Lasj;

    if-nez v0, :cond_0

    new-instance v0, Lasj;

    invoke-direct {v0, p0}, Lasj;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->h:Lasj;

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->h:Lasj;

    invoke-virtual {v0, p1, p2}, Lasj;->a([I[I)V

    return-void
.end method

.method public final synthetic e(Ljava/lang/Integer;)[I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public final onCreateDrawableState(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->h:Lasj;

    if-nez v0, :cond_0

    new-instance v0, Lasj;

    invoke-direct {v0, p0}, Lasj;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->h:Lasj;

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->h:Lasj;

    new-instance v1, Lasa;

    invoke-direct {v1, p0}, Lasa;-><init>(Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;)V

    invoke-virtual {v0, p1, v1}, Lasj;->b(ILj$/util/function/Function;)[I

    move-result-object p1

    return-object p1
.end method
