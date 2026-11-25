.class public final Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lare;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

.field private final mBackListeners:Ljava/util/Set;

.field private mBackgroundShown:Z

.field private mClientMenuItems:Ljava/util/List;

.field private final mContext:Landroid/content/Context;

.field private final mDeprecatedBackListeners:Ljava/util/Set;

.field private final mDeprecatedSearchCompletedListeners:Ljava/util/Set;

.field private final mDeprecatedSearchListeners:Ljava/util/Set;

.field private final mDeprecatedTabs:Ljava/util/List;

.field private final mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

.field private final mOnTabSelectedListeners:Ljava/util/Set;

.field private final mProgressBar:Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;

.field private final mSearchCompletedListeners:Ljava/util/Set;

.field private final mSearchConfigBuilder:Laqe;

.field private mSearchHint:Ljava/lang/String;

.field private final mSearchListeners:Ljava/util/Set;

.field private final mSearchWidescreenController:Laqs;

.field private final mSupportsImeSearch:Z


# direct methods
.method public static synthetic $r8$lambda$DgWHllL80E8N7N-3P4ipiNUjX0s(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->updateModernTabsFromDeprecatedOnes()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-direct {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOnTabSelectedListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedBackListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mBackListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedSearchListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedSearchCompletedListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchCompletedListeners:Ljava/util/Set;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mClientMenuItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedTabs:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mBackgroundShown:Z

    iput-object p2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    new-instance v1, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;

    .line 11
    invoke-interface {p2}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->getProgressBar()Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;-><init>(Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;)V

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mProgressBar:Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mContext:Landroid/content/Context;

    invoke-static {}, Laqf;->a()Laqe;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchConfigBuilder:Laqe;

    .line 12
    invoke-static {p1}, Laro;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Laqs;

    .line 13
    invoke-direct {v2, p1}, Laqs;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchWidescreenController:Laqs;

    .line 14
    invoke-interface {p2}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->getImeSearchInterface()Lcom/android/car/ui/plugin/oemapis/toolbar/ImeSearchInterfaceOEMV1;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSupportsImeSearch:Z

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {v2}, Laqs;->c()Lj$/util/function/BiConsumer;

    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/toolbar/ImeSearchInterfaceOEMV1;->setOnPrivateImeCommandListener(Lj$/util/function/BiConsumer;)V

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda3;-><init>(Laqs;)V

    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/toolbar/ImeSearchInterfaceOEMV1;->setSearchTextViewConsumer(Lj$/util/function/Consumer;)V

    :cond_1
    new-instance p1, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda2;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;Landroid/app/Activity;)V

    .line 18
    invoke-interface {p2, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setBackListener(Ljava/lang/Runnable;)V

    .line 19
    new-instance p1, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda4;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;)V

    invoke-interface {p2, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setSearchListener(Lj$/util/function/Consumer;)V

    new-instance p1, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda0;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;)V

    .line 20
    invoke-interface {p2, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setSearchCompletedListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lxr;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 2
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setTitle(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownSubtitle()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 5
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setSubtitle(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 7
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getLogoDirty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 9
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShownLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mgetSearchMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Laqg;

    move-result-object v1

    invoke-static {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mgetSearchMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Laqg;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_4

    .line 11
    sget-object v1, Laqg;->a:Laqg;

    sget-object v1, Laqy;->a:Laqy;

    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mgetSearchMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Laqg;

    move-result-object v1

    invoke-virtual {v1}, Laqg;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 14
    invoke-interface {v1, v5}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setSearchMode(I)V

    goto :goto_1

    .line 22
    :pswitch_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 12
    invoke-interface {v1, v3}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setSearchMode(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 13
    invoke-interface {v1, v4}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setSearchMode(I)V

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getNavButtonMode()Laqa;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getNavButtonMode()Laqa;

    move-result-object v2

    if-eq v1, v2, :cond_8

    .line 16
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getNavButtonMode()Laqa;

    move-result-object v1

    sget-object v2, Laqa;->d:Laqa;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 17
    invoke-interface {v1, v5}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setNavButtonMode(I)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getNavButtonMode()Laqa;

    move-result-object v1

    sget-object v2, Laqa;->b:Laqa;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 19
    invoke-interface {v1, v3}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setNavButtonMode(I)V

    goto :goto_2

    .line 20
    :cond_6
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getNavButtonMode()Laqa;

    move-result-object v1

    sget-object v2, Laqa;->c:Laqa;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    const/4 v2, 0x3

    .line 21
    invoke-interface {v1, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setNavButtonMode(I)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 22
    invoke-interface {v1, v4}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setNavButtonMode(I)V

    .line 23
    :cond_8
    :goto_2
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mhasTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mhasTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_3

    .line 34
    :cond_9
    const/4 v1, 0x0

    .line 24
    :goto_3
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mhasTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mhasTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v5, 0x1

    goto :goto_4

    .line 34
    :cond_a
    nop

    .line 24
    :goto_4
    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 25
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTabs()Ljava/util/List;

    move-result-object v2

    .line 26
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda8;

    .line 27
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    .line 28
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 29
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSelectedTab()I

    move-result v3

    .line 25
    invoke-interface {v1, v2, v3}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setTabs(Ljava/util/List;I)V

    goto :goto_5

    .line 42
    :cond_b
    if-eqz v5, :cond_c

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setTabs(Ljava/util/List;I)V

    goto :goto_5

    .line 31
    :cond_c
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mhasTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTabsDirty()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 35
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTabs()Ljava/util/List;

    move-result-object v2

    .line 36
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda8;

    .line 37
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    .line 38
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSelectedTab()I

    move-result v3

    .line 35
    invoke-interface {v1, v2, v3}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setTabs(Ljava/util/List;I)V

    goto :goto_5

    .line 32
    :cond_d
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mhasTabs(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 33
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSelectedTab()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSelectedTab()I

    move-result v2

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 34
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSelectedTab()I

    move-result v2

    invoke-interface {v1, v2, v4}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->selectTab(IZ)V

    .line 40
    :cond_e
    :goto_5
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mgetShownMenuItems(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mgetShownMenuItems(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 42
    invoke-static {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mgetShownMenuItems(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setMenuItems(Ljava/util/List;)V

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateModernTabsFromDeprecatedOnes()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedTabs:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapn;

    new-instance v3, Laqt;

    invoke-direct {v3}, Laqt;-><init>()V

    iget-object v4, v2, Lapn;->c:Ljava/lang/String;

    iput-object v4, v3, Laqt;->a:Ljava/lang/String;

    iget-object v4, v2, Lapn;->d:Landroid/graphics/drawable/Drawable;

    iput-object v4, v3, Laqt;->b:Landroid/graphics/drawable/Drawable;

    iget-object v2, v2, Lapn;->b:Lj$/util/function/Consumer;

    iput-object v2, v3, Laqt;->c:Lj$/util/function/Consumer;

    new-instance v2, Laqu;

    invoke-direct {v2, v3}, Laqu;-><init>(Laqt;)V

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    .line 4
    invoke-virtual {v1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;

    invoke-static {v0, v2}, Laro;->j(Ljava/util/List;Lj$/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setTabs(Ljava/util/List;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method


# virtual methods
.method public addTab(Laqw;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedTabs:Ljava/util/List;

    new-instance v1, Lapn;

    iget-object v2, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda1;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;)V

    new-instance v4, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda5;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;Laqw;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lapn;-><init>(Landroid/content/Context;Laqw;Ljava/lang/Runnable;Lj$/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->updateModernTabsFromDeprecatedOnes()V

    return-void
.end method

.method public canShowSearchResultItems()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->getSearchCapabilities()Laqd;

    move-result-object v0

    iget-boolean v0, v0, Laqd;->b:Z

    return v0
.end method

.method public canShowSearchResultsView()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->getSearchCapabilities()Laqd;

    move-result-object v0

    iget-boolean v0, v0, Laqd;->a:Z

    return v0
.end method

.method public clearAllTabs()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setTabs(Ljava/util/List;)V

    return-void
.end method

.method public findMenuItemById(I)Lapu;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapu;

    iget v2, v1, Lapu;->f:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBackgroundShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mBackgroundShown:Z

    return v0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mClientMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getNavButtonMode()Laqa;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getNavButtonMode()Laqa;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBar()Laqb;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mProgressBar:Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;

    return-object v0
.end method

.method public getSearchCapabilities()Laqd;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSupportsImeSearch:Z

    if-nez v0, :cond_0

    invoke-static {}, Laqd;->a()Laqc;

    move-result-object v0

    invoke-virtual {v0}, Laqc;->a()Laqd;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchWidescreenController:Laqs;

    invoke-virtual {v0}, Laqs;->b()Laqd;

    move-result-object v0

    return-object v0
.end method

.method public getSearchHint()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchHint:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchMode()Laqg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-static {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mgetSearchMode(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Laqg;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTab()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSelectedTab()I

    move-result v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    .line 2
    invoke-virtual {v1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "mSelectedTab should\'ve been -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getShowMenuItemsWhileSearching()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShowMenuItemsWhileSearching()Z

    move-result v0

    return v0
.end method

.method public getShowTabsInSubpage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getShowTabsInSubpage()Z

    move-result v0

    return v0
.end method

.method public getState()Lard;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getState()Lard;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTab(I)Laqw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapn;

    iget-object p1, p1, Lapn;->a:Laqw;

    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTabPosition(Laqw;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedTabs:Ljava/util/List;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapn;

    iget-object v1, v1, Lapn;->a:Laqw;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getTabs()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda7;

    .line 2
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 3
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStateSet()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->isStateSet()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$addTab$3$com-android-car-ui-toolbar-ToolbarControllerAdapterV1(Laqw;Laqu;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOnTabSelectedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Larc;

    .line 2
    invoke-interface {p2}, Larc;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$com-android-car-ui-toolbar-ToolbarControllerAdapterV1(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedBackListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laqz;

    .line 2
    invoke-interface {v2}, Laqz;->a()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mBackListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/function/Supplier;

    .line 4
    invoke-interface {v2}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$1$com-android-car-ui-toolbar-ToolbarControllerAdapterV1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedSearchListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Larb;

    .line 2
    invoke-interface {v1}, Larb;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/function/Consumer;

    .line 4
    invoke-interface {v1, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$2$com-android-car-ui-toolbar-ToolbarControllerAdapterV1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedSearchCompletedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lara;

    .line 2
    invoke-interface {v1}, Lara;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchCompletedListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic lambda$setMenuItems$4$com-android-car-ui-toolbar-ToolbarControllerAdapterV1(Lapu;)Lcom/android/car/ui/toolbar/MenuItemAdapterV1;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;

    invoke-direct {v0, p0, p1}, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;Lapu;)V

    return-object v0
.end method

.method public registerBackListener(Lj$/util/function/Supplier;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mBackListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerOnBackListener(Laqz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedBackListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerOnSearchCompletedListener(Lara;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedSearchCompletedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerOnSearchListener(Larb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedSearchListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerOnTabSelectedListener(Larc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOnTabSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerSearchCompletedListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchCompletedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerSearchListener(Lj$/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requireMenuItemById(I)Lapu;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->findMenuItemById(I)Lapu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "ID does not reference a MenuItem on this Toolbar"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selectTab(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    .line 3
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setSelectedTab(I)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Tab position is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundShown(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mBackgroundShown:Z

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setBackgroundShown(Z)V

    return-void
.end method

.method public setLogo(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setLogo(Landroid/graphics/drawable/Drawable;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public setMenuItems(I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lapz;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setMenuItems(Ljava/util/List;)V

    return-object p1
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 2

    .line 3
    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mClientMenuItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda6;-><init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;)V

    .line 4
    invoke-static {p1, v1}, Laro;->j(Ljava/util/List;Lj$/util/function/Function;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setMenuItems(Ljava/util/List;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public setNavButtonMode(Laqa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setNavButtonMode(Laqa;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public setNavButtonMode(Laqy;)V
    .locals 1

    .line 2
    sget-object v0, Laqg;->a:Laqg;

    sget-object v0, Laqy;->a:Laqy;

    invoke-virtual {p1}, Laqy;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 6
    sget-object p1, Laqa;->d:Laqa;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setNavButtonMode(Laqa;)V

    return-void

    .line 4
    :pswitch_0
    sget-object p1, Laqa;->c:Laqa;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setNavButtonMode(Laqa;)V

    return-void

    .line 3
    :pswitch_1
    sget-object p1, Laqa;->b:Laqa;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setNavButtonMode(Laqa;)V

    return-void

    .line 5
    :pswitch_2
    sget-object p1, Laqa;->a:Laqa;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setNavButtonMode(Laqa;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSearchConfig(Laqf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchWidescreenController:Laqs;

    invoke-virtual {v0, p1}, Laqs;->d(Laqf;)V

    return-void
.end method

.method public setSearchHint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setSearchHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSearchHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Laro;->h(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchHint:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setSearchHint(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchIcon(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setSearchIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSearchIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setSearchIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSearchMode(Laqg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setSearchMode(Laqg;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchResultItems(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchConfigBuilder:Laqe;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Laqe;->c:Ljava/util/List;

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, v0, Laqe;->c:Ljava/util/List;

    :goto_1
    iget-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchConfigBuilder:Laqe;

    .line 3
    invoke-virtual {p1}, Laqe;->a()Laqf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setSearchConfig(Laqf;)V

    return-void
.end method

.method public setSearchResultsInputViewIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchConfigBuilder:Laqe;

    iput-object p1, v0, Laqe;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Laqe;->a()Laqf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setSearchConfig(Laqf;)V

    return-void
.end method

.method public setSearchResultsView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchConfigBuilder:Laqe;

    iput-object p1, v0, Laqe;->a:Landroid/view/View;

    invoke-virtual {v0}, Laqe;->a()Laqf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setSearchConfig(Laqf;)V

    return-void
.end method

.method public setShowMenuItemsWhileSearching(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setShowMenuItemsWhileSearching(Z)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public setShowTabsInSubpage(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setShowTabsInSubpage(Z)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public setState(Lard;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setState(Lard;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    invoke-static {p1}, Laro;->h(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setSubtitle(Ljava/lang/String;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setTabs(Ljava/util/List;I)V

    return-void
.end method

.method public setTabs(Ljava/util/List;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    if-ltz p2, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Tab position is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    .line 5
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$$ExternalSyntheticLambda9;

    .line 6
    invoke-static {p1, v1}, Laro;->j(Ljava/util/List;Lj$/util/function/Function;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setTabs(Ljava/util/List;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setSelectedTab(I)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->copy()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object v0

    invoke-static {p1}, Laro;->h(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->setTitle(Ljava/lang/String;)Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState$Builder;->build()Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->update(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)V

    return-void
.end method

.method public unregisterBackListener(Lj$/util/function/Supplier;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mBackListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregisterOnBackListener(Laqz;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedBackListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregisterOnSearchCompletedListener(Lara;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedSearchCompletedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregisterOnSearchListener(Larb;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mDeprecatedSearchListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregisterOnTabSelectedListener(Larc;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOnTabSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregisterSearchCompletedListener(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchCompletedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregisterSearchListener(Lj$/util/function/Consumer;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mSearchListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public updateMenuItems()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mOemToolbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->mAdapterState:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;

    invoke-static {v1}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;->-$$Nest$mgetShownMenuItems(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$ToolbarAdapterState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ToolbarControllerOEMV1;->setMenuItems(Ljava/util/List;)V

    return-void
.end method
