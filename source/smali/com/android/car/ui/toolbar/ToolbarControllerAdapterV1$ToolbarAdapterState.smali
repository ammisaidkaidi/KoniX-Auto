.class Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final mLogo:Landroid/graphics/drawable/Drawable;

.field private final mLogoDirty:Z

.field private final mMenuItems:Ljava/util/List;

.field private final mNavButtonMode:Laqa;

.field private final mSearchMode:Laqg;

.field private final mSelectedTab:I

.field private final mShowMenuItemsWhileSearching:Z

.field private final mShowTabsInSubpage:Z

.field private final mState:Lard;

.field private final mStateSet:Z

.field private final mSubtitle:Ljava/lang/String;

.field private final mTabs:Ljava/util/List;

.field private final mTabsDirty:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLogo(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMenuItems(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mMenuItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNavButtonMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Laqa;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mNavButtonMode:Laqa;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Laqg;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSearchMode:Laqg;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedTab(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)I
    .locals 0

    iget p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSelectedTab:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowMenuItemsWhileSearching(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowMenuItemsWhileSearching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowTabsInSubpage(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowTabsInSubpage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Lard;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateSet(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubtitle(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSubtitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTabs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSearchMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Laqg;
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSearchMode()Laqg;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetShownMenuItems(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownMenuItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->hasTabs()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lard;->a:Lard;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowTabsInSubpage:Z

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTabs:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mMenuItems:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSelectedTab:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSubtitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mLogo:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowMenuItemsWhileSearching:Z

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTabsDirty:Z

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mLogoDirty:Z

    .line 4
    sget-object v0, Laqa;->d:Laqa;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mNavButtonMode:Laqa;

    .line 5
    sget-object v0, Laqg;->a:Laqg;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSearchMode:Laqg;

    return-void
.end method

.method private constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmState(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Lard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    .line 7
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmStateSet(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    .line 8
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmShowTabsInSubpage(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowTabsInSubpage:Z

    .line 9
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTabs:Ljava/util/List;

    .line 10
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmMenuItems(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mMenuItems:Ljava/util/List;

    .line 11
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmSelectedTab(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSelectedTab:I

    .line 12
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmTitle(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTitle:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmSubtitle(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSubtitle:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmLogo(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmShowMenuItemsWhileSearching(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowMenuItemsWhileSearching:Z

    .line 16
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmTabsDirty(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTabsDirty:Z

    .line 17
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmLogoDirty(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mLogoDirty:Z

    .line 18
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmNavButtonMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Laqa;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mNavButtonMode:Laqa;

    .line 19
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->-$$Nest$fgetmSearchMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)Laqg;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSearchMode:Laqg;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;)V

    return-void
.end method

.method private getSearchMode()Laqg;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v1, Lard;->c:Lard;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Laqg;->b:Laqg;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v1, Lard;->d:Lard;

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Laqg;->c:Laqg;

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Laqg;->a:Laqg;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSearchMode:Laqg;

    return-object v0
.end method

.method private getShownMenuItems()Ljava/util/List;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSearchMode()Laqg;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mMenuItems:Ljava/util/List;

    .line 2
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 3
    sget-object v2, Laqg;->c:Laqg;

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowMenuItemsWhileSearching:Z

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Laqg;->b:Laqg;

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowMenuItemsWhileSearching:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mMenuItems:Ljava/util/List;

    .line 4
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda2;

    .line 5
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    :cond_2
    nop

    .line 8
    :goto_0
    sget-object v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda1;

    .line 9
    invoke-interface {v1, v0}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda0;

    .line 10
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 11
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private hasTabs()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    .line 2
    sget-object v3, Lard;->a:Lard;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v3, Lard;->b:Lard;

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShowTabsInSubpage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method static synthetic lambda$getShownMenuItems$0(Lcom/android/car/ui/toolbar/MenuItemAdapterV1;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->getClientMenuItem()Lapu;

    move-result-object p0

    iget-boolean p0, p0, Lapu;->c:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-object v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLogoDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mLogoDirty:Z

    return v0
.end method

.method public getNavButtonMode()Laqa;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mNavButtonMode:Laqa;

    sget-object v1, Laqa;->d:Laqa;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v1, Lard;->a:Lard;

    if-eq v0, v1, :cond_0

    sget-object v0, Laqa;->a:Laqa;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mNavButtonMode:Laqa;

    return-object v0
.end method

.method public getSelectedTab()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSelectedTab:I

    return v0
.end method

.method public getShowMenuItemsWhileSearching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowMenuItemsWhileSearching:Z

    return v0
.end method

.method public getShowTabsInSubpage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mShowTabsInSubpage:Z

    return v0
.end method

.method public getShownLogo()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v1, Lard;->a:Lard;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v1, Lard;->b:Lard;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getShownSubtitle()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v2, Lard;->a:Lard;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v2, Lard;->b:Lard;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSubtitle:Ljava/lang/String;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getShownTitle()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v2, Lard;->a:Lard;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    sget-object v2, Lard;->b:Lard;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getState()Lard;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mState:Lard;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mSubtitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method public getTabsDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTabsDirty:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isStateSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->mStateSet:Z

    return v0
.end method
