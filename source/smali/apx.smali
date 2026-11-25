.class public final Lapx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laps;


# static fields
.field private static final k:[I


# instance fields
.field public a:Z

.field public final b:Lapu;

.field public final c:Landroid/view/ViewGroup;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/Switch;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Z

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040244

    aput v2, v0, v1

    sput-object v0, Lapx;->k:[I

    return-void
.end method

.method public constructor <init>(Lapu;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapx;->b:Lapu;

    iput-object p2, p0, Lapx;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lapu;->c(Laps;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    const p2, 0x7f0700cf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lapx;->l:I

    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lapx;->b:Lapu;

    iget-boolean v0, v0, Lapu;->l:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lapx;->b:Lapu;

    .line 2
    invoke-virtual {v0}, Lapu;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lapx;->k:[I

    goto :goto_0

    .line 6
    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 4
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    .line 5
    :cond_1
    instance-of v2, p1, Lask;

    if-eqz v2, :cond_2

    .line 6
    move-object v2, p1

    check-cast v2, Lask;

    invoke-interface {v2, v0, v1}, Lask;->a([I[I)V

    .line 7
    :cond_2
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 9
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lapx;->b(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lapx;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lapx;->b:Lapu;

    iget v1, v1, Lapu;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lapx;->b:Lapu;

    iget-object v1, v0, Lapu;->i:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lapu;->h:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lapx;->b:Lapu;

    iget-boolean v4, v3, Lapu;->d:Z

    iget-boolean v5, v3, Lapu;->a:Z

    iget-boolean v6, v3, Lapu;->n:Z

    const/16 v7, 0x8

    if-eqz v6, :cond_f

    iget-boolean v3, v3, Lapu;->c:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lapx;->a:Z

    if-nez v3, :cond_f

    :cond_1
    if-nez v5, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    iget-object v0, p0, Lapx;->d:Landroid/view/View;

    .line 3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lapx;->d:Landroid/view/View;

    iget-object v6, p0, Lapx;->b:Lapu;

    iget-object v6, v6, Lapu;->h:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v0, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz v5, :cond_3

    iget-object v2, p0, Lapx;->g:Landroid/widget/Switch;

    iget-object v4, p0, Lapx;->b:Lapu;

    iget-boolean v4, v4, Lapu;->m:Z

    .line 5
    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lapx;->g:Landroid/widget/Switch;

    goto :goto_1

    .line 20
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lapx;->b:Lapu;

    iget-object v2, v2, Lapu;->i:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lapx;->l:I

    .line 8
    invoke-virtual {v2, v3, v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lapx;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lapx;->b:Lapu;

    iget-object v4, v4, Lapu;->i:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {v2, v4, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lapx;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lapx;->b:Lapu;

    iget-object v4, v4, Lapu;->h:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lapx;->i:Landroid/widget/TextView;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lapx;->f:Landroid/widget/ImageView;

    iget-object v4, p0, Lapx;->b:Lapu;

    iget-object v4, v4, Lapu;->i:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lapx;->e:Landroid/view/View;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lapx;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lapx;->b:Lapu;

    iget-object v4, v4, Lapu;->h:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lapx;->h:Landroid/widget/TextView;

    .line 5
    :goto_1
    iget-object v4, p0, Lapx;->e:Landroid/view/View;

    if-ne v2, v4, :cond_6

    const/4 v5, 0x0

    goto :goto_2

    .line 20
    :cond_6
    const/16 v5, 0x8

    .line 11
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lapx;->h:Landroid/widget/TextView;

    if-ne v2, v4, :cond_7

    const/4 v5, 0x0

    goto :goto_3

    .line 20
    :cond_7
    const/16 v5, 0x8

    .line 12
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lapx;->i:Landroid/widget/TextView;

    if-ne v2, v4, :cond_8

    const/4 v5, 0x0

    goto :goto_4

    .line 20
    :cond_8
    const/16 v5, 0x8

    .line 13
    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lapx;->g:Landroid/widget/Switch;

    if-ne v2, v4, :cond_9

    const/4 v7, 0x0

    goto :goto_5

    .line 20
    :cond_9
    nop

    .line 14
    :goto_5
    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setVisibility(I)V

    iget-boolean v4, p0, Lapx;->j:Z

    if-nez v4, :cond_a

    iget-object v2, p0, Lapx;->d:Landroid/view/View;

    :cond_a
    iget-object v4, p0, Lapx;->b:Lapu;

    iget-boolean v5, v4, Lapu;->e:Z

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    iget-object v1, v4, Lapu;->i:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_b
    iget-object v1, p0, Lapx;->d:Landroid/view/View;

    .line 16
    invoke-direct {p0, v1}, Lapx;->b(Landroid/view/View;)V

    iget-object v1, p0, Lapx;->d:Landroid/view/View;

    iget-object v4, p0, Lapx;->b:Lapu;

    iget-boolean v4, v4, Lapu;->o:Z

    .line 17
    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    iget-object v1, p0, Lapx;->b:Lapu;

    iget-object v4, v1, Lapu;->j:Lapt;

    if-nez v4, :cond_e

    iget-boolean v4, v1, Lapu;->a:Z

    if-nez v4, :cond_e

    iget-boolean v1, v1, Lapu;->b:Z

    if-eqz v1, :cond_c

    goto :goto_6

    .line 18
    :cond_c
    iget-object v1, p0, Lapx;->d:Landroid/view/View;

    if-ne v2, v1, :cond_d

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lapx;->d:Landroid/view/View;

    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_d
    return-void

    .line 17
    :cond_e
    :goto_6
    new-instance v0, Lapv;

    invoke-direct {v0, p0}, Lapv;-><init>(Lapx;)V

    .line 18
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 7
    :cond_f
    iget-object v0, p0, Lapx;->d:Landroid/view/View;

    .line 21
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onMenuItemChanged(Lapu;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lapx;->a()V

    return-void
.end method
