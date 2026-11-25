.class public Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoDirty:Z

.field private mMenuItems:Ljava/util/List;

.field private mNavButtonMode:Laqa;

.field private mSearchMode:Laqg;

.field private mSelectedTab:I

.field private mShowMenuItemsWhileSearching:Z

.field private mShowTabsInSubpage:Z

.field private mState:Lard;

.field private final mStateClonedFrom:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

.field private mStateSet:Z

.field private mSubtitle:Ljava/lang/String;

.field private mTabs:Ljava/util/List;

.field private mTabsDirty:Z

.field private mTitle:Ljava/lang/String;

.field private mWasChanged:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLogo(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogoDirty(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mLogoDirty:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMenuItems(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mMenuItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNavButtonMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Laqa;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mNavButtonMode:Laqa;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Laqg;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSearchMode:Laqg;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedTab(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSelectedTab:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowMenuItemsWhileSearching(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mShowMenuItemsWhileSearching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowTabsInSubpage(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mShowTabsInSubpage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Lard;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mState:Lard;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateSet(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mStateSet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubtitle(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSubtitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabsDirty(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabsDirty:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabsDirty:Z

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mLogoDirty:Z

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mStateClonedFrom:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmState(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Lard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mState:Lard;

    .line 2
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmStateSet(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mStateSet:Z

    .line 3
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmShowTabsInSubpage(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mShowTabsInSubpage:Z

    .line 4
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabs:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmMenuItems(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mMenuItems:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmShowMenuItemsWhileSearching(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mShowMenuItemsWhileSearching:Z

    .line 7
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmSelectedTab(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSelectedTab:I

    .line 8
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmTitle(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTitle:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmSubtitle(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSubtitle:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmLogo(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmNavButtonMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Laqa;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mNavButtonMode:Laqa;

    .line 12
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$fgetmSearchMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Laqg;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSearchMode:Laqg;

    return-void
.end method


# virtual methods
.method public addTab(Lcom/android/car/ui/toolbar/TabAdapterV1;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabs:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabsDirty:Z

    return-object p0
.end method

.method public build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mStateClonedFrom:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState-IA;)V

    return-object v0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mLogo:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mLogoDirty:Z

    :cond_0
    return-object p0
.end method

.method public setMenuItems(Ljava/util/List;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mMenuItems:Ljava/util/List;

    .line 2
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mMenuItems:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    :cond_1
    return-object p0
.end method

.method public setNavButtonMode(Laqa;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mNavButtonMode:Laqa;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mNavButtonMode:Laqa;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    :cond_0
    return-object p0
.end method

.method public setSearchMode(Laqg;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mStateSet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSearchMode:Laqg;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSearchMode:Laqg;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use setSearchMode() with setState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectedTab(I)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    iget v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSelectedTab:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSelectedTab:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    :cond_0
    return-object p0
.end method

.method public setShowMenuItemsWhileSearching(Z)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mShowMenuItemsWhileSearching:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mShowMenuItemsWhileSearching:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    :cond_0
    return-object p0
.end method

.method public setShowTabsInSubpage(Z)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mShowTabsInSubpage:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mShowTabsInSubpage:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    :cond_0
    return-object p0
.end method

.method public setState(Lard;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSearchMode:Laqg;

    sget-object v1, Laqg;->a:Laqg;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mState:Lard;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mState:Lard;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mStateSet:Z

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    :cond_0
    return-object p0

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string v0, "Cannot use setSearchMode() with setState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSubtitle:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSubtitle:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    :cond_0
    return-object p0
.end method

.method public setTabs(Ljava/util/List;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabs:Ljava/util/List;

    .line 2
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabs:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mSelectedTab:I

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTabsDirty:Z

    :cond_2
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mTitle:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->mWasChanged:Z

    :cond_0
    return-object p0
.end method
