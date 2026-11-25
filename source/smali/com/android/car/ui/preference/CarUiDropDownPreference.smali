.class public Lcom/android/car/ui/preference/CarUiDropDownPreference;
.super Landroidx/preference/DropDownPreference;
.source "PG"

# interfaces
.implements Laoa;


# instance fields
.field private mRestrictedClickListener:Lj$/util/function/Consumer;

.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mUxRestricted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mUxRestricted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mUxRestricted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mUxRestricted:Z

    return-void
.end method


# virtual methods
.method public getOnClickWhileRestrictedListener()Lj$/util/function/Consumer;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    return-object v0
.end method

.method public isUxRestricted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mUxRestricted:Z

    return v0
.end method

.method public onAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/DropDownPreference;->onAttached()V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0c002e

    .line 3
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public onBindViewHolder(Lado;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/DropDownPreference;->onBindViewHolder(Lado;)V

    .line 2
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDropDownPreference;->isUxRestricted()Z

    move-result v0

    invoke-static {p1, v0}, Laro;->l(Landroid/view/View;Z)V

    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Ladl;

    move-result-object v0

    invoke-virtual {v0, p0}, Ladl;->g(Landroidx/preference/Preference;)V

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDropDownPreference;->isUxRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2
    :cond_2
    invoke-super {p0}, Landroidx/preference/DropDownPreference;->performClick()V

    return-void
.end method

.method public setOnClickWhileRestrictedListener(Lj$/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    return-void
.end method

.method public setUxRestricted(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mUxRestricted:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->mUxRestricted:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
