.class public final Lamq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;


# instance fields
.field public A:Landroid/view/View;

.field public final B:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field private C:Z

.field private final D:Landroid/util/SparseIntArray;

.field public final c:Landroid/view/ViewGroup;

.field public d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:I

.field public s:Landroid/view/View;

.field public t:Landroid/util/SparseArray;

.field public final u:Landroid/util/SparseIntArray;

.field public v:Landroid/util/SparseArray;

.field public w:Z

.field public final x:Lamz;

.field public final y:Z

.field public z:Lamt;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lamq;->a:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/Integer;

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/high16 v1, 0x2000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lamq;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lamq;->D:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    .line 2
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lamq;->u:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lamq;->c:Landroid/view/ViewGroup;

    .line 3
    new-instance v2, Lamp;

    invoke-direct {v2, p0}, Lamp;-><init>(Lamq;)V

    iput-object v2, p0, Lamq;->B:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 6
    const v4, 0x7f050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lamq;->e:Z

    .line 7
    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lamq;->f:Z

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 9
    const v5, 0x7f080060

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lamq;->g:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 11
    const v5, 0x7f08005f

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lamq;->h:Landroid/graphics/drawable/Drawable;

    .line 12
    const v4, 0x7f050003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lamq;->y:Z

    .line 13
    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 14
    const v5, 0x7f0a0007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 15
    const v6, 0x7f0a0004

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 16
    const v7, 0x7f0a0005

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    new-instance v7, Lamz;

    .line 17
    invoke-direct {v7, v4, v5, v6, v3}, Lamz;-><init>(IIII)V

    iput-object v7, p0, Lamq;->x:Lamz;

    .line 18
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 19
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    if-nez p2, :cond_0

    return-void

    .line 20
    :cond_0
    sget-object v5, Lamu;->i:[I

    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 21
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lamq;->r:I

    const/4 v5, 0x7

    .line 22
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v2, :cond_1

    .line 23
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    :cond_1
    const/4 v7, 0x5

    .line 24
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 25
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    :cond_2
    nop

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    if-ne p1, v3, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    .line 71
    :cond_3
    const/4 v6, 0x0

    .line 26
    :goto_0
    iput-boolean v6, p0, Lamq;->q:Z

    if-ne p1, v3, :cond_4

    move v6, v7

    goto :goto_1

    .line 71
    :cond_4
    move v6, v5

    .line 26
    :goto_1
    iput v6, p0, Lamq;->i:I

    if-ne p1, v3, :cond_5

    move p1, v5

    goto :goto_2

    .line 71
    :cond_5
    move p1, v7

    .line 26
    :goto_2
    iput p1, p0, Lamq;->j:I

    const/16 p1, 0x8

    .line 27
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lamq;->k:I

    const/16 v6, 0x9

    if-ne p1, v2, :cond_6

    .line 28
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lamq;->k:I

    :cond_6
    const/4 p1, 0x4

    .line 29
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lamq;->l:I

    if-ne p1, v2, :cond_7

    .line 30
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lamq;->l:I

    :cond_7
    const/16 p1, 0x15

    .line 31
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    const/16 v6, 0xa

    if-ne p1, v2, :cond_8

    .line 32
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    goto :goto_3

    .line 71
    :cond_8
    nop

    .line 32
    :goto_3
    const/4 v5, 0x3

    .line 33
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    if-ne v5, v2, :cond_9

    .line 34
    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_4

    .line 71
    :cond_9
    nop

    .line 34
    :goto_4
    iget-boolean v6, p0, Lamq;->q:Z

    if-eq v3, v6, :cond_a

    move v7, p1

    goto :goto_5

    .line 71
    :cond_a
    move v7, v5

    .line 34
    :goto_5
    iput v7, p0, Lamq;->m:I

    if-eq v3, v6, :cond_b

    move p1, v5

    :cond_b
    iput p1, p0, Lamq;->n:I

    const/16 p1, 0x16

    .line 35
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lamq;->o:I

    const/16 v5, 0x17

    if-ne p1, v2, :cond_c

    iget p1, p0, Lamq;->k:I

    .line 36
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lamq;->o:I

    :cond_c
    nop

    .line 37
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lamq;->p:I

    if-ne p1, v2, :cond_d

    iget p1, p0, Lamq;->l:I

    .line 38
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lamq;->p:I

    :cond_d
    nop

    .line 39
    const/16 p1, 0xe

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/16 v6, 0x11

    if-eqz v5, :cond_e

    .line 40
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 41
    invoke-virtual {v0, v6, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_e
    nop

    .line 42
    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/16 v7, 0x42

    if-eqz v5, :cond_f

    .line 43
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 44
    invoke-virtual {v0, v7, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_f
    nop

    .line 45
    const/16 p1, 0x14

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/16 v8, 0x21

    if-eqz v5, :cond_10

    .line 46
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 47
    invoke-virtual {v0, v8, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_10
    nop

    .line 48
    const/16 p1, 0xc

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/16 v9, 0x82

    if-eqz v5, :cond_11

    .line 49
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 50
    invoke-virtual {v0, v9, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_11
    nop

    .line 51
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    const/16 v5, 0x12

    .line 52
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne p1, v2, :cond_12

    const/4 v10, 0x1

    goto :goto_6

    .line 71
    :cond_12
    const/4 v10, 0x0

    .line 52
    :goto_6
    if-ne v5, v2, :cond_13

    goto :goto_7

    .line 71
    :cond_13
    const/4 v3, 0x0

    .line 52
    :goto_7
    xor-int/2addr v3, v10

    if-nez v3, :cond_1a

    .line 53
    if-eq p1, v2, :cond_15

    .line 54
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-gtz v3, :cond_14

    .line 55
    nop

    .line 56
    invoke-virtual {v0, v5, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_8

    .line 54
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t use nudgeShortcut/nudgeShortcutDirection and nudge*Shortcut in the same focus area. Use nudge*Shortcut only."

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_15
    :goto_8
    nop

    .line 57
    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 58
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 59
    invoke-virtual {v1, v6, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_16
    nop

    .line 60
    const/16 p1, 0xf

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 62
    invoke-virtual {v1, v7, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_17
    nop

    .line 63
    const/16 p1, 0x13

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 64
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 65
    invoke-virtual {v1, v8, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_18
    nop

    .line 66
    const/16 p1, 0xb

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 67
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 68
    invoke-virtual {v1, v9, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_19
    const/4 p1, 0x2

    .line 69
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lamq;->C:Z

    const/16 p1, 0x18

    .line 70
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lamq;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 52
    :cond_1a
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "nudgeShortcut and nudgeShortcutDirection must be specified together"

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    throw p1
.end method

.method public static a(Landroid/os/Bundle;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.android.car.ui.utils.NUDGE_DIRECTION"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lamq;->t:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lamq;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lamq;->t:Landroid/util/SparseArray;

    sget-object v1, Lamq;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lamq;->D:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    .line 4
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    iget-object v4, p0, Lamq;->t:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lamq;->x:Lamz;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lamz;->a:Lamx;

    invoke-virtual {v0, v1, v2}, Lamx;->a(J)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lamq;->c:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lamq;->C:Z

    .line 2
    invoke-static {v1, v0, v2}, Lhf;->n(Landroid/view/View;Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lamq;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lhf;->j(Landroid/view/View;)I

    move-result v1

    .line 4
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lhf;->o(Landroid/view/View;ILandroid/view/View;Z)Z

    move-result v0

    return v0
.end method
