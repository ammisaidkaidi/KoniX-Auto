.class public Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;
.super Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.source "PG"


# instance fields
.field private mSecondaryActionChecked:Z

.field protected mSecondaryActionOnClickListener:Lj$/util/function/Consumer;


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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    .line 2
    const p1, 0x7f0c0033

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->setLayoutResourceInternal(I)V

    return-void
.end method

.method public isSecondaryActionChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->mSecondaryActionChecked:Z

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$com-android-car-ui-preference-CarUiTwoActionSwitchPreference(Landroid/view/View;)V
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

    .line 5
    iget-object v3, p1, Lado;->itemView:Landroid/view/View;

    const v4, 0x7f0900a9

    invoke-static {v3, v4}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 6
    iget-object v4, p1, Lado;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    new-instance p1, Lanq;

    const/4 v4, 0x1

    invoke-direct {p1, p0, v4}, Lanq;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;I)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 21
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 12
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->mSecondaryActionVisible:Z

    if-eq v4, p1, :cond_4

    const/16 p1, 0x8

    goto :goto_2

    .line 21
    :cond_4
    const/4 p1, 0x0

    .line 13
    :goto_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->mSecondaryActionChecked:Z

    .line 14
    invoke-virtual {v3, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    new-instance p1, Lanq;

    invoke-direct {p1, p0, v5}, Lanq;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;I)V

    .line 16
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    .line 21
    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    const/4 p1, 0x1

    .line 18
    :goto_3
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    .line 21
    :cond_7
    goto :goto_4

    :cond_8
    const/4 v5, 0x1

    .line 20
    :goto_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result p1

    .line 22
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result v0

    .line 21
    invoke-static {v2, p1, v0}, Laro;->k(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected performSecondaryActionClickInternal()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->mSecondaryActionChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->mSecondaryActionChecked:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->mSecondaryActionOnClickListener:Lj$/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->mSecondaryActionChecked:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setOnSecondaryActionClickListener(Lj$/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->mSecondaryActionOnClickListener:Lj$/util/function/Consumer;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSecondaryActionChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->mSecondaryActionChecked:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
