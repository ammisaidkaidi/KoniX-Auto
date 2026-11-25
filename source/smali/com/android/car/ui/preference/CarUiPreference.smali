.class public Lcom/android/car/ui/preference/CarUiPreference;
.super Landroidx/preference/Preference;
.source "PG"

# interfaces
.implements Laoa;


# instance fields
.field private mDisabledClickListener:Lj$/util/function/Consumer;

.field private mIsClickableWhileDisabled:Z

.field private mRestrictedClickListener:Lj$/util/function/Consumer;

.field private mShowChevron:Z

.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const v0, 0x7f040066

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    const v0, 0x7f1100be

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->mUxRestricted:Z

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->mIsClickableWhileDisabled:Z

    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiPreference;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lamu;->a:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    const/4 p2, 0x2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiPreference;->mShowChevron:Z

    .line 3
    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/car/ui/preference/CarUiPreference;->mUxRestricted:Z

    .line 4
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/car/ui/preference/CarUiPreference;->mIsClickableWhileDisabled:Z

    if-eqz p3, :cond_0

    .line 5
    invoke-super {p0, p2}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDisabledClickListener()Lj$/util/function/Consumer;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->mDisabledClickListener:Lj$/util/function/Consumer;

    return-object v0
.end method

.method public getOnClickWhileRestrictedListener()Lj$/util/function/Consumer;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    return-object v0
.end method

.method public isClickableWhileDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->mIsClickableWhileDisabled:Z

    return v0
.end method

.method public isUxRestricted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->mUxRestricted:Z

    return v0
.end method

.method public onAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->mShowChevron:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Lacq;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_0
    const v0, 0x7f0c002e

    .line 5
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void

    .line 2
    :cond_3
    :goto_1
    return-void
.end method

.method public onBindViewHolder(Lado;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lado;)V

    .line 2
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result v1

    .line 2
    invoke-static {p1, v0, v1}, Laro;->k(Landroid/view/View;ZZ)V

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->mIsClickableWhileDisabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->mDisabledClickListener:Lj$/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0, p0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_2
    return-void

    .line 3
    :cond_3
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method public performClickUnrestricted(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method public setClickableWhileDisabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->mIsClickableWhileDisabled:Z

    if-eq v0, p1, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->mIsClickableWhileDisabled:Z

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDisabledClickListener(Lj$/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->mDisabledClickListener:Lj$/util/function/Consumer;

    return-void
.end method

.method public synthetic setMessageToShowWhenDisabledPreferenceClicked(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Laoj;->d()V

    return-void
.end method

.method public setOnClickWhileRestrictedListener(Lj$/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "android:shouldDisableView isunsupported on CarUiPreferences"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowChevron(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->mShowChevron:Z

    return-void
.end method

.method public setUxRestricted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->mUxRestricted:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
