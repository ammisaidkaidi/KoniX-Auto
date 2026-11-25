.class final Loc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Loj;


# instance fields
.field a:Ljc;

.field final synthetic b:Lok;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lok;)V
    .locals 0

    iput-object p1, p0, Loc;->b:Lok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Loc;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final e(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Loc;->c:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final g(I)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h(I)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Loc;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public final j(I)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Loc;->a:Ljc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljy;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Loc;->a:Ljc;

    :cond_0
    return-void
.end method

.method public final l(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Loc;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Loc;->b:Lok;

    iget-object v0, v0, Lok;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljc;->a(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Liy;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 2
    invoke-static {v0, v1}, Ljc;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Loc;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object v0, v2, Liy;->d:Ljava/lang/CharSequence;

    :cond_1
    iget-object v0, p0, Loc;->c:Landroid/widget/ListAdapter;

    iget-object v3, p0, Loc;->b:Lok;

    .line 3
    invoke-virtual {v3}, Lok;->getSelectedItemPosition()I

    move-result v3

    iput-object v0, v2, Liy;->g:Landroid/widget/ListAdapter;

    iput-object p0, v2, Liy;->h:Landroid/content/DialogInterface$OnClickListener;

    iput v3, v2, Liy;->j:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Liy;->i:Z

    invoke-static {v2, v1}, Lhj;->d(Liy;I)Ljc;

    move-result-object v0

    iput-object v0, p0, Loc;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Ljb;

    iget-object v0, v0, Ljb;->e:Landroid/widget/ListView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    iget-object p1, p0, Loc;->a:Ljc;

    .line 6
    invoke-virtual {p1}, Ljc;->show()V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Loc;->b:Lok;

    invoke-virtual {p1, p2}, Lok;->setSelection(I)V

    iget-object p1, p0, Loc;->b:Lok;

    .line 2
    invoke-virtual {p1}, Lok;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Loc;->b:Lok;

    const/4 v0, 0x0

    iget-object v1, p0, Loc;->c:Landroid/widget/ListAdapter;

    .line 3
    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Lok;->performItemClick(Landroid/view/View;IJ)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Loc;->k()V

    return-void
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Loc;->a:Ljc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljc;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
