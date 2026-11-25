.class final Ldj;
.super Ldl;
.source "PG"


# instance fields
.field private final g:Lcx;


# direct methods
.method public constructor <init>(IILcx;Lxv;)V
    .locals 1

    .line 1
    iget-object v0, p3, Lcx;->c:Lbr;

    invoke-direct {p0, p1, p2, v0, p4}, Ldl;-><init>(IILbr;Lxv;)V

    iput-object p3, p0, Ldj;->g:Lcx;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-super {p0}, Ldl;->a()V

    iget-object v0, p0, Ldj;->g:Lcx;

    .line 2
    invoke-virtual {v0}, Lcx;->d()V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget v0, p0, Ldl;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ldj;->g:Lcx;

    iget-object v0, v0, Lcx;->c:Lbr;

    iget-object v2, v0, Lbr;->P:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Lbr;->R(Landroid/view/View;)V

    invoke-static {v1}, Lcr;->R(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Ldl;->a:Lbr;

    .line 4
    invoke-virtual {v1}, Lbr;->B()Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Ldj;->g:Lcx;

    .line 6
    invoke-virtual {v2}, Lcx;->a()V

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 8
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x4

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, v0, Lbr;->S:Lbo;

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 10
    :cond_3
    iget v0, v0, Lbo;->l:F

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void
.end method
