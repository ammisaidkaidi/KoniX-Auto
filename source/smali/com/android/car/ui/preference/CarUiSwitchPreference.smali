.class public Lcom/android/car/ui/preference/CarUiSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "PG"

# interfaces
.implements Laoa;


# instance fields
.field private mDisabledClickListener:Lj$/util/function/Consumer;

.field private mIsClickableWhileDisabled:Z

.field private mRestrictedClickListener:Lj$/util/function/Consumer;

.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mIsClickableWhileDisabled:Z

    .line 2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mIsClickableWhileDisabled:Z

    .line 4
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mIsClickableWhileDisabled:Z

    .line 6
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mIsClickableWhileDisabled:Z

    .line 8
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lamu;->a:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    .line 3
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mIsClickableWhileDisabled:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, v1}, Landroidx/preference/SwitchPreference;->setShouldDisableView(Z)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDisabledClickListener()Lj$/util/function/Consumer;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mDisabledClickListener:Lj$/util/function/Consumer;

    return-object v0
.end method

.method public getOnClickWhileRestrictedListener()Lj$/util/function/Consumer;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    return-object v0
.end method

.method public isClickableWhileDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mIsClickableWhileDisabled:Z

    return v0
.end method

.method public isUxRestricted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    return v0
.end method

.method public onBindViewHolder(Lado;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Lado;)V

    .line 2
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->isUxRestricted()Z

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

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mIsClickableWhileDisabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mDisabledClickListener:Lj$/util/function/Consumer;

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
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->isUxRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_2
    return-void

    .line 3
    :cond_3
    invoke-super {p0}, Landroidx/preference/SwitchPreference;->performClick()V

    return-void
.end method

.method public setClickableWhileDisabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mIsClickableWhileDisabled:Z

    if-eq v0, p1, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroidx/preference/SwitchPreference;->setShouldDisableView(Z)V

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mIsClickableWhileDisabled:Z

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDisabledClickListener(Lj$/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mDisabledClickListener:Lj$/util/function/Consumer;

    return-void
.end method

.method public synthetic setMessageToShowWhenDisabledPreferenceClicked(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Laoj;->d()V

    return-void
.end method

.method public setOnClickWhileRestrictedListener(Lj$/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dynamically setting shouldDisableView isunsupported in CarUiPreferences"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUxRestricted(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
