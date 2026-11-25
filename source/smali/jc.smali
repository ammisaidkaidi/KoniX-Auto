.class public final Ljc;
.super Ljy;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final a:Ljb;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljc;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Ljy;-><init>(Landroid/content/Context;I)V

    new-instance p1, Ljb;

    .line 2
    invoke-virtual {p0}, Ljc;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Ljc;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Ljb;-><init>(Landroid/content/Context;Ljy;Landroid/view/Window;)V

    iput-object p1, p0, Ljc;->a:Ljb;

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    if-lez v0, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f040030

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Ljy;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Ljc;->a:Ljb;

    iget v0, p1, Ljb;->s:I

    if-nez v0, :cond_0

    iget v0, p1, Ljb;->r:I

    goto :goto_0

    .line 24
    :cond_0
    iget v0, p1, Ljb;->r:I

    .line 1
    :goto_0
    iget-object v1, p1, Ljb;->b:Ljy;

    .line 2
    invoke-virtual {v1, v0}, Ljy;->setContentView(I)V

    iget-object v0, p1, Ljb;->c:Landroid/view/Window;

    const v1, 0x7f090164

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    const v1, 0x7f0901cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5
    const v3, 0x7f0900e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 6
    const v5, 0x7f090077

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0900ec

    .line 7
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v7, p1, Ljb;->c:Landroid/view/Window;

    .line 8
    const/high16 v8, 0x20000

    invoke-virtual {v7, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 9
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 12
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 13
    invoke-static {v1, v2}, Ljb;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v3, v4}, Ljb;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v5, v6}, Ljb;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p1, Ljb;->c:Landroid/view/Window;

    const v5, 0x7f09017a

    .line 14
    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/NestedScrollView;

    iput-object v4, p1, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    iget-object v4, p1, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    .line 15
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    iget-object v4, p1, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    .line 16
    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v4, 0x102000b

    .line 17
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p1, Ljb;->n:Landroid/widget/TextView;

    iget-object v4, p1, Ljb;->n:Landroid/widget/TextView;

    const/4 v6, -0x1

    if-nez v4, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    nop

    .line 18
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    iget-object v8, p1, Ljb;->n:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v4, v8}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    iget-object v4, p1, Ljb;->e:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    iget-object v4, p1, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    .line 20
    invoke-virtual {v4}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v8, p1, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    .line 21
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 22
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v9, p1, Ljb;->e:Landroid/widget/ListView;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 23
    invoke-direct {v10, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v9, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    nop

    .line 24
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    :goto_1
    const v4, 0x1020019

    .line 25
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p1, Ljb;->f:Landroid/widget/Button;

    iget-object v4, p1, Ljb;->f:Landroid/widget/Button;

    iget-object v8, p1, Ljb;->y:Landroid/view/View$OnClickListener;

    .line 26
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    iget-object v8, p1, Ljb;->f:Landroid/widget/Button;

    .line 30
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v8, 0x0

    goto :goto_2

    .line 35
    :cond_3
    iget-object v8, p1, Ljb;->f:Landroid/widget/Button;

    .line 28
    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p1, Ljb;->f:Landroid/widget/Button;

    .line 29
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v8, 0x1

    .line 30
    :goto_2
    const v10, 0x102001a

    .line 31
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p1, Ljb;->g:Landroid/widget/Button;

    iget-object v10, p1, Ljb;->g:Landroid/widget/Button;

    iget-object v11, p1, Ljb;->y:Landroid/view/View$OnClickListener;

    .line 32
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p1, Ljb;->g:Landroid/widget/Button;

    .line 36
    invoke-virtual {v10, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 41
    :cond_4
    iget-object v10, p1, Ljb;->g:Landroid/widget/Button;

    .line 34
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p1, Ljb;->g:Landroid/widget/Button;

    .line 35
    invoke-virtual {v10, v5}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v8, v8, 0x2

    .line 36
    :goto_3
    const v10, 0x102001b

    .line 37
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p1, Ljb;->h:Landroid/widget/Button;

    iget-object v10, p1, Ljb;->h:Landroid/widget/Button;

    iget-object v11, p1, Ljb;->y:Landroid/view/View$OnClickListener;

    .line 38
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p1, Ljb;->h:Landroid/widget/Button;

    .line 42
    invoke-virtual {v10, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 46
    :cond_5
    iget-object v10, p1, Ljb;->h:Landroid/widget/Button;

    .line 40
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p1, Ljb;->h:Landroid/widget/Button;

    .line 41
    invoke-virtual {v10, v5}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v8, v8, 0x4

    .line 42
    :goto_4
    iget-object v10, p1, Ljb;->a:Landroid/content/Context;

    new-instance v11, Landroid/util/TypedValue;

    .line 43
    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 44
    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v12, 0x7f04002e

    invoke-virtual {v10, v12, v11, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 45
    iget v10, v11, Landroid/util/TypedValue;->data:I

    const/4 v11, 0x2

    if-eqz v10, :cond_8

    if-ne v8, v9, :cond_6

    iget-object v8, p1, Ljb;->f:Landroid/widget/Button;

    .line 13
    :goto_5
    nop

    :goto_6
    invoke-static {v8}, Ljb;->b(Landroid/widget/Button;)V

    goto :goto_7

    .line 56
    :cond_6
    if-ne v8, v11, :cond_7

    iget-object v8, p1, Ljb;->g:Landroid/widget/Button;

    goto :goto_5

    .line 13
    :cond_7
    const/4 v10, 0x4

    if-ne v8, v10, :cond_8

    iget-object v8, p1, Ljb;->h:Landroid/widget/Button;

    goto :goto_6

    :cond_8
    if-nez v8, :cond_9

    .line 46
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    :cond_9
    :goto_7
    iget-object v8, p1, Ljb;->o:Landroid/view/View;

    const v10, 0x7f0901ca

    if-eqz v8, :cond_a

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    .line 47
    invoke-direct {v8, v6, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v6, p1, Ljb;->o:Landroid/view/View;

    .line 48
    invoke-virtual {v1, v6, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p1, Ljb;->c:Landroid/view/Window;

    .line 49
    invoke-virtual {v6, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 50
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 74
    :cond_a
    iget-object v6, p1, Ljb;->c:Landroid/view/Window;

    const v8, 0x1020006

    .line 51
    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p1, Ljb;->l:Landroid/widget/ImageView;

    iget-object v6, p1, Ljb;->d:Ljava/lang/CharSequence;

    .line 52
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-boolean v6, p1, Ljb;->w:Z

    if-eqz v6, :cond_c

    iget-object v6, p1, Ljb;->c:Landroid/view/Window;

    const v8, 0x7f090055

    .line 57
    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p1, Ljb;->m:Landroid/widget/TextView;

    iget-object v6, p1, Ljb;->m:Landroid/widget/TextView;

    iget-object v8, p1, Ljb;->d:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p1, Ljb;->j:I

    iget-object v6, p1, Ljb;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_b

    iget-object v8, p1, Ljb;->l:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_b
    iget-object v6, p1, Ljb;->m:Landroid/widget/TextView;

    iget-object v8, p1, Ljb;->l:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v8

    iget-object v10, p1, Ljb;->l:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v10

    iget-object v12, p1, Ljb;->l:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v12

    iget-object v13, p1, Ljb;->l:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {v13}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v13

    .line 60
    invoke-virtual {v6, v8, v10, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, p1, Ljb;->l:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_c
    iget-object v6, p1, Ljb;->c:Landroid/view/Window;

    .line 53
    invoke-virtual {v6, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 54
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p1, Ljb;->l:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 50
    :goto_8
    if-eqz v0, :cond_d

    .line 65
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_d

    const/4 v0, 0x1

    goto :goto_9

    .line 74
    :cond_d
    const/4 v0, 0x0

    .line 65
    :goto_9
    if-eqz v1, :cond_e

    .line 66
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_e

    const/4 v6, 0x1

    goto :goto_a

    .line 74
    :cond_e
    const/4 v6, 0x0

    .line 66
    :goto_a
    if-eqz v3, :cond_f

    .line 67
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v7, :cond_f

    const/4 v3, 0x1

    goto :goto_b

    .line 74
    :cond_f
    const/4 v3, 0x0

    .line 67
    :goto_b
    if-nez v3, :cond_10

    if-eqz v2, :cond_10

    const v7, 0x7f0901c3

    .line 68
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 69
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    if-eqz v6, :cond_13

    iget-object v7, p1, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v7, :cond_11

    .line 70
    invoke-virtual {v7, v9}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    :cond_11
    iget-object v7, p1, Ljb;->e:Landroid/widget/ListView;

    if-eqz v7, :cond_12

    const v4, 0x7f0901c9

    .line 71
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_c

    .line 84
    :cond_12
    nop

    .line 71
    :goto_c
    if-eqz v4, :cond_14

    .line 72
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 84
    :cond_13
    if-eqz v2, :cond_14

    const v1, 0x7f0901c4

    .line 73
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 74
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_14
    :goto_d
    iget-object v1, p1, Ljb;->e:Landroid/widget/ListView;

    .line 75
    instance-of v4, v1, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v4, :cond_18

    if-eqz v3, :cond_15

    if-nez v6, :cond_18

    const/4 v4, 0x0

    goto :goto_e

    .line 84
    :cond_15
    move v4, v6

    .line 75
    :goto_e
    check-cast v1, Landroid/support/v7/app/AlertController$RecycleListView;

    .line 76
    invoke-virtual {v1}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v7

    if-eqz v4, :cond_16

    invoke-virtual {v1}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v4

    goto :goto_f

    .line 84
    :cond_16
    iget v4, v1, Landroid/support/v7/app/AlertController$RecycleListView;->a:I

    .line 76
    :goto_f
    invoke-virtual {v1}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v8

    if-eqz v3, :cond_17

    invoke-virtual {v1}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v10

    goto :goto_10

    .line 84
    :cond_17
    iget v10, v1, Landroid/support/v7/app/AlertController$RecycleListView;->b:I

    .line 76
    :goto_10
    invoke-virtual {v1, v7, v4, v8, v10}, Landroid/support/v7/app/AlertController$RecycleListView;->setPadding(IIII)V

    :cond_18
    if-nez v0, :cond_1c

    iget-object v0, p1, Ljb;->e:Landroid/widget/ListView;

    if-nez v0, :cond_19

    iget-object v0, p1, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    :cond_19
    if-eqz v0, :cond_1c

    if-eq v9, v3, :cond_1a

    goto :goto_11

    .line 84
    :cond_1a
    const/4 v5, 0x2

    .line 76
    :goto_11
    iget-object v1, p1, Ljb;->c:Landroid/view/Window;

    const v3, 0x7f090179

    .line 77
    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p1, Ljb;->c:Landroid/view/Window;

    const v4, 0x7f090178

    .line 78
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    or-int v4, v6, v5

    .line 79
    invoke-static {v0, v4}, Lhs;->N(Landroid/view/View;I)V

    if-eqz v1, :cond_1b

    .line 80
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    if-eqz v3, :cond_1c

    .line 81
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    iget-object v0, p1, Ljb;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_1d

    iget-object v1, p1, Ljb;->p:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1d

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget p1, p1, Ljb;->q:I

    if-ltz p1, :cond_1d

    .line 83
    invoke-virtual {v0, p1, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1d
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljc;->a:Ljb;

    iget-object v0, v0, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->m(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Ljy;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljc;->a:Ljb;

    iget-object v0, v0, Ljb;->i:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->m(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Ljy;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljy;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ljc;->a:Ljb;

    .line 2
    invoke-virtual {v0, p1}, Ljb;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
