.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "PG"


# static fields
.field public static final synthetic O:I

.field private static final P:[I

.field private static final Q:[Ljava/lang/Class;

.field public static final a:Landroid/view/animation/Interpolator;

.field static final b:Lrp;


# instance fields
.field public A:Landroid/widget/EdgeEffect;

.field public B:Lqv;

.field public C:Lrc;

.field public final D:I

.field public final E:Lrq;

.field public F:Lpp;

.field public G:Lpn;

.field public final H:Lro;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Lrt;

.field public final M:[I

.field final N:Ljava/util/List;

.field private final R:Lrj;

.field private final S:Landroid/graphics/Rect;

.field private T:I

.field private U:Z

.field private V:I

.field private final W:Landroid/view/accessibility/AccessibilityManager;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:Landroid/view/VelocityTracker;

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private final ak:I

.field private al:F

.field private am:F

.field private an:Z

.field private ao:Ljava/util/List;

.field private final ap:[I

.field private aq:Lgu;

.field private final ar:[I

.field private final as:[I

.field private at:Ljava/lang/Runnable;

.field private au:Z

.field private av:I

.field private aw:I

.field private ax:Lqw;

.field private ay:Lhn;

.field private final az:Lqw;

.field public final c:Lrh;

.field public d:Lrk;

.field public e:Lnf;

.field public f:Lor;

.field public final g:Lta;

.field h:Z

.field public final i:Landroid/graphics/Rect;

.field public final j:Landroid/graphics/RectF;

.field public k:Lqq;

.field public l:Lra;

.field public final m:Ljava/util/List;

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/ArrayList;

.field public p:Lrd;

.field public q:Z

.field r:Z

.field s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field w:Z

.field public x:Landroid/widget/EdgeEffect;

.field public y:Landroid/widget/EdgeEffect;

.field public z:Landroid/widget/EdgeEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010436

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->P:[I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->Q:[Ljava/lang/Class;

    new-instance v0, Lqo;

    invoke-direct {v0}, Lqo;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Lrp;

    invoke-direct {v0}, Lrp;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->b:Lrp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const v0, 0x7f040207

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    .line 3
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lrj;

    invoke-direct {v0, v9}, Lrj;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->R:Lrj;

    new-instance v0, Lrh;

    .line 4
    invoke-direct {v0, v9}, Lrh;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    new-instance v0, Lta;

    .line 5
    invoke-direct {v0}, Lta;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    .line 8
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->j:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    const/4 v13, 0x0

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->T:I

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->v:Z

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->w:Z

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->aa:I

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->ab:I

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->b:Lrp;

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ay:Lhn;

    new-instance v0, Lqv;

    .line 12
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqv;-><init>([B)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->ac:I

    const/4 v6, -0x1

    iput v6, v9, Landroid/support/v7/widget/RecyclerView;->ad:I

    const/4 v0, 0x1

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->al:F

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->am:F

    const/4 v14, 0x1

    iput-boolean v14, v9, Landroid/support/v7/widget/RecyclerView;->an:Z

    new-instance v0, Lrq;

    .line 13
    invoke-direct {v0, v9}, Lrq;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->E:Lrq;

    new-instance v0, Lpn;

    invoke-direct {v0}, Lpn;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->G:Lpn;

    new-instance v0, Lro;

    invoke-direct {v0}, Lro;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->I:Z

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->J:Z

    new-instance v0, Lqw;

    invoke-direct {v0, v9}, Lqw;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ax:Lqw;

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->K:Z

    const/4 v7, 0x2

    new-array v0, v7, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ap:[I

    new-array v0, v7, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ar:[I

    new-array v0, v7, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->as:[I

    new-array v0, v7, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->M:[I

    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->N:Ljava/util/List;

    new-instance v0, Lqn;

    invoke-direct {v0, v9}, Lqn;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->at:Ljava/lang/Runnable;

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->av:I

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->aw:I

    new-instance v0, Lqw;

    invoke-direct {v0, v9}, Lqw;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->az:Lqw;

    .line 15
    invoke-virtual {v9, v14}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 16
    invoke-virtual {v9, v14}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 17
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/RecyclerView;->aj:I

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/RecyclerView;->al:F

    .line 20
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/RecyclerView;->am:F

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 22
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->ak:I

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    if-ne v0, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    iget-object v0, v9, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    iget-object v2, v9, Landroid/support/v7/widget/RecyclerView;->ax:Lqw;

    iput-object v2, v0, Lqv;->a:Lqw;

    new-instance v0, Lnf;

    new-instance v2, Lqw;

    .line 24
    invoke-direct {v2, v9}, Lqw;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v2, v1}, Lnf;-><init>(Lqw;[B)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    new-instance v0, Lor;

    new-instance v2, Lqw;

    .line 25
    invoke-direct {v2, v9}, Lqw;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v2, v1}, Lor;-><init>(Lqw;[B)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 26
    invoke-static/range {p0 .. p0}, Lhs;->b(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 27
    invoke-static/range {p0 .. p0}, Lhs;->M(Landroid/view/View;)V

    .line 28
    :cond_1
    invoke-static/range {p0 .. p0}, Lhs;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 29
    invoke-static {v9, v14}, Lhs;->z(Landroid/view/View;I)V

    .line 30
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/accessibility/AccessibilityManager;

    .line 32
    new-instance v0, Lrt;

    invoke-direct {v0, v9}, Lrt;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->X(Lrt;)V

    .line 33
    sget-object v0, Lkl;->a:[I

    invoke-virtual {v10, v11, v0, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    sget-object v2, Lkl;->a:[I

    .line 34
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lhs;->L(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    const/16 v0, 0x8

    .line 35
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-virtual {v15, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v6, :cond_3

    const/high16 v0, 0x40000

    .line 37
    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    :cond_3
    nop

    .line 38
    invoke-virtual {v15, v14, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v9, Landroid/support/v7/widget/RecyclerView;->h:Z

    const/4 v0, 0x3

    .line 39
    invoke-virtual {v15, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 40
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x7

    .line 41
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v0, 0x4

    .line 42
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x5

    .line 43
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    new-instance v1, Lpk;

    const v6, 0x7f0700f0

    .line 47
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0700f2

    .line 48
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v14, 0x7f0700f1

    .line 49
    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object v0, v1

    move-object/from16 v1, p0

    move-object v13, v8

    move v8, v14

    invoke-direct/range {v0 .. v8}, Lpk;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_1

    .line 43
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trying to set fast scroller without both required drawables."

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_5
    move-object v13, v8

    .line 50
    :goto_1
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-direct {v9, v10, v13, v11, v12}, Landroid/support/v7/widget/RecyclerView;->aE(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->P:[I

    .line 52
    const/4 v6, 0x0

    invoke-virtual {v10, v11, v2, v12, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v7

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lhs;->L(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {v7, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 55
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static G(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    .line 2
    iget-object v1, v0, Lrb;->d:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lrb;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lrb;->topMargin:I

    sub-int/2addr v3, v4

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Lrb;->rightMargin:I

    add-int/2addr v4, v5

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Lrb;->bottomMargin:I

    add-int/2addr p0, v0

    .line 3
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private final aA()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ae(I)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    .line 4
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 11
    :cond_1
    nop

    .line 4
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 6
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 8
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    .line 10
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    .line 11
    invoke-static {p0}, Lhs;->q(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private final aB()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Lrq;

    invoke-virtual {v0}, Lrq;->c()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lra;->u:Lrn;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lrn;->c()V

    :cond_0
    return-void
.end method

.method private final aC(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrd;

    .line 4
    invoke-interface {v4, p1}, Lrd;->g(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->p:Lrd;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private final aD()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    invoke-virtual {v0}, Lra;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final aE(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 9
    :cond_0
    nop

    .line 5
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_2
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

    const/4 v3, 0x1

    :try_start_1
    sget-object v4, Landroid/support/v7/widget/RecyclerView;->Q:[Ljava/lang/Class;

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p3, v5, v3

    const/4 p1, 0x2

    .line 13
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1

    const/4 p1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1
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
    new-array p4, v1, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v2, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
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
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lra;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->Z(Lra;)V

    return-void

    .line 16
    :catch_1
    move-exception p4

    .line 15
    invoke-virtual {p4, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Error creating LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 21
    :catch_3
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 22
    :catch_4
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 23
    :catch_5
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 6
    :catch_6
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 6
    :cond_3
    return-void
.end method

.method public static synthetic ag(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method private final ap(IF)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    .line 8
    invoke-static {v0, p1, v2}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    .line 9
    invoke-static {p2}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    .line 10
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 11
    :cond_0
    :goto_0
    move v1, p1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 5
    invoke-static {v0, p1, p2}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 6
    invoke-static {p2}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 7
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_2
    nop

    .line 11
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_3
    return p1
.end method

.method private final aq(IF)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    .line 8
    invoke-static {v0, p1, p2}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 9
    invoke-static {p2}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 10
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 11
    :cond_0
    :goto_0
    move v1, p1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    .line 5
    invoke-static {v0, p1, v2}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    .line 6
    invoke-static {p2}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    .line 7
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_2
    nop

    .line 11
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_3
    return p1
.end method

.method private final ar()Lgu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Lgu;

    if-nez v0, :cond_0

    new-instance v0, Lgu;

    invoke-direct {v0, p0}, Lgu;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Lgu;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Lgu;

    return-object v0
.end method

.method private final as()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->aa(I)V

    return-void
.end method

.method private final at()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lro;->b(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->F(Lro;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 3
    const/4 v2, 0x0

    iput-boolean v2, v0, Lro;->i:Z

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ac()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 5
    invoke-virtual {v0}, Lta;->f()V

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    .line 7
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ax()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v3

    .line 9
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Lrr;

    move-result-object v3

    .line 9
    :goto_1
    if-nez v3, :cond_3

    .line 12
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->az()V

    goto :goto_5

    .line 61
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 13
    invoke-virtual {v4}, Lqq;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lrr;->getItemId()J

    move-result-wide v4

    goto :goto_2

    .line 15
    :cond_4
    const-wide/16 v4, -0x1

    .line 13
    :goto_2
    iput-wide v4, v0, Lro;->m:J

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_5

    const/4 v4, -0x1

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {v3}, Lrr;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v3, Lrr;->mOldPosition:I

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {v3}, Lrr;->getAbsoluteAdapterPosition()I

    move-result v4

    :goto_3
    iput v4, v0, Lro;->l:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-object v3, v3, Lrr;->itemView:Landroid/view/View;

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    .line 17
    :cond_7
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_8

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 18
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v5, :cond_7

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    goto :goto_4

    .line 21
    :cond_8
    iput v4, v0, Lro;->n:I

    .line 12
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 22
    iget-boolean v3, v0, Lro;->j:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    if-eqz v3, :cond_9

    goto :goto_6

    .line 61
    :cond_9
    const/4 v1, 0x0

    .line 22
    :goto_6
    iput-boolean v1, v0, Lro;->h:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    .line 23
    iget-boolean v1, v0, Lro;->k:Z

    iput-boolean v1, v0, Lro;->g:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 24
    invoke-virtual {v1}, Lqq;->getItemCount()I

    move-result v1

    iput v1, v0, Lro;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:[I

    .line 25
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->av([I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 26
    iget-boolean v0, v0, Lro;->j:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 27
    invoke-virtual {v0}, Lor;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_c

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 28
    invoke-virtual {v3, v1}, Lor;->e(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lrr;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3}, Lrr;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    invoke-virtual {v4}, Lqq;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_8

    .line 30
    :cond_a
    invoke-static {v3}, Lqv;->d(Lrr;)V

    .line 31
    invoke-virtual {v3}, Lrr;->getUnmodifiedPayloads()Ljava/util/List;

    .line 32
    invoke-static {v3}, Lqv;->e(Lrr;)Lqu;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 33
    invoke-virtual {v5, v3, v4}, Lta;->e(Lrr;Lqu;)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 34
    iget-boolean v4, v4, Lro;->h:Z

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lrr;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lrr;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_b

    .line 35
    invoke-virtual {v3}, Lrr;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3}, Lrr;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_b

    .line 36
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->c(Lrr;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 37
    invoke-virtual {v6, v4, v5, v3}, Lta;->c(JLrr;)V

    .line 29
    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 37
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 38
    iget-boolean v0, v0, Lro;->k:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 39
    invoke-virtual {v0}, Lor;->c()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_e

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 40
    invoke-virtual {v4, v3}, Lor;->f(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lrr;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_d

    .line 42
    invoke-virtual {v4}, Lrr;->saveOldPosition()V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 43
    iget-boolean v3, v0, Lro;->f:Z

    .line 44
    iput-boolean v2, v0, Lro;->f:Z

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 45
    invoke-virtual {v4, v5, v0}, Lra;->n(Lrh;Lro;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 46
    iput-boolean v3, v0, Lro;->f:Z

    const/4 v0, 0x0

    :goto_a
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 47
    invoke-virtual {v3}, Lor;->a()I

    move-result v3

    if-ge v0, v3, :cond_14

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 48
    invoke-virtual {v3, v0}, Lor;->e(I)Landroid/view/View;

    move-result-object v3

    .line 49
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lrr;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_c

    :cond_f
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    iget-object v4, v4, Lta;->a:Lvi;

    .line 51
    invoke-virtual {v4, v3}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsz;

    if-eqz v4, :cond_10

    iget v4, v4, Lsz;->a:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_13

    .line 52
    :cond_10
    invoke-static {v3}, Lqv;->d(Lrr;)V

    const/16 v4, 0x2000

    .line 53
    invoke-virtual {v3, v4}, Lrr;->hasAnyOfTheFlags(I)Z

    move-result v4

    .line 54
    invoke-virtual {v3}, Lrr;->getUnmodifiedPayloads()Ljava/util/List;

    .line 55
    invoke-static {v3}, Lqv;->e(Lrr;)Lqu;

    move-result-object v5

    if-eqz v4, :cond_11

    .line 56
    invoke-virtual {p0, v3, v5}, Landroid/support/v7/widget/RecyclerView;->R(Lrr;Lqu;)V

    goto :goto_c

    :cond_11
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    iget-object v6, v4, Lta;->a:Lvi;

    .line 57
    invoke-virtual {v6, v3}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsz;

    if-nez v6, :cond_12

    .line 58
    invoke-static {}, Lsz;->a()Lsz;

    move-result-object v6

    iget-object v4, v4, Lta;->a:Lvi;

    .line 59
    invoke-virtual {v4, v3, v6}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    nop

    :goto_b
    iget v3, v6, Lsz;->a:I

    or-int/2addr v3, v1

    iput v3, v6, Lsz;->a:I

    iput-object v5, v6, Lsz;->b:Lqu;

    .line 50
    :cond_13
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 60
    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    goto :goto_d

    .line 61
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 62
    :goto_d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    .line 63
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->ad(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 64
    iput v1, v0, Lro;->d:I

    return-void
.end method

.method private final au()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ac()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 3
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lro;->b(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 4
    invoke-virtual {v0}, Lnf;->e()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 5
    invoke-virtual {v1}, Lqq;->getItemCount()I

    move-result v1

    iput v1, v0, Lro;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 6
    const/4 v1, 0x0

    iput v1, v0, Lro;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lrk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 7
    invoke-virtual {v0}, Lqq;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lrk;

    .line 8
    iget-object v0, v0, Lrk;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 9
    invoke-virtual {v2, v0}, Lra;->S(Landroid/os/Parcelable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lrk;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 10
    iput-boolean v1, v0, Lro;->g:Z

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 11
    invoke-virtual {v2, v3, v0}, Lra;->n(Lrh;Lro;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 12
    iput-boolean v1, v0, Lro;->f:Z

    .line 13
    iget-boolean v2, v0, Lro;->j:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    const/4 v2, 0x0

    .line 13
    :goto_0
    iput-boolean v2, v0, Lro;->j:Z

    const/4 v2, 0x4

    .line 14
    iput v2, v0, Lro;->d:I

    .line 15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    .line 16
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->ad(Z)V

    return-void
.end method

.method private final av([I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v0}, Lor;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v6, v5}, Lor;->e(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v6

    .line 3
    invoke-virtual {v6}, Lrr;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v6}, Lrr;->getLayoutPosition()I

    move-result v6

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    if-gt v6, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v6

    .line 3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4
    :cond_3
    nop

    .line 5
    aput v3, p1, v2

    .line 6
    aput v4, p1, v1

    return-void

    :cond_4
    nop

    .line 7
    const/4 v0, -0x1

    aput v0, p1, v2

    .line 8
    aput v0, p1, v1

    return-void
.end method

.method private final aw(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    :cond_1
    return-void
.end method

.method private final ax()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    invoke-virtual {v0}, Lnf;->j()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 2
    invoke-virtual {v0}, Lra;->w()V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 4
    invoke-virtual {v0}, Lnf;->g()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 5
    invoke-virtual {v0}, Lnf;->e()V

    .line 4
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 9
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 4
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 6
    iget-boolean v5, v5, Lra;->v:Z

    if-eqz v5, :cond_6

    :cond_4
    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 7
    invoke-virtual {v4}, Lqq;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    .line 9
    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 7
    :goto_2
    iput-boolean v4, v3, Lro;->j:Z

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 8
    iget-boolean v4, v3, Lro;->j:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-nez v0, :cond_7

    .line 9
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aD()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, v3, Lro;->k:Z

    return-void
.end method

.method private final ay(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    .line 1
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 13
    :cond_0
    move-object v0, p1

    .line 1
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lrb;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lrb;

    .line 5
    iget-boolean v1, v0, Lrb;->e:Z

    if-nez v1, :cond_1

    .line 6
    iget-object v0, v0, Lrb;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 7
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 8
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 9
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 10
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 13
    :cond_2
    const/4 p2, 0x0

    .line 12
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    .line 13
    :cond_3
    const/4 v10, 0x0

    :goto_2
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lra;->aX(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private final az()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lro;->m:J

    .line 2
    const/4 v1, -0x1

    iput v1, v0, Lro;->l:I

    .line 3
    iput v1, v0, Lro;->n:I

    return-void
.end method

.method public static h(Landroid/view/View;)Lrr;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lrb;

    iget-object p0, p0, Lrb;->c:Lrr;

    return-object p0
.end method

.method public static i(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    return-object p0

    .line 4
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static synthetic l(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic m(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic n(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public static s(Lrr;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrr;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v2, p0, Lrr;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 6
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 7
    iput-object v1, p0, Lrr;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method


# virtual methods
.method public final A(II)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    sub-int v2, v0, p1

    sub-int v3, v1, p2

    .line 3
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lre;

    invoke-virtual {v1, p0, p1, p2}, Lre;->a(Landroid/support/v7/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    return-void
.end method

.method public final B()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ay:Lhn;

    invoke-virtual {v0, p0}, Lhn;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    nop

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final C()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ay:Lhn;

    invoke-virtual {v0, p0}, Lhn;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    nop

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final D()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ay:Lhn;

    invoke-virtual {v0, p0}, Lhn;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    nop

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final E()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ay:Lhn;

    invoke-virtual {v0, p0}, Lhn;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    nop

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method final F(Lro;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Lrq;

    iget-object v0, v0, Lrq;->c:Landroid/widget/OverScroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lro;->o:I

    .line 3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Lro;->p:I

    return-void

    :cond_0
    nop

    .line 4
    const/4 v0, 0x0

    iput v0, p1, Lro;->o:I

    .line 5
    iput v0, p1, Lro;->p:I

    return-void
.end method

.method final H()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public I()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_1

    .line 2
    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lra;->O(Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->K()V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final J(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->aa(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 2
    invoke-virtual {v0, p1}, Lra;->T(I)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method final K()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v0}, Lor;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v4, v2}, Lor;->f(I)Landroid/view/View;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lrb;

    iput-boolean v3, v4, Lrb;->e:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v2, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v4, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrr;

    .line 6
    iget-object v4, v4, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lrb;

    if-eqz v4, :cond_1

    iput-boolean v3, v4, Lrb;->e:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final L(IIZ)V
    .locals 7

    .line 1
    add-int v0, p1, p2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v1}, Lor;->c()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v3, v2}, Lor;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Lrr;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v3, Lrr;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    .line 4
    invoke-virtual {v3, v4, p3}, Lrr;->offsetPosition(IZ)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 5
    iput-boolean v5, v3, Lro;->f:Z

    goto :goto_1

    :cond_0
    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    .line 6
    invoke-virtual {v3, v4, v6, p3}, Lrr;->flagRemovedAndOffsetPosition(IIZ)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 7
    iput-boolean v5, v3, Lro;->f:Z

    .line 5
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v2, v1, Lrh;->c:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_5

    iget-object v3, v1, Lrh;->c:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrr;

    if-eqz v3, :cond_4

    iget v4, v3, Lrr;->mPosition:I

    if-lt v4, v0, :cond_3

    neg-int v4, p2

    .line 10
    invoke-virtual {v3, v4, p3}, Lrr;->offsetPosition(IZ)V

    goto :goto_3

    :cond_3
    if-lt v4, p1, :cond_4

    const/16 v4, 0x8

    .line 11
    invoke-virtual {v3, v4}, Lrr;->addFlags(I)V

    .line 12
    invoke-virtual {v1, v2}, Lrh;->h(I)V

    .line 10
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final M()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    return-void
.end method

.method final N()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->O(Z)V

    return-void
.end method

.method public final O(Z)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    if-eqz p1, :cond_4

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v2, 0x800

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->N:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrr;

    .line 8
    iget-object v2, v0, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_2

    invoke-virtual {v0}, Lrr;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget v2, v0, Lrr;->mPendingAccessibilityState:I

    if-eq v2, v1, :cond_2

    .line 10
    iget-object v3, v0, Lrr;->itemView:Landroid/view/View;

    invoke-static {v3, v2}, Lhs;->z(Landroid/view/View;I)V

    .line 11
    iput v1, v0, Lrr;->mPendingAccessibilityState:I

    .line 8
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->N:Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method public final P()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->at:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lhs;->r(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Z

    :cond_0
    return-void
.end method

.method public final Q(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {p1}, Lor;->c()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, p1, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v3, v1}, Lor;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Lrr;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    invoke-virtual {v3, v2}, Lrr;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->K()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v1, p1, Lrh;->c:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v3, p1, Lrh;->c:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrr;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3, v2}, Lrr;->addFlags(I)V

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v3, v4}, Lrr;->addChangePayload(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lrh;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lqq;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    return-void

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lrh;->g()V

    return-void
.end method

.method public final R(Lrr;Lqu;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lrr;->setFlags(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 2
    iget-boolean v0, v0, Lro;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lrr;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lrr;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lrr;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Lrr;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 5
    invoke-virtual {v2, v0, v1, p1}, Lta;->c(JLrr;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 6
    invoke-virtual {v0, p1, p2}, Lta;->e(Lrr;Lqu;)V

    return-void
.end method

.method public final S()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqv;->i()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 2
    invoke-virtual {v0, v1}, Lra;->aJ(Lrh;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 3
    invoke-virtual {v0, v1}, Lra;->aK(Lrh;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 4
    invoke-virtual {v0}, Lrh;->e()V

    return-void
.end method

.method public final T(Lqx;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lra;->O(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->K()V

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final U(Lre;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final V(II[I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ac()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    .line 3
    const-string v0, "RV Scroll"

    invoke-static {v0}, Lxz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->F(Lro;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 5
    invoke-virtual {v1, p1, v2, v3}, Lra;->d(ILrh;Lro;)I

    move-result p1

    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 6
    invoke-virtual {v1, p2, v2, v3}, Lra;->e(ILrh;Lro;)I

    move-result p2

    goto :goto_1

    .line 18
    :cond_1
    const/4 p2, 0x0

    .line 7
    :goto_1
    invoke-static {}, Lxz;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 8
    invoke-virtual {v1}, Lor;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 9
    invoke-virtual {v3, v2}, Lor;->e(I)Landroid/view/View;

    move-result-object v3

    .line 10
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Lrr;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lrr;->mShadowingHolder:Lrr;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lrr;->itemView:Landroid/view/View;

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 13
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v3, v6, :cond_3

    .line 14
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    .line 16
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    .line 18
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ad(Z)V

    if-eqz p3, :cond_5

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    :cond_5
    return-void
.end method

.method public W(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->af()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v0, :cond_1

    .line 2
    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Lra;->T(I)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method public final X(Lrt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->L:Lrt;

    invoke-static {p0, p1}, Lhs;->u(Landroid/view/View;Lgh;)V

    return-void
.end method

.method public Y(Lqq;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->suppressLayout(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->R:Lrj;

    .line 2
    invoke-virtual {v1, v2}, Lqq;->unregisterAdapterDataObserver(Lqs;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 3
    invoke-virtual {v1, p0}, Lqq;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->S()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 5
    invoke-virtual {v1}, Lnf;->j()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->R:Lrj;

    .line 6
    invoke-virtual {p1, v2}, Lqq;->registerAdapterDataObserver(Lqs;)V

    .line 7
    invoke-virtual {p1, p0}, Lqq;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lra;->bk()V

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    .line 9
    invoke-virtual {p1}, Lrh;->e()V

    invoke-virtual {p1}, Lrh;->b()Lrg;

    move-result-object p1

    if-eqz v1, :cond_3

    iget v1, p1, Lrg;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lrg;->b:I

    :cond_3
    iget v1, p1, Lrg;->b:I

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lrg;->a:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p1, Lrg;->a:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrf;

    .line 12
    iget-object v3, v3, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-eqz v2, :cond_5

    iget v2, p1, Lrg;->b:I

    add-int/2addr v2, v1

    iput v2, p1, Lrg;->b:I

    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 13
    iput-boolean v1, p1, Lro;->f:Z

    .line 14
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->Q(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final Z(Lra;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->af()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lqv;->i()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 3
    invoke-virtual {v0, v1}, Lra;->aJ(Lrh;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 4
    invoke-virtual {v0, v1}, Lra;->aK(Lrh;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 5
    invoke-virtual {v0}, Lrh;->e()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 6
    invoke-virtual {v0, p0}, Lra;->bn(Landroid/support/v7/widget/RecyclerView;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lra;->aT(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 8
    invoke-virtual {v0}, Lrh;->e()V

    .line 7
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iget-object v1, v0, Lor;->a:Loq;

    .line 9
    invoke-virtual {v1}, Loq;->d()V

    iget-object v1, v0, Lor;->b:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    iget-object v2, v0, Lor;->c:Lqw;

    iget-object v3, v0, Lor;->b:Ljava/util/List;

    .line 11
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lqw;->j(Landroid/view/View;)V

    iget-object v2, v0, Lor;->b:Ljava/util/List;

    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lor;->c:Lqw;

    .line 13
    invoke-virtual {v0}, Lqw;->g()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    .line 14
    invoke-virtual {v0, v2}, Lqw;->i(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 15
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->x(Landroid/view/View;)V

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 17
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz p1, :cond_7

    iget-object v0, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 19
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 20
    invoke-virtual {p1, p0}, Lra;->aT(Landroid/support/v7/widget/RecyclerView;)V

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 21
    invoke-virtual {p1}, Lra;->aZ()V

    goto :goto_3

    .line 17
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lra;->r:Landroid/support/v7/widget/RecyclerView;

    .line 19
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_7
    :goto_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 22
    invoke-virtual {p1}, Lrh;->m()V

    .line 23
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final a(Lrr;)I
    .locals 6

    .line 1
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lrr;->hasAnyOfTheFlags(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 2
    invoke-virtual {p1}, Lrr;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    iget p1, p1, Lrr;->mPosition:I

    iget-object v2, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    iget-object v4, v0, Lnf;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lne;

    .line 5
    iget v5, v4, Lne;->a:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 6
    :sswitch_0
    iget v5, v4, Lne;->b:I

    if-ne v5, p1, :cond_1

    .line 7
    iget p1, v4, Lne;->d:I

    goto :goto_1

    :cond_1
    if-ge v5, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 8
    :cond_2
    iget v4, v4, Lne;->d:I

    if-gt v4, p1, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 9
    :sswitch_1
    iget v5, v4, Lne;->b:I

    if-gt v5, p1, :cond_4

    .line 10
    iget v4, v4, Lne;->d:I

    add-int/2addr v5, v4

    if-le v5, p1, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr p1, v4

    goto :goto_1

    .line 11
    :sswitch_2
    iget v5, v4, Lne;->b:I

    if-gt v5, p1, :cond_4

    .line 12
    iget v4, v4, Lne;->d:I

    add-int/2addr p1, v4

    .line 5
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_5
    move v1, p1

    .line 10
    :goto_2
    return v1

    .line 2
    :cond_6
    :goto_3
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final aa(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aB()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Lra;->aI(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lre;

    invoke-virtual {v1, p1}, Lre;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final ab(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->an(IIZ)V

    return-void
.end method

.method public final ac()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    :cond_0
    return-void
.end method

.method public final ad(Z)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    :cond_1
    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    :cond_2
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-nez p1, :cond_3

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    :cond_3
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    return-void
.end method

.method public final ae(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgu;->b(I)V

    return-void
.end method

.method public final af()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->aa(I)V

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aB()V

    return-void
.end method

.method public final ah(II[I[II)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lgu;->e(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final ai()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    invoke-virtual {v0}, Lnf;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final aj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ak()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final al(IILandroid/view/MotionEvent;I)Z
    .locals 17

    .line 1
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->M:[I

    .line 2
    aput v12, v0, v12

    .line 3
    aput v12, v0, v11

    .line 4
    invoke-virtual {v8, v9, v10, v0}, Landroid/support/v7/widget/RecyclerView;->V(II[I)V

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->M:[I

    .line 5
    aget v1, v0, v12

    .line 6
    aget v0, v0, v11

    sub-int v2, v9, v1

    sub-int v3, v10, v0

    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    goto :goto_0

    .line 25
    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 6
    :goto_0
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_1
    iget-object v7, v8, Landroid/support/v7/widget/RecyclerView;->M:[I

    .line 9
    aput v12, v7, v12

    .line 10
    aput v12, v7, v11

    iget-object v5, v8, Landroid/support/v7/widget/RecyclerView;->ar:[I

    .line 11
    move-object/from16 v0, p0

    move v1, v14

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/RecyclerView;->z(IIII[II[I)V

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->M:[I

    .line 12
    aget v1, v0, v12

    sub-int/2addr v15, v1

    .line 13
    aget v0, v0, v11

    sub-int v2, v16, v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 25
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 13
    :goto_1
    iget v1, v8, Landroid/support/v7/widget/RecyclerView;->ah:I

    iget-object v3, v8, Landroid/support/v7/widget/RecyclerView;->ar:[I

    .line 14
    aget v4, v3, v12

    sub-int/2addr v1, v4

    iput v1, v8, Landroid/support/v7/widget/RecyclerView;->ah:I

    iget v1, v8, Landroid/support/v7/widget/RecyclerView;->ai:I

    .line 15
    aget v5, v3, v11

    sub-int/2addr v1, v5

    iput v1, v8, Landroid/support/v7/widget/RecyclerView;->ai:I

    iget-object v1, v8, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 16
    aget v5, v1, v12

    add-int/2addr v5, v4

    aput v5, v1, v12

    .line 17
    aget v4, v1, v11

    aget v3, v3, v11

    add-int/2addr v4, v3

    aput v4, v1, v11

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_b

    if-eqz p3, :cond_a

    .line 19
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v3, 0x2002

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    goto/16 :goto_4

    .line 20
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v3, v15

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpg-float v7, v3, v6

    if-gez v7, :cond_5

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->C()V

    iget-object v7, v8, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    neg-float v15, v3

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v15, v11

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v4, v11

    sub-float v4, v5, v4

    .line 22
    invoke-static {v7, v15, v4}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    goto :goto_2

    .line 29
    :cond_5
    cmpl-float v7, v3, v6

    if-lez v7, :cond_6

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->D()V

    iget-object v7, v8, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v3, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v4, v15

    invoke-static {v7, v11, v4}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 22
    :goto_2
    cmpg-float v7, v2, v6

    if-gez v7, :cond_7

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->E()V

    iget-object v3, v8, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    neg-float v2, v2

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v3, v2, v1}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    goto :goto_3

    .line 31
    :cond_7
    cmpl-float v7, v2, v6

    if-lez v7, :cond_8

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    iget-object v3, v8, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float/2addr v5, v1

    .line 29
    invoke-static {v3, v2, v5}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    goto :goto_3

    :cond_8
    if-nez v4, :cond_9

    cmpl-float v1, v3, v6

    if-nez v1, :cond_9

    cmpl-float v1, v2, v6

    if-eqz v1, :cond_a

    .line 31
    :cond_9
    :goto_3
    invoke-static/range {p0 .. p0}, Lhs;->q(Landroid/view/View;)V

    .line 32
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->u(II)V

    :cond_b
    if-nez v14, :cond_d

    if-eqz v13, :cond_c

    const/4 v14, 0x0

    goto :goto_5

    .line 35
    :cond_c
    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_6

    :cond_d
    nop

    .line 33
    :goto_5
    invoke-virtual {v8, v14, v13}, Landroid/support/v7/widget/RecyclerView;->A(II)V

    .line 34
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_e

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_e
    if-nez v0, :cond_10

    if-nez v14, :cond_10

    if-eqz v13, :cond_f

    goto :goto_7

    :cond_f
    return v12

    :cond_10
    :goto_7
    const/4 v0, 0x1

    return v0
.end method

.method public final am(Lrr;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p1, Lrr;->mPendingAccessibilityState:I

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->N:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p1, p1, Lrr;->itemView:Landroid/view/View;

    .line 2
    invoke-static {p1, p2}, Lhs;->z(Landroid/view/View;I)V

    return-void
.end method

.method public final an(IIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lra;->W()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 2
    invoke-virtual {v0}, Lra;->X()Z

    move-result v0

    if-eq v2, v0, :cond_3

    const/4 p2, 0x0

    :cond_3
    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_4
    return-void

    .line 2
    :cond_5
    :goto_0
    if-eqz p3, :cond_8

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    .line 4
    :cond_6
    nop

    .line 2
    :goto_1
    if-eqz p2, :cond_7

    or-int/lit8 v1, v1, 0x2

    .line 3
    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->ao(II)V

    :cond_8
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->E:Lrq;

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p3, p1, p2, v0, v1}, Lrq;->b(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final ao(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgu;->i(II)Z

    return-void
.end method

.method public final b(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lrr;->getAbsoluteAdapterPosition()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method final c(Lrr;)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    invoke-virtual {v0}, Lqq;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lrr;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget p1, p1, Lrr;->mPosition:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lrb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    check-cast p1, Lrb;

    invoke-virtual {v0, p1}, Lra;->s(Lrb;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lra;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {v0, v1}, Lra;->A(Lro;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lra;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {v0, v1}, Lra;->B(Lro;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lra;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {v0, v1}, Lra;->C(Lro;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lra;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {v0, v1}, Lra;->D(Lro;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lra;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {v0, v1}, Lra;->E(Lro;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lra;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {v0, v1}, Lra;->F(Lro;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    .line 2
    iget-boolean v1, v0, Lrb;->e:Z

    if-nez v1, :cond_0

    .line 3
    iget-object p1, v0, Lrb;->d:Landroid/graphics/Rect;

    return-object p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-boolean v1, v1, Lro;->g:Z

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lrb;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lrb;->c:Lrr;

    .line 5
    invoke-virtual {v1}, Lrr;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, v0, Lrb;->d:Landroid/graphics/Rect;

    return-object p1

    .line 6
    :cond_2
    :goto_0
    iget-object v1, v0, Lrb;->d:Landroid/graphics/Rect;

    .line 7
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqx;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    invoke-virtual {v5, v6, p1, p0, v7}, Lqx;->j(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lro;)V

    .line 11
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 12
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 13
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 14
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 15
    iput-boolean v2, v0, Lrb;->e:Z

    return-object v1
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lgu;->c(FFZ)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgu;->d(FF)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lgu;->e(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lgu;->f(IIII[I)Z

    move-result p1

    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqx;

    invoke-virtual {v3, p1, p0}, Lqx;->f(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    .line 28
    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 7
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    .line 28
    :cond_2
    const/4 v3, 0x0

    .line 10
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 28
    :cond_3
    const/4 v3, 0x0

    .line 10
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    .line 28
    :cond_5
    const/4 v4, 0x0

    .line 14
    :goto_4
    or-int/2addr v3, v4

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    .line 16
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v5, :cond_7

    .line 19
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    goto :goto_5

    .line 28
    :cond_7
    const/4 v5, 0x0

    .line 19
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 20
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    .line 21
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    .line 22
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    .line 28
    :cond_8
    const/4 v4, 0x0

    .line 22
    :goto_6
    or-int/2addr v3, v4

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    .line 24
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 26
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v4, :cond_a

    .line 27
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 28
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    .line 29
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    .line 33
    :cond_b
    nop

    .line 29
    :goto_8
    or-int/2addr v3, v1

    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_9

    .line 28
    :cond_c
    nop

    .line 30
    :goto_9
    if-nez v3, :cond_e

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    .line 32
    invoke-virtual {p1}, Lqv;->l()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_a

    .line 33
    :cond_d
    return-void

    :cond_e
    :goto_a
    invoke-static {p0}, Lhs;->q(Landroid/view/View;)V

    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public e()Lqq;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    return-object v0
.end method

.method public final f(I)Lrr;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v0}, Lor;->c()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v3, v2}, Lor;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {v3}, Lrr;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Lrr;)I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iget-object v4, v3, Lrr;->itemView:Landroid/view/View;

    .line 5
    invoke-virtual {v1, v4}, Lor;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ak()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    if-ne p2, v1, :cond_b

    const/4 p2, 0x1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 2
    invoke-virtual {v0}, Lra;->X()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v5, :cond_3

    const/16 v0, 0x82

    goto :goto_1

    .line 28
    :cond_3
    const/16 v0, 0x21

    .line 3
    :goto_1
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 4
    invoke-virtual {v0}, Lra;->W()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 5
    invoke-virtual {v0}, Lra;->an()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    .line 28
    :cond_5
    const/4 v0, 0x0

    .line 5
    :goto_2
    if-ne p2, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    .line 28
    :cond_6
    const/4 v5, 0x0

    .line 5
    :goto_3
    xor-int/2addr v0, v5

    if-eq v1, v0, :cond_7

    const/16 v0, 0x11

    goto :goto_4

    .line 28
    :cond_7
    const/16 v0, 0x42

    .line 6
    :goto_4
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    .line 7
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    .line 8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v4

    .line 9
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ac()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 10
    invoke-virtual {v0, p1, p2, v5, v6}, Lra;->j(Landroid/view/View;ILrh;Lro;)Landroid/view/View;

    .line 11
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->ad(Z)V

    .line 12
    :cond_a
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 13
    :cond_b
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_d

    if-eqz v0, :cond_d

    .line 14
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    .line 15
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v4

    .line 16
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ac()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 17
    invoke-virtual {v0, p1, p2, v3, v5}, Lra;->j(Landroid/view/View;ILrh;Lro;)Landroid/view/View;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->ad(Z)V

    goto :goto_5

    :cond_d
    nop

    .line 12
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_f

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_f

    .line 33
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    .line 34
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_e
    nop

    .line 35
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/RecyclerView;->ay(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    :cond_f
    if-eqz v0, :cond_1e

    if-eq v0, p0, :cond_1e

    if-ne v0, p1, :cond_10

    goto/16 :goto_c

    .line 20
    :cond_10
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1e

    if-nez p1, :cond_11

    goto/16 :goto_b

    .line 21
    :cond_11
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 26
    invoke-virtual {v3}, Lra;->an()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v1, :cond_12

    const/4 v3, -0x1

    goto :goto_6

    .line 28
    :cond_12
    const/4 v3, 0x1

    .line 26
    :goto_6
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 27
    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_13

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-gt v5, v6, :cond_14

    :cond_13
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_14

    const/4 v5, 0x1

    goto :goto_7

    .line 30
    :cond_14
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 28
    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_15

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-lt v5, v6, :cond_16

    :cond_15
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_16

    const/4 v5, -0x1

    goto :goto_7

    :cond_16
    const/4 v5, 0x0

    .line 27
    :goto_7
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 29
    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-lt v6, v7, :cond_17

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_18

    :cond_17
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_18

    const/4 v4, 0x1

    goto :goto_8

    :cond_18
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 30
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v7, :cond_19

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_1a

    :cond_19
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v4, 0x0

    .line 29
    :goto_8
    sparse-switch p2, :sswitch_data_0

    .line 18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :sswitch_0
    if-lez v4, :cond_1e

    goto :goto_9

    :sswitch_1
    if-lez v5, :cond_1e

    goto :goto_9

    :sswitch_2
    if-gez v4, :cond_1e

    goto :goto_9

    :sswitch_3
    if-gez v5, :cond_1e

    :goto_9
    goto :goto_b

    :sswitch_4
    if-gtz v4, :cond_1c

    if-nez v4, :cond_1b

    mul-int v5, v5, v3

    if-lez v5, :cond_1e

    goto :goto_a

    :sswitch_5
    if-ltz v4, :cond_1c

    if-nez v4, :cond_1b

    mul-int v5, v5, v3

    if-gez v5, :cond_1e

    goto :goto_a

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_a
    if-eqz v1, :cond_1e

    goto :goto_9

    .line 20
    :cond_1d
    :goto_b
    return-object v0

    .line 31
    :cond_1e
    :goto_c
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(Landroid/view/View;)Lrr;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object p1

    return-object p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lra;->f()Lrb;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lra;->h(Landroid/content/Context;Landroid/util/AttributeSet;)Lrb;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lra;->g(Landroid/view/ViewGroup$LayoutParams;)Lrb;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "android.support.v7.widget.RecyclerView"

    return-object v0
.end method

.method public final getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method public final getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    return v0
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgu;->h(I)Z

    move-result v0

    return v0
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    return v0
.end method

.method public final isLayoutSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    return v0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    iget-boolean v0, v0, Lgu;->a:Z

    return v0
.end method

.method public final j(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lrr;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lrr;->itemView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Lrr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrh;->l(Lrr;)V

    .line 4
    invoke-virtual {p1}, Lrr;->isTmpDetached()Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1, v2}, Lor;->h(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_0
    if-eq v1, p0, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 6
    invoke-virtual {p1, v0, v3, v2}, Lor;->g(Landroid/view/View;IZ)V

    return-void

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iget-object v1, p1, Lor;->c:Lqw;

    .line 7
    invoke-virtual {v1, v0}, Lqw;->h(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 8
    iget-object v2, p1, Lor;->a:Loq;

    .line 9
    invoke-virtual {v2, v1}, Loq;->e(I)V

    .line 10
    invoke-virtual {p1, v0}, Lor;->j(Landroid/view/View;)V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lra;->aZ()V

    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Z

    .line 4
    sget-object v0, Lpp;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpp;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Lpp;

    if-nez v0, :cond_4

    new-instance v0, Lpp;

    .line 5
    invoke-direct {v0}, Lpp;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Lpp;

    .line 6
    invoke-static {p0}, Lhs;->n(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_1

    .line 11
    :cond_3
    nop

    .line 8
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Lpp;

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    float-to-long v1, v1

    .line 9
    iput-wide v1, v0, Lpp;->e:J

    sget-object v0, Lpp;->a:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Lpp;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Lpp;

    iget-object v0, v0, Lpp;->c:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lqv;->i()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->af()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Lra;->bn(Landroid/support/v7/widget/RecyclerView;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->at:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object v0, Lsz;->d:Lge;

    .line 7
    invoke-virtual {v0}, Lge;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Lpp;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lpp;->c:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Lpp;

    :cond_3
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqx;

    invoke-virtual {v2, p1, p0}, Lqx;->k(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_14

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 3
    invoke-virtual {v0}, Lra;->X()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    .line 15
    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 5
    invoke-virtual {v3}, Lra;->W()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_1

    .line 15
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 9
    invoke-virtual {v0}, Lra;->X()Z

    move-result v0

    if-eqz v0, :cond_5

    neg-float v0, v3

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 10
    invoke-virtual {v0}, Lra;->W()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_1
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_14

    :cond_7
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->al:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->am:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v3, :cond_8

    .line 11
    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_8
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-nez v4, :cond_14

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->M:[I

    .line 12
    aput v1, v4, v1

    .line 13
    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-virtual {v3}, Lra;->W()Z

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 14
    invoke-virtual {v4}, Lra;->X()Z

    move-result v4

    if-eqz v3, :cond_9

    const/4 v6, 0x1

    goto :goto_2

    .line 15
    :cond_9
    const/4 v6, 0x0

    .line 14
    :goto_2
    if-eqz v4, :cond_a

    or-int/lit8 v6, v6, 0x2

    :cond_a
    const/high16 v7, 0x40000000    # 2.0f

    if-nez p1, :cond_b

    .line 15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    :goto_3
    if-nez p1, :cond_c

    .line 16
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 17
    :goto_4
    invoke-direct {p0, v2, v8}, Landroid/support/v7/widget/RecyclerView;->ap(IF)I

    move-result v7

    sub-int/2addr v2, v7

    .line 18
    invoke-direct {p0, v0, v9}, Landroid/support/v7/widget/RecyclerView;->aq(IF)I

    move-result v7

    sub-int/2addr v0, v7

    .line 19
    invoke-virtual {p0, v6, v5}, Landroid/support/v7/widget/RecyclerView;->ao(II)V

    if-eq v5, v3, :cond_d

    const/4 v8, 0x0

    goto :goto_5

    .line 25
    :cond_d
    move v8, v2

    .line 19
    :goto_5
    if-eq v5, v4, :cond_e

    const/4 v9, 0x0

    goto :goto_6

    .line 25
    :cond_e
    move v9, v0

    .line 19
    :goto_6
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->M:[I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->ar:[I

    const/4 v12, 0x1

    .line 20
    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/RecyclerView;->ah(II[I[II)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->M:[I

    .line 21
    aget v7, v6, v1

    sub-int/2addr v2, v7

    .line 22
    aget v6, v6, v5

    sub-int/2addr v0, v6

    goto :goto_7

    .line 25
    :cond_f
    nop

    .line 22
    :goto_7
    if-eq v5, v3, :cond_10

    const/4 v3, 0x0

    goto :goto_8

    .line 25
    :cond_10
    move v3, v2

    .line 22
    :goto_8
    if-eq v5, v4, :cond_11

    const/4 v4, 0x0

    goto :goto_9

    .line 25
    :cond_11
    move v4, v0

    .line 22
    :goto_9
    nop

    .line 23
    invoke-virtual {p0, v3, v4, p1, v5}, Landroid/support/v7/widget/RecyclerView;->al(IILandroid/view/MotionEvent;I)Z

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->F:Lpp;

    if-eqz p1, :cond_13

    if-nez v2, :cond_12

    if-eqz v0, :cond_13

    const/4 v2, 0x0

    goto :goto_a

    .line 25
    :cond_12
    nop

    .line 24
    :goto_a
    invoke-virtual {p1, p0, v2, v0}, Lpp;->a(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_13
    nop

    .line 25
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->ae(I)V

    .line 11
    :cond_14
    :goto_b
    return v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Lrd;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->aC(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->as()V

    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lra;->W()Z

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 3
    invoke-virtual {v3}, Lra;->X()Z

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 5
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 8
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->aw(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    .line 9
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 10
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 11
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    goto/16 :goto_5

    .line 12
    :pswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->as()V

    goto/16 :goto_5

    :pswitch_4
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 13
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 15
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 16
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-eq v4, v2, :cond_f

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    sub-int v4, v5, v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_5

    .line 17
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    if-le v0, v4, :cond_5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    const/4 v0, 0x1

    goto :goto_0

    .line 19
    :cond_5
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v3, :cond_6

    .line 18
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    if-le v3, v4, :cond_6

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ai:I

    goto :goto_1

    .line 19
    :cond_6
    if-eqz v0, :cond_f

    .line 18
    :goto_1
    nop

    .line 19
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->aa(I)V

    goto/16 :goto_5

    :pswitch_5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 20
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 21
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->ae(I)V

    goto/16 :goto_5

    :pswitch_6
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    if-eqz v4, :cond_7

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    .line 22
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    .line 25
    invoke-static {v4}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float v7, v5, v7

    invoke-static {v4, v6, v7}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    goto :goto_2

    .line 37
    :cond_8
    const/4 v4, 0x0

    .line 26
    :goto_2
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_9

    .line 27
    invoke-static {v7}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v7

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_9

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v4, v6, v7}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    :cond_9
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_a

    .line 29
    invoke-static {v7}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v7

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_a

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v4, v6, v7}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    :cond_a
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_b

    .line 31
    invoke-static {v7}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v7

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr p1, v7

    sub-float/2addr v5, p1

    invoke-static {v4, v6, v5}, Lhg;->l(Landroid/widget/EdgeEffect;FF)F

    goto :goto_3

    .line 37
    :cond_b
    if-nez v4, :cond_c

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_d

    .line 33
    :cond_c
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 34
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->aa(I)V

    .line 35
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->ae(I)V

    :cond_d
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 36
    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v3, :cond_e

    or-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 37
    :cond_e
    nop

    .line 36
    :goto_4
    nop

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->ao(II)V

    .line 7
    :cond_f
    :goto_5
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-ne p1, v2, :cond_10

    return v2

    :cond_10
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 1
    const-string p1, "RV OnLayout"

    invoke-static {p1}, Lxz;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 3
    invoke-static {}, Lxz;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->w(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lra;->Y()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 4
    invoke-virtual {v4, p1, p2}, Lra;->bl(II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 19
    :cond_1
    nop

    .line 4
    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->au:Z

    if-nez v2, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 5
    iget v0, v0, Lro;->d:I

    if-ne v0, v1, :cond_3

    .line 6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->at()V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 7
    invoke-virtual {v0, p1, p2}, Lra;->aQ(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 8
    iput-boolean v1, v0, Lro;->i:Z

    .line 9
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->au()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 10
    invoke-virtual {v0, p1, p2}, Lra;->aS(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 11
    invoke-virtual {v0}, Lra;->ab()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 14
    invoke-virtual {v0, v2, v3}, Lra;->aQ(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 15
    iput-boolean v1, v0, Lro;->i:Z

    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->au()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 17
    invoke-virtual {v0, p1, p2}, Lra;->aS(II)V

    .line 18
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->av:I

    .line 19
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->aw:I

    return-void

    .line 4
    :cond_5
    :goto_1
    return-void

    .line 19
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ac()V

    .line 21
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ax()V

    .line 23
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 24
    iget-boolean v3, v0, Lro;->k:Z

    if-eqz v3, :cond_7

    .line 25
    iput-boolean v1, v0, Lro;->g:Z

    goto :goto_2

    .line 31
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 26
    invoke-virtual {v0}, Lnf;->e()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 27
    iput-boolean v2, v0, Lro;->g:Z

    .line 25
    :goto_2
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 28
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->ad(Z)V

    goto :goto_3

    .line 27
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 29
    iget-boolean v0, v0, Lro;->k:Z

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void

    .line 28
    :cond_9
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v0, :cond_a

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 30
    invoke-virtual {v0}, Lqq;->getItemCount()I

    move-result v0

    iput v0, v1, Lro;->e:I

    goto :goto_4

    .line 35
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 31
    iput v2, v0, Lro;->e:I

    .line 32
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ac()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 33
    invoke-virtual {v0, p1, p2}, Lra;->bl(II)V

    .line 34
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->ad(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 35
    iput-boolean v2, p1, Lro;->g:Z

    return-void
.end method

.method protected final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lrk;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lrk;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lrk;

    iget-object p1, p1, Lyv;->d:Landroid/os/Parcelable;

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Lrk;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lrk;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Lrk;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lrk;->a:Landroid/os/Parcelable;

    iput-object v1, v0, Lrk;->a:Landroid/os/Parcelable;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lra;->L()Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lrk;->a:Landroid/os/Parcelable;

    .line 1
    :goto_1
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->H()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    .line 1
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->t:Z

    const/4 v8, 0x0

    if-nez v0, :cond_3d

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->U:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1f

    :cond_0
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->p:Lrd;

    const/4 v9, 0x1

    if-nez v0, :cond_3a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->aC(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1e

    .line 1
    :cond_2
    :goto_0
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v0, :cond_3

    return v8

    :cond_3
    invoke-virtual {v0}, Lra;->W()Z

    move-result v10

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 3
    invoke-virtual {v0}, Lra;->X()Z

    move-result v11

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 5
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_5

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 7
    aput v8, v0, v9

    aput v8, v0, v8

    const/4 v0, 0x0

    .line 8
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 9
    aget v3, v2, v8

    int-to-float v3, v3

    aget v2, v2, v9

    int-to-float v2, v2

    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const-string v2, "RecyclerView"

    const/high16 v3, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1c

    .line 10
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->aw(Landroid/view/MotionEvent;)V

    goto/16 :goto_1c

    .line 11
    :pswitch_2
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 12
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 13
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ag:I

    goto/16 :goto_1c

    .line 14
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->as()V

    goto/16 :goto_1c

    :pswitch_4
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 15
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 17
    :cond_6
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v13, v1

    .line 18
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v14, v0

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->ah:I

    sub-int/2addr v0, v13

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->ai:I

    sub-int/2addr v1, v14

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-eq v2, v9, :cond_e

    if-eqz v10, :cond_9

    if-lez v0, :cond_7

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->aj:I

    sub-int/2addr v0, v2

    .line 19
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 22
    :cond_7
    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->aj:I

    add-int/2addr v0, v2

    .line 20
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 19
    :goto_1
    if-eqz v0, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    .line 22
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 20
    :cond_9
    const/4 v2, 0x0

    .line 19
    :goto_2
    if-eqz v11, :cond_c

    if-lez v1, :cond_a

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->aj:I

    sub-int/2addr v1, v3

    .line 21
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    .line 38
    :cond_a
    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->aj:I

    add-int/2addr v1, v3

    .line 22
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 21
    :goto_3
    if-eqz v1, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    .line 38
    :cond_b
    goto :goto_4

    .line 22
    :cond_c
    nop

    .line 21
    :goto_4
    if-eqz v2, :cond_d

    .line 23
    invoke-virtual {v6, v9}, Landroid/support/v7/widget/RecyclerView;->aa(I)V

    goto :goto_5

    .line 38
    :cond_d
    goto :goto_5

    .line 20
    :cond_e
    nop

    .line 23
    :goto_5
    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->ac:I

    if-ne v2, v9, :cond_39

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->M:[I

    .line 24
    aput v8, v2, v8

    .line 25
    aput v8, v2, v9

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v6, v0, v2}, Landroid/support/v7/widget/RecyclerView;->ap(IF)I

    move-result v2

    sub-int v15, v0, v2

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {v6, v1, v0}, Landroid/support/v7/widget/RecyclerView;->aq(IF)I

    move-result v0

    sub-int v16, v1, v0

    if-eq v9, v10, :cond_f

    const/4 v1, 0x0

    goto :goto_6

    .line 38
    :cond_f
    move v1, v15

    .line 27
    :goto_6
    if-eq v9, v11, :cond_10

    const/4 v2, 0x0

    goto :goto_7

    .line 38
    :cond_10
    move/from16 v2, v16

    .line 27
    :goto_7
    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->M:[I

    iget-object v4, v6, Landroid/support/v7/widget/RecyclerView;->ar:[I

    const/4 v5, 0x0

    .line 28
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->ah(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->M:[I

    .line 29
    aget v1, v0, v8

    sub-int/2addr v15, v1

    .line 30
    aget v0, v0, v9

    sub-int v16, v16, v0

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 31
    aget v1, v0, v8

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->ar:[I

    aget v3, v2, v8

    add-int/2addr v1, v3

    aput v1, v0, v8

    .line 32
    aget v1, v0, v9

    aget v2, v2, v9

    add-int/2addr v1, v2

    aput v1, v0, v9

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move/from16 v0, v16

    goto :goto_8

    .line 38
    :cond_11
    move/from16 v0, v16

    .line 33
    :goto_8
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->ar:[I

    .line 34
    aget v2, v1, v8

    sub-int/2addr v13, v2

    iput v13, v6, Landroid/support/v7/widget/RecyclerView;->ah:I

    .line 35
    aget v1, v1, v9

    sub-int/2addr v14, v1

    iput v14, v6, Landroid/support/v7/widget/RecyclerView;->ai:I

    if-eq v9, v10, :cond_12

    const/4 v1, 0x0

    goto :goto_9

    .line 38
    :cond_12
    move v1, v15

    .line 35
    :goto_9
    if-eq v9, v11, :cond_13

    const/4 v2, 0x0

    goto :goto_a

    .line 38
    :cond_13
    move v2, v0

    .line 35
    :goto_a
    nop

    .line 36
    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/support/v7/widget/RecyclerView;->al(IILandroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_14
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->F:Lpp;

    if-eqz v1, :cond_39

    if-nez v15, :cond_15

    if-eqz v0, :cond_39

    goto :goto_b

    .line 38
    :cond_15
    move v8, v15

    :goto_b
    invoke-virtual {v1, v6, v8, v0}, Lpp;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_1c

    .line 20
    :pswitch_5
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 39
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->ak:I

    int-to-float v3, v3

    .line 40
    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v10, :cond_16

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 41
    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_c

    .line 49
    :cond_16
    const/4 v1, 0x0

    .line 41
    :goto_c
    if-eqz v11, :cond_17

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    iget v4, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 42
    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_d

    .line 49
    :cond_17
    const/4 v3, 0x0

    .line 42
    :goto_d
    cmpl-float v4, v1, v0

    if-nez v4, :cond_18

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_37

    :cond_18
    float-to-int v1, v1

    float-to-int v3, v3

    iget-object v4, v6, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v4, :cond_19

    .line 43
    const-string v0, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 81
    :cond_19
    iget-boolean v2, v6, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-nez v2, :cond_37

    invoke-virtual {v4}, Lra;->W()Z

    move-result v2

    iget-object v4, v6, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 44
    invoke-virtual {v4}, Lra;->X()Z

    move-result v4

    if-eqz v2, :cond_1a

    .line 45
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, v6, Landroid/support/v7/widget/RecyclerView;->D:I

    if-ge v5, v7, :cond_1b

    const/4 v1, 0x0

    goto :goto_e

    .line 49
    :cond_1a
    const/4 v1, 0x0

    .line 45
    :cond_1b
    :goto_e
    if-eqz v4, :cond_1c

    .line 46
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, v6, Landroid/support/v7/widget/RecyclerView;->D:I

    if-ge v5, v7, :cond_1d

    const/4 v3, 0x0

    goto :goto_f

    .line 49
    :cond_1c
    const/4 v3, 0x0

    .line 46
    :cond_1d
    :goto_f
    if-nez v1, :cond_1e

    if-eqz v3, :cond_37

    const/4 v1, 0x0

    :cond_1e
    if-eqz v1, :cond_20

    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_1f

    .line 47
    invoke-static {v5}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_1f

    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    neg-int v1, v1

    .line 50
    invoke-virtual {v5, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 v1, 0x0

    goto :goto_10

    .line 53
    :cond_1f
    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_20

    .line 48
    invoke-static {v5}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_20

    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 49
    invoke-virtual {v5, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 v1, 0x0

    .line 50
    :cond_20
    :goto_10
    if-eqz v3, :cond_22

    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_21

    .line 51
    invoke-static {v5}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_21

    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    neg-int v3, v3

    .line 54
    invoke-virtual {v5, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 v3, 0x0

    goto :goto_11

    .line 71
    :cond_21
    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_22

    .line 52
    invoke-static {v5}, Lhg;->k(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_22

    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    .line 53
    invoke-virtual {v5, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 v3, 0x0

    .line 54
    :cond_22
    :goto_11
    if-nez v1, :cond_23

    if-eqz v3, :cond_37

    const/4 v1, 0x0

    :cond_23
    int-to-float v5, v1

    int-to-float v7, v3

    .line 55
    invoke-virtual {v6, v5, v7}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v10

    if-nez v10, :cond_37

    if-nez v2, :cond_25

    if-eqz v4, :cond_24

    const/4 v10, 0x1

    goto :goto_12

    .line 71
    :cond_24
    const/4 v10, 0x0

    goto :goto_12

    :cond_25
    const/4 v10, 0x1

    .line 56
    :goto_12
    invoke-virtual {v6, v5, v7, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView;->C:Lrc;

    if-eqz v5, :cond_34

    iget-object v7, v5, Lrc;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v11, :cond_26

    goto/16 :goto_17

    .line 57
    :cond_26
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->e()Lqq;

    move-result-object v7

    if-eqz v7, :cond_34

    iget-object v7, v5, Lrc;->a:Landroid/support/v7/widget/RecyclerView;

    iget v7, v7, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 58
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gt v13, v7, :cond_27

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v13, v7, :cond_34

    .line 59
    :cond_27
    instance-of v7, v11, Lrm;

    if-eqz v7, :cond_34

    new-instance v7, Laoy;

    move-object v13, v5

    check-cast v13, Laoz;

    iget-object v13, v13, Laoz;->d:Landroid/content/Context;

    .line 60
    invoke-direct {v7, v13}, Laoy;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v11}, Lra;->am()I

    move-result v13

    const/4 v14, -0x1

    if-nez v13, :cond_28

    goto/16 :goto_16

    .line 62
    :cond_28
    invoke-virtual {v5, v11}, Lrc;->d(Lra;)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_29

    goto/16 :goto_16

    .line 63
    :cond_29
    invoke-static {v15}, Lra;->bg(Landroid/view/View;)I

    move-result v15

    if-ne v15, v14, :cond_2a

    goto :goto_16

    :cond_2a
    add-int/lit8 v14, v13, -0x1

    .line 64
    move-object v9, v11

    check-cast v9, Lrm;

    .line 65
    invoke-interface {v9, v14}, Lrm;->K(I)Landroid/graphics/PointF;

    move-result-object v9

    if-nez v9, :cond_2b

    const/4 v14, -0x1

    goto :goto_16

    :cond_2b
    invoke-virtual {v11}, Lra;->W()Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 66
    invoke-virtual {v5, v11}, Lrc;->f(Lra;)Lqm;

    move-result-object v0

    .line 67
    invoke-virtual {v5, v11, v0, v1, v8}, Lrc;->c(Lra;Lqm;II)I

    move-result v0

    .line 68
    iget v8, v9, Landroid/graphics/PointF;->x:F

    const/16 v17, 0x0

    cmpg-float v8, v8, v17

    if-gez v8, :cond_2d

    neg-int v0, v0

    goto :goto_13

    .line 71
    :cond_2c
    const/4 v0, 0x0

    .line 68
    :cond_2d
    :goto_13
    invoke-virtual {v11}, Lra;->X()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 69
    invoke-virtual {v5, v11}, Lrc;->g(Lra;)Lqm;

    move-result-object v8

    .line 70
    move/from16 v18, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v11, v8, v0, v3}, Lrc;->c(Lra;Lqm;II)I

    move-result v5

    .line 71
    iget v0, v9, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_2e

    neg-int v0, v5

    goto :goto_14

    :cond_2e
    move v0, v5

    goto :goto_14

    :cond_2f
    move/from16 v18, v0

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v11}, Lra;->X()Z

    move-result v5

    const/4 v8, 0x1

    if-ne v8, v5, :cond_30

    goto :goto_15

    :cond_30
    move/from16 v0, v18

    :goto_15
    if-nez v0, :cond_31

    const/4 v14, -0x1

    goto :goto_16

    :cond_31
    add-int/2addr v0, v15

    if-gez v0, :cond_32

    const/4 v0, 0x0

    :cond_32
    if-lt v0, v13, :cond_33

    goto :goto_16

    :cond_33
    move v14, v0

    .line 61
    :goto_16
    const/4 v0, -0x1

    if-eq v14, v0, :cond_34

    iput v14, v7, Lrn;->a:I

    .line 79
    invoke-virtual {v11, v7}, Lra;->aU(Lrn;)V

    goto :goto_1a

    .line 56
    :cond_34
    :goto_17
    if-eqz v10, :cond_37

    if-eqz v4, :cond_35

    or-int/lit8 v2, v2, 0x2

    goto :goto_18

    .line 78
    :cond_35
    nop

    .line 56
    :goto_18
    nop

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v6, v2, v0}, Landroid/support/v7/widget/RecyclerView;->ao(II)V

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->ak:I

    neg-int v2, v0

    .line 73
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->ak:I

    neg-int v1, v0

    .line 74
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->E:Lrq;

    iget-object v1, v0, Lrq;->e:Landroid/support/v7/widget/RecyclerView;

    .line 75
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->aa(I)V

    const/4 v1, 0x0

    iput v1, v0, Lrq;->b:I

    iput v1, v0, Lrq;->a:I

    iget-object v1, v0, Lrq;->d:Landroid/view/animation/Interpolator;

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->a:Landroid/view/animation/Interpolator;

    if-eq v1, v2, :cond_36

    iput-object v2, v0, Lrq;->d:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/widget/OverScroller;

    iget-object v3, v0, Lrq;->e:Landroid/support/v7/widget/RecyclerView;

    .line 76
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lrq;->c:Landroid/widget/OverScroller;

    :cond_36
    iget-object v1, v0, Lrq;->c:Landroid/widget/OverScroller;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v23, -0x80000000

    const v24, 0x7fffffff

    const/high16 v25, -0x80000000

    const v26, 0x7fffffff

    .line 77
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v26}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 78
    invoke-virtual {v0}, Lrq;->a()V

    goto :goto_1a

    .line 43
    :cond_37
    :goto_19
    nop

    .line 80
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->aa(I)V

    .line 81
    :goto_1a
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->aA()V

    goto :goto_1d

    .line 49
    :pswitch_6
    const/4 v0, 0x0

    .line 82
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->af:I

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ai:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ag:I

    if-eqz v11, :cond_38

    or-int/lit8 v10, v10, 0x2

    goto :goto_1b

    .line 85
    :cond_38
    nop

    .line 84
    :goto_1b
    nop

    .line 85
    const/4 v0, 0x0

    invoke-virtual {v6, v10, v0}, Landroid/support/v7/widget/RecyclerView;->ao(II)V

    .line 9
    :cond_39
    :goto_1c
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/VelocityTracker;

    .line 86
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 87
    :goto_1d
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x1

    return v1

    .line 88
    :cond_3a
    const/4 v1, 0x1

    invoke-interface {v0, v7}, Lrd;->i(Landroid/view/MotionEvent;)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3b

    if-ne v0, v1, :cond_3c

    :cond_3b
    const/4 v0, 0x0

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->p:Lrd;

    .line 90
    :cond_3c
    :goto_1e
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->as()V

    const/4 v0, 0x1

    return v0

    .line 1
    :cond_3d
    :goto_1f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public p(Lqx;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lra;->O(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->K()V

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final q(Lre;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2
    :cond_2
    return-void
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lrr;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lrr;->clearTmpDetachFlag()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lrr;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->x(Landroid/view/View;)V

    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    invoke-virtual {v0}, Lra;->aW()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->ay(Landroid/view/View;Landroid/view/View;)V

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lra;->aX(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrd;

    .line 3
    invoke-interface {v2}, Lrd;->h()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    return-void
.end method

.method public final scrollBy(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lra;->W()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 2
    invoke-virtual {v1}, Lra;->X()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_2
    return-void

    .line 2
    :cond_3
    :goto_0
    const/4 v3, 0x0

    if-eq v2, v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    if-eq v2, v1, :cond_5

    const/4 p2, 0x0

    :cond_5
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/support/v7/widget/RecyclerView;->al(IILandroid/view/MotionEvent;I)Z

    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    .line 1
    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    return-void

    .line 2
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->H()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgu;->a(Z)V

    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgu;->i(II)Z

    move-result p1

    return p1
.end method

.method public final stopNestedScroll()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgu;->b(I)V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->r(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    return-void

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4
    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->af()V

    :cond_2
    return-void
.end method

.method final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v0}, Lor;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v3, v2}, Lor;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lrr;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    invoke-virtual {v3}, Lrr;->clearOldPosition()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    iget-object v2, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, v0, Lrh;->c:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrr;

    .line 7
    invoke-virtual {v4}, Lrr;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lrh;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, v0, Lrh;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrr;

    invoke-virtual {v4}, Lrr;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lrh;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v3, v0, Lrh;->b:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrr;

    invoke-virtual {v3}, Lrr;->clearOldPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final u(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    .line 2
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/widget/EdgeEffect;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    goto :goto_0

    .line 13
    :cond_0
    nop

    .line 3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 5
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    .line 6
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v1, p1

    goto :goto_1

    .line 13
    :cond_1
    nop

    .line 6
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 8
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/widget/EdgeEffect;

    .line 9
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v1, p1

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    .line 11
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    .line 12
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v1, p1

    :cond_3
    if-eqz v1, :cond_4

    .line 13
    invoke-static {p0}, Lhs;->q(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 4
    invoke-virtual {v0}, Lnf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v0, v2}, Lnf;->k(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    const/16 v2, 0xb

    .line 6
    invoke-virtual {v0, v2}, Lnf;->k(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Lxz;->a(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ac()V

    .line 13
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 14
    invoke-virtual {v0}, Lnf;->g()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 15
    invoke-virtual {v0}, Lor;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 16
    invoke-virtual {v2, v1}, Lor;->e(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Lrr;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v2}, Lrr;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    goto :goto_2

    .line 17
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 20
    invoke-virtual {v0}, Lnf;->d()V

    .line 19
    :cond_5
    :goto_2
    nop

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ad(Z)V

    .line 22
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    .line 23
    invoke-static {}, Lxz;->b()V

    return-void

    .line 20
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    .line 7
    invoke-virtual {v0}, Lnf;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    invoke-static {v1}, Lxz;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 10
    invoke-static {}, Lxz;->b()V

    :cond_7
    return-void

    .line 1
    :cond_8
    :goto_3
    invoke-static {v1}, Lxz;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 3
    invoke-static {}, Lxz;->b()V

    return-void
.end method

.method public final w(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-static {p0}, Lhs;->e(Landroid/view/View;)I

    move-result v1

    .line 3
    invoke-static {p1, v0, v1}, Lra;->aj(III)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-static {p0}, Lhs;->d(Landroid/view/View;)I

    move-result v1

    .line 6
    invoke-static {p2, v0, v1}, Lra;->aj(III)I

    move-result p2

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final x(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lqq;->onViewDetachedFromWindow(Lrr;)V

    :cond_0
    return-void
.end method

.method final y()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    const-string v2, "RecyclerView"

    if-nez v1, :cond_0

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    if-nez v1, :cond_1

    .line 2
    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 3
    const/4 v3, 0x0

    iput-boolean v3, v1, Lro;->i:Z

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->au:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/support/v7/widget/RecyclerView;->av:I

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_3

    iget v1, v0, Landroid/support/v7/widget/RecyclerView;->aw:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 13
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :cond_4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->av:I

    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->aw:I

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->au:Z

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 6
    iget v5, v5, Lro;->d:I

    if-ne v5, v4, :cond_5

    .line 7
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->at()V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 8
    invoke-virtual {v1, v0}, Lra;->aP(Landroid/support/v7/widget/RecyclerView;)V

    .line 9
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->au()V

    goto :goto_2

    .line 103
    :cond_5
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->e:Lnf;

    iget-object v6, v5, Lnf;->b:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v5, v5, Lnf;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    if-nez v1, :cond_7

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget v1, v1, Lra;->D:I

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_7

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget v1, v1, Lra;->E:I

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_7

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 13
    invoke-virtual {v1, v0}, Lra;->aP(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_2

    .line 10
    :cond_7
    :goto_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 14
    invoke-virtual {v1, v0}, Lra;->aP(Landroid/support/v7/widget/RecyclerView;)V

    .line 15
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->au()V

    .line 9
    :goto_2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 16
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lro;->b(I)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->ac()V

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 19
    iput v4, v1, Lro;->d:I

    .line 20
    iget-boolean v1, v1, Lro;->j:Z

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 21
    invoke-virtual {v1}, Lor;->a()I

    move-result v1

    add-int/2addr v1, v6

    :goto_3
    if-ltz v1, :cond_14

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 22
    invoke-virtual {v8, v1}, Lor;->e(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v8

    .line 23
    invoke-virtual {v8}, Lrr;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_6

    .line 24
    :cond_8
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->c(Lrr;)J

    move-result-wide v9

    invoke-static {}, Lqv;->c()Lqu;

    move-result-object v11

    .line 25
    invoke-virtual {v11, v8}, Lqu;->a(Lrr;)V

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    iget-object v12, v12, Lta;->b:Lvg;

    .line 26
    invoke-virtual {v12, v9, v10}, Lvg;->c(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lrr;

    if-eqz v12, :cond_12

    .line 27
    invoke-virtual {v12}, Lrr;->shouldIgnore()Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 29
    invoke-virtual {v13, v12}, Lta;->i(Lrr;)Z

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 30
    invoke-virtual {v14, v8}, Lta;->i(Lrr;)Z

    move-result v14

    if-eqz v13, :cond_9

    if-ne v12, v8, :cond_9

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 49
    invoke-virtual {v9, v8, v11}, Lta;->d(Lrr;Lqu;)V

    goto/16 :goto_6

    :cond_9
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 31
    invoke-virtual {v15, v12, v5}, Lta;->a(Lrr;I)Lqu;

    move-result-object v15

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 32
    invoke-virtual {v5, v8, v11}, Lta;->d(Lrr;Lqu;)V

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 33
    const/16 v11, 0x8

    invoke-virtual {v5, v8, v11}, Lta;->a(Lrr;I)Lqu;

    move-result-object v5

    if-nez v15, :cond_e

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 34
    invoke-virtual {v5}, Lor;->a()I

    move-result v5

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v5, :cond_d

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 35
    invoke-virtual {v13, v11}, Lor;->e(I)Landroid/view/View;

    move-result-object v13

    .line 36
    invoke-static {v13}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v13

    if-ne v13, v8, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->c(Lrr;)J

    move-result-wide v14

    cmp-long v16, v14, v9

    if-nez v16, :cond_c

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    const-string v2, " \n View Holder 2:"

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lqq;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_c
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 53
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " cannot be found but it is necessary for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    nop

    .line 40
    invoke-virtual {v12, v3}, Lrr;->setIsRecyclable(Z)V

    if-eqz v13, :cond_f

    .line 41
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->o(Lrr;)V

    :cond_f
    if-eq v12, v8, :cond_11

    if-eqz v14, :cond_10

    .line 42
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->o(Lrr;)V

    :cond_10
    iput-object v8, v12, Lrr;->mShadowedHolder:Lrr;

    .line 43
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->o(Lrr;)V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 44
    invoke-virtual {v9, v12}, Lrh;->l(Lrr;)V

    .line 45
    invoke-virtual {v8, v3}, Lrr;->setIsRecyclable(Z)V

    .line 46
    iput-object v12, v8, Lrr;->mShadowingHolder:Lrr;

    :cond_11
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    .line 47
    invoke-virtual {v9, v12, v8, v15, v5}, Lqv;->f(Lrr;Lrr;Lqu;Lqu;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->P()V

    goto :goto_6

    :cond_12
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 28
    invoke-virtual {v5, v8, v11}, Lta;->d(Lrr;Lqu;)V

    .line 23
    :cond_13
    :goto_6
    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x4

    goto/16 :goto_3

    .line 28
    :cond_14
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->az:Lqw;

    iget-object v5, v1, Lta;->a:Lvi;

    iget v5, v5, Lvi;->j:I

    add-int/2addr v5, v6

    :goto_7
    if-ltz v5, :cond_1f

    iget-object v8, v1, Lta;->a:Lvi;

    .line 54
    invoke-virtual {v8, v5}, Lvi;->f(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lrr;

    iget-object v8, v1, Lta;->a:Lvi;

    .line 55
    invoke-virtual {v8, v5}, Lvi;->g(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsz;

    .line 56
    iget v9, v8, Lsz;->a:I

    and-int/lit8 v11, v9, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_15

    .line 57
    invoke-virtual {v2, v10}, Lqw;->n(Lrr;)V

    goto/16 :goto_9

    .line 72
    :cond_15
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_17

    .line 58
    iget-object v9, v8, Lsz;->b:Lqu;

    if-nez v9, :cond_16

    .line 59
    invoke-virtual {v2, v10}, Lqw;->n(Lrr;)V

    goto/16 :goto_9

    .line 60
    :cond_16
    iget-object v11, v8, Lsz;->c:Lqu;

    invoke-virtual {v2, v10, v9, v11}, Lqw;->m(Lrr;Lqu;Lqu;)V

    goto/16 :goto_9

    :cond_17
    and-int/lit8 v11, v9, 0xe

    const/16 v12, 0xe

    if-ne v11, v12, :cond_18

    .line 61
    iget-object v9, v8, Lsz;->b:Lqu;

    iget-object v11, v8, Lsz;->c:Lqu;

    invoke-virtual {v2, v10, v9, v11}, Lqw;->l(Lrr;Lqu;Lqu;)V

    goto :goto_9

    :cond_18
    and-int/lit8 v11, v9, 0xc

    const/16 v12, 0xc

    if-ne v11, v12, :cond_1c

    .line 62
    iget-object v9, v8, Lsz;->b:Lqu;

    iget-object v11, v8, Lsz;->c:Lqu;

    .line 63
    invoke-virtual {v10, v3}, Lrr;->setIsRecyclable(Z)V

    iget-object v12, v2, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v13, v12, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v13, :cond_19

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    .line 64
    invoke-virtual {v12, v10, v10, v9, v11}, Lqv;->f(Lrr;Lrr;Lqu;Lqu;)Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v9, v2, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 65
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->P()V

    goto :goto_9

    :cond_19
    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->B:Lqv;

    .line 66
    iget v13, v9, Lqu;->a:I

    iget v14, v11, Lqu;->a:I

    if-ne v13, v14, :cond_1b

    iget v15, v9, Lqu;->b:I

    iget v6, v11, Lqu;->b:I

    if-eq v15, v6, :cond_1a

    goto :goto_8

    .line 68
    :cond_1a
    invoke-virtual {v12, v10}, Lqv;->a(Lrr;)V

    goto :goto_9

    .line 67
    :cond_1b
    :goto_8
    iget v6, v9, Lqu;->b:I

    iget v15, v11, Lqu;->b:I

    .line 68
    move-object v9, v12

    move v11, v13

    move v12, v6

    move v13, v14

    move v14, v15

    invoke-virtual/range {v9 .. v14}, Lqv;->k(Lrr;IIII)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, v2, Lqw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 69
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->P()V

    goto :goto_9

    .line 68
    :cond_1c
    and-int/lit8 v6, v9, 0x4

    if-eqz v6, :cond_1d

    .line 70
    iget-object v6, v8, Lsz;->b:Lqu;

    invoke-virtual {v2, v10, v6, v7}, Lqw;->m(Lrr;Lqu;Lqu;)V

    goto :goto_9

    :cond_1d
    and-int/lit8 v6, v9, 0x8

    if-eqz v6, :cond_1e

    .line 71
    iget-object v6, v8, Lsz;->b:Lqu;

    iget-object v9, v8, Lsz;->c:Lqu;

    invoke-virtual {v2, v10, v6, v9}, Lqw;->l(Lrr;Lqu;Lqu;)V

    .line 72
    :cond_1e
    :goto_9
    invoke-static {v8}, Lsz;->b(Lsz;)V

    add-int/lit8 v5, v5, -0x1

    const/4 v6, -0x1

    goto/16 :goto_7

    .line 71
    :cond_1f
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 73
    invoke-virtual {v1, v2}, Lra;->aK(Lrh;)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 74
    iget v2, v1, Lro;->e:I

    iput v2, v1, Lro;->b:I

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->v:Z

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 75
    iput-boolean v3, v1, Lro;->j:Z

    .line 76
    iput-boolean v3, v1, Lro;->k:Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 77
    iput-boolean v3, v1, Lra;->v:Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 78
    iget-object v1, v1, Lrh;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_20
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    .line 80
    iget-boolean v2, v1, Lra;->A:Z

    if-eqz v2, :cond_21

    .line 81
    iput v3, v1, Lra;->z:I

    .line 82
    iput-boolean v3, v1, Lra;->A:Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 83
    invoke-virtual {v1}, Lrh;->m()V

    :cond_21
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l:Lra;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 84
    invoke-virtual {v1, v2}, Lra;->o(Lro;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    .line 86
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->ad(Z)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Lta;

    .line 87
    invoke-virtual {v1}, Lta;->f()V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->ap:[I

    .line 88
    aget v2, v1, v3

    aget v5, v1, v4

    .line 89
    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;->av([I)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->ap:[I

    .line 90
    aget v6, v1, v3

    if-ne v6, v2, :cond_22

    aget v1, v1, v4

    if-eq v1, v5, :cond_23

    .line 91
    :cond_22
    invoke-virtual {v0, v3, v3}, Landroid/support/v7/widget/RecyclerView;->A(II)V

    :cond_23
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->an:Z

    if-eqz v1, :cond_36

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v1, :cond_36

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_36

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_36

    .line 95
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_25

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 97
    invoke-virtual {v2, v1}, Lor;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_25
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 98
    iget-wide v1, v1, Lro;->m:J

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-eqz v6, :cond_29

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    invoke-virtual {v1}, Lqq;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 99
    iget-wide v1, v1, Lro;->m:J

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    if-eqz v6, :cond_29

    invoke-virtual {v6}, Lqq;->hasStableIds()Z

    move-result v6

    if-nez v6, :cond_26

    move-object v9, v7

    goto :goto_c

    .line 110
    :cond_26
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 100
    invoke-virtual {v6}, Lor;->c()I

    move-result v6

    move-object v9, v7

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v6, :cond_2a

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 101
    invoke-virtual {v10, v8}, Lor;->f(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v10

    if-eqz v10, :cond_28

    .line 102
    invoke-virtual {v10}, Lrr;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_28

    invoke-virtual {v10}, Lrr;->getItemId()J

    move-result-wide v11

    cmp-long v13, v11, v1

    if-nez v13, :cond_28

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iget-object v11, v10, Lrr;->itemView:Landroid/view/View;

    .line 103
    invoke-virtual {v9, v11}, Lor;->k(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_27

    move-object v9, v10

    goto :goto_b

    :cond_27
    move-object v9, v10

    goto :goto_c

    :cond_28
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_29
    move-object v9, v7

    .line 99
    :cond_2a
    :goto_c
    if-eqz v9, :cond_2c

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    iget-object v2, v9, Lrr;->itemView:Landroid/view/View;

    .line 104
    invoke-virtual {v1, v2}, Lor;->k(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, v9, Lrr;->itemView:Landroid/view/View;

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_d

    .line 110
    :cond_2b
    iget-object v7, v9, Lrr;->itemView:Landroid/view/View;

    goto :goto_12

    .line 105
    :cond_2c
    :goto_d
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 106
    invoke-virtual {v1}, Lor;->a()I

    move-result v1

    if-lez v1, :cond_34

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 107
    iget v2, v1, Lro;->l:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2d

    goto :goto_e

    :cond_2d
    move v3, v2

    .line 108
    :goto_e
    invoke-virtual {v1}, Lro;->a()I

    move-result v1

    move v2, v3

    :goto_f
    if-ge v2, v1, :cond_30

    .line 109
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->f(I)Lrr;

    move-result-object v6

    if-nez v6, :cond_2e

    goto :goto_10

    .line 113
    :cond_2e
    iget-object v8, v6, Lrr;->itemView:Landroid/view/View;

    .line 110
    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_2f

    iget-object v7, v6, Lrr;->itemView:Landroid/view/View;

    goto :goto_12

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 111
    :cond_30
    :goto_10
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_11
    if-ltz v1, :cond_33

    .line 112
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->f(I)Lrr;

    move-result-object v2

    if-nez v2, :cond_31

    goto :goto_12

    .line 118
    :cond_31
    iget-object v3, v2, Lrr;->itemView:Landroid/view/View;

    .line 113
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v7, v2, Lrr;->itemView:Landroid/view/View;

    goto :goto_12

    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_33
    goto :goto_12

    .line 110
    :cond_34
    nop

    .line 112
    :goto_12
    if-eqz v7, :cond_36

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    .line 114
    iget v1, v1, Lro;->n:I

    int-to-long v2, v1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_35

    .line 115
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_35

    move-object v7, v1

    .line 117
    :cond_35
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 118
    :cond_36
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->az()V

    return-void
.end method

.method public final z(IIII[II[I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ar()Lgu;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lgu;->g(IIII[II[I)Z

    return-void
.end method
