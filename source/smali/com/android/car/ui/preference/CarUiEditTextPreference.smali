.class public Lcom/android/car/ui/preference/CarUiEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "PG"

# interfaces
.implements Laoa;


# instance fields
.field private mRestrictedClickListener:Lj$/util/function/Consumer;

.field private mShowChevron:Z

.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    const v0, 0x7f0400e4

    const v1, 0x1010092

    invoke-static {p1, v0, v1}, Laro;->b(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->init(Landroid/util/AttributeSet;II)V

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

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mShowChevron:Z

    .line 3
    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mUxRestricted:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getOnClickWhileRestrictedListener()Lj$/util/function/Consumer;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    return-object v0
.end method

.method public getWidgetActionContainer(Lado;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    const v0, 0x7f09004f

    invoke-static {p1, v0}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isUxRestricted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mUxRestricted:Z

    return v0
.end method

.method public onAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/EditTextPreference;->onAttached()V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mShowChevron:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0c002e

    .line 3
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void

    .line 2
    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Lado;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->onBindViewHolder(Lado;)V

    .line 2
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->isUxRestricted()Z

    move-result v0

    invoke-static {p1, v0}, Laro;->l(Landroid/view/View;Z)V

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
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->isUxRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2
    :cond_2
    invoke-super {p0}, Landroidx/preference/EditTextPreference;->performClick()V

    return-void
.end method

.method public setOnClickWhileRestrictedListener(Lj$/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mRestrictedClickListener:Lj$/util/function/Consumer;

    return-void
.end method

.method public setShowChevron(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mShowChevron:Z

    return-void
.end method

.method protected setTwoActionLayout()V
    .locals 1

    .line 1
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public setUxRestricted(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mUxRestricted:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mUxRestricted:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
