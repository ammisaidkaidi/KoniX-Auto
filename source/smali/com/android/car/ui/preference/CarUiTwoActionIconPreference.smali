.class public Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;
.super Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.source "PG"


# instance fields
.field private mSecondaryActionIcon:Landroid/graphics/drawable/Drawable;

.field protected mSecondaryActionOnClickListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lamu;->e:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->mSecondaryActionIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c0032

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->setLayoutResourceInternal(I)V

    return-void

    .line 3
    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    throw v0
.end method

.method public synthetic lambda$onBindViewHolder$0$com-android-car-ui-preference-CarUiTwoActionIconPreference(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->performSecondaryActionClick()V

    return-void
.end method

.method public onBindViewHolder(Lado;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->onBindViewHolder(Lado;)V

    .line 2
    iget-object v0, p1, Lado;->itemView:Landroid/view/View;

    const v1, 0x7f090086

    invoke-static {v0, v1}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lado;->itemView:Landroid/view/View;

    const v2, 0x7f0900a7

    invoke-static {v1, v2}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4
    iget-object v2, p1, Lado;->itemView:Landroid/view/View;

    const v3, 0x7f0900a8

    invoke-static {v2, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 5
    iget-object v3, p1, Lado;->itemView:Landroid/view/View;

    const v4, 0x7f0900a9

    invoke-static {v3, v4}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 6
    iget-object v4, p1, Lado;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    new-instance p1, Lano;

    const/4 v4, 0x1

    invoke-direct {p1, p0, v4}, Lano;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;I)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 9
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 17
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 10
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->mSecondaryActionVisible:Z

    if-eq v4, p1, :cond_4

    const/16 p1, 0x8

    goto :goto_2

    .line 17
    :cond_4
    const/4 p1, 0x0

    .line 11
    :goto_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->mSecondaryActionIcon:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    .line 17
    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    const/4 p1, 0x1

    .line 13
    :goto_3
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    .line 17
    :cond_7
    const/4 p1, 0x0

    goto :goto_4

    :cond_8
    const/4 p1, 0x1

    .line 14
    :goto_4
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 17
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    nop

    .line 15
    :goto_5
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    new-instance p1, Lano;

    invoke-direct {p1, p0, v5}, Lano;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;I)V

    .line 16
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    .line 18
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result v0

    .line 17
    invoke-static {v2, p1, v0}, Laro;->k(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected performSecondaryActionClickInternal()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->mSecondaryActionOnClickListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setOnSecondaryActionClickListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->mSecondaryActionOnClickListener:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSecondaryActionIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lxr;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->setSecondaryActionIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSecondaryActionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->mSecondaryActionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
