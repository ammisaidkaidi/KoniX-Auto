.class public Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;
.super Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.source "PG"


# instance fields
.field protected mSecondaryActionOnClickListener:Ljava/lang/Runnable;

.field private mSecondaryActionText:Ljava/lang/CharSequence;


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
.method public getSecondaryActionText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->mSecondaryActionText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lamu;->g:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->mSecondaryActionText:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_0

    const p1, 0x7f0c0034

    goto :goto_0

    .line 6
    :cond_0
    const p1, 0x7f0c0035

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->setLayoutResourceInternal(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    throw v0
.end method

.method public synthetic lambda$onBindViewHolder$0$com-android-car-ui-preference-CarUiTwoActionTextPreference(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->performSecondaryActionClick()V

    return-void
.end method

.method public onBindViewHolder(Lado;)V
    .locals 5

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

    check-cast v2, Landroid/widget/Button;

    .line 5
    iget-object v3, p1, Lado;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    new-instance p1, Lanr;

    const/4 v3, 0x1

    invoke-direct {p1, p0, v3}, Lanr;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;I)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 15
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 9
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->mSecondaryActionVisible:Z

    if-eq v3, p1, :cond_4

    const/16 p1, 0x8

    goto :goto_2

    .line 15
    :cond_4
    const/4 p1, 0x0

    .line 10
    :goto_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->mSecondaryActionText:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lanr;

    invoke-direct {p1, p0, v4}, Lanr;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;I)V

    .line 12
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    .line 15
    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    const/4 p1, 0x1

    .line 13
    :goto_3
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    .line 15
    :cond_7
    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    .line 14
    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    .line 16
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result v0

    .line 15
    invoke-static {v2, p1, v0}, Laro;->k(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected performSecondaryActionClickInternal()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->mSecondaryActionOnClickListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setOnSecondaryActionClickListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->mSecondaryActionOnClickListener:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSecondaryActionText(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->setSecondaryActionText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSecondaryActionText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->mSecondaryActionText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
