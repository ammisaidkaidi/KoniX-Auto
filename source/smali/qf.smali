.class public Lqf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmg;


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Landroid/widget/ListAdapter;

.field public e:Lpf;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/widget/AdapterView$OnItemClickListener;

.field final m:Lqe;

.field final n:Landroid/os/Handler;

.field public o:Z

.field public final p:Landroid/widget/PopupWindow;

.field private q:I

.field private r:Z

.field private s:Landroid/database/DataSetObserver;

.field private final t:Lqd;

.field private final u:Lqc;

.field private final v:Landroid/graphics/Rect;

.field private w:Landroid/graphics/Rect;

.field private final x:Lqe;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setClipToScreenEnabled"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lqf;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    move-exception v2

    .line 1
    :goto_0
    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/Rect;

    aput-object v2, v1, v0

    const-class v0, Landroid/widget/PopupWindow;

    const-string v2, "setEpicenterBounds"

    .line 2
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lqf;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lqf;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lqf;->j:I

    new-instance v1, Lqe;

    invoke-direct {v1, p0, v0}, Lqe;-><init>(Lqf;I)V

    iput-object v1, p0, Lqf;->m:Lqe;

    new-instance v1, Lqd;

    invoke-direct {v1, p0}, Lqd;-><init>(Lqf;)V

    iput-object v1, p0, Lqf;->t:Lqd;

    new-instance v1, Lqc;

    invoke-direct {v1, p0}, Lqc;-><init>(Lqf;)V

    iput-object v1, p0, Lqf;->u:Lqc;

    new-instance v1, Lqe;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lqe;-><init>(Lqf;I)V

    iput-object v1, p0, Lqf;->x:Lqe;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lqf;->v:Landroid/graphics/Rect;

    iput-object p1, p0, Lqf;->c:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lqf;->n:Landroid/os/Handler;

    .line 3
    sget-object v1, Lki;->n:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lqf;->g:I

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lqf;->q:I

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lqf;->r:Z

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lnt;

    .line 7
    invoke-direct {v0, p1, p2, p3}, Lnt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lqf;->g:I

    return v0
.end method

.method public final aJ()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lqf;->e:Lpf;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-boolean v0, p0, Lqf;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lqf;->q:I

    return v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqf;->s:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, Lqb;

    invoke-direct {v0, p0}, Lqb;-><init>(Lqf;)V

    iput-object v0, p0, Lqf;->s:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lqf;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1
    :cond_1
    :goto_0
    iput-object p1, p0, Lqf;->d:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lqf;->s:Landroid/database/DataSetObserver;

    .line 3
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lqf;->e:Lpf;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lqf;->d:Landroid/widget/ListAdapter;

    .line 4
    invoke-virtual {p1, v0}, Lpf;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lqf;->g:I

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lqf;->q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lqf;->r:Z

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lqf;->e:Lpf;

    iget-object v0, p0, Lqf;->n:Landroid/os/Handler;

    iget-object v1, p0, Lqf;->m:Lqe;

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Landroid/content/Context;Z)Lpf;
    .locals 1

    .line 1
    new-instance v0, Lpf;

    invoke-direct {v0, p1, p2}, Lpf;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqf;->e:Lpf;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpf;->a:Z

    invoke-virtual {v0}, Lpf;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lqf;->v:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lqf;->v:Landroid/graphics/Rect;

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lqf;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lqf;->f:I

    return-void

    :cond_0
    iput p1, p0, Lqf;->f:I

    return-void
.end method

.method public final r(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lqf;->w:Landroid/graphics/Rect;

    return-void
.end method

.method public final s()V
    .locals 12

    .line 1
    iget-object v0, p0, Lqf;->e:Lpf;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lqf;->c:Landroid/content/Context;

    iget-boolean v2, p0, Lqf;->o:Z

    xor-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lqf;->o(Landroid/content/Context;Z)Lpf;

    move-result-object v0

    iput-object v0, p0, Lqf;->e:Lpf;

    iget-object v2, p0, Lqf;->d:Landroid/widget/ListAdapter;

    .line 2
    invoke-virtual {v0, v2}, Lpf;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lqf;->e:Lpf;

    iget-object v2, p0, Lqf;->l:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3
    invoke-virtual {v0, v2}, Lpf;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lqf;->e:Lpf;

    .line 4
    invoke-virtual {v0, v1}, Lpf;->setFocusable(Z)V

    iget-object v0, p0, Lqf;->e:Lpf;

    .line 5
    invoke-virtual {v0, v1}, Lpf;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lqf;->e:Lpf;

    new-instance v2, Lqa;

    invoke-direct {v2, p0}, Lqa;-><init>(Lqf;)V

    .line 6
    invoke-virtual {v0, v2}, Lpf;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lqf;->e:Lpf;

    iget-object v2, p0, Lqf;->u:Lqc;

    .line 7
    invoke-virtual {v0, v2}, Lpf;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lqf;->e:Lpf;

    iget-object v2, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 8
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 9
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    :goto_0
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 10
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lqf;->v:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lqf;->v:Landroid/graphics/Rect;

    .line 12
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lqf;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iget-boolean v3, p0, Lqf;->r:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lqf;->v:Landroid/graphics/Rect;

    .line 13
    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iput v3, p0, Lqf;->q:I

    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Lqf;->v:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 13
    :cond_2
    :goto_1
    iget-object v3, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 15
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    .line 20
    :cond_3
    const/4 v3, 0x0

    .line 15
    :goto_2
    iget-object v4, p0, Lqf;->k:Landroid/view/View;

    iget v5, p0, Lqf;->q:I

    iget-object v6, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 16
    invoke-virtual {v6, v4, v5, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    iget v4, p0, Lqf;->f:I

    const/high16 v5, 0x40000000    # 2.0f

    packed-switch v4, :pswitch_data_0

    .line 21
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    .line 32
    :pswitch_0
    iget-object v4, p0, Lqf;->c:Landroid/content/Context;

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lqf;->v:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lqf;->v:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 18
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    :pswitch_1
    iget-object v4, p0, Lqf;->c:Landroid/content/Context;

    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lqf;->v:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lqf;->v:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    const/high16 v5, -0x80000000

    .line 20
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 21
    :goto_3
    iget-object v5, p0, Lqf;->e:Lpf;

    .line 22
    invoke-virtual {v5, v4, v3}, Lpf;->b(II)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v4, p0, Lqf;->e:Lpf;

    .line 23
    invoke-virtual {v4}, Lpf;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lqf;->e:Lpf;

    .line 24
    invoke-virtual {v5}, Lpf;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_4

    .line 32
    :cond_4
    const/4 v0, 0x0

    .line 24
    :goto_4
    add-int/2addr v3, v0

    .line 25
    invoke-virtual {p0}, Lqf;->v()Z

    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    const/16 v4, 0x3ea

    .line 26
    invoke-static {v0, v4}, Lis;->b(Landroid/widget/PopupWindow;I)V

    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 27
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lqf;->k:Landroid/view/View;

    .line 28
    invoke-static {v0}, Lhs;->F(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lqf;->f:I

    if-ne v0, v5, :cond_6

    const/4 v0, -0x1

    goto :goto_5

    .line 31
    :cond_6
    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lqf;->k:Landroid/view/View;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 28
    :cond_7
    :goto_5
    iget-object v2, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 30
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, p0, Lqf;->p:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lqf;->k:Landroid/view/View;

    iget v8, p0, Lqf;->g:I

    iget v9, p0, Lqf;->q:I

    if-gez v0, :cond_8

    const/4 v10, -0x1

    goto :goto_6

    .line 31
    :cond_8
    move v10, v0

    .line 30
    :goto_6
    if-gez v3, :cond_9

    const/4 v11, -0x1

    goto :goto_7

    .line 31
    :cond_9
    move v11, v3

    :goto_7
    invoke-virtual/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    .line 29
    :cond_a
    iget v0, p0, Lqf;->f:I

    if-ne v0, v5, :cond_b

    const/4 v0, -0x1

    goto :goto_8

    .line 36
    :cond_b
    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lqf;->k:Landroid/view/View;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 29
    :cond_c
    :goto_8
    iget-object v4, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 33
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 34
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_d

    sget-object v0, Lqf;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    :try_start_0
    iget-object v4, p0, Lqf;->p:Landroid/widget/PopupWindow;

    new-array v6, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 9
    :catch_0
    move-exception v0

    goto :goto_9

    .line 42
    :cond_d
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 35
    :cond_e
    :goto_9
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lqf;->t:Lqd;

    .line 38
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lqf;->i:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Lqf;->h:Z

    .line 39
    invoke-static {v0, v4}, Lis;->a(Landroid/widget/PopupWindow;Z)V

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v3, :cond_10

    sget-object v0, Lqf;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_11

    :try_start_1
    iget-object v3, p0, Lqf;->p:Landroid/widget/PopupWindow;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lqf;->w:Landroid/graphics/Rect;

    aput-object v4, v1, v2

    .line 40
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 9
    :catch_1
    move-exception v0

    .line 41
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 47
    :cond_10
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lqf;->w:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 40
    :cond_11
    :goto_a
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lqf;->k:Landroid/view/View;

    iget v2, p0, Lqf;->g:I

    iget v3, p0, Lqf;->q:I

    iget v4, p0, Lqf;->j:I

    .line 43
    invoke-static {v0, v1, v2, v3, v4}, Lir;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, p0, Lqf;->e:Lpf;

    .line 44
    invoke-virtual {v0, v5}, Lpf;->setSelection(I)V

    iget-boolean v0, p0, Lqf;->o:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lqf;->e:Lpf;

    .line 45
    invoke-virtual {v0}, Lpf;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 46
    :cond_12
    invoke-virtual {p0}, Lqf;->p()V

    :cond_13
    iget-boolean v0, p0, Lqf;->o:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lqf;->n:Landroid/os/Handler;

    iget-object v1, p0, Lqf;->x:Lqe;

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqf;->p:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqf;->o:Z

    iget-object v1, p0, Lqf;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method
