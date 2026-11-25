.class public Lcom/android/car/ui/uxr/DrawableStateButton;
.super Landroid/widget/Button;
.source "PG"

# interfaces
.implements Lask;


# instance fields
.field private a:Lasj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a([I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateButton;->a:Lasj;

    if-nez v0, :cond_0

    new-instance v0, Lasj;

    invoke-direct {v0, p0}, Lasj;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateButton;->a:Lasj;

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateButton;->a:Lasj;

    invoke-virtual {v0, p1, p2}, Lasj;->a([I[I)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Integer;)[I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public final onCreateDrawableState(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateButton;->a:Lasj;

    if-nez v0, :cond_0

    new-instance v0, Lasj;

    invoke-direct {v0, p0}, Lasj;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateButton;->a:Lasj;

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateButton;->a:Lasj;

    new-instance v1, Larz;

    invoke-direct {v1, p0}, Larz;-><init>(Lcom/android/car/ui/uxr/DrawableStateButton;)V

    invoke-virtual {v0, p1, v1}, Lasj;->b(ILj$/util/function/Function;)[I

    move-result-object p1

    return-object p1
.end method
