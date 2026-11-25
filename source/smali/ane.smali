.class public final Lane;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lcom/android/car/ui/baselayout/Insets;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lane;->a:Lcom/android/car/ui/baselayout/Insets;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lane;->b:Z

    return-void
.end method

.method private static final a(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    const v0, 0x7f040064

    invoke-static {p0, v0}, Laro;->m(Landroid/app/Activity;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lane;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Landroid/content/ComponentName;->createRelative(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CarUiInstaller started for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/android/car/ui/CarUiLayoutInflaterFactory;

    invoke-direct {v1}, Lcom/android/car/ui/CarUiLayoutInflaterFactory;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    instance-of v1, v1, Lcom/android/car/ui/CarUiLayoutInflaterFactory;

    if-nez v1, :cond_4

    .line 9
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    instance-of v1, v1, Ljg;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    .line 16
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " must extend CarUiLayoutInflaterFactory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-class p1, Lcom/android/car/ui/core/BaseLayoutController;

    const/4 v3, 0x0

    .line 11
    const-string v4, "build"

    invoke-static {v0, p1, v4, v3, v2}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    .line 12
    const-string p1, "CAR_UI_INSET_LEFT"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 13
    const-string v0, "CAR_UI_INSET_TOP"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 14
    const-string v2, "CAR_UI_INSET_RIGHT"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 15
    const-string v3, "CAR_UI_INSET_BOTTOM"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    new-instance v3, Lcom/android/car/ui/baselayout/Insets;

    invoke-direct {v3, p1, v0, v2, p2}, Lcom/android/car/ui/baselayout/Insets;-><init>(IIII)V

    iput-object v3, p0, Lane;->a:Lcom/android/car/ui/baselayout/Insets;

    :cond_5
    iput-boolean v1, p0, Lane;->b:Z

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lane;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-class p1, Lcom/android/car/ui/core/BaseLayoutController;

    const/4 v2, 0x0

    .line 3
    const-string v3, "destroy"

    invoke-static {v0, p1, v3, v2, v1}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPostStarted(Landroid/app/Activity;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lane;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-class v4, Lcom/android/car/ui/core/BaseLayoutController;

    const/4 v5, 0x0

    .line 3
    const-string v6, "getBaseLayoutController"

    invoke-static {v0, v4, v6, v5, v2}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lane;->a:Lcom/android/car/ui/baselayout/Insets;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lane;->b:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iget-object v4, p0, Lane;->a:Lcom/android/car/ui/baselayout/Insets;

    .line 6
    invoke-static {p1, v4}, Lcom/android/car/ui/core/CarUiInstaller;->b(Ljava/lang/ClassLoader;Lcom/android/car/ui/baselayout/Insets;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v3

    const-class p1, Lcom/android/car/ui/core/BaseLayoutController;

    .line 7
    const-string v4, "dispatchNewInsets"

    invoke-static {v2, p1, v4, v0, v1}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p0, Lane;->b:Z

    :cond_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lane;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-class v3, Lcom/android/car/ui/core/BaseLayoutController;

    const/4 v4, 0x0

    .line 3
    const-string v5, "getBaseLayoutController"

    invoke-static {v0, v3, v5, v4, v1}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v3, Lcom/android/car/ui/core/BaseLayoutController;

    new-array v4, v2, [Ljava/lang/Object;

    .line 5
    const-string v5, "getInsets"

    invoke-static {v1, v3, v5, v0, v4}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v3, Lcom/android/car/ui/baselayout/Insets;

    new-array v4, v2, [Ljava/lang/Object;

    .line 7
    const-string v5, "getLeft"

    invoke-static {v1, v3, v5, v0, v4}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9
    const-string v3, "CAR_UI_INSET_LEFT"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v3, Lcom/android/car/ui/baselayout/Insets;

    new-array v4, v2, [Ljava/lang/Object;

    .line 11
    const-string v5, "getTop"

    invoke-static {v1, v3, v5, v0, v4}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 13
    const-string v3, "CAR_UI_INSET_TOP"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v3, Lcom/android/car/ui/baselayout/Insets;

    new-array v4, v2, [Ljava/lang/Object;

    .line 15
    const-string v5, "getRight"

    invoke-static {v1, v3, v5, v0, v4}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 17
    const-string v3, "CAR_UI_INSET_RIGHT"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-class v1, Lcom/android/car/ui/baselayout/Insets;

    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    const-string v3, "getBottom"

    invoke-static {p1, v1, v3, v0, v2}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 21
    const-string v0, "CAR_UI_INSET_BOTTOM"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
