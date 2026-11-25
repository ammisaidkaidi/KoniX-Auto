.class final Lou;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lqv;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lqv;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Lou;->c:I

    iput-object p1, p0, Lou;->b:Lqv;

    iput-object p2, p0, Lou;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 30
    move-object/from16 v0, p0

    iget v1, v0, Lou;->c:I

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lou;->a:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto/16 :goto_5

    .line 39
    :pswitch_0
    iget-object v1, v0, Lou;->a:Ljava/util/ArrayList;

    .line 1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v5, v2, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 2
    check-cast v7, Lpb;

    iget-object v9, v0, Lou;->b:Lqv;

    .line 3
    iget-object v10, v7, Lpb;->a:Lrr;

    iget v8, v7, Lpb;->b:I

    iget v11, v7, Lpb;->c:I

    iget v12, v7, Lpb;->d:I

    iget v7, v7, Lpb;->e:I

    .line 4
    iget-object v13, v10, Lrr;->itemView:Landroid/view/View;

    sub-int/2addr v12, v8

    sub-int/2addr v7, v11

    if-eqz v12, :cond_0

    .line 5
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 7
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    iget-object v8, v9, Lqv;->j:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v14, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    new-instance v11, Lox;

    move-object v8, v11

    move-object v6, v11

    move v11, v12

    move-object v12, v13

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lox;-><init>(Lqv;Lrr;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v15, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lou;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lou;->b:Lqv;

    iget-object v1, v1, Lqv;->g:Ljava/util/ArrayList;

    iget-object v2, v0, Lou;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v1, v0, Lou;->a:Ljava/util/ArrayList;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_7

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 14
    check-cast v7, Lpa;

    iget-object v8, v0, Lou;->b:Lqv;

    .line 15
    iget-object v9, v7, Lpa;->a:Lrr;

    const/4 v10, 0x0

    if-nez v9, :cond_3

    move-object v9, v10

    goto :goto_2

    .line 27
    :cond_3
    iget-object v9, v9, Lrr;->itemView:Landroid/view/View;

    .line 16
    :goto_2
    iget-object v11, v7, Lpa;->b:Lrr;

    if-eqz v11, :cond_4

    iget-object v10, v11, Lrr;->itemView:Landroid/view/View;

    goto :goto_3

    .line 27
    :cond_4
    nop

    .line 16
    :goto_3
    if-eqz v9, :cond_5

    .line 17
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    iget-object v12, v8, Lqv;->l:Ljava/util/ArrayList;

    .line 18
    iget-object v13, v7, Lpa;->a:Lrr;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget v12, v7, Lpa;->e:I

    iget v13, v7, Lpa;->c:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 20
    iget v12, v7, Lpa;->f:I

    iget v13, v7, Lpa;->d:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 21
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    new-instance v12, Loy;

    invoke-direct {v12, v8, v7, v11, v9}, Loy;-><init>(Lqv;Lpa;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v13, v12}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 22
    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    if-eqz v10, :cond_6

    .line 23
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v11, v8, Lqv;->l:Ljava/util/ArrayList;

    .line 24
    iget-object v12, v7, Lpa;->b:Lrr;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 26
    invoke-virtual {v12, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v13, Loz;

    invoke-direct {v13, v8, v7, v9, v10}, Loz;-><init>(Lqv;Lpa;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 27
    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    .line 22
    :cond_6
    const/4 v11, 0x0

    .line 27
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lou;->a:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lou;->b:Lqv;

    iget-object v1, v1, Lqv;->h:Ljava/util/ArrayList;

    iget-object v2, v0, Lou;->a:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 30
    :goto_5
    if-ge v5, v3, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 31
    check-cast v4, Lrr;

    iget-object v6, v0, Lou;->b:Lqv;

    .line 32
    iget-object v7, v4, Lrr;->itemView:Landroid/view/View;

    .line 33
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, v6, Lqv;->i:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v8, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0x78

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Low;

    invoke-direct {v10, v6, v4, v7, v8}, Low;-><init>(Lqv;Lrr;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 36
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lou;->a:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lou;->b:Lqv;

    iget-object v1, v1, Lqv;->f:Ljava/util/ArrayList;

    iget-object v2, v0, Lou;->a:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
