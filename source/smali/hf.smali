.class public Lhf;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 1

    .line 1
    instance-of v0, p0, Lgv;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lgv;

    invoke-interface {p0, p2, p3, p4, p5}, Lgv;->e(II[II)V

    return-void

    :cond_0
    if-nez p5, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedPreScroll"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3
    :cond_1
    return-void
.end method

.method public static c(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    .locals 10

    .line 1
    move-object v1, p0

    instance-of v0, v1, Lgw;

    if-eqz v0, :cond_0

    .line 2
    check-cast v1, Lgw;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lgw;->f(Landroid/view/View;IIIII[I)V

    return-void

    :cond_0
    nop

    .line 3
    const/4 v0, 0x0

    aget v2, p7, v0

    add-int/2addr v2, p4

    aput v2, p7, v0

    .line 4
    const/4 v0, 0x1

    aget v2, p7, v0

    add-int/2addr v2, p5

    aput v2, p7, v0

    .line 5
    instance-of v0, v1, Lgv;

    if-eqz v0, :cond_1

    .line 6
    move-object v3, v1

    check-cast v3, Lgv;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lgv;->a(Landroid/view/View;IIIII)V

    return-void

    :cond_1
    if-nez p6, :cond_2

    .line 7
    :try_start_0
    invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not implement interface method onNestedScroll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewParentCompat"

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 7
    :cond_2
    return-void
.end method

.method public static d(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 1
    instance-of v0, p0, Lgv;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lgv;

    invoke-interface {p0, p1, p2, p3, p4}, Lgv;->b(Landroid/view/View;Landroid/view/View;II)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3
    :cond_1
    return-void
.end method

.method public static e(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 1

    .line 1
    instance-of v0, p0, Lgv;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lgv;

    invoke-interface {p0, p1, p2}, Lgv;->c(Landroid/view/View;I)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ViewParent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onStopNestedScroll"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3
    :cond_1
    return-void
.end method

.method public static f(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedFling"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedPreFling"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static h(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lgv;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lgv;

    invoke-interface {p0, p1, p2, p3, p4}, Lgv;->d(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0

    :cond_0
    if-nez p4, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onStartNestedScroll"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-static {v0, p0, p2}, Lz;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 4
    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    throw p0
.end method

.method public static j(Landroid/view/View;)I
    .locals 3

    .line 1
    if-eqz p0, :cond_b

    instance-of v0, p0, Lcom/android/car/ui/FocusParkingView;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3
    invoke-static {p0}, Lhf;->m(Landroid/view/View;)Lamt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lamt;->a()Landroid/view/View;

    move-result-object v0

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    const/4 p0, 0x6

    return p0

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 6
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 7
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 8
    invoke-static {v1}, Lhf;->r(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_4
    nop

    .line 8
    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-static {v1}, Lhf;->l(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eq v0, p0, :cond_9

    .line 11
    invoke-static {v1}, Lhf;->k(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_6

    goto :goto_4

    .line 12
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x4

    return p0

    .line 13
    :cond_7
    invoke-static {p0}, Lhf;->s(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x3

    return p0

    .line 11
    :cond_9
    :goto_4
    const/4 p0, 0x5

    return p0

    .line 9
    :cond_a
    const/4 p0, 0x7

    return p0

    .line 1
    :cond_b
    :goto_5
    const/4 p0, 0x1

    return p0
.end method

.method static k(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Larw;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Larw;-><init>(Landroid/view/View;I)V

    sget-object v1, Lart;->e:Lart;

    invoke-static {p0, v0, v1}, Lhf;->x(Landroid/view/View;Lary;Lary;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static l(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Larw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Larw;-><init>(Landroid/view/View;I)V

    sget-object v1, Lart;->f:Lart;

    invoke-static {p0, v0, v1}, Lhf;->x(Landroid/view/View;Lary;Lary;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/view/View;)Lamt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    instance-of v0, p0, Lamt;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lamt;

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Landroid/view/View;Landroid/view/View;Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lhf;->o(Landroid/view/View;ILandroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/view/View;ILandroid/view/View;Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lhf;->z(Landroid/view/View;ILandroid/view/View;ZZ)Z

    move-result p0

    return p0
.end method

.method public static p(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3
    const-string v3, "com.android.car.ui.utils.FOCUS_DELEGATING_CONTAINER"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/android/car/ui/FocusParkingView;

    if-nez v0, :cond_2

    .line 6
    invoke-static {p0}, Lhf;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lhf;->k(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :cond_3
    return v1
.end method

.method public static q(Larx;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p0, Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->willNotDraw()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 7
    :cond_1
    move-object v0, v2

    .line 4
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 5
    instance-of v3, v0, Lcom/android/car/ui/FocusParkingView;

    if-nez v3, :cond_3

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_3
    invoke-static {v0}, Lhf;->j(Landroid/view/View;)I

    move-result v0

    .line 7
    invoke-static {p0, v0, v2, v1, v1}, Lhf;->z(Landroid/view/View;ILandroid/view/View;ZZ)Z

    move-result p0

    return p0
.end method

.method public static r(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    .line 2
    const-string v0, "com.android.car.ui.utils.ROTARY_CONTAINER"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    const-string v0, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const-string v0, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static s(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    .line 2
    const-string v0, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    const-string v0, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static t(Landroid/view/View;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    invoke-static {p0}, Lhf;->p(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 1
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, " must not be null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x61

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7a

    if-le p0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt p0, v2, :cond_2

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private static x(Landroid/view/View;Lary;Lary;)Landroid/view/View;
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lary;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    return-object v0

    .line 2
    :cond_1
    :goto_0
    invoke-interface {p1, p0}, Lary;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 3
    :cond_2
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 4
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    invoke-static {v2, p1, p2}, Lhf;->x(Landroid/view/View;Lary;Lary;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static y(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v0, p0, Lamt;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lamt;

    .line 4
    invoke-interface {p0}, Lamt;->a()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5
    invoke-static {p0}, Lhf;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 6
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 7
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lhf;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_3
    return-object v1
.end method

.method private static z(Landroid/view/View;ILandroid/view/View;ZZ)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    if-nez p3, :cond_1

    invoke-static {p2}, Lhf;->t(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    return v0

    .line 1
    :cond_1
    :goto_0
    const/4 v1, 0x7

    const/4 v2, 0x2

    if-ge p1, v1, :cond_3

    new-instance v1, Larw;

    invoke-direct {v1, p0, v2}, Larw;-><init>(Landroid/view/View;I)V

    sget-object v3, Lart;->g:Lart;

    .line 2
    invoke-static {p0, v1, v3}, Lhf;->x(Landroid/view/View;Lary;Lary;)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lhf;->t(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    return v0

    .line 3
    :cond_3
    :goto_1
    const/4 v1, 0x6

    if-ge p1, v1, :cond_5

    .line 4
    invoke-static {p0}, Lhf;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lhf;->t(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    return v0

    .line 5
    :cond_5
    :goto_2
    const/4 v1, 0x5

    if-ge p1, v1, :cond_9

    sget-object v3, Lart;->j:Lart;

    sget-object v4, Lart;->b:Lart;

    .line 6
    invoke-static {p0, v3, v4}, Lhf;->x(Landroid/view/View;Lary;Lary;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    .line 7
    :cond_6
    invoke-static {v3}, Lhf;->l(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object v3, v4

    goto :goto_3

    .line 8
    :cond_7
    invoke-static {v3}, Lhf;->k(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 9
    :goto_3
    invoke-static {v3}, Lhf;->t(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    .line 17
    :cond_8
    return v0

    .line 9
    :cond_9
    :goto_4
    const/4 v3, 0x4

    if-ge p1, v3, :cond_b

    .line 10
    invoke-static {p0}, Lhf;->l(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 11
    invoke-static {v3}, Lhf;->t(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_5

    .line 17
    :cond_a
    return v0

    .line 11
    :cond_b
    :goto_5
    const/4 v3, 0x0

    if-eqz p4, :cond_d

    if-ge p1, v1, :cond_d

    sget-object p4, Lart;->h:Lart;

    sget-object v1, Lart;->i:Lart;

    .line 12
    invoke-static {p0, p4, v1}, Lhf;->x(Landroid/view/View;Lary;Lary;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Larx;

    if-eqz p4, :cond_d

    .line 13
    invoke-interface {p4}, Larx;->f()Z

    move-result v1

    if-nez v1, :cond_d

    .line 18
    instance-of p0, p4, Landroid/view/View;

    if-eqz p0, :cond_c

    .line 19
    move-object p0, p4

    check-cast p0, Landroid/view/View;

    new-array p1, v0, [Ljava/lang/Runnable;

    new-instance p2, Larv;

    .line 20
    invoke-direct {p2, p4, p1}, Larv;-><init>(Larx;[Ljava/lang/Runnable;)V

    new-instance p3, Laru;

    invoke-direct {p3, p4, p0, p2, p1}, Laru;-><init>(Larx;Landroid/view/View;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    aput-object p3, p1, v3

    .line 21
    invoke-interface {p4, p3}, Larx;->b(Ljava/lang/Runnable;)V

    const-wide/16 p3, 0xbb8

    .line 22
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    return v3

    :cond_d
    if-eqz p3, :cond_f

    .line 14
    invoke-static {p2}, Lhf;->t(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_6

    .line 17
    :cond_e
    return v0

    .line 14
    :cond_f
    :goto_6
    const/4 p2, 0x3

    if-ge p1, p2, :cond_11

    new-instance p3, Larw;

    invoke-direct {p3, p0, p2}, Larw;-><init>(Landroid/view/View;I)V

    sget-object p2, Lart;->a:Lart;

    .line 15
    invoke-static {p0, p3, p2}, Lhf;->x(Landroid/view/View;Lary;Lary;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_10

    goto :goto_7

    .line 17
    :cond_10
    return v0

    .line 15
    :cond_11
    :goto_7
    if-ge p1, v2, :cond_12

    sget-object p1, Lart;->c:Lart;

    sget-object p2, Lart;->d:Lart;

    .line 16
    invoke-static {p0, p1, p2}, Lhf;->x(Landroid/view/View;Lary;Lary;)Landroid/view/View;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lhf;->t(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_12
    return v3
.end method
