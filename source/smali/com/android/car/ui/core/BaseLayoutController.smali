.class public final Lcom/android/car/ui/core/BaseLayoutController;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final sBaseLayoutMap:Ljava/util/Map;


# instance fields
.field private mInsetsUpdater:Land;

.field private mToolbarController:Lare;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/car/ui/core/BaseLayoutController;->installBaseLayout(Landroid/app/Activity;)V

    return-void
.end method

.method static build(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const v0, 0x7f040065

    invoke-static {p0, v0}, Laro;->m(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    new-instance v1, Lcom/android/car/ui/core/BaseLayoutController;

    .line 2
    invoke-direct {v1, p0}, Lcom/android/car/ui/core/BaseLayoutController;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static destroy(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getBaseLayoutController(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/core/BaseLayoutController;

    return-object p0
.end method

.method private installBaseLayout(Landroid/app/Activity;)V
    .locals 4

    .line 1
    const v0, 0x7f040069

    invoke-static {p1, v0}, Laro;->m(Landroid/app/Activity;I)Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Land;

    invoke-direct {v2, p1, v1}, Land;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Land;

    .line 3
    invoke-static {p1}, Lani;->a(Landroid/content/Context;)Lanh;

    move-result-object p1

    iget-object v2, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Land;

    .line 4
    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v0, v3}, Lanh;->installBaseLayoutAround(Landroid/view/View;Lanc;ZZ)Lare;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController;->mToolbarController:Lare;

    return-void
.end method


# virtual methods
.method dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Land;

    invoke-virtual {v0, p1}, Land;->a(Lcom/android/car/ui/baselayout/Insets;)V

    return-void
.end method

.method public getInsets()Lcom/android/car/ui/baselayout/Insets;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Land;

    iget-object v0, v0, Land;->b:Lcom/android/car/ui/baselayout/Insets;

    return-object v0
.end method

.method public getToolbarController()Lare;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mToolbarController:Lare;

    return-object v0
.end method

.method replaceInsetsChangedListenerWith(Lanc;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Land;

    iput-object p1, v0, Land;->a:Lanc;

    return-void
.end method
