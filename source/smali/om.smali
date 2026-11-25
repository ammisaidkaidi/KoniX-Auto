.class public final Lom;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Landroid/graphics/Typeface;

.field public c:Z

.field private final d:Landroid/widget/TextView;

.field private e:Lsk;

.field private f:Lsk;

.field private g:Lsk;

.field private h:Lsk;

.field private i:Lsk;

.field private j:Lsk;

.field private final k:Loo;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lom;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lom;->l:I

    iput-object p1, p0, Lom;->d:Landroid/widget/TextView;

    new-instance v0, Loo;

    invoke-direct {v0, p1}, Loo;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lom;->k:Loo;

    return-void
.end method

.method static final e(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v1, :cond_c

    .line 2
    invoke-static {p0}, Lez;->m(Ljava/lang/Object;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_0

    .line 3
    invoke-static {p2, p0}, Lxq;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_0
    iget p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v0, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le p1, v0, :cond_1

    .line 5
    iget p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 7
    :goto_0
    iget v0, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v1, :cond_2

    .line 8
    iget v0, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    goto :goto_1

    .line 9
    :cond_2
    iget v0, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 10
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz p1, :cond_b

    if-le v0, v1, :cond_3

    goto/16 :goto_6

    .line 12
    :cond_3
    iget v4, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v4, v4, 0xfff

    const/16 v5, 0x81

    if-eq v4, v5, :cond_a

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12

    if-ne v4, v5, :cond_4

    goto/16 :goto_5

    .line 13
    :cond_4
    const/16 v2, 0x800

    if-le v1, v2, :cond_9

    sub-int v1, v0, p1

    const/16 v2, 0x400

    if-le v1, v2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    .line 23
    :cond_5
    move v2, v1

    .line 13
    :goto_2
    rsub-int v4, v2, 0x800

    .line 14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-double v6, v4

    const-wide v8, 0x3fe999999999999aL    # 0.8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-int v6, v6

    .line 15
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v4, v6

    .line 16
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 17
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr p1, v4

    .line 18
    invoke-static {p0, p1, v3}, Lyq;->b(Ljava/lang/CharSequence;II)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 23
    :cond_6
    nop

    .line 18
    :goto_3
    add-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 19
    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lyq;->b(Ljava/lang/CharSequence;II)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, -0x1

    :cond_7
    add-int v6, v4, v2

    add-int v8, v6, v5

    if-eq v2, v1, :cond_8

    add-int v1, p1, v4

    .line 20
    invoke-interface {p0, p1, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    add-int/2addr v5, v0

    .line 21
    invoke-interface {p0, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p1, v0, v3

    aput-object p0, v0, v7

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_4

    .line 24
    :cond_8
    add-int/2addr v8, p1

    .line 23
    invoke-interface {p0, p1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 24
    :goto_4
    invoke-static {p2, p0, v4, v6}, Lyq;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    .line 25
    :cond_9
    invoke-static {p2, p0, p1, v0}, Lyq;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    .line 13
    :cond_a
    :goto_5
    invoke-static {p2, v2, v3, v3}, Lyq;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    .line 11
    :cond_b
    :goto_6
    invoke-static {p2, v2, v3, v3}, Lyq;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    .line 26
    :cond_c
    invoke-static {p2, p0}, Lxq;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private static f(Landroid/content/Context;Lnn;I)Lsk;
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Lnn;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lsk;

    invoke-direct {p1}, Lsk;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lsk;->d:Z

    iput-object p0, p1, Lsk;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final g(Landroid/graphics/drawable/Drawable;Lsk;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lom;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    .line 2
    invoke-static {p1, p2, v0}, Lrv;->h(Landroid/graphics/drawable/Drawable;Lsk;[I)V

    :cond_0
    return-void
.end method

.method private final h(Landroid/content/Context;Lsm;)V
    .locals 9

    .line 1
    sget-object v0, Lki;->a:[I

    iget v0, p0, Lom;->a:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lsm;->c(II)I

    move-result v0

    iput v0, p0, Lom;->a:I

    .line 2
    const/16 v0, 0xb

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Lsm;->c(II)I

    move-result v0

    iput v0, p0, Lom;->l:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lom;->a:I

    and-int/2addr v0, v1

    iput v0, p0, Lom;->a:I

    .line 3
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lsm;->p(I)Z

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_3

    .line 4
    invoke-virtual {p2, v4}, Lsm;->p(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    nop

    .line 17
    invoke-virtual {p2, v6}, Lsm;->p(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v5, p0, Lom;->c:Z

    .line 18
    invoke-virtual {p2, v6, v6}, Lsm;->c(II)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, Lom;->b:Landroid/graphics/Typeface;

    return-void

    :pswitch_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 4
    :cond_3
    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Lom;->b:Landroid/graphics/Typeface;

    .line 5
    invoke-virtual {p2, v4}, Lsm;->p(I)Z

    move-result v7

    if-eq v6, v7, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    const/16 v0, 0xc

    .line 5
    :goto_3
    iget v4, p0, Lom;->l:I

    iget v7, p0, Lom;->a:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lom;->d:Landroid/widget/TextView;

    .line 7
    invoke-direct {p1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v8, Leb;

    invoke-direct {v8, p0, v4, v7, p1}, Leb;-><init>(Lom;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget p1, p0, Lom;->a:I

    iget-object v4, p2, Lsm;->b:Landroid/content/res/TypedArray;

    .line 8
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    iget-object v3, p2, Lsm;->c:Landroid/util/TypedValue;

    if-nez v3, :cond_6

    new-instance v3, Landroid/util/TypedValue;

    .line 9
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, p2, Lsm;->c:Landroid/util/TypedValue;

    :cond_6
    iget-object v3, p2, Lsm;->a:Landroid/content/Context;

    iget-object v7, p2, Lsm;->c:Landroid/util/TypedValue;

    .line 10
    invoke-static {v3, v4, v7, p1, v8}, Lee;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILeb;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 8
    :goto_4
    if-eqz v3, :cond_9

    iget p1, p0, Lom;->l:I

    if-eq p1, v2, :cond_8

    .line 11
    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v3, p0, Lom;->l:I

    iget v4, p0, Lom;->a:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    .line 14
    :cond_7
    const/4 v4, 0x0

    .line 12
    :goto_5
    invoke-static {p1, v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lom;->b:Landroid/graphics/Typeface;

    goto :goto_6

    .line 14
    :cond_8
    iput-object v3, p0, Lom;->b:Landroid/graphics/Typeface;

    .line 12
    :cond_9
    :goto_6
    iget-object p1, p0, Lom;->b:Landroid/graphics/Typeface;

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_7

    .line 14
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_7
    iput-boolean p1, p0, Lom;->c:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 18
    :catch_0
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    .line 12
    :cond_b
    :goto_8
    iget-object p1, p0, Lom;->b:Landroid/graphics/Typeface;

    if-nez p1, :cond_e

    .line 13
    invoke-virtual {p2, v0}, Lsm;->m(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    iget p2, p0, Lom;->l:I

    if-eq p2, v2, :cond_d

    .line 15
    invoke-static {p1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Lom;->l:I

    iget v0, p0, Lom;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/4 v5, 0x1

    goto :goto_9

    .line 16
    :cond_c
    nop

    :goto_9
    invoke-static {p1, p2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lom;->b:Landroid/graphics/Typeface;

    return-void

    :cond_d
    iget p2, p0, Lom;->a:I

    .line 14
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lom;->b:Landroid/graphics/Typeface;

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lom;->e:Lsk;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lom;->f:Lsk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lom;->g:Lsk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lom;->h:Lsk;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lom;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    aget-object v3, v0, v2

    iget-object v4, p0, Lom;->e:Lsk;

    invoke-direct {p0, v3, v4}, Lom;->g(Landroid/graphics/drawable/Drawable;Lsk;)V

    const/4 v3, 0x1

    .line 3
    aget-object v3, v0, v3

    iget-object v4, p0, Lom;->f:Lsk;

    invoke-direct {p0, v3, v4}, Lom;->g(Landroid/graphics/drawable/Drawable;Lsk;)V

    .line 4
    aget-object v3, v0, v1

    iget-object v4, p0, Lom;->g:Lsk;

    invoke-direct {p0, v3, v4}, Lom;->g(Landroid/graphics/drawable/Drawable;Lsk;)V

    const/4 v3, 0x3

    .line 5
    aget-object v0, v0, v3

    iget-object v3, p0, Lom;->h:Lsk;

    invoke-direct {p0, v0, v3}, Lom;->g(Landroid/graphics/drawable/Drawable;Lsk;)V

    :cond_1
    iget-object v0, p0, Lom;->i:Lsk;

    if-nez v0, :cond_3

    iget-object v0, p0, Lom;->j:Lsk;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    return-void

    .line 5
    :cond_3
    :goto_0
    iget-object v0, p0, Lom;->d:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7
    aget-object v2, v0, v2

    iget-object v3, p0, Lom;->i:Lsk;

    invoke-direct {p0, v2, v3}, Lom;->g(Landroid/graphics/drawable/Drawable;Lsk;)V

    .line 8
    aget-object v0, v0, v1

    iget-object v1, p0, Lom;->j:Lsk;

    invoke-direct {p0, v0, v1}, Lom;->g(Landroid/graphics/drawable/Drawable;Lsk;)V

    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget-object v1, v0, Lom;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 2
    invoke-static {}, Lnn;->d()Lnn;

    move-result-object v10

    .line 3
    sget-object v1, Lki;->h:[I

    invoke-static {v9, v7, v1, v8}, Lsm;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lsm;

    move-result-object v11

    iget-object v1, v0, Lom;->d:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lki;->h:[I

    iget-object v5, v11, Lsm;->b:Landroid/content/res/TypedArray;

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lhs;->L(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 5
    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Lsm;->f(II)I

    move-result v1

    .line 6
    const/4 v14, 0x3

    invoke-virtual {v11, v14}, Lsm;->p(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v11, v14, v12}, Lsm;->f(II)I

    move-result v2

    .line 8
    invoke-static {v9, v10, v2}, Lom;->f(Landroid/content/Context;Lnn;I)Lsk;

    move-result-object v2

    iput-object v2, v0, Lom;->e:Lsk;

    :cond_0
    nop

    .line 9
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lsm;->p(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v11, v15, v12}, Lsm;->f(II)I

    move-result v2

    .line 11
    invoke-static {v9, v10, v2}, Lom;->f(Landroid/content/Context;Lnn;I)Lsk;

    move-result-object v2

    iput-object v2, v0, Lom;->f:Lsk;

    :cond_1
    nop

    .line 12
    const/4 v6, 0x4

    invoke-virtual {v11, v6}, Lsm;->p(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v11, v6, v12}, Lsm;->f(II)I

    move-result v2

    .line 14
    invoke-static {v9, v10, v2}, Lom;->f(Landroid/content/Context;Lnn;I)Lsk;

    move-result-object v2

    iput-object v2, v0, Lom;->g:Lsk;

    :cond_2
    nop

    .line 15
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lsm;->p(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v11, v5, v12}, Lsm;->f(II)I

    move-result v2

    .line 17
    invoke-static {v9, v10, v2}, Lom;->f(Landroid/content/Context;Lnn;I)Lsk;

    move-result-object v2

    iput-object v2, v0, Lom;->h:Lsk;

    :cond_3
    nop

    .line 18
    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Lsm;->p(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v11, v4, v12}, Lsm;->f(II)I

    move-result v2

    .line 20
    invoke-static {v9, v10, v2}, Lom;->f(Landroid/content/Context;Lnn;I)Lsk;

    move-result-object v2

    iput-object v2, v0, Lom;->i:Lsk;

    :cond_4
    nop

    .line 21
    const/4 v3, 0x6

    invoke-virtual {v11, v3}, Lsm;->p(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    invoke-virtual {v11, v3, v12}, Lsm;->f(II)I

    move-result v2

    .line 23
    invoke-static {v9, v10, v2}, Lom;->f(Landroid/content/Context;Lnn;I)Lsk;

    move-result-object v2

    iput-object v2, v0, Lom;->j:Lsk;

    .line 24
    :cond_5
    invoke-virtual {v11}, Lsm;->n()V

    iget-object v2, v0, Lom;->d:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    const/16 v11, 0xf

    const/16 v15, 0xe

    if-eq v1, v13, :cond_9

    sget-object v3, Lki;->v:[I

    .line 26
    invoke-static {v9, v1, v3}, Lsm;->j(Landroid/content/Context;I[I)Lsm;

    move-result-object v1

    if-nez v2, :cond_6

    .line 27
    invoke-virtual {v1, v15}, Lsm;->p(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 28
    invoke-virtual {v1, v15, v12}, Lsm;->o(IZ)Z

    move-result v3

    const/16 v18, 0x1

    goto :goto_0

    .line 49
    :cond_6
    const/4 v3, 0x0

    const/16 v18, 0x0

    .line 29
    :goto_0
    invoke-direct {v0, v9, v1}, Lom;->h(Landroid/content/Context;Lsm;)V

    .line 30
    invoke-virtual {v1, v11}, Lsm;->p(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 31
    invoke-virtual {v1, v11}, Lsm;->m(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 49
    :cond_7
    const/16 v19, 0x0

    .line 31
    :goto_1
    nop

    .line 32
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Lsm;->p(I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 33
    invoke-virtual {v1, v4}, Lsm;->m(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 49
    :cond_8
    const/16 v20, 0x0

    .line 34
    :goto_2
    invoke-virtual {v1}, Lsm;->n()V

    goto :goto_3

    .line 49
    :cond_9
    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 34
    :goto_3
    sget-object v1, Lki;->v:[I

    .line 35
    invoke-static {v9, v7, v1, v8}, Lsm;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lsm;

    move-result-object v1

    if-nez v2, :cond_a

    .line 36
    invoke-virtual {v1, v15}, Lsm;->p(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 37
    invoke-virtual {v1, v15, v12}, Lsm;->o(IZ)Z

    move-result v3

    const/16 v18, 0x1

    goto :goto_4

    .line 49
    :cond_a
    nop

    .line 37
    :goto_4
    nop

    .line 38
    invoke-virtual {v1, v11}, Lsm;->p(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 39
    invoke-virtual {v1, v11}, Lsm;->m(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_5

    .line 49
    :cond_b
    nop

    .line 39
    :goto_5
    nop

    .line 40
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Lsm;->p(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 41
    invoke-virtual {v1, v4}, Lsm;->m(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    goto :goto_6

    .line 49
    :cond_c
    move-object/from16 v4, v20

    .line 41
    :goto_6
    nop

    .line 42
    invoke-virtual {v1, v12}, Lsm;->p(I)Z

    move-result v11

    const/4 v15, 0x0

    if-eqz v11, :cond_d

    .line 43
    invoke-virtual {v1, v12, v13}, Lsm;->b(II)I

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, v0, Lom;->d:Landroid/widget/TextView;

    .line 44
    invoke-virtual {v11, v12, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    :cond_d
    invoke-direct {v0, v9, v1}, Lom;->h(Landroid/content/Context;Lsm;)V

    .line 46
    invoke-virtual {v1}, Lsm;->n()V

    if-nez v2, :cond_e

    if-eqz v18, :cond_e

    .line 47
    invoke-virtual {v0, v3}, Lom;->d(Z)V

    :cond_e
    iget-object v1, v0, Lom;->b:Landroid/graphics/Typeface;

    if-eqz v1, :cond_10

    iget v2, v0, Lom;->l:I

    if-ne v2, v13, :cond_f

    iget-object v2, v0, Lom;->d:Landroid/widget/TextView;

    iget v3, v0, Lom;->a:I

    .line 48
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_7

    .line 94
    :cond_f
    iget-object v2, v0, Lom;->d:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    :cond_10
    :goto_7
    if-eqz v4, :cond_11

    iget-object v1, v0, Lom;->d:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_11
    if-eqz v19, :cond_12

    iget-object v1, v0, Lom;->d:Landroid/widget/TextView;

    .line 51
    invoke-static/range {v19 .. v19}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_12
    iget-object v11, v0, Lom;->k:Loo;

    iget-object v1, v11, Loo;->h:Landroid/content/Context;

    sget-object v2, Lki;->i:[I

    .line 52
    invoke-virtual {v1, v7, v2, v8, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    iget-object v1, v11, Loo;->g:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lki;->i:[I

    const/4 v14, 0x6

    move-object/from16 v17, v4

    const/4 v14, 0x5

    move-object/from16 v4, p1

    const/4 v15, 0x2

    move-object/from16 v5, v17

    const/4 v13, 0x4

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lhs;->L(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 54
    move-object/from16 v1, v17

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 55
    invoke-virtual {v1, v14, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v11, Loo;->a:I

    :cond_13
    nop

    .line 56
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_14

    .line 57
    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_8

    .line 94
    :cond_14
    const/high16 v2, -0x40800000    # -1.0f

    .line 57
    :goto_8
    nop

    .line 58
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 59
    invoke-virtual {v1, v15, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_9

    .line 94
    :cond_15
    const/high16 v4, -0x40800000    # -1.0f

    .line 59
    :goto_9
    nop

    .line 60
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 61
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    goto :goto_a

    .line 94
    :cond_16
    const/high16 v6, -0x40800000    # -1.0f

    .line 61
    :goto_a
    nop

    .line 62
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 63
    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-lez v8, :cond_1a

    .line 64
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 65
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    .line 67
    new-array v13, v8, [I

    if-lez v8, :cond_19

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v8, :cond_17

    .line 68
    const/4 v15, -0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    aput v21, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x2

    goto :goto_b

    .line 69
    :cond_17
    invoke-static {v13}, Loo;->b([I)[I

    move-result-object v8

    iput-object v8, v11, Loo;->e:[I

    iget-object v8, v11, Loo;->e:[I

    .line 70
    array-length v13, v8

    if-lez v13, :cond_18

    const/4 v14, 0x1

    goto :goto_c

    .line 94
    :cond_18
    const/4 v14, 0x0

    .line 70
    :goto_c
    iput-boolean v14, v11, Loo;->f:Z

    if-eqz v14, :cond_19

    const/4 v14, 0x1

    iput v14, v11, Loo;->a:I

    .line 71
    aget v14, v8, v12

    int-to-float v14, v14

    iput v14, v11, Loo;->c:F

    const/4 v14, -0x1

    add-int/2addr v13, v14

    .line 72
    aget v8, v8, v13

    int-to-float v8, v8

    iput v8, v11, Loo;->d:F

    iput v3, v11, Loo;->b:F

    .line 73
    :cond_19
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-virtual {v11}, Loo;->a()Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, v11, Loo;->a:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_25

    iget-boolean v1, v11, Loo;->f:Z

    if-nez v1, :cond_21

    iget-object v1, v11, Loo;->h:Landroid/content/Context;

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    cmpl-float v5, v4, v3

    if-nez v5, :cond_1b

    const/high16 v4, 0x41400000    # 12.0f

    .line 77
    const/4 v5, 0x2

    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    goto :goto_d

    .line 76
    :cond_1b
    const/4 v5, 0x2

    .line 77
    :goto_d
    cmpl-float v8, v6, v3

    if-nez v8, :cond_1c

    const/high16 v6, 0x42e00000    # 112.0f

    .line 78
    invoke-static {v5, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    :cond_1c
    cmpl-float v1, v2, v3

    if-nez v1, :cond_1d

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1d
    const-string v1, "px) is less or equal to (0px)"

    const/4 v5, 0x0

    cmpg-float v8, v4, v5

    if-lez v8, :cond_20

    .line 79
    cmpg-float v8, v6, v4

    if-lez v8, :cond_1f

    .line 80
    cmpg-float v5, v2, v5

    if-lez v5, :cond_1e

    .line 81
    const/4 v1, 0x1

    iput v1, v11, Loo;->a:I

    iput v4, v11, Loo;->c:F

    iput v6, v11, Loo;->d:F

    iput v2, v11, Loo;->b:F

    iput-boolean v12, v11, Loo;->f:Z

    goto :goto_e

    .line 80
    :cond_1e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The auto-size step granularity ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum auto-size text size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Minimum auto-size text size ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_21
    :goto_e
    invoke-virtual {v11}, Loo;->a()Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, v11, Loo;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    iget-boolean v1, v11, Loo;->f:Z

    if-eqz v1, :cond_22

    iget-object v1, v11, Loo;->e:[I

    .line 83
    array-length v1, v1

    if-nez v1, :cond_25

    :cond_22
    iget v1, v11, Loo;->d:F

    iget v2, v11, Loo;->c:F

    sub-float/2addr v1, v2

    iget v2, v11, Loo;->b:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 85
    new-array v2, v1, [I

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v1, :cond_23

    iget v5, v11, Loo;->c:F

    int-to-float v6, v4

    iget v8, v11, Loo;->b:F

    mul-float v6, v6, v8

    add-float/2addr v5, v6

    .line 86
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 87
    :cond_23
    invoke-static {v2}, Loo;->b([I)[I

    move-result-object v1

    iput-object v1, v11, Loo;->e:[I

    goto :goto_10

    .line 94
    :cond_24
    iput v12, v11, Loo;->a:I

    .line 87
    :cond_25
    :goto_10
    iget-object v1, v0, Lom;->k:Loo;

    iget v2, v1, Loo;->a:I

    if-eqz v2, :cond_27

    iget-object v1, v1, Loo;->e:[I

    .line 88
    array-length v2, v1

    if-lez v2, :cond_27

    iget-object v2, v0, Lom;->d:Landroid/widget/TextView;

    .line 89
    invoke-virtual {v2}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_26

    iget-object v1, v0, Lom;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lom;->k:Loo;

    iget v2, v2, Loo;->c:F

    .line 90
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, v0, Lom;->k:Loo;

    iget v3, v3, Loo;->d:F

    .line 91
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, v0, Lom;->k:Loo;

    iget v4, v4, Loo;->b:F

    .line 92
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 93
    invoke-virtual {v1, v2, v3, v4, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_11

    .line 124
    :cond_26
    iget-object v2, v0, Lom;->d:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v2, v1, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 93
    :cond_27
    :goto_11
    sget-object v1, Lki;->i:[I

    .line 95
    invoke-static {v9, v7, v1}, Lsm;->k(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lsm;

    move-result-object v1

    const/16 v2, 0x8

    .line 96
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lsm;->f(II)I

    move-result v2

    if-eq v2, v3, :cond_28

    .line 97
    invoke-virtual {v10, v9, v2}, Lnn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_12

    .line 124
    :cond_28
    const/4 v2, 0x0

    .line 97
    :goto_12
    nop

    .line 98
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Lsm;->f(II)I

    move-result v4

    if-eq v4, v3, :cond_29

    .line 99
    invoke-virtual {v10, v9, v4}, Lnn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_13

    .line 124
    :cond_29
    const/4 v4, 0x0

    .line 99
    :goto_13
    const/16 v5, 0x9

    .line 100
    invoke-virtual {v1, v5, v3}, Lsm;->f(II)I

    move-result v5

    if-eq v5, v3, :cond_2a

    .line 101
    invoke-virtual {v10, v9, v5}, Lnn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_14

    .line 124
    :cond_2a
    const/4 v5, 0x0

    .line 101
    :goto_14
    nop

    .line 102
    const/4 v6, 0x6

    invoke-virtual {v1, v6, v3}, Lsm;->f(II)I

    move-result v6

    if-eq v6, v3, :cond_2b

    .line 103
    invoke-virtual {v10, v9, v6}, Lnn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_15

    .line 124
    :cond_2b
    const/4 v6, 0x0

    .line 103
    :goto_15
    const/16 v7, 0xa

    .line 104
    invoke-virtual {v1, v7, v3}, Lsm;->f(II)I

    move-result v7

    if-eq v7, v3, :cond_2c

    .line 105
    invoke-virtual {v10, v9, v7}, Lnn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_16

    .line 124
    :cond_2c
    const/4 v7, 0x0

    .line 105
    :goto_16
    const/4 v8, 0x7

    .line 106
    invoke-virtual {v1, v8, v3}, Lsm;->f(II)I

    move-result v8

    if-eq v8, v3, :cond_2d

    .line 107
    invoke-virtual {v10, v9, v8}, Lnn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_17

    .line 124
    :cond_2d
    const/4 v3, 0x0

    .line 107
    :goto_17
    if-nez v7, :cond_38

    if-eqz v3, :cond_2e

    goto :goto_1b

    .line 109
    :cond_2e
    if-nez v2, :cond_2f

    if-nez v4, :cond_2f

    if-nez v5, :cond_2f

    if-eqz v6, :cond_3d

    :cond_2f
    iget-object v3, v0, Lom;->d:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 115
    aget-object v7, v3, v12

    if-nez v7, :cond_35

    const/4 v8, 0x2

    aget-object v9, v3, v8

    if-eqz v9, :cond_30

    goto :goto_18

    .line 116
    :cond_30
    iget-object v3, v0, Lom;->d:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v7, v0, Lom;->d:Landroid/widget/TextView;

    if-nez v2, :cond_31

    .line 120
    aget-object v2, v3, v12

    :cond_31
    if-nez v4, :cond_32

    .line 121
    const/4 v4, 0x1

    aget-object v4, v3, v4

    :cond_32
    if-nez v5, :cond_33

    .line 122
    const/4 v5, 0x2

    aget-object v5, v3, v5

    :cond_33
    if-nez v6, :cond_34

    .line 123
    const/4 v6, 0x3

    aget-object v6, v3, v6

    .line 124
    :cond_34
    invoke-virtual {v7, v2, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 115
    :cond_35
    :goto_18
    iget-object v2, v0, Lom;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_36

    goto :goto_19

    .line 117
    :cond_36
    nop

    .line 116
    const/4 v4, 0x1

    aget-object v4, v3, v4

    .line 115
    :goto_19
    nop

    .line 116
    const/4 v5, 0x2

    aget-object v5, v3, v5

    if-eqz v6, :cond_37

    goto :goto_1a

    .line 118
    :cond_37
    nop

    .line 117
    const/4 v6, 0x3

    aget-object v6, v3, v6

    .line 118
    :goto_1a
    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 107
    :cond_38
    :goto_1b
    iget-object v2, v0, Lom;->d:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v5, v0, Lom;->d:Landroid/widget/TextView;

    if-eqz v7, :cond_39

    goto :goto_1c

    .line 111
    :cond_39
    nop

    .line 109
    aget-object v7, v2, v12

    .line 108
    :goto_1c
    if-nez v4, :cond_3a

    .line 110
    const/4 v4, 0x1

    aget-object v4, v2, v4

    :cond_3a
    if-eqz v3, :cond_3b

    goto :goto_1d

    .line 142
    :cond_3b
    nop

    .line 111
    const/4 v3, 0x2

    aget-object v3, v2, v3

    .line 110
    :goto_1d
    if-nez v6, :cond_3c

    .line 112
    const/4 v6, 0x3

    aget-object v6, v2, v6

    .line 113
    :cond_3c
    invoke-virtual {v5, v7, v4, v3, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    :goto_1e
    nop

    .line 125
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lsm;->p(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 126
    invoke-virtual {v1, v2}, Lsm;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, v0, Lom;->d:Landroid/widget/TextView;

    .line 127
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    :cond_3e
    nop

    .line 128
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lsm;->p(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 129
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lsm;->c(II)I

    move-result v2

    .line 130
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lpc;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iget-object v4, v0, Lom;->d:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1f

    .line 128
    :cond_3f
    const/4 v3, -0x1

    .line 131
    :goto_1f
    nop

    .line 132
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Lsm;->b(II)I

    move-result v2

    const/16 v4, 0x11

    .line 133
    invoke-virtual {v1, v4, v3}, Lsm;->b(II)I

    move-result v4

    const/16 v5, 0x12

    .line 134
    invoke-virtual {v1, v5, v3}, Lsm;->b(II)I

    move-result v5

    .line 135
    invoke-virtual {v1}, Lsm;->n()V

    if-eq v2, v3, :cond_40

    iget-object v1, v0, Lom;->d:Landroid/widget/TextView;

    .line 136
    invoke-static {v2}, Lez;->l(I)V

    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    :cond_40
    if-eq v4, v3, :cond_42

    iget-object v1, v0, Lom;->d:Landroid/widget/TextView;

    .line 138
    invoke-static {v4}, Lez;->l(I)V

    .line 139
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 140
    invoke-virtual {v1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 141
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_20

    .line 142
    :cond_41
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 143
    :goto_20
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v4, v3, :cond_42

    .line 144
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v6

    .line 145
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v2

    .line 144
    invoke-virtual {v1, v3, v6, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_42
    const/4 v1, -0x1

    if-eq v5, v1, :cond_43

    iget-object v1, v0, Lom;->d:Landroid/widget/TextView;

    .line 146
    invoke-static {v1, v5}, Lhh;->c(Landroid/widget/TextView;I)V

    :cond_43
    return-void
.end method

.method final c(Landroid/content/Context;I)V
    .locals 3

    .line 1
    sget-object v0, Lki;->v:[I

    invoke-static {p1, p2, v0}, Lsm;->j(Landroid/content/Context;I[I)Lsm;

    move-result-object p2

    .line 2
    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Lsm;->p(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v0, v2}, Lsm;->o(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lom;->d(Z)V

    :cond_0
    nop

    .line 4
    invoke-virtual {p2, v2}, Lsm;->p(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p2, v2, v0}, Lsm;->b(II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lom;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lom;->h(Landroid/content/Context;Lsm;)V

    .line 8
    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Lsm;->p(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p2, p1}, Lsm;->m(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lom;->d:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 11
    :cond_2
    invoke-virtual {p2}, Lsm;->n()V

    iget-object p1, p0, Lom;->b:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lom;->d:Landroid/widget/TextView;

    iget v0, p0, Lom;->a:I

    .line 12
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lom;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method
