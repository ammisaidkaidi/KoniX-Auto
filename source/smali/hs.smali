.class public final Lhs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static b:Ljava/util/WeakHashMap;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v0, 0x0

    sput-object v0, Lhs;->b:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lhs;->d:Z

    .line 2
    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    return-void
.end method

.method public static A(Landroid/view/View;Lgx;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhl;->h(Landroid/view/View;Lgx;)V

    return-void
.end method

.method public static B(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {}, Lhs;->k()Lhe;

    move-result-object v0

    invoke-virtual {v0}, Lhe;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lhq;->b(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Lhe;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/CharSequence;

    .line 4
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lhs;->i(Landroid/view/View;)Lgh;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lgh;

    invoke-direct {v1}, Lgh;-><init>()V

    .line 7
    :cond_1
    invoke-static {p0, v1}, Lhs;->u(Landroid/view/View;Lgh;)V

    iget v1, v0, Lhe;->a:I

    .line 8
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget p1, v0, Lhe;->b:I

    .line 9
    invoke-static {p0, p1}, Lhs;->p(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public static C(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lhl;->i(Landroid/view/View;)V

    return-void
.end method

.method public static D(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lhf;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static E(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lhg;->j(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static F(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lhi;->d(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static G(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lhi;->e(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static H(Landroid/view/View;)Z
    .locals 2

    .line 1
    new-instance v0, Lgz;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lgz;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0}, Lhe;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static I(Landroid/view/View;)[Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lhr;->b(Landroid/view/View;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f0901ba

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static J(Landroid/view/View;Lih;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhl;->c(Landroid/view/View;Lih;Landroid/graphics/Rect;)Lih;

    return-void
.end method

.method public static K(Landroid/view/View;Lih;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lih;->m()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lhj;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {v0, p0}, Lih;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lih;

    :cond_0
    return-void
.end method

.method public static L(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v2 .. v8}, Lhp;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_0
    return-void
.end method

.method public static M(Landroid/view/View;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lhn;->b(Landroid/view/View;I)V

    return-void
.end method

.method public static N(Landroid/view/View;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lhm;->a(Landroid/view/View;II)V

    return-void
.end method

.method public static O(Landroid/view/View;)Lbew;
    .locals 2

    .line 1
    sget-object v0, Lhs;->b:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lhs;->b:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v0, Lhs;->b:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbew;

    if-nez v0, :cond_1

    new-instance v0, Lbew;

    .line 3
    invoke-direct {v0, p0}, Lbew;-><init>(Landroid/view/View;)V

    sget-object v1, Lhs;->b:Ljava/util/WeakHashMap;

    .line 4
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static P(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_3

    sget-boolean v0, Lhs;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lhs;->c:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lhs;->c:Ljava/lang/reflect/Field;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    sget-object v0, Lhs;->c:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_2

    .line 5
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_0

    :cond_2
    goto :goto_0

    .line 6
    :catchall_0
    move-exception p0

    sput-boolean v2, Lhs;->d:Z

    .line 1
    :goto_0
    return-object v1

    .line 6
    :cond_3
    invoke-static {p0}, Lhp;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lhg;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lhn;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lhh;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lhg;->b(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lhg;->c(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/view/View;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lhg;->d(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static g(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-static {p0}, Lhl;->a(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    invoke-static {p0}, Lhl;->b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/view/View;)Lgh;
    .locals 1

    .line 1
    invoke-static {p0}, Lhs;->P(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Lgg;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lgg;

    iget-object p0, p0, Lgg;->a:Lgh;

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lgh;

    invoke-direct {v0, p0}, Lgh;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-object v0
.end method

.method public static j(Landroid/view/View;Lgp;)Lgp;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lhr;->a(Landroid/view/View;Lgp;)Lgp;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f0901b9

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p0, p1}, Lhi;->f(Landroid/view/View;Lgp;)Lgp;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lhi;->f(Landroid/view/View;Lgp;)Lgp;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    invoke-static {p0, p1}, Lhi;->f(Landroid/view/View;Lgp;)Lgp;

    move-result-object p0

    return-object p0
.end method

.method public static k()Lhe;
    .locals 2

    new-instance v0, Lhb;

    const-class v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lhb;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static l(Landroid/view/View;)Lih;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {v0}, Lih;->k(Landroid/view/WindowInsets;)Lih;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v0}, Lih;->p(Lih;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lih;->n(Landroid/view/View;)V

    return-object v0
.end method

.method public static m(Landroid/view/View;Lih;)Lih;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lih;->m()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, v0}, Lhj;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {v1, p0}, Lih;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lih;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static n(Landroid/view/View;)Landroid/view/Display;
    .locals 0

    .line 1
    invoke-static {p0}, Lhh;->b(Landroid/view/View;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    new-instance v0, Lha;

    const-class v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lha;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0}, Lhe;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static p(Landroid/view/View;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lhs;->o(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    nop

    .line 5
    :goto_0
    invoke-static {p0}, Lhi;->a(Landroid/view/View;)I

    move-result v1

    const/16 v4, 0x20

    if-nez v1, :cond_5

    if-eqz v2, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    if-ne p1, v4, :cond_3

    .line 19
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 21
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 22
    invoke-static {p1, v4}, Lhi;->c(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 23
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 25
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lhs;->o(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    .line 27
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 29
    :try_start_0
    invoke-static {v0, p0, p0, p1}, Lhi;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " does not fully implement ViewParent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewCompat"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 29
    :cond_4
    return-void

    .line 5
    :cond_5
    :goto_1
    if-eq v3, v2, :cond_6

    const/16 v4, 0x800

    goto :goto_2

    .line 16
    :cond_6
    nop

    .line 6
    :goto_2
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 8
    invoke-static {v0, p1}, Lhi;->c(Landroid/view/accessibility/AccessibilityEvent;I)V

    if-eqz v2, :cond_9

    .line 9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Lhs;->o(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {p0}, Lhg;->a(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_7

    .line 11
    invoke-static {p0, v3}, Lhg;->i(Landroid/view/View;I)V

    .line 12
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 13
    :goto_3
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_9

    .line 14
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    .line 15
    invoke-static {v1}, Lhg;->a(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    const/4 p1, 0x2

    .line 17
    invoke-static {p0, p1}, Lhg;->i(Landroid/view/View;I)V

    goto :goto_4

    .line 16
    :cond_8
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_3

    .line 18
    :cond_9
    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static q(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lhg;->e(Landroid/view/View;)V

    return-void
.end method

.method public static r(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhg;->f(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static s(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhg;->g(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static t(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lhj;->c(Landroid/view/View;)V

    return-void
.end method

.method public static u(Landroid/view/View;Lgh;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-static {p0}, Lhs;->P(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Lgg;

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lgh;

    invoke-direct {p1}, Lgh;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p1, Lgh;->a:Landroid/view/View$AccessibilityDelegate;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static v(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhg;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static w(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhl;->e(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static x(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhl;->f(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static y(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhl;->g(Landroid/view/View;F)V

    return-void
.end method

.method public static z(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhg;->i(Landroid/view/View;I)V

    return-void
.end method
