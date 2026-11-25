.class public final Laop;
.super Lqq;
.source "PG"

# interfaces
.implements Laoq;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqq;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laop;->b:I

    iput-object p1, p0, Laop;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Laop;->b:I

    return-void
.end method

.method public final getItemCount()I
    .locals 2

    .line 1
    iget v0, p0, Laop;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Laop;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laop;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Laop;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1
    :goto_0
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Laop;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Laoe;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Laop;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Laog;

    if-eqz p1, :cond_1

    .line 3
    const/4 p1, 0x2

    return p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string v0, "Unknown view type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onBindViewHolder(Lrr;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lrr;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Incorrect view holder type for list item."

    packed-switch v0, :pswitch_data_0

    .line 17
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    const-string p2, "Unknown item view type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :pswitch_0
    instance-of v0, p1, Laok;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Laop;->a:Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoj;

    .line 5
    instance-of v0, p2, Laog;

    if-nez v0, :cond_0

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 6
    const-string p2, "Expected item to be bound to viewHolder to be instance of CarUiHeaderListItem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_0
    check-cast p1, Laok;

    check-cast p2, Laog;

    .line 8
    throw v1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :pswitch_1
    instance-of v0, p1, Laoo;

    if-eqz v0, :cond_c

    .line 10
    iget-object v0, p0, Laop;->a:Ljava/util/List;

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoj;

    .line 12
    instance-of v0, p2, Laoe;

    if-eqz v0, :cond_b

    .line 14
    check-cast p1, Laoo;

    check-cast p2, Laoe;

    iget-object v0, p2, Laoe;->b:Lamo;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    iget-object v4, p1, Laoo;->a:Lasl;

    .line 15
    invoke-virtual {v4, v0}, Lasl;->a(Lamo;)V

    iget-object v0, p1, Laoo;->a:Lasl;

    .line 16
    invoke-virtual {v0, v2}, Lasl;->setVisibility(I)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p1, Laoo;->a:Lasl;

    .line 17
    invoke-virtual {v0, v3}, Lasl;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object v0, p1, Laoo;->b:Lasl;

    .line 18
    invoke-virtual {v0, v3}, Lasl;->setVisibility(I)V

    iget-object v0, p1, Laoo;->c:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Laoo;->d:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Laoo;->e:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Laoe;->a:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v5, p1, Laoo;->f:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    sget-object v5, Laob;->a:Laob;

    sget-object v5, Laoc;->a:Laoc;

    iget-object v5, p2, Laoe;->d:Laoc;

    invoke-virtual {v5}, Laoc;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 14
    :pswitch_2
    iget-object v5, p1, Laoo;->e:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p1, Laoo;->e:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Laoo;->e:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v5, p1, Laoo;->c:Landroid/widget/ImageView;

    .line 27
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p1, Laoo;->c:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_4
    iget-object v5, p1, Laoo;->d:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p1, Laoo;->d:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Laoo;->f:Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    :goto_1
    iget-object v0, p1, Laoo;->m:Landroid/view/View;

    .line 32
    instance-of v5, v0, Lcom/android/car/ui/SecureView;

    if-eqz v5, :cond_4

    .line 33
    check-cast v0, Lcom/android/car/ui/SecureView;

    invoke-virtual {v0}, Lcom/android/car/ui/SecureView;->a()V

    const/4 v0, 0x0

    goto :goto_2

    .line 14
    :cond_4
    const/4 v0, 0x1

    .line 33
    :goto_2
    iget-object v5, p1, Laoo;->n:Landroid/view/View;

    .line 34
    instance-of v6, v5, Lcom/android/car/ui/SecureView;

    if-eqz v6, :cond_5

    .line 35
    check-cast v5, Lcom/android/car/ui/SecureView;

    invoke-virtual {v5}, Lcom/android/car/ui/SecureView;->a()V

    goto :goto_3

    .line 14
    :cond_5
    const/4 v0, 0x1

    .line 35
    :goto_3
    iget-object v5, p1, Laoo;->o:Landroid/view/View;

    .line 36
    instance-of v6, v5, Lcom/android/car/ui/SecureView;

    if-eqz v6, :cond_6

    .line 37
    check-cast v5, Lcom/android/car/ui/SecureView;

    invoke-virtual {v5}, Lcom/android/car/ui/SecureView;->a()V

    if-eqz v0, :cond_7

    :cond_6
    nop

    .line 38
    const-string v0, "carui"

    const-string v5, "List item doesn\'t have a SecureView, but security was requested!"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p1, Laoo;->h:Landroid/view/View;

    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Laoo;->i:Landroid/widget/Switch;

    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p1, Laoo;->j:Landroid/widget/CheckBox;

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p1, Laoo;->k:Landroid/widget/RadioButton;

    .line 42
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p1, Laoo;->l:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Laoe;->i:Larh;

    .line 44
    sget-object v5, Laob;->a:Laob;

    sget-object v5, Laoc;->a:Laoc;

    iget-object v5, p2, Laoe;->c:Laob;

    invoke-virtual {v5}, Laob;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    const-string p2, "Unknown secondary action type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :pswitch_5
    iget-object v1, p1, Laoo;->l:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Laoo;->l:Landroid/widget/ImageView;

    iget-object v5, p1, Laoo;->itemView:Landroid/view/View;

    .line 54
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08007a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Laoo;->g:Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p1, Laoo;->m:Landroid/view/View;

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Laoo;->m:Landroid/view/View;

    new-instance v5, Laom;

    invoke-direct {v5, v0, v2}, Laom;-><init>(Larh;I)V

    .line 57
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Laoo;->m:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    .line 60
    :cond_8
    nop

    .line 58
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Laoo;->n:Landroid/view/View;

    .line 59
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Laoo;->o:Landroid/view/View;

    .line 60
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 44
    :pswitch_6
    iget-object v5, p1, Laoo;->l:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p1, Laoo;->l:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p2}, Laoe;->c()V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Laoo;->g:Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p1, Laoo;->m:Landroid/view/View;

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Laoo;->m:Landroid/view/View;

    new-instance v5, Laom;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, Laom;-><init>(Larh;I)V

    .line 49
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Laoo;->m:Landroid/view/View;

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    .line 14
    :cond_9
    nop

    .line 50
    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Laoo;->n:Landroid/view/View;

    .line 51
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Laoo;->o:Landroid/view/View;

    .line 52
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 66
    :pswitch_7
    iget-object v1, p1, Laoo;->k:Landroid/widget/RadioButton;

    .line 14
    goto :goto_6

    :pswitch_8
    iget-object v1, p1, Laoo;->j:Landroid/widget/CheckBox;

    goto :goto_6

    :pswitch_9
    iget-object v1, p1, Laoo;->i:Landroid/widget/Switch;

    :goto_6
    invoke-virtual {p1, p2, v1, v0}, Laoo;->b(Laoe;Landroid/widget/CompoundButton;Larh;)V

    goto :goto_8

    .line 60
    :pswitch_a
    iget-object v1, p1, Laoo;->g:Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p1, Laoo;->m:Landroid/view/View;

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Laoo;->m:Landroid/view/View;

    new-instance v5, Laom;

    invoke-direct {v5, v0, v4}, Laom;-><init>(Larh;I)V

    .line 63
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Laoo;->m:Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    goto :goto_7

    .line 66
    :cond_a
    nop

    .line 64
    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Laoo;->n:Landroid/view/View;

    .line 65
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Laoo;->o:Landroid/view/View;

    .line 66
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_8
    iget-object v0, p1, Laoo;->itemView:Landroid/view/View;

    iget-boolean v1, p2, Laoe;->g:Z

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p1, Laoo;->itemView:Landroid/view/View;

    iget-boolean p2, p2, Laoe;->f:Z

    .line 14
    invoke-virtual {p1, v0, p2}, Laoo;->a(Landroid/view/View;Z)V

    return-void

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    const-string p2, "Expected item to be bound to viewHolder to be instance of CarUiContentListItem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lrr;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 6
    const-string p2, "Unknown item type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :pswitch_0
    new-instance p2, Laok;

    const v2, 0x7f0c0026

    .line 3
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Laok;-><init>(Landroid/view/View;)V

    return-object p2

    .line 4
    :pswitch_1
    new-instance p2, Laoo;

    const v2, 0x7f0c0028

    .line 5
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Laoo;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
