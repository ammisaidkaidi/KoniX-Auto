.class public final Llk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lmc;


# instance fields
.field a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field c:Llo;

.field public d:Landroid/support/v7/view/menu/ExpandedMenuView;

.field public e:Lmb;

.field public f:Llj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llk;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Llk;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Llk;->f:Llj;

    if-nez v0, :cond_0

    new-instance v0, Llj;

    invoke-direct {v0, p0}, Llj;-><init>(Llk;)V

    iput-object v0, p0, Llk;->f:Llj;

    :cond_0
    iget-object v0, p0, Llk;->f:Llj;

    return-object v0
.end method

.method public final b(Landroid/content/Context;Llo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llk;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Llk;->a:Landroid/content/Context;

    iget-object v0, p0, Llk;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Llk;->b:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Llk;->c:Llo;

    iget-object p1, p0, Llk;->f:Llj;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Llj;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final c(Llo;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Llk;->e:Lmb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmb;->a(Llo;Z)V

    :cond_0
    return-void
.end method

.method public final d(Lmb;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Lmk;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Llo;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Llp;

    invoke-direct {v0, p1}, Llp;-><init>(Llo;)V

    iget-object v2, v0, Llp;->a:Llo;

    iget-object v3, v2, Llo;->a:Landroid/content/Context;

    .line 3
    invoke-static {v3, v1}, Ljc;->a(Landroid/content/Context;I)I

    move-result v1

    new-instance v4, Liy;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {v3, v1}, Ljc;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Liy;-><init>(Landroid/content/Context;)V

    new-instance v3, Llk;

    iget-object v5, v4, Liy;->a:Landroid/content/Context;

    .line 5
    invoke-direct {v3, v5}, Llk;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Llp;->c:Llk;

    iget-object v3, v0, Llp;->c:Llk;

    iput-object v0, v3, Llk;->e:Lmb;

    iget-object v5, v0, Llp;->a:Llo;

    .line 6
    invoke-virtual {v5, v3}, Llo;->g(Lmc;)V

    iget-object v3, v0, Llp;->c:Llk;

    .line 7
    invoke-virtual {v3}, Llk;->a()Landroid/widget/ListAdapter;

    move-result-object v3

    iput-object v3, v4, Liy;->g:Landroid/widget/ListAdapter;

    iput-object v0, v4, Liy;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, v2, Llo;->g:Landroid/view/View;

    if-eqz v3, :cond_1

    iput-object v3, v4, Liy;->e:Landroid/view/View;

    goto :goto_0

    .line 14
    :cond_1
    iget-object v3, v2, Llo;->f:Landroid/graphics/drawable/Drawable;

    iput-object v3, v4, Liy;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, v2, Llo;->e:Ljava/lang/CharSequence;

    iput-object v2, v4, Liy;->d:Ljava/lang/CharSequence;

    .line 7
    :goto_0
    iput-object v0, v4, Liy;->f:Landroid/content/DialogInterface$OnKeyListener;

    .line 8
    invoke-static {v4, v1}, Lhj;->d(Liy;I)Ljc;

    move-result-object v1

    iput-object v1, v0, Llp;->b:Ljc;

    iget-object v1, v0, Llp;->b:Ljc;

    .line 9
    invoke-virtual {v1, v0}, Ljc;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Llp;->b:Ljc;

    .line 10
    invoke-virtual {v1}, Ljc;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    .line 11
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 12
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Llp;->b:Ljc;

    .line 13
    invoke-virtual {v0}, Ljc;->show()V

    iget-object v0, p0, Llk;->e:Lmb;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0, p1}, Lmb;->b(Llo;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final g(Llr;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final h(Llr;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Llk;->f:Llj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llj;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Llk;->c:Llo;

    iget-object p2, p0, Llk;->f:Llj;

    invoke-virtual {p2, p3}, Llj;->a(I)Llr;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Llo;->A(Landroid/view/MenuItem;Lmc;I)Z

    return-void
.end method
