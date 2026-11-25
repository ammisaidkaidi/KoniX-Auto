.class public final Lsv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lot;


# instance fields
.field final a:Landroid/support/v7/widget/Toolbar;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/view/Window$Callback;

.field d:Z

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Z

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Lmz;

.field private n:I

.field private final o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsv;->n:I

    iput-object p1, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p1, Landroid/support/v7/widget/Toolbar;->o:Ljava/lang/CharSequence;

    iput-object v1, p0, Lsv;->b:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v7/widget/Toolbar;->p:Ljava/lang/CharSequence;

    iput-object v1, p0, Lsv;->k:Ljava/lang/CharSequence;

    iget-object v1, p0, Lsv;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    iput-boolean v1, p0, Lsv;->j:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lsv;->i:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lki;->a:[I

    const v3, 0x7f040009

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lsm;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lsm;

    move-result-object v1

    const/16 v2, 0xf

    .line 3
    invoke-virtual {v1, v2}, Lsm;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lsv;->o:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x1b

    .line 4
    invoke-virtual {v1, v3}, Lsm;->l(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Lsv;->l(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v3, 0x19

    .line 7
    invoke-virtual {v1, v3}, Lsm;->l(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iput-object v3, p0, Lsv;->k:Ljava/lang/CharSequence;

    iget v5, p0, Lsv;->e:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/Toolbar;->p(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 v3, 0x14

    .line 10
    invoke-virtual {v1, v3}, Lsm;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p0, v3}, Lsv;->i(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/16 v3, 0x11

    .line 12
    invoke-virtual {v1, v3}, Lsm;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    iput-object v3, p0, Lsv;->g:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-direct {p0}, Lsv;->D()V

    :cond_4
    iget-object v3, p0, Lsv;->i:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    iput-object v2, p0, Lsv;->i:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-direct {p0}, Lsv;->C()V

    :cond_5
    const/16 v2, 0xa

    .line 15
    invoke-virtual {v1, v2, v0}, Lsm;->c(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lsv;->h(I)V

    const/16 v2, 0x9

    .line 16
    invoke-virtual {v1, v2, v0}, Lsm;->f(II)I

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lsv;->f:Landroid/view/View;

    if-eqz v3, :cond_6

    iget v5, p0, Lsv;->e:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_6

    .line 18
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_6
    iput-object v2, p0, Lsv;->f:Landroid/view/View;

    if-eqz v2, :cond_7

    iget v3, p0, Lsv;->e:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    .line 19
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_7
    iget v2, p0, Lsv;->e:I

    or-int/lit8 v2, v2, 0x10

    .line 20
    invoke-virtual {p0, v2}, Lsv;->h(I)V

    :cond_8
    const/16 v2, 0xd

    .line 21
    invoke-virtual {v1, v2, v0}, Lsm;->e(II)I

    move-result v2

    if-lez v2, :cond_9

    .line 22
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 23
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const/4 v2, 0x7

    .line 25
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lsm;->a(II)I

    move-result v2

    const/4 v5, 0x3

    .line 26
    invoke-virtual {v1, v5, v3}, Lsm;->a(II)I

    move-result v3

    if-gez v2, :cond_a

    if-ltz v3, :cond_b

    .line 27
    :cond_a
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 28
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 27
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->i()V

    iget-object v5, p1, Landroid/support/v7/widget/Toolbar;->n:Lrx;

    .line 29
    invoke-virtual {v5, v2, v3}, Lrx;->a(II)V

    :cond_b
    const/16 v2, 0x1c

    .line 30
    invoke-virtual {v1, v2, v0}, Lsm;->f(II)I

    move-result v2

    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput v2, p1, Landroid/support/v7/widget/Toolbar;->k:I

    iget-object v5, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    .line 32
    invoke-virtual {v5, v3, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_c
    const/16 v2, 0x1a

    .line 33
    invoke-virtual {v1, v2, v0}, Lsm;->f(II)I

    move-result v2

    if-eqz v2, :cond_d

    .line 34
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput v2, p1, Landroid/support/v7/widget/Toolbar;->l:I

    iget-object v5, p1, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    .line 35
    invoke-virtual {v5, v3, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_d
    const/16 v2, 0x16

    .line 36
    invoke-virtual {v1, v2, v0}, Lsm;->f(II)I

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->o(I)V

    .line 38
    :cond_e
    invoke-virtual {v1}, Lsm;->n()V

    iget v0, p0, Lsv;->n:I

    const v1, 0x7f100003

    if-ne v0, v1, :cond_f

    goto :goto_2

    .line 44
    :cond_f
    iput v1, p0, Lsv;->n:I

    .line 39
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lsv;->n:I

    if-nez v0, :cond_10

    goto :goto_1

    .line 40
    :cond_10
    invoke-virtual {p0}, Lsv;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 39
    :goto_1
    iput-object v4, p0, Lsv;->l:Ljava/lang/CharSequence;

    .line 41
    invoke-direct {p0}, Lsv;->B()V

    .line 38
    :cond_11
    :goto_2
    nop

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->g()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lsv;->l:Ljava/lang/CharSequence;

    new-instance v0, Lst;

    .line 43
    invoke-direct {v0, p0}, Lst;-><init>(Lsv;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->k()V

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final A(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lsv;->b:Ljava/lang/CharSequence;

    iget v0, p0, Lsv;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->q(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final B()V
    .locals 3

    .line 1
    iget v0, p0, Lsv;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsv;->l:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lsv;->n:I

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->m(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lsv;->l:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->m(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final C()V
    .locals 2

    .line 1
    iget v0, p0, Lsv;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lsv;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsv;->o:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->n(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->n(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final D()V
    .locals 2

    .line 1
    iget v0, p0, Lsv;->e:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsv;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lsv;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget-object v1, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->l(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lsv;->e:I

    return v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->h()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iget v0, p0, Lsv;->e:I

    xor-int/2addr v0, p1

    iput p1, p0, Lsv;->e:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lsv;->B()V

    .line 2
    :cond_0
    invoke-direct {p0}, Lsv;->C()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0}, Lsv;->D()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lsv;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->q(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lsv;->k:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->p(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    .line 6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->q(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    .line 7
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->p(Ljava/lang/CharSequence;)V

    .line 5
    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsv;->f:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    iget-object p1, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    .line 8
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    return-void

    :cond_5
    iget-object p1, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    .line 9
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    return-void

    .line 7
    :cond_6
    return-void
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsv;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lsv;->D()V

    return-void
.end method

.method public final j(Landroid/view/Menu;Lmb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsv;->m:Lmz;

    if-nez v0, :cond_0

    new-instance v0, Lmz;

    iget-object v1, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsv;->m:Lmz;

    :cond_0
    iget-object v0, p0, Lsv;->m:Lmz;

    iput-object p2, v0, Llb;->e:Lmb;

    iget-object p2, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    if-nez p1, :cond_1

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->j()V

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->a:Llo;

    if-ne v1, p1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->r:Lmz;

    .line 3
    invoke-virtual {v1, v2}, Llo;->m(Lmc;)V

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->s:Lsp;

    .line 4
    invoke-virtual {v1, v2}, Llo;->m(Lmc;)V

    :cond_4
    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->s:Lsp;

    if-nez v1, :cond_5

    new-instance v1, Lsp;

    invoke-direct {v1, p2}, Lsp;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p2, Landroid/support/v7/widget/Toolbar;->s:Lsp;

    .line 5
    :cond_5
    invoke-virtual {v0}, Lmz;->o()V

    if-eqz p1, :cond_6

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    check-cast p1, Llo;

    .line 6
    invoke-virtual {p1, v0, v1}, Llo;->h(Lmc;Landroid/content/Context;)V

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->s:Lsp;

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    .line 7
    invoke-virtual {p1, v1, v2}, Llo;->h(Lmc;Landroid/content/Context;)V

    goto :goto_0

    .line 13
    :cond_6
    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    .line 8
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Llb;->b(Landroid/content/Context;Llo;)V

    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->s:Lsp;

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    .line 9
    invoke-virtual {p1, v2, v1}, Lsp;->b(Landroid/content/Context;Llo;)V

    .line 10
    invoke-virtual {v0}, Llb;->i()V

    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->s:Lsp;

    .line 11
    invoke-virtual {p1}, Lsp;->i()V

    .line 7
    :goto_0
    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p2, Landroid/support/v7/widget/Toolbar;->j:I

    .line 12
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActionMenuView;->i(I)V

    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 13
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->j(Lmz;)V

    iput-object v0, p2, Landroid/support/v7/widget/Toolbar;->r:Lmz;

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsv;->d:Z

    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsv;->j:Z

    invoke-direct {p0, p1}, Lsv;->A(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public final n(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lsv;->c:Landroid/view/Window$Callback;

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsv;->j:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lsv;->A(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->s:Lsp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lsp;->b:Llr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->c:Lmz;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmz;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->c:Lmz;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lmz;->k:Lmu;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lmz;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->r()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->s()Z

    move-result v0

    return v0
.end method

.method public final v()V
    .locals 0

    return-void
.end method

.method public final w()V
    .locals 0

    return-void
.end method

.method public final x()V
    .locals 0

    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public final z(IJ)Lbew;
    .locals 2

    .line 1
    iget-object v0, p0, Lsv;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Lhs;->O(Landroid/view/View;)Lbew;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 4
    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Lbew;->b(F)V

    .line 3
    invoke-virtual {v0, p2, p3}, Lbew;->c(J)V

    new-instance p2, Lsu;

    invoke-direct {p2, p0, p1}, Lsu;-><init>(Lsv;I)V

    .line 4
    invoke-virtual {v0, p2}, Lbew;->d(Lhv;)V

    return-object v0
.end method
