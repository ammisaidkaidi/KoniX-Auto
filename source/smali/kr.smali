.class public final Lkr;
.super Landroid/view/ActionMode;
.source "PG"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lko;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lko;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lkr;->a:Landroid/content/Context;

    iput-object p2, p0, Lkr;->b:Lko;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0}, Lko;->f()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0}, Lko;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    new-instance v0, Lmf;

    iget-object v1, p0, Lkr;->a:Landroid/content/Context;

    iget-object v2, p0, Lkr;->b:Lko;

    invoke-virtual {v2}, Lko;->a()Landroid/view/Menu;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf;-><init>(Landroid/content/Context;Let;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0}, Lko;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0}, Lko;->d()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkr;->b:Lko;

    iget-object v0, v0, Lko;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0}, Lko;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Lkr;->b:Lko;

    iget-boolean v0, v0, Lko;->e:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0}, Lko;->g()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0}, Lko;->n()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0, p1}, Lko;->h(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0, p1}, Lko;->i(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0, p1}, Lko;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkr;->b:Lko;

    iput-object p1, v0, Lko;->d:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0, p1}, Lko;->k(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0, p1}, Lko;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkr;->b:Lko;

    invoke-virtual {v0, p1}, Lko;->m(Z)V

    return-void
.end method
