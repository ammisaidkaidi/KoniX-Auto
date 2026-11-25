.class public final synthetic Laqn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Laqs;


# direct methods
.method public synthetic constructor <init>(Laqs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqn;->a:Laqs;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 10

    .line 1
    iget-object v0, p0, Laqn;->a:Laqs;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_b

    iget-object v1, v0, Laqs;->d:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    goto/16 :goto_6

    .line 3
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Laqs;->a()Landroid/view/View;

    move-result-object v1

    iget-boolean v3, v0, Laqs;->h:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput-object v3, v0, Laqs;->j:Landroid/view/ViewGroup$LayoutParams;

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v0, Laqs;->i:Landroid/view/ViewGroup;

    iget-object v3, v0, Laqs;->i:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v5, v0, Laqs;->k:Laqf;

    iget-object v5, v5, Laqf;->a:Landroid/view/View;

    .line 9
    instance-of v6, v5, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    neg-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 12
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    neg-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 13
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    neg-int v5, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2
    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v6, v0, Laqs;->b:Landroid/content/Context;

    .line 14
    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v5, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 32
    :cond_3
    move-object v5, v4

    .line 15
    :goto_0
    iget-object v1, v0, Laqs;->b:Landroid/content/Context;

    .line 16
    invoke-static {v1}, Lcom/android/car/ui/core/SearchResultsProvider;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, v0, Laqs;->b:Landroid/content/Context;

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Laqs;->a()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Laqs;->b()Laqd;

    move-result-object v3

    iget-boolean v3, v3, Laqd;->a:Z

    if-eqz v3, :cond_4

    goto/16 :goto_4

    .line 35
    :cond_4
    iget-object v3, v0, Laqs;->k:Laqf;

    iget-object v3, v3, Laqf;->c:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v1, v0, Laqs;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Laqs;->d:Landroid/widget/TextView;

    .line 33
    const-string v3, "automotive_wide_screen"

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_5
    nop

    .line 18
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoe;

    new-instance v7, Landroid/content/ContentValues;

    .line 20
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "primaryId"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    const-string v9, "secondary"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, v6, Laoe;->a:Landroid/graphics/drawable/Drawable;

    .line 23
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_6

    .line 24
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Laqs;->f(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    goto :goto_2

    .line 31
    :cond_6
    move-object v8, v4

    .line 24
    :goto_2
    nop

    .line 25
    const-string v9, "primary_image"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 26
    invoke-virtual {v6}, Laoe;->c()V

    .line 27
    const-string v8, "secondary_image"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v6, v6, Laoe;->b:Lamo;

    if-eqz v6, :cond_7

    .line 28
    invoke-virtual {v6}, Lamo;->a()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 31
    :cond_7
    move-object v6, v4

    .line 28
    :goto_3
    nop

    .line 29
    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v6, "subtitle"

    invoke-virtual {v7, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Laqs;->b:Landroid/content/Context;

    .line 31
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget-object v1, v0, Laqs;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Laqs;->d:Landroid/widget/TextView;

    new-instance v3, Landroid/os/Bundle;

    .line 32
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "wide_screen_search_results"

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    :goto_4
    iget-object v1, v0, Laqs;->a:Landroid/os/Handler;

    new-instance v2, Laqp;

    invoke-direct {v2, v0, v5}, Laqp;-><init>(Laqs;Landroid/widget/FrameLayout;)V

    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 32
    :cond_9
    invoke-virtual {v0}, Laqs;->a()Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Laqs;->i:Landroid/view/ViewGroup;

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    iget-object v3, v0, Laqs;->a:Landroid/os/Handler;

    new-instance v4, Laqo;

    invoke-direct {v4, v0, v1}, Laqo;-><init>(Laqs;Landroid/view/View;)V

    .line 4
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    iput-boolean v2, v0, Laqs;->h:Z

    .line 35
    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2
    :goto_6
    return-object p1

    .line 1
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot check if the ime is visible pre R"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
