.class public final Lwy;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PG"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:F

.field public E:F

.field public F:Ljava/lang/String;

.field public G:F

.field public H:F

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:F

.field public R:F

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Ljava/lang/String;

.field public Y:I

.field public Z:Z

.field public a:I

.field public aa:Z

.field public ab:Z

.field public ac:Z

.field public ad:Z

.field public ae:Z

.field public af:Z

.field public ag:I

.field public ah:I

.field public ai:I

.field public aj:I

.field public ak:I

.field public al:I

.field public am:F

.field public an:I

.field public ao:I

.field public ap:F

.field public aq:Lvx;

.field public ar:Z

.field public b:I

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:F

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Lwy;->a:I

    iput v0, p0, Lwy;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lwy;->c:F

    iput v0, p0, Lwy;->d:I

    iput v0, p0, Lwy;->e:I

    iput v0, p0, Lwy;->f:I

    iput v0, p0, Lwy;->g:I

    iput v0, p0, Lwy;->h:I

    iput v0, p0, Lwy;->i:I

    iput v0, p0, Lwy;->j:I

    iput v0, p0, Lwy;->k:I

    iput v0, p0, Lwy;->l:I

    iput v0, p0, Lwy;->m:I

    iput v0, p0, Lwy;->n:I

    iput v0, p0, Lwy;->o:I

    const/4 v2, 0x0

    iput v2, p0, Lwy;->p:I

    const/4 v3, 0x0

    iput v3, p0, Lwy;->q:F

    iput v0, p0, Lwy;->r:I

    iput v0, p0, Lwy;->s:I

    iput v0, p0, Lwy;->t:I

    iput v0, p0, Lwy;->u:I

    const/high16 v3, -0x80000000

    iput v3, p0, Lwy;->v:I

    iput v3, p0, Lwy;->w:I

    iput v3, p0, Lwy;->x:I

    iput v3, p0, Lwy;->y:I

    iput v3, p0, Lwy;->z:I

    iput v3, p0, Lwy;->A:I

    iput v3, p0, Lwy;->B:I

    iput v2, p0, Lwy;->C:I

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Lwy;->D:F

    iput v4, p0, Lwy;->E:F

    const/4 v5, 0x0

    iput-object v5, p0, Lwy;->F:Ljava/lang/String;

    iput v1, p0, Lwy;->G:F

    iput v1, p0, Lwy;->H:F

    iput v2, p0, Lwy;->I:I

    iput v2, p0, Lwy;->J:I

    iput v2, p0, Lwy;->K:I

    iput v2, p0, Lwy;->L:I

    iput v2, p0, Lwy;->M:I

    iput v2, p0, Lwy;->N:I

    iput v2, p0, Lwy;->O:I

    iput v2, p0, Lwy;->P:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lwy;->Q:F

    iput v1, p0, Lwy;->R:F

    iput v0, p0, Lwy;->S:I

    iput v0, p0, Lwy;->T:I

    iput v0, p0, Lwy;->U:I

    iput-boolean v2, p0, Lwy;->V:Z

    iput-boolean v2, p0, Lwy;->W:Z

    iput-object v5, p0, Lwy;->X:Ljava/lang/String;

    iput v2, p0, Lwy;->Y:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lwy;->Z:Z

    iput-boolean v1, p0, Lwy;->aa:Z

    iput-boolean v2, p0, Lwy;->ab:Z

    iput-boolean v2, p0, Lwy;->ac:Z

    iput-boolean v2, p0, Lwy;->ad:Z

    iput-boolean v2, p0, Lwy;->ae:Z

    iput-boolean v2, p0, Lwy;->af:Z

    iput v0, p0, Lwy;->ag:I

    iput v0, p0, Lwy;->ah:I

    iput v0, p0, Lwy;->ai:I

    iput v0, p0, Lwy;->aj:I

    iput v3, p0, Lwy;->ak:I

    iput v3, p0, Lwy;->al:I

    iput v4, p0, Lwy;->am:F

    new-instance v0, Lvx;

    .line 2
    invoke-direct {v0}, Lvx;-><init>()V

    iput-object v0, p0, Lwy;->aq:Lvx;

    iput-boolean v2, p0, Lwy;->ar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lwy;->a:I

    iput v0, p0, Lwy;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lwy;->c:F

    iput v0, p0, Lwy;->d:I

    iput v0, p0, Lwy;->e:I

    iput v0, p0, Lwy;->f:I

    iput v0, p0, Lwy;->g:I

    iput v0, p0, Lwy;->h:I

    iput v0, p0, Lwy;->i:I

    iput v0, p0, Lwy;->j:I

    iput v0, p0, Lwy;->k:I

    iput v0, p0, Lwy;->l:I

    iput v0, p0, Lwy;->m:I

    iput v0, p0, Lwy;->n:I

    iput v0, p0, Lwy;->o:I

    const/4 v2, 0x0

    iput v2, p0, Lwy;->p:I

    const/4 v3, 0x0

    iput v3, p0, Lwy;->q:F

    iput v0, p0, Lwy;->r:I

    iput v0, p0, Lwy;->s:I

    iput v0, p0, Lwy;->t:I

    iput v0, p0, Lwy;->u:I

    const/high16 v4, -0x80000000

    iput v4, p0, Lwy;->v:I

    iput v4, p0, Lwy;->w:I

    iput v4, p0, Lwy;->x:I

    iput v4, p0, Lwy;->y:I

    iput v4, p0, Lwy;->z:I

    iput v4, p0, Lwy;->A:I

    iput v4, p0, Lwy;->B:I

    iput v2, p0, Lwy;->C:I

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, p0, Lwy;->D:F

    iput v5, p0, Lwy;->E:F

    const/4 v6, 0x0

    iput-object v6, p0, Lwy;->F:Ljava/lang/String;

    iput v1, p0, Lwy;->G:F

    iput v1, p0, Lwy;->H:F

    iput v2, p0, Lwy;->I:I

    iput v2, p0, Lwy;->J:I

    iput v2, p0, Lwy;->K:I

    iput v2, p0, Lwy;->L:I

    iput v2, p0, Lwy;->M:I

    iput v2, p0, Lwy;->N:I

    iput v2, p0, Lwy;->O:I

    iput v2, p0, Lwy;->P:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lwy;->Q:F

    iput v1, p0, Lwy;->R:F

    iput v0, p0, Lwy;->S:I

    iput v0, p0, Lwy;->T:I

    iput v0, p0, Lwy;->U:I

    iput-boolean v2, p0, Lwy;->V:Z

    iput-boolean v2, p0, Lwy;->W:Z

    iput-object v6, p0, Lwy;->X:Ljava/lang/String;

    iput v2, p0, Lwy;->Y:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lwy;->Z:Z

    iput-boolean v1, p0, Lwy;->aa:Z

    iput-boolean v2, p0, Lwy;->ab:Z

    iput-boolean v2, p0, Lwy;->ac:Z

    iput-boolean v2, p0, Lwy;->ad:Z

    iput-boolean v2, p0, Lwy;->ae:Z

    iput-boolean v2, p0, Lwy;->af:Z

    iput v0, p0, Lwy;->ag:I

    iput v0, p0, Lwy;->ah:I

    iput v0, p0, Lwy;->ai:I

    iput v0, p0, Lwy;->aj:I

    iput v4, p0, Lwy;->ak:I

    iput v4, p0, Lwy;->al:I

    iput v5, p0, Lwy;->am:F

    new-instance v4, Lvx;

    .line 4
    invoke-direct {v4}, Lvx;-><init>()V

    iput-object v4, p0, Lwy;->aq:Lvx;

    iput-boolean v2, p0, Lwy;->ar:Z

    .line 5
    sget-object v4, Lxm;->b:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_1

    .line 7
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 8
    sget-object v6, Lwx;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const-string v7, "ConstraintLayout"

    const/4 v8, 0x2

    const/4 v9, -0x2

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget v6, p0, Lwy;->Y:I

    .line 9
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->Y:I

    goto/16 :goto_1

    :pswitch_2
    nop

    .line 10
    invoke-static {p0, p1, v5, v1}, Lxi;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :pswitch_3
    nop

    .line 11
    invoke-static {p0, p1, v5, v2}, Lxi;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :pswitch_4
    iget v6, p0, Lwy;->B:I

    .line 12
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lwy;->B:I

    goto/16 :goto_1

    :pswitch_5
    iget v6, p0, Lwy;->C:I

    .line 13
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lwy;->C:I

    goto/16 :goto_1

    :pswitch_6
    iget v6, p0, Lwy;->n:I

    .line 14
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->n:I

    if-ne v6, v0, :cond_0

    .line 15
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->n:I

    goto/16 :goto_1

    :pswitch_7
    iget v6, p0, Lwy;->m:I

    .line 16
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->m:I

    if-ne v6, v0, :cond_0

    .line 17
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->m:I

    goto/16 :goto_1

    .line 18
    :pswitch_8
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lwy;->X:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    iget v6, p0, Lwy;->T:I

    .line 19
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lwy;->T:I

    goto/16 :goto_1

    :pswitch_a
    iget v6, p0, Lwy;->S:I

    .line 20
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lwy;->S:I

    goto/16 :goto_1

    :pswitch_b
    nop

    .line 21
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->J:I

    goto/16 :goto_1

    :pswitch_c
    nop

    .line 22
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->I:I

    goto/16 :goto_1

    :pswitch_d
    iget v6, p0, Lwy;->H:F

    .line 23
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lwy;->H:F

    goto/16 :goto_1

    :pswitch_e
    iget v6, p0, Lwy;->G:F

    .line 24
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lwy;->G:F

    goto/16 :goto_1

    .line 25
    :pswitch_f
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lxi;->f(Lwy;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_10
    iget v6, p0, Lwy;->R:F

    .line 26
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lwy;->R:F

    iput v8, p0, Lwy;->L:I

    goto/16 :goto_1

    :pswitch_11
    :try_start_0
    iget v6, p0, Lwy;->P:I

    .line 27
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lwy;->P:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 85
    :catch_0
    move-exception v6

    iget v6, p0, Lwy;->P:I

    .line 28
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v9, :cond_0

    iput v9, p0, Lwy;->P:I

    goto/16 :goto_1

    .line 27
    :pswitch_12
    :try_start_1
    iget v6, p0, Lwy;->N:I

    .line 29
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lwy;->N:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 28
    :catch_1
    move-exception v6

    iget v6, p0, Lwy;->N:I

    .line 30
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v9, :cond_0

    iput v9, p0, Lwy;->N:I

    goto/16 :goto_1

    .line 29
    :pswitch_13
    iget v6, p0, Lwy;->Q:F

    .line 31
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lwy;->Q:F

    iput v8, p0, Lwy;->K:I

    goto/16 :goto_1

    :pswitch_14
    :try_start_2
    iget v6, p0, Lwy;->O:I

    .line 32
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lwy;->O:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 30
    :catch_2
    move-exception v6

    iget v6, p0, Lwy;->O:I

    .line 33
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v9, :cond_0

    iput v9, p0, Lwy;->O:I

    goto/16 :goto_1

    .line 32
    :pswitch_15
    :try_start_3
    iget v6, p0, Lwy;->M:I

    .line 34
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lwy;->M:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 33
    :catch_3
    move-exception v6

    iget v6, p0, Lwy;->M:I

    .line 35
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v9, :cond_0

    iput v9, p0, Lwy;->M:I

    goto/16 :goto_1

    .line 34
    :pswitch_16
    nop

    .line 36
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->L:I

    if-ne v5, v1, :cond_0

    .line 37
    const-string v5, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_17
    nop

    .line 38
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->K:I

    if-ne v5, v1, :cond_0

    .line 39
    const-string v5, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_18
    iget v6, p0, Lwy;->E:F

    .line 40
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lwy;->E:F

    goto/16 :goto_1

    :pswitch_19
    iget v6, p0, Lwy;->D:F

    .line 41
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lwy;->D:F

    goto/16 :goto_1

    :pswitch_1a
    iget-boolean v6, p0, Lwy;->W:Z

    .line 42
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lwy;->W:Z

    goto/16 :goto_1

    :pswitch_1b
    iget-boolean v6, p0, Lwy;->V:Z

    .line 43
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lwy;->V:Z

    goto/16 :goto_1

    :pswitch_1c
    iget v6, p0, Lwy;->A:I

    .line 44
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lwy;->A:I

    goto/16 :goto_1

    :pswitch_1d
    iget v6, p0, Lwy;->z:I

    .line 45
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lwy;->z:I

    goto/16 :goto_1

    :pswitch_1e
    iget v6, p0, Lwy;->y:I

    .line 46
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lwy;->y:I

    goto/16 :goto_1

    :pswitch_1f
    iget v6, p0, Lwy;->x:I

    .line 47
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lwy;->x:I

    goto/16 :goto_1

    :pswitch_20
    iget v6, p0, Lwy;->w:I

    .line 48
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lwy;->w:I

    goto/16 :goto_1

    :pswitch_21
    iget v6, p0, Lwy;->v:I

    .line 49
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lwy;->v:I

    goto/16 :goto_1

    :pswitch_22
    iget v6, p0, Lwy;->u:I

    .line 50
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->u:I

    if-ne v6, v0, :cond_0

    .line 51
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->u:I

    goto/16 :goto_1

    :pswitch_23
    iget v6, p0, Lwy;->t:I

    .line 52
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->t:I

    if-ne v6, v0, :cond_0

    .line 53
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->t:I

    goto/16 :goto_1

    :pswitch_24
    iget v6, p0, Lwy;->s:I

    .line 54
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->s:I

    if-ne v6, v0, :cond_0

    .line 55
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->s:I

    goto/16 :goto_1

    :pswitch_25
    iget v6, p0, Lwy;->r:I

    .line 56
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->r:I

    if-ne v6, v0, :cond_0

    .line 57
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->r:I

    goto/16 :goto_1

    :pswitch_26
    iget v6, p0, Lwy;->l:I

    .line 58
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->l:I

    if-ne v6, v0, :cond_0

    .line 59
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->l:I

    goto/16 :goto_1

    :pswitch_27
    iget v6, p0, Lwy;->k:I

    .line 60
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->k:I

    if-ne v6, v0, :cond_0

    .line 61
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->k:I

    goto/16 :goto_1

    :pswitch_28
    iget v6, p0, Lwy;->j:I

    .line 62
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->j:I

    if-ne v6, v0, :cond_0

    .line 63
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->j:I

    goto/16 :goto_1

    :pswitch_29
    iget v6, p0, Lwy;->i:I

    .line 64
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->i:I

    if-ne v6, v0, :cond_0

    .line 65
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->i:I

    goto/16 :goto_1

    :pswitch_2a
    iget v6, p0, Lwy;->h:I

    .line 66
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->h:I

    if-ne v6, v0, :cond_0

    .line 67
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->h:I

    goto/16 :goto_1

    :pswitch_2b
    iget v6, p0, Lwy;->g:I

    .line 68
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->g:I

    if-ne v6, v0, :cond_0

    .line 69
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->g:I

    goto/16 :goto_1

    :pswitch_2c
    iget v6, p0, Lwy;->f:I

    .line 70
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->f:I

    if-ne v6, v0, :cond_0

    .line 71
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->f:I

    goto/16 :goto_1

    :pswitch_2d
    iget v6, p0, Lwy;->e:I

    .line 72
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->e:I

    if-ne v6, v0, :cond_0

    .line 73
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->e:I

    goto :goto_1

    :pswitch_2e
    iget v6, p0, Lwy;->d:I

    .line 74
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->d:I

    if-ne v6, v0, :cond_0

    .line 75
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->d:I

    goto :goto_1

    :pswitch_2f
    iget v6, p0, Lwy;->c:F

    .line 76
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lwy;->c:F

    goto :goto_1

    :pswitch_30
    iget v6, p0, Lwy;->b:I

    .line 77
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lwy;->b:I

    goto :goto_1

    :pswitch_31
    iget v6, p0, Lwy;->a:I

    .line 78
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lwy;->a:I

    goto :goto_1

    :pswitch_32
    iget v6, p0, Lwy;->q:F

    .line 79
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    iput v5, p0, Lwy;->q:F

    cmpg-float v7, v5, v3

    if-gez v7, :cond_0

    sub-float v5, v6, v5

    rem-float/2addr v5, v6

    iput v5, p0, Lwy;->q:F

    goto :goto_1

    :pswitch_33
    iget v6, p0, Lwy;->p:I

    .line 80
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lwy;->p:I

    goto :goto_1

    :pswitch_34
    iget v6, p0, Lwy;->o:I

    .line 81
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lwy;->o:I

    if-ne v6, v0, :cond_0

    .line 82
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->o:I

    goto :goto_1

    :pswitch_35
    iget v6, p0, Lwy;->U:I

    .line 83
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lwy;->U:I

    .line 8
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {p0}, Lwy;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 86
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Lwy;->a:I

    iput p1, p0, Lwy;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lwy;->c:F

    iput p1, p0, Lwy;->d:I

    iput p1, p0, Lwy;->e:I

    iput p1, p0, Lwy;->f:I

    iput p1, p0, Lwy;->g:I

    iput p1, p0, Lwy;->h:I

    iput p1, p0, Lwy;->i:I

    iput p1, p0, Lwy;->j:I

    iput p1, p0, Lwy;->k:I

    iput p1, p0, Lwy;->l:I

    iput p1, p0, Lwy;->m:I

    iput p1, p0, Lwy;->n:I

    iput p1, p0, Lwy;->o:I

    const/4 v1, 0x0

    iput v1, p0, Lwy;->p:I

    const/4 v2, 0x0

    iput v2, p0, Lwy;->q:F

    iput p1, p0, Lwy;->r:I

    iput p1, p0, Lwy;->s:I

    iput p1, p0, Lwy;->t:I

    iput p1, p0, Lwy;->u:I

    const/high16 v2, -0x80000000

    iput v2, p0, Lwy;->v:I

    iput v2, p0, Lwy;->w:I

    iput v2, p0, Lwy;->x:I

    iput v2, p0, Lwy;->y:I

    iput v2, p0, Lwy;->z:I

    iput v2, p0, Lwy;->A:I

    iput v2, p0, Lwy;->B:I

    iput v1, p0, Lwy;->C:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lwy;->D:F

    iput v3, p0, Lwy;->E:F

    const/4 v4, 0x0

    iput-object v4, p0, Lwy;->F:Ljava/lang/String;

    iput v0, p0, Lwy;->G:F

    iput v0, p0, Lwy;->H:F

    iput v1, p0, Lwy;->I:I

    iput v1, p0, Lwy;->J:I

    iput v1, p0, Lwy;->K:I

    iput v1, p0, Lwy;->L:I

    iput v1, p0, Lwy;->M:I

    iput v1, p0, Lwy;->N:I

    iput v1, p0, Lwy;->O:I

    iput v1, p0, Lwy;->P:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lwy;->Q:F

    iput v0, p0, Lwy;->R:F

    iput p1, p0, Lwy;->S:I

    iput p1, p0, Lwy;->T:I

    iput p1, p0, Lwy;->U:I

    iput-boolean v1, p0, Lwy;->V:Z

    iput-boolean v1, p0, Lwy;->W:Z

    iput-object v4, p0, Lwy;->X:Ljava/lang/String;

    iput v1, p0, Lwy;->Y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwy;->Z:Z

    iput-boolean v0, p0, Lwy;->aa:Z

    iput-boolean v1, p0, Lwy;->ab:Z

    iput-boolean v1, p0, Lwy;->ac:Z

    iput-boolean v1, p0, Lwy;->ad:Z

    iput-boolean v1, p0, Lwy;->ae:Z

    iput-boolean v1, p0, Lwy;->af:Z

    iput p1, p0, Lwy;->ag:I

    iput p1, p0, Lwy;->ah:I

    iput p1, p0, Lwy;->ai:I

    iput p1, p0, Lwy;->aj:I

    iput v2, p0, Lwy;->ak:I

    iput v2, p0, Lwy;->al:I

    iput v3, p0, Lwy;->am:F

    new-instance p1, Lvx;

    .line 87
    invoke-direct {p1}, Lvx;-><init>()V

    iput-object p1, p0, Lwy;->aq:Lvx;

    iput-boolean v1, p0, Lwy;->ar:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwy;->ac:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lwy;->Z:Z

    iput-boolean v1, p0, Lwy;->aa:Z

    iget v2, p0, Lwy;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lwy;->V:Z

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lwy;->Z:Z

    iget v2, p0, Lwy;->K:I

    if-nez v2, :cond_0

    iput v1, p0, Lwy;->K:I

    .line 2
    :cond_0
    iget v2, p0, Lwy;->height:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lwy;->W:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lwy;->aa:Z

    iget v2, p0, Lwy;->L:I

    if-nez v2, :cond_1

    iput v1, p0, Lwy;->L:I

    .line 3
    :cond_1
    iget v2, p0, Lwy;->width:I

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lwy;->width:I

    if-ne v2, v4, :cond_3

    :cond_2
    iput-boolean v0, p0, Lwy;->Z:Z

    .line 4
    iget v2, p0, Lwy;->width:I

    if-nez v2, :cond_3

    iget v2, p0, Lwy;->K:I

    if-ne v2, v1, :cond_3

    .line 5
    iput v3, p0, Lwy;->width:I

    iput-boolean v1, p0, Lwy;->V:Z

    .line 6
    :cond_3
    iget v2, p0, Lwy;->height:I

    if-eqz v2, :cond_4

    iget v2, p0, Lwy;->height:I

    if-ne v2, v4, :cond_5

    :cond_4
    iput-boolean v0, p0, Lwy;->aa:Z

    .line 7
    iget v0, p0, Lwy;->height:I

    if-nez v0, :cond_5

    iget v0, p0, Lwy;->L:I

    if-ne v0, v1, :cond_5

    .line 8
    iput v3, p0, Lwy;->height:I

    iput-boolean v1, p0, Lwy;->W:Z

    :cond_5
    iget v0, p0, Lwy;->c:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7

    iget v0, p0, Lwy;->a:I

    if-ne v0, v4, :cond_7

    iget v0, p0, Lwy;->b:I

    if-eq v0, v4, :cond_6

    goto :goto_0

    .line 11
    :cond_6
    return-void

    .line 8
    :cond_7
    :goto_0
    iput-boolean v1, p0, Lwy;->ac:Z

    iput-boolean v1, p0, Lwy;->Z:Z

    iput-boolean v1, p0, Lwy;->aa:Z

    iget-object v0, p0, Lwy;->aq:Lvx;

    .line 9
    instance-of v0, v0, Lwa;

    if-nez v0, :cond_8

    new-instance v0, Lwa;

    .line 10
    invoke-direct {v0}, Lwa;-><init>()V

    iput-object v0, p0, Lwy;->aq:Lvx;

    :cond_8
    iget-object v0, p0, Lwy;->aq:Lvx;

    .line 11
    check-cast v0, Lwa;

    iget v1, p0, Lwy;->U:I

    invoke-virtual {v0, v1}, Lwa;->c(I)V

    return-void
.end method

.method public final resolveLayoutDirection(I)V
    .locals 10

    .line 1
    iget v0, p0, Lwy;->leftMargin:I

    .line 2
    iget v1, p0, Lwy;->rightMargin:I

    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 4
    invoke-virtual {p0}, Lwy;->getLayoutDirection()I

    move-result p1

    const/4 v2, -0x1

    iput v2, p0, Lwy;->ai:I

    iput v2, p0, Lwy;->aj:I

    iput v2, p0, Lwy;->ag:I

    iput v2, p0, Lwy;->ah:I

    iget v3, p0, Lwy;->v:I

    iput v3, p0, Lwy;->ak:I

    iget v3, p0, Lwy;->x:I

    iput v3, p0, Lwy;->al:I

    iget v3, p0, Lwy;->D:F

    iput v3, p0, Lwy;->am:F

    iget v4, p0, Lwy;->a:I

    iput v4, p0, Lwy;->an:I

    iget v5, p0, Lwy;->b:I

    iput v5, p0, Lwy;->ao:I

    iget v6, p0, Lwy;->c:F

    iput v6, p0, Lwy;->ap:F

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    if-ne p1, v8, :cond_9

    iget p1, p0, Lwy;->r:I

    if-eq p1, v2, :cond_0

    iput p1, p0, Lwy;->ai:I

    const/4 p1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Lwy;->s:I

    if-eq p1, v2, :cond_1

    iput p1, p0, Lwy;->aj:I

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget v9, p0, Lwy;->t:I

    if-eq v9, v2, :cond_2

    iput v9, p0, Lwy;->ah:I

    const/4 p1, 0x1

    :cond_2
    iget v9, p0, Lwy;->u:I

    if-eq v9, v2, :cond_3

    iput v9, p0, Lwy;->ag:I

    const/4 p1, 0x1

    :cond_3
    iget v9, p0, Lwy;->z:I

    if-eq v9, v7, :cond_4

    iput v9, p0, Lwy;->al:I

    :cond_4
    iget v9, p0, Lwy;->A:I

    if-eq v9, v7, :cond_5

    iput v9, p0, Lwy;->ak:I

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    sub-float p1, v7, v3

    iput p1, p0, Lwy;->am:F

    :cond_6
    iget-boolean p1, p0, Lwy;->ac:Z

    if-eqz p1, :cond_f

    iget p1, p0, Lwy;->U:I

    if-ne p1, v8, :cond_f

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float v3, v6, p1

    if-eqz v3, :cond_7

    sub-float/2addr v7, v6

    iput v7, p0, Lwy;->ap:F

    iput v2, p0, Lwy;->an:I

    iput v2, p0, Lwy;->ao:I

    goto :goto_2

    .line 8
    :cond_7
    if-eq v4, v2, :cond_8

    iput v4, p0, Lwy;->ao:I

    iput v2, p0, Lwy;->an:I

    :goto_1
    iput p1, p0, Lwy;->ap:F

    goto :goto_2

    :cond_8
    if-eq v5, v2, :cond_f

    iput v5, p0, Lwy;->an:I

    iput v2, p0, Lwy;->ao:I

    goto :goto_1

    :cond_9
    iget p1, p0, Lwy;->r:I

    if-eq p1, v2, :cond_a

    iput p1, p0, Lwy;->ah:I

    :cond_a
    iget p1, p0, Lwy;->s:I

    if-eq p1, v2, :cond_b

    iput p1, p0, Lwy;->ag:I

    :cond_b
    iget p1, p0, Lwy;->t:I

    if-eq p1, v2, :cond_c

    iput p1, p0, Lwy;->ai:I

    :cond_c
    iget p1, p0, Lwy;->u:I

    if-eq p1, v2, :cond_d

    iput p1, p0, Lwy;->aj:I

    :cond_d
    iget p1, p0, Lwy;->z:I

    if-eq p1, v7, :cond_e

    iput p1, p0, Lwy;->ak:I

    :cond_e
    iget p1, p0, Lwy;->A:I

    if-eq p1, v7, :cond_f

    iput p1, p0, Lwy;->al:I

    .line 4
    :cond_f
    :goto_2
    iget p1, p0, Lwy;->t:I

    if-ne p1, v2, :cond_13

    iget p1, p0, Lwy;->u:I

    if-ne p1, v2, :cond_13

    iget p1, p0, Lwy;->s:I

    if-ne p1, v2, :cond_13

    iget p1, p0, Lwy;->r:I

    if-ne p1, v2, :cond_13

    iget p1, p0, Lwy;->f:I

    if-eq p1, v2, :cond_10

    iput p1, p0, Lwy;->ai:I

    .line 5
    iget p1, p0, Lwy;->rightMargin:I

    if-gtz p1, :cond_11

    if-lez v1, :cond_11

    .line 6
    iput v1, p0, Lwy;->rightMargin:I

    goto :goto_3

    .line 12
    :cond_10
    iget p1, p0, Lwy;->g:I

    if-eq p1, v2, :cond_11

    iput p1, p0, Lwy;->aj:I

    .line 7
    iget p1, p0, Lwy;->rightMargin:I

    if-gtz p1, :cond_11

    if-lez v1, :cond_11

    .line 8
    iput v1, p0, Lwy;->rightMargin:I

    .line 6
    :cond_11
    :goto_3
    iget p1, p0, Lwy;->d:I

    if-eq p1, v2, :cond_12

    iput p1, p0, Lwy;->ag:I

    .line 9
    iget p1, p0, Lwy;->leftMargin:I

    if-gtz p1, :cond_13

    if-lez v0, :cond_13

    .line 10
    iput v0, p0, Lwy;->leftMargin:I

    return-void

    :cond_12
    iget p1, p0, Lwy;->e:I

    if-eq p1, v2, :cond_13

    iput p1, p0, Lwy;->ah:I

    .line 11
    iget p1, p0, Lwy;->leftMargin:I

    if-gtz p1, :cond_13

    if-lez v0, :cond_13

    .line 12
    iput v0, p0, Lwy;->leftMargin:I

    return-void

    .line 8
    :cond_13
    return-void
.end method
