.class public Lcom/android/car/ui/preference/CarUiTwoActionPreference;
.super Lcom/android/car/ui/preference/CarUiPreference;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mIsActionShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lamu;->f:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiPreference;->setShowChevron(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public isActionShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    return v0
.end method

.method public onBindViewHolder(Lado;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiPreference;->onBindViewHolder(Lado;)V

    .line 2
    iget-object v0, p1, Lado;->itemView:Landroid/view/View;

    const v1, 0x7f0900a0

    invoke-static {v0, v1}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lado;->itemView:Landroid/view/View;

    const v2, 0x7f09004f

    invoke-static {v1, v2}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4
    iget-object v2, p1, Lado;->itemView:Landroid/view/View;

    const v3, 0x1020018

    invoke-static {v2, v3}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 5
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    if-eqz p1, :cond_0

    new-instance p1, Lanp;

    .line 6
    invoke-direct {p1, p0}, Lanp;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionPreference;)V

    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    if-eq v4, p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 10
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    .line 11
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0, v2}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->onBindWidgetFrame(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onBindWidgetFrame(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public showAction(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->mIsActionShown:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
