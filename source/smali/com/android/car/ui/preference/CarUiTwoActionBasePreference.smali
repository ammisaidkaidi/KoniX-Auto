.class public abstract Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.super Lcom/android/car/ui/preference/CarUiPreference;
.source "PG"


# instance fields
.field protected mSecondaryActionEnabled:Z

.field protected mSecondaryActionVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionEnabled:Z

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionVisible:Z

    .line 2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionEnabled:Z

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionVisible:Z

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionEnabled:Z

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionVisible:Z

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionEnabled:Z

    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionVisible:Z

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static varargs disallowResourceIds(Landroid/content/res/TypedArray;[I)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Setting this attribute is not allowed: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiPreference;->setShowChevron(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lamu;->d:[I

    .line 3
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [I

    const/4 v3, 0x2

    aput v3, v2, v0

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v5, 0x3

    aput v5, v2, v3

    aput v4, v2, v5

    .line 4
    invoke-static {v1, v2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->disallowResourceIds(Landroid/content/res/TypedArray;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lamu;->f:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    :try_start_1
    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionVisible:Z

    .line 9
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    throw v0

    :catchall_1
    move-exception p1

    .line 5
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    throw p1
.end method

.method public isSecondaryActionEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSecondaryActionVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionVisible:Z

    return v0
.end method

.method public performSecondaryActionClick()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->isSecondaryActionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isUxRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->getOnClickWhileRestrictedListener()Lj$/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->performSecondaryActionClickInternal()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->isClickableWhileDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->getDisabledClickListener()Lj$/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->getDisabledClickListener()Lj$/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, p0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_2
    return-void
.end method

.method protected abstract performSecondaryActionClickInternal()V
.end method

.method public setLayoutResource(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected setLayoutResourceInternal(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiPreference;->setLayoutResource(I)V

    return-void
.end method

.method public setSecondaryActionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSecondaryActionVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->mSecondaryActionVisible:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
