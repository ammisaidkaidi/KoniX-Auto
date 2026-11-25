.class public Lcom/android/car/ui/toolbar/TabLayout;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public final a:I

.field public b:Ljava/util/List;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/toolbar/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/toolbar/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/car/ui/toolbar/TabLayout;->c:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 6
    const p2, 0x7f050013

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const p1, 0x7f0c0048

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0049

    :goto_0
    iput p1, p0, Lcom/android/car/ui/toolbar/TabLayout;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqu;

    const v2, 0x7f0900c1

    .line 4
    invoke-static {v0, v2}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0900c2

    .line 5
    invoke-static {v0, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Laqv;

    invoke-direct {v4, p0, p1}, Laqv;-><init>(Lcom/android/car/ui/toolbar/TabLayout;I)V

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v4, p0, Lcom/android/car/ui/toolbar/TabLayout;->c:I

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    iget-boolean v0, v1, Laqu;->d:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060048

    .line 9
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 8
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, v1, Laqu;->b:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Laqu;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/car/ui/toolbar/TabLayout;->c:I

    if-ne p1, v0, :cond_2

    const p1, 0x7f110136

    goto :goto_1

    .line 12
    :cond_2
    const p1, 0x7f110135

    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void

    .line 1
    :cond_3
    :goto_2
    return-void
.end method
