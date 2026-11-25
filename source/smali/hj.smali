.class public final Lhj;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public static final d(Liy;I)Ljc;
    .locals 7

    .line 1
    new-instance v0, Ljc;

    iget-object v1, p0, Liy;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ljc;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Ljc;->a:Ljb;

    iget-object v1, p0, Liy;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    iput-object v1, p1, Ljb;->o:Landroid/view/View;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Liy;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Ljb;->a(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Liy;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iput-object v1, p1, Ljb;->k:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iput v2, p1, Ljb;->j:I

    iget-object v3, p1, Ljb;->l:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p1, Ljb;->l:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1
    :cond_2
    :goto_0
    iget-object v1, p0, Liy;->g:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Liy;->b:Landroid/view/LayoutInflater;

    .line 5
    iget v4, p1, Ljb;->t:I

    .line 6
    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AlertController$RecycleListView;

    iget-boolean v4, p0, Liy;->i:Z

    if-eqz v4, :cond_3

    .line 7
    iget v4, p1, Ljb;->u:I

    goto :goto_1

    .line 8
    :cond_3
    iget v4, p1, Ljb;->v:I

    .line 7
    :goto_1
    iget-object v5, p0, Liy;->g:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    new-instance v5, Lja;

    iget-object v6, p0, Liy;->a:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lja;-><init>(Landroid/content/Context;I)V

    .line 10
    :goto_2
    iput-object v5, p1, Ljb;->p:Landroid/widget/ListAdapter;

    iget v4, p0, Liy;->j:I

    .line 11
    iput v4, p1, Ljb;->q:I

    iget-object v4, p0, Liy;->h:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_5

    new-instance v4, Lix;

    invoke-direct {v4, p0, p1}, Lix;-><init>(Liy;Ljb;)V

    .line 12
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_5
    iget-boolean v4, p0, Liy;->i:Z

    if-eqz v4, :cond_6

    .line 13
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 14
    :cond_6
    iput-object v1, p1, Ljb;->e:Landroid/widget/ListView;

    :cond_7
    nop

    .line 15
    invoke-virtual {v0, v3}, Ljc;->setCancelable(Z)V

    .line 16
    invoke-virtual {v0, v3}, Ljc;->setCanceledOnTouchOutside(Z)V

    .line 17
    invoke-virtual {v0, v2}, Ljc;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 18
    invoke-virtual {v0, v2}, Ljc;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Liy;->f:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_8

    .line 19
    invoke-virtual {v0, p0}, Ljc;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_8
    return-object v0
.end method

.method public static e(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0xff

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
