.class public final Laox;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
.implements Larx;


# static fields
.field public static final synthetic d:I

.field private static final e:[Ljava/lang/Class;


# instance fields
.field public final a:Landroid/support/v7/widget/RecyclerView;

.field public b:Lapj;

.field public final c:Ljava/util/Set;

.field private final f:Larr;

.field private final g:Lars;

.field private final h:Z

.field private i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private final l:Lapk;

.field private final m:Lqx;

.field private n:I

.field private final o:Z

.field private final p:Z

.field private q:Laoh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Laox;->e:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Laow;

    invoke-direct {v1, p0}, Laow;-><init>(Laox;)V

    iput-object v1, p0, Laox;->f:Larr;

    new-instance v1, Ljava/util/HashSet;

    .line 2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Laox;->c:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {p1}, Lars;->b(Landroid/content/Context;)Lars;

    move-result-object v1

    iput-object v1, p0, Laox;->g:Lars;

    .line 5
    sget-object v1, Lamu;->b:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Laox;->h:Z

    .line 7
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const v6, 0x7f0c003d

    if-eqz v2, :cond_0

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 13
    :pswitch_0
    const v6, 0x7f0c003a

    goto :goto_0

    :pswitch_1
    const v6, 0x7f0c003c

    goto :goto_0

    :pswitch_2
    const v6, 0x7f0c003f

    goto :goto_0

    :cond_0
    nop

    .line 8
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 9
    invoke-virtual {v5, v6, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0900a1

    .line 10
    invoke-static {v5, v6}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 11
    instance-of v7, v6, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewContainer;

    if-eqz v7, :cond_1

    .line 12
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    iput-object v6, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    goto :goto_1

    .line 13
    :cond_1
    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    iput-object v6, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 12
    :goto_1
    const/4 v6, 0x7

    .line 14
    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 15
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iget-object v8, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 16
    invoke-direct {p0, v8, v6, v7}, Laox;->h(Landroid/view/ViewGroup;ZI)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700c0

    .line 18
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Laox;->j:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700bf

    .line 20
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Laox;->k:I

    const/4 v6, 0x4

    .line 21
    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x5

    .line 22
    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Laox;->n:I

    .line 23
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Laox;->p:Z

    new-instance v4, Lapl;

    const v7, 0x7f08007f

    .line 24
    invoke-static {p1, v7}, Lxr;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v4, v7}, Lapl;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Laox;->m:Lqx;

    new-instance v4, Lapk;

    .line 25
    const v7, 0x7f08005e

    invoke-static {p1, v7}, Lxr;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 26
    invoke-static {p1, v7}, Lxr;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v9, p0, Laox;->n:I

    invoke-direct {v4, v8, v7, v9}, Lapk;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    iput-object v4, p0, Laox;->l:Lapk;

    iput-boolean v3, p0, Laox;->o:Z

    iget-object v4, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 27
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v4, 0x3

    .line 28
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 30
    invoke-direct {p0, p1, v4, p2}, Laox;->j(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 37
    :cond_2
    if-ne v6, v3, :cond_3

    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    .line 31
    invoke-virtual {p0}, Laox;->getContext()Landroid/content/Context;

    iget v3, p0, Laox;->n:I

    invoke-direct {p2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {p0, p2}, Laox;->d(Lra;)V

    goto :goto_2

    :cond_3
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    .line 32
    invoke-virtual {p0}, Laox;->getContext()Landroid/content/Context;

    invoke-direct {p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p0, p2}, Laox;->d(Lra;)V

    .line 33
    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 34
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    iget-object p2, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 35
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10002b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laox;->i:Ljava/lang/String;

    const p2, 0x7f0900a2

    .line 37
    invoke-static {v5, p2}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Laox;->g(Landroid/content/Context;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final g(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Laox;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Laox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Laox;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    const-class v0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapj;

    iput-object v0, p0, Laox;->b:Lapj;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v1, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 8
    invoke-interface {v0, p1, v1, p2}, Lapj;->initialize(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    iget p1, p0, Laox;->j:I

    .line 9
    invoke-virtual {p0}, Laox;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Laox;->k:I

    .line 10
    invoke-virtual {p0}, Laox;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 9
    invoke-direct {p0, p1, p2}, Laox;->i(II)V

    return-void

    .line 3
    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Laox;->i:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error creating scroll bar component: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Laox;->i:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error loading scroll bar component: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final h(Landroid/view/ViewGroup;ZI)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const-string p3, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    goto :goto_0

    .line 7
    :cond_0
    const-string p3, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    .line 1
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 2
    new-instance v0, Laot;

    invoke-direct {v0, p1}, Laot;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 7
    :cond_2
    move-object v0, p3

    .line 2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const/high16 v0, 0x20000

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDefaultFocusHighlightEnabled(Z)V

    if-eqz p2, :cond_3

    new-instance p3, Laos;

    .line 6
    invoke-direct {p3, p0}, Laos;-><init>(Laox;)V

    goto :goto_2

    .line 7
    :cond_3
    nop

    .line 6
    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-nez p2, :cond_4

    .line 7
    const-string p1, "com.android.car.ui.utils.ROTARY_CONTAINER"

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private final i(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Laox;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laox;->b:Lapj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lapj;->setPadding(II)V

    :cond_0
    return-void
.end method

.method private final j(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/String;

    .line 4
    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    nop

    .line 5
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/2addr v5, v4

    add-int/2addr v5, v6

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Laox;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 8
    :goto_1
    nop

    .line 10
    invoke-static {p2, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lra;

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v3, Laox;->e:[Ljava/lang/Class;

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p3, v5, v4

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x2

    aput-object p1, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 19
    :catch_0
    move-exception p1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v5, 0x0

    .line 13
    :goto_2
    nop

    .line 17
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 18
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lra;

    invoke-virtual {p0, p1}, Laox;->d(Lra;)V

    return-void

    .line 14
    :catch_1
    move-exception v1

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Error creating LayoutManager "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 20
    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 21
    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x27

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :catch_4
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2b

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 23
    :catch_5
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 22
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2b

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :catch_6
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_4
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->I()I

    move-result v0

    return v0
.end method

.method public final addItemDecoration(Lqx;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laox;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Laox;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d(Lra;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Laof;->d(Lra;)Laof;

    move-result-object p1

    invoke-virtual {p0, p1}, Laox;->e(Laoh;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Laoi;->d(Lra;)Laoi;

    move-result-object p1

    invoke-virtual {p0, p1}, Laox;->e(Laoh;)V

    return-void
.end method

.method public final e(Laoh;)V
    .locals 4

    .line 1
    iput-object p1, p0, Laox;->q:Laoh;

    if-nez p1, :cond_0

    iget-object p1, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->Z(Lra;)V

    return-void

    :cond_0
    invoke-interface {p1}, Laoh;->a()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Laou;

    .line 2
    invoke-virtual {p0}, Laox;->getContext()Landroid/content/Context;

    invoke-interface {p1}, Laoh;->b()I

    move-result v1

    invoke-interface {p1}, Laoh;->e()Z

    move-result p1

    .line 3
    invoke-direct {v0, p0, v1, p1}, Laou;-><init>(Laox;IZ)V

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Laov;

    .line 4
    invoke-virtual {p0}, Laox;->getContext()Landroid/content/Context;

    invoke-interface {p1}, Laoh;->c()I

    move-result v1

    invoke-interface {p1}, Laoh;->b()I

    move-result v2

    invoke-interface {p1}, Laoh;->e()Z

    move-result v3

    .line 5
    invoke-direct {v0, p0, v1, v2, v3}, Laov;-><init>(Laox;IIZ)V

    .line 6
    instance-of v1, p1, Laof;

    if-eqz v1, :cond_2

    .line 7
    check-cast p1, Laof;

    iget-object p1, p1, Laof;->a:Lps;

    iput-object p1, v0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    goto :goto_0

    :cond_2
    nop

    .line 3
    :goto_0
    iget-boolean p1, p0, Laox;->o:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Laox;->l:Lapk;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->T(Lqx;)V

    iget-object p1, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Laox;->m:Lqx;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->T(Lqx;)V

    .line 10
    instance-of p1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Laox;->p:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Laox;->l:Lapk;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->p(Lqx;)V

    .line 13
    :cond_3
    move-object p1, v0

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    iget p1, p1, Landroid/support/v7/widget/GridLayoutManager;->b:I

    iput p1, p0, Laox;->n:I

    iget-object v1, p0, Laox;->l:Lapk;

    if-eqz v1, :cond_5

    iput p1, v1, Lapk;->a:I

    goto :goto_1

    .line 16
    :cond_4
    iget-boolean p1, p0, Laox;->p:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Laox;->m:Lqx;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->p(Lqx;)V

    .line 13
    :cond_5
    :goto_1
    iget-object p1, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 16
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->Z(Lra;)V

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->e()Lqq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lqq;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ak()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAdapter()Lqq;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final getPaddingBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public final getPaddingTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public final getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final invalidateItemDecorations()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Laox;->g:Lars;

    iget-object v1, p0, Laox;->f:Larr;

    .line 2
    invoke-virtual {v0, v1}, Lars;->c(Larr;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Laox;->g:Lars;

    iget-object v1, p0, Laox;->f:Larr;

    .line 2
    invoke-virtual {v0, v1}, Lars;->e(Larr;)V

    return-void
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-boolean v0, p0, Laox;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    iget-object v0, p0, Laox;->b:Lapj;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lapj;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final scrollBy(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method public final scrollToPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->W(I)V

    return-void
.end method

.method public final setAdapter(Lqq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laox;->b:Lapj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lapj;->adapterChanged(Lqq;)V

    :cond_0
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->Y(Lqq;)V

    return-void
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    const-string v2, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    const-string v2, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3
    :goto_0
    iget-object p1, p0, Laox;->q:Laoh;

    if-nez p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-interface {p1}, Laoh;->b()I

    move-result v1

    .line 3
    :goto_1
    iget-object p1, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 4
    invoke-direct {p0, p1, v0, v1}, Laox;->h(Landroid/view/ViewGroup;ZI)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Laox;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laox;->a()I

    move-result v0

    iget v1, p0, Laox;->j:I

    add-int/2addr v1, p2

    iget v2, p0, Laox;->k:I

    add-int/2addr v2, p4

    .line 2
    invoke-direct {p0, v1, v2}, Laox;->i(II)V

    .line 3
    invoke-virtual {p0, v0}, Laox;->scrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 4
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 5
    invoke-super {p0, p1, v1, p3, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Laox;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laox;->a()I

    move-result v0

    iget v1, p0, Laox;->j:I

    add-int/2addr v1, p2

    iget v2, p0, Laox;->k:I

    add-int/2addr v2, p4

    .line 2
    invoke-direct {p0, v1, v2}, Laox;->i(II)V

    .line 3
    invoke-virtual {p0, v0}, Laox;->scrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    .line 4
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p4}, Landroid/support/v7/widget/RecyclerView;->setPaddingRelative(IIII)V

    .line 5
    invoke-super {p0, p1, v1, p3, v1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    return-void
.end method
