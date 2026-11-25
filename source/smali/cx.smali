.class final Lcx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcg;

.field public final b:Lcy;

.field public final c:Lbr;

.field public d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcg;Lcy;Lbr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcx;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcx;->d:I

    iput-object p1, p0, Lcx;->a:Lcg;

    iput-object p2, p0, Lcx;->b:Lcy;

    iput-object p3, p0, Lcx;->c:Lbr;

    return-void
.end method

.method public constructor <init>(Lcg;Lcy;Lbr;Lcv;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcx;->e:Z

    const/4 v1, -0x1

    iput v1, p0, Lcx;->d:I

    iput-object p1, p0, Lcx;->a:Lcg;

    iput-object p2, p0, Lcx;->b:Lcy;

    iput-object p3, p0, Lcx;->c:Lbr;

    const/4 p1, 0x0

    iput-object p1, p3, Lbr;->j:Landroid/util/SparseArray;

    .line 2
    iput-object p1, p3, Lbr;->k:Landroid/os/Bundle;

    .line 3
    iput v0, p3, Lbr;->z:I

    .line 4
    iput-boolean v0, p3, Lbr;->w:Z

    .line 5
    iput-boolean v0, p3, Lbr;->s:Z

    .line 6
    iget-object p2, p3, Lbr;->o:Lbr;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lbr;->m:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    move-object p2, p1

    .line 6
    :goto_0
    iput-object p2, p3, Lbr;->p:Ljava/lang/String;

    .line 7
    iput-object p1, p3, Lbr;->o:Lbr;

    iget-object p1, p4, Lcv;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 8
    iput-object p1, p3, Lbr;->i:Landroid/os/Bundle;

    return-void

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 9
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Lbr;->i:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcg;Lcy;Ljava/lang/ClassLoader;Lcb;Lcv;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcx;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcx;->d:I

    iput-object p1, p0, Lcx;->a:Lcg;

    iput-object p2, p0, Lcx;->b:Lcy;

    iget-object p1, p5, Lcv;->a:Ljava/lang/String;

    invoke-virtual {p4, p1}, Lcb;->b(Ljava/lang/String;)Lbr;

    move-result-object p1

    iget-object p2, p5, Lcv;->j:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    iget-object p2, p5, Lcv;->j:Landroid/os/Bundle;

    .line 12
    invoke-virtual {p1, p2}, Lbr;->Q(Landroid/os/Bundle;)V

    iget-object p2, p5, Lcv;->b:Ljava/lang/String;

    .line 13
    iput-object p2, p1, Lbr;->m:Ljava/lang/String;

    iget-boolean p2, p5, Lcv;->c:Z

    .line 14
    iput-boolean p2, p1, Lbr;->v:Z

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p1, Lbr;->x:Z

    iget p2, p5, Lcv;->d:I

    .line 16
    iput p2, p1, Lbr;->E:I

    iget p2, p5, Lcv;->e:I

    .line 17
    iput p2, p1, Lbr;->F:I

    iget-object p2, p5, Lcv;->f:Ljava/lang/String;

    .line 18
    iput-object p2, p1, Lbr;->G:Ljava/lang/String;

    iget-boolean p2, p5, Lcv;->g:Z

    .line 19
    iput-boolean p2, p1, Lbr;->J:Z

    iget-boolean p2, p5, Lcv;->h:Z

    .line 20
    iput-boolean p2, p1, Lbr;->t:Z

    iget-boolean p2, p5, Lcv;->i:Z

    .line 21
    iput-boolean p2, p1, Lbr;->I:Z

    iget-boolean p2, p5, Lcv;->k:Z

    .line 22
    iput-boolean p2, p1, Lbr;->H:Z

    .line 23
    invoke-static {}, Lzm;->values()[Lzm;

    move-result-object p2

    iget p3, p5, Lcv;->l:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lbr;->X:Lzm;

    iget-object p2, p5, Lcv;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 24
    iput-object p2, p1, Lbr;->i:Landroid/os/Bundle;

    goto :goto_0

    .line 26
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    .line 25
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Lbr;->i:Landroid/os/Bundle;

    .line 24
    :goto_0
    iput-object p1, p0, Lcx;->c:Lbr;

    const/4 p2, 0x2

    invoke-static {p2}, Lcr;->R(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcx;->b:Lcy;

    iget-object v1, p0, Lcx;->c:Lbr;

    iget-object v2, v1, Lbr;->O:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget-object v4, v0, Lcy;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, v0, Lcy;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbr;

    .line 4
    iget-object v6, v5, Lbr;->O:Landroid/view/ViewGroup;

    if-ne v6, v2, :cond_1

    iget-object v5, v5, Lbr;->P:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_1
    iget-object v4, v0, Lcy;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, v0, Lcy;->a:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbr;

    .line 8
    iget-object v5, v4, Lbr;->O:Landroid/view/ViewGroup;

    if-ne v5, v2, :cond_3

    iget-object v4, v4, Lbr;->P:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 1
    :goto_2
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 10
    iget-object v1, v0, Lbr;->O:Landroid/view/ViewGroup;

    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcx;->c:Lbr;

    iget-boolean v0, v0, Lbr;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcx;->c:Lbr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 3
    iget-object v1, v0, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Lbr;->ah()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcx;->c:Lbr;

    .line 4
    iget-object v2, v1, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    iget v2, v1, Lbr;->F:I

    if-eqz v2, :cond_6

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 7
    iget-object v1, v1, Lbr;->A:Lcr;

    iget-object v1, v1, Lcr;->k:Lby;

    .line 8
    invoke-virtual {v1, v2}, Lby;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    iget-object v1, p0, Lcx;->c:Lbr;

    .line 9
    iget-boolean v3, v1, Lbr;->x:Z

    if-eqz v3, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lbr;->t()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcx;->c:Lbr;

    iget v1, v1, Lbr;->F:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    const-string v0, "unknown"

    .line 10
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcx;->c:Lbr;

    iget v3, v3, Lbr;->F:I

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcx;->c:Lbr;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    instance-of v1, v2, Lbz;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcx;->c:Lbr;

    .line 14
    invoke-static {v1, v2}, Lza;->d(Lbr;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 5
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcx;->c:Lbr;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_6
    const/4 v2, 0x0

    .line 4
    :cond_7
    :goto_1
    iget-object v1, p0, Lcx;->c:Lbr;

    .line 15
    iput-object v2, v1, Lbr;->O:Landroid/view/ViewGroup;

    .line 16
    iget-object v3, v1, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, v3}, Lbr;->k(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcx;->c:Lbr;

    .line 17
    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    const/4 v1, 0x2

    if-eqz v0, :cond_c

    .line 18
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Lcx;->c:Lbr;

    .line 19
    iget-object v4, v0, Lbr;->P:Landroid/view/View;

    const v5, 0x7f090116

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v2, :cond_8

    .line 20
    invoke-virtual {p0}, Lcx;->a()V

    :cond_8
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 21
    iget-boolean v2, v0, Lbr;->H:Z

    if-eqz v2, :cond_9

    .line 22
    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 23
    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    invoke-static {v0}, Lhs;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcx;->c:Lbr;

    .line 24
    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    invoke-static {v0}, Lhs;->t(Landroid/view/View;)V

    goto :goto_2

    .line 38
    :cond_a
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 25
    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    .line 26
    new-instance v2, Lcw;

    invoke-direct {v2, v0}, Lcw;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 24
    :goto_2
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 27
    invoke-virtual {v0}, Lbr;->N()V

    iget-object v0, p0, Lcx;->a:Lcg;

    iget-object v2, p0, Lcx;->c:Lbr;

    .line 28
    iget-object v4, v2, Lbr;->P:Landroid/view/View;

    iget-object v5, v2, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v4, v5, v3}, Lcg;->m(Lbr;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcx;->c:Lbr;

    .line 29
    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v2, p0, Lcx;->c:Lbr;

    .line 30
    iget-object v2, v2, Lbr;->P:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    iget-object v3, p0, Lcx;->c:Lbr;

    .line 31
    invoke-virtual {v3}, Lbr;->u()Lbo;

    move-result-object v3

    .line 32
    iput v2, v3, Lbo;->l:F

    iget-object v2, p0, Lcx;->c:Lbr;

    .line 33
    iget-object v3, v2, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    if-nez v0, :cond_c

    .line 34
    iget-object v0, v2, Lbr;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcx;->c:Lbr;

    .line 35
    invoke-virtual {v2, v0}, Lbr;->R(Landroid/view/View;)V

    invoke-static {v1}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcx;->c:Lbr;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 37
    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 38
    iput v1, v0, Lbr;->h:I

    return-void
.end method

.method final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcx;->c:Lbr;

    iget-boolean v1, v0, Lbr;->v:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lbr;->w:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lbr;->y:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcx;->c:Lbr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 3
    iget-object v1, v0, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Lbr;->ah()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcx;->c:Lbr;

    iget-object v3, v3, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lbr;->k(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcx;->c:Lbr;

    .line 4
    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Lcx;->c:Lbr;

    .line 6
    iget-object v2, v0, Lbr;->P:Landroid/view/View;

    const v3, 0x7f090116

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcx;->c:Lbr;

    .line 7
    iget-boolean v2, v0, Lbr;->H:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcx;->c:Lbr;

    .line 8
    invoke-virtual {v0}, Lbr;->N()V

    iget-object v0, p0, Lcx;->a:Lcg;

    iget-object v2, p0, Lcx;->c:Lbr;

    .line 9
    iget-object v3, v2, Lbr;->P:Landroid/view/View;

    iget-object v4, v2, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcg;->m(Lbr;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcx;->c:Lbr;

    const/4 v1, 0x2

    .line 10
    iput v1, v0, Lbr;->h:I

    :cond_2
    return-void
.end method

.method final d()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    iget-boolean v2, v1, Lcx;->e:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcx;->c:Lbr;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v1, Lcx;->e:Z

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v1, Lcx;->c:Lbr;

    .line 3
    iget-object v7, v6, Lbr;->A:Lcr;

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, -0x1

    const/4 v13, 0x3

    if-nez v7, :cond_2

    .line 4
    iget v6, v6, Lbr;->h:I

    goto/16 :goto_9

    .line 227
    :cond_2
    iget v7, v1, Lcx;->d:I

    .line 5
    sget-object v14, Lzm;->a:Lzm;

    iget-object v6, v6, Lbr;->X:Lzm;

    invoke-virtual {v6}, Lzm;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 9
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    .line 16
    :pswitch_0
    goto :goto_1

    .line 205
    :pswitch_1
    nop

    .line 8
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    .line 6
    :pswitch_2
    nop

    .line 7
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    .line 16
    :pswitch_3
    nop

    .line 6
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 9
    :goto_1
    iget-object v6, v1, Lcx;->c:Lbr;

    .line 10
    iget-boolean v14, v6, Lbr;->v:Z

    if-eqz v14, :cond_5

    .line 11
    iget-boolean v14, v6, Lbr;->w:Z

    if-eqz v14, :cond_3

    iget v6, v1, Lcx;->d:I

    .line 12
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v6, v1, Lcx;->c:Lbr;

    .line 13
    iget-object v6, v6, Lbr;->P:Landroid/view/View;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_5

    .line 14
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_2

    .line 31
    :cond_3
    iget v14, v1, Lcx;->d:I

    if-ge v14, v9, :cond_4

    .line 15
    iget v6, v6, Lbr;->h:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_2

    :cond_4
    nop

    .line 16
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 14
    :cond_5
    :goto_2
    iget-object v6, v1, Lcx;->c:Lbr;

    .line 17
    iget-boolean v6, v6, Lbr;->s:Z

    if-nez v6, :cond_6

    .line 18
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_6
    iget-object v6, v1, Lcx;->c:Lbr;

    .line 19
    iget-object v14, v6, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v14, :cond_b

    .line 20
    invoke-virtual {v6}, Lbr;->A()Lcr;

    move-result-object v6

    .line 21
    invoke-static {v14, v6}, Ldm;->b(Landroid/view/ViewGroup;Lcr;)Ldm;

    move-result-object v6

    iget-object v14, v1, Lcx;->c:Lbr;

    .line 22
    invoke-virtual {v6, v14}, Ldm;->a(Lbr;)Ldl;

    move-result-object v14

    if-eqz v14, :cond_7

    iget v14, v14, Ldl;->f:I

    goto :goto_3

    .line 31
    :cond_7
    const/4 v14, 0x0

    .line 22
    :goto_3
    iget-object v15, v1, Lcx;->c:Lbr;

    iget-object v6, v6, Ldm;->c:Ljava/util/ArrayList;

    .line 23
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_9

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 24
    move-object/from16 v9, v16

    check-cast v9, Ldl;

    iget-object v10, v9, Ldl;->a:Lbr;

    .line 25
    invoke-virtual {v10, v15}, Lbr;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-boolean v10, v9, Ldl;->c:Z

    if-nez v10, :cond_8

    goto :goto_5

    .line 31
    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x5

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    .line 25
    :goto_5
    if-eqz v9, :cond_c

    if-eqz v14, :cond_a

    if-ne v14, v4, :cond_c

    :cond_a
    iget v14, v9, Ldl;->f:I

    goto :goto_6

    .line 31
    :cond_b
    const/4 v14, 0x0

    .line 25
    :cond_c
    :goto_6
    if-ne v14, v3, :cond_d

    .line 26
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_7

    .line 34
    :cond_d
    if-ne v14, v13, :cond_e

    .line 27
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7

    :cond_e
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 28
    iget-boolean v6, v2, Lbr;->t:Z

    if-eqz v6, :cond_10

    .line 29
    invoke-virtual {v2}, Lbr;->Y()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 30
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_7

    :cond_f
    nop

    .line 31
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 26
    :cond_10
    :goto_7
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 32
    iget-boolean v6, v2, Lbr;->Q:Z

    if-eqz v6, :cond_11

    iget v2, v2, Lbr;->h:I

    const/4 v6, 0x5

    if-ge v2, v6, :cond_11

    .line 33
    const/4 v2, 0x4

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_8

    :cond_11
    move v6, v7

    :goto_8
    invoke-static {v3}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeExpectedState() of "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    :cond_12
    :goto_9
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 35
    iget v7, v2, Lbr;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "initState called for fragment: "

    if-eq v6, v7, :cond_56

    const-string v5, "Fragment "

    if-le v6, v7, :cond_33

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_1

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_4
    :try_start_1
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto RESUMED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v2, v1, Lcx;->c:Lbr;

    iget-object v6, v2, Lbr;->S:Lbo;

    if-nez v6, :cond_14

    const/4 v6, 0x0

    goto :goto_a

    .line 184
    :cond_14
    iget-object v6, v6, Lbo;->m:Landroid/view/View;

    .line 180
    :goto_a
    if-nez v6, :cond_15

    goto :goto_d

    .line 181
    :cond_15
    iget-object v2, v2, Lbr;->P:Landroid/view/View;

    if-ne v6, v2, :cond_16

    goto :goto_c

    .line 182
    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_b
    if-eqz v2, :cond_19

    iget-object v7, v1, Lcx;->c:Lbr;

    .line 183
    iget-object v7, v7, Lbr;->P:Landroid/view/View;

    if-eq v2, v7, :cond_17

    .line 184
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_b

    .line 185
    :cond_17
    :goto_c
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    move-result v2

    invoke-static {v3}, Lcr;->R(I)Z

    move-result v7

    if-eqz v7, :cond_19

    new-instance v7, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestFocus: Restoring focused view "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "succeeded"

    const-string v8, "failed"

    if-eq v4, v2, :cond_18

    move-object v6, v8

    .line 187
    :cond_18
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on Fragment "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcx;->c:Lbr;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resulting in focused view "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcx;->c:Lbr;

    iget-object v2, v2, Lbr;->P:Landroid/view/View;

    .line 188
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    :cond_19
    :goto_d
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 189
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lbr;->R(Landroid/view/View;)V

    iget-object v2, v1, Lcx;->c:Lbr;

    iget-object v6, v2, Lbr;->C:Lcr;

    .line 190
    invoke-virtual {v6}, Lcr;->G()V

    iget-object v6, v2, Lbr;->C:Lcr;

    .line 191
    invoke-virtual {v6, v4}, Lcr;->Z(Z)V

    const/4 v6, 0x7

    iput v6, v2, Lbr;->h:I

    const/4 v6, 0x0

    iput-boolean v6, v2, Lbr;->N:Z

    .line 192
    invoke-virtual {v2}, Lbr;->L()V

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_1b

    .line 213
    iget-object v5, v2, Lbr;->ac:Lzn;

    .line 193
    sget-object v6, Lzl;->ON_RESUME:Lzl;

    invoke-virtual {v5, v6}, Lzn;->c(Lzl;)V

    iget-object v5, v2, Lbr;->P:Landroid/view/View;

    if-eqz v5, :cond_1a

    iget-object v5, v2, Lbr;->Y:Ldd;

    sget-object v6, Lzl;->ON_RESUME:Lzl;

    .line 194
    invoke-virtual {v5, v6}, Ldd;->a(Lzl;)V

    :cond_1a
    iget-object v2, v2, Lbr;->C:Lcr;

    .line 195
    invoke-virtual {v2}, Lcr;->x()V

    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 196
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcg;->i(Lbr;Z)V

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 197
    const/4 v5, 0x0

    iput-object v5, v2, Lbr;->i:Landroid/os/Bundle;

    .line 198
    iput-object v5, v2, Lbr;->j:Landroid/util/SparseArray;

    .line 199
    iput-object v5, v2, Lbr;->k:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 192
    :cond_1b
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :pswitch_5
    nop

    .line 130
    iput v8, v2, Lbr;->h:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 171
    :pswitch_6
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto STARTED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-object v2, v1, Lcx;->c:Lbr;

    iget-object v6, v2, Lbr;->C:Lcr;

    .line 173
    invoke-virtual {v6}, Lcr;->G()V

    iget-object v6, v2, Lbr;->C:Lcr;

    .line 174
    invoke-virtual {v6, v4}, Lcr;->Z(Z)V

    const/4 v6, 0x5

    iput v6, v2, Lbr;->h:I

    const/4 v6, 0x0

    iput-boolean v6, v2, Lbr;->N:Z

    .line 175
    invoke-virtual {v2}, Lbr;->h()V

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_1e

    .line 212
    iget-object v5, v2, Lbr;->ac:Lzn;

    .line 176
    sget-object v6, Lzl;->ON_START:Lzl;

    invoke-virtual {v5, v6}, Lzn;->c(Lzl;)V

    iget-object v5, v2, Lbr;->P:Landroid/view/View;

    if-eqz v5, :cond_1d

    iget-object v5, v2, Lbr;->Y:Ldd;

    sget-object v6, Lzl;->ON_START:Lzl;

    .line 177
    invoke-virtual {v5, v6}, Ldd;->a(Lzl;)V

    :cond_1d
    iget-object v2, v2, Lbr;->C:Lcr;

    .line 178
    invoke-virtual {v2}, Lcr;->y()V

    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 179
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcg;->k(Lbr;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 175
    :cond_1e
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :pswitch_7
    iget-object v5, v2, Lbr;->P:Landroid/view/View;

    if-eqz v5, :cond_20

    iget-object v5, v2, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v5, :cond_20

    .line 122
    invoke-virtual {v2}, Lbr;->A()Lcr;

    move-result-object v2

    .line 123
    invoke-static {v5, v2}, Ldm;->b(Landroid/view/ViewGroup;Lcr;)Ldm;

    move-result-object v2

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 124
    iget-object v5, v5, Lbr;->P:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 125
    invoke-static {v5}, Lr;->m(I)I

    move-result v5

    invoke-static {v3}, Lcr;->R(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcx;->c:Lbr;

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1f
    nop

    .line 128
    invoke-virtual {v2, v5, v3, v1}, Ldm;->e(IILcx;)V

    :cond_20
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 129
    const/4 v5, 0x4

    iput v5, v2, Lbr;->h:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 155
    :pswitch_8
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_21
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 164
    iget-object v6, v2, Lbr;->i:Landroid/os/Bundle;

    iget-object v6, v2, Lbr;->C:Lcr;

    .line 165
    invoke-virtual {v6}, Lcr;->G()V

    iput v13, v2, Lbr;->h:I

    const/4 v6, 0x0

    iput-boolean v6, v2, Lbr;->N:Z

    iput-boolean v4, v2, Lbr;->N:Z

    invoke-static {v13}, Lcr;->R(I)Z

    move-result v6

    if-eqz v6, :cond_22

    new-instance v6, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_22
    iget-object v6, v2, Lbr;->P:Landroid/view/View;

    if-eqz v6, :cond_26

    iget-object v7, v2, Lbr;->i:Landroid/os/Bundle;

    iget-object v8, v2, Lbr;->j:Landroid/util/SparseArray;

    if-eqz v8, :cond_23

    .line 167
    invoke-virtual {v6, v8}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v6, 0x0

    iput-object v6, v2, Lbr;->j:Landroid/util/SparseArray;

    :cond_23
    iget-object v6, v2, Lbr;->P:Landroid/view/View;

    if-eqz v6, :cond_24

    iget-object v6, v2, Lbr;->Y:Ldd;

    iget-object v8, v2, Lbr;->k:Landroid/os/Bundle;

    iget-object v6, v6, Ldd;->a:Laew;

    .line 168
    invoke-virtual {v6, v8}, Laew;->b(Landroid/os/Bundle;)V

    const/4 v6, 0x0

    iput-object v6, v2, Lbr;->k:Landroid/os/Bundle;

    :cond_24
    const/4 v6, 0x0

    iput-boolean v6, v2, Lbr;->N:Z

    .line 164
    invoke-virtual {v2, v7}, Lbr;->j(Landroid/os/Bundle;)V

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_25

    .line 211
    iget-object v5, v2, Lbr;->P:Landroid/view/View;

    if-eqz v5, :cond_26

    iget-object v5, v2, Lbr;->Y:Ldd;

    .line 169
    sget-object v6, Lzl;->ON_CREATE:Lzl;

    invoke-virtual {v5, v6}, Ldd;->a(Lzl;)V

    goto :goto_e

    .line 164
    :cond_25
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_26
    :goto_e
    const/4 v5, 0x0

    iput-object v5, v2, Lbr;->i:Landroid/os/Bundle;

    iget-object v2, v2, Lbr;->C:Lcr;

    .line 170
    invoke-virtual {v2}, Lcr;->n()V

    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 171
    iget-object v6, v5, Lbr;->i:Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcg;->a(Lbr;Landroid/os/Bundle;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 200
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcx;->c()V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcx;->b()V

    goto/16 :goto_12

    .line 134
    :pswitch_a
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto CREATED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 153
    iget-boolean v6, v2, Lbr;->V:Z

    if-nez v6, :cond_29

    iget-object v6, v1, Lcx;->a:Lcg;

    .line 156
    iget-object v7, v2, Lbr;->i:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcg;->h(Lbr;Landroid/os/Bundle;Z)V

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 157
    iget-object v6, v2, Lbr;->i:Landroid/os/Bundle;

    iget-object v7, v2, Lbr;->C:Lcr;

    .line 158
    invoke-virtual {v7}, Lcr;->G()V

    iput v4, v2, Lbr;->h:I

    const/4 v7, 0x0

    iput-boolean v7, v2, Lbr;->N:Z

    iget-object v7, v2, Lbr;->ac:Lzn;

    new-instance v8, Landroid/support/v4/app/Fragment$5;

    invoke-direct {v8, v2}, Landroid/support/v4/app/Fragment$5;-><init>(Lbr;)V

    .line 159
    invoke-virtual {v7, v8}, Lzn;->b(Lzp;)V

    iget-object v7, v2, Lbr;->aa:Laew;

    .line 160
    invoke-virtual {v7, v6}, Laew;->b(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {v2, v6}, Lbr;->d(Landroid/os/Bundle;)V

    iput-boolean v4, v2, Lbr;->V:Z

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_28

    .line 210
    iget-object v2, v2, Lbr;->ac:Lzn;

    .line 161
    sget-object v5, Lzl;->ON_CREATE:Lzl;

    invoke-virtual {v2, v5}, Lzn;->c(Lzl;)V

    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 162
    iget-object v6, v5, Lbr;->i:Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcg;->c(Lbr;Landroid/os/Bundle;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 157
    :cond_28
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_29
    iget-object v5, v2, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Lbr;->O(Landroid/os/Bundle;)V

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 155
    iput v4, v2, Lbr;->h:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 130
    :pswitch_b
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto ATTACHED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2a
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 132
    iget-object v6, v2, Lbr;->o:Lbr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, " that does not belong to this FragmentManager!"

    const-string v8, " declared target fragment "

    if-eqz v6, :cond_2c

    :try_start_2
    iget-object v2, v1, Lcx;->b:Lcy;

    iget-object v6, v6, Lbr;->m:Ljava/lang/String;

    .line 135
    invoke-virtual {v2, v6}, Lcy;->d(Ljava/lang/String;)Lcx;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 208
    iget-object v6, v1, Lcx;->c:Lbr;

    .line 136
    iget-object v7, v6, Lbr;->o:Lbr;

    iget-object v7, v7, Lbr;->m:Ljava/lang/String;

    iput-object v7, v6, Lbr;->p:Ljava/lang/String;

    .line 137
    const/4 v7, 0x0

    iput-object v7, v6, Lbr;->o:Lbr;

    move-object v12, v2

    goto :goto_f

    .line 135
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcx;->c:Lbr;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcx;->c:Lbr;

    iget-object v4, v4, Lbr;->o:Lbr;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_2c
    iget-object v2, v2, Lbr;->p:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v6, v1, Lcx;->b:Lcy;

    .line 134
    invoke-virtual {v6, v2}, Lcy;->d(Ljava/lang/String;)Lcx;

    move-result-object v12

    if-eqz v12, :cond_2d

    goto :goto_f

    .line 236
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcx;->c:Lbr;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcx;->c:Lbr;

    iget-object v4, v4, Lbr;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_2e
    const/4 v12, 0x0

    .line 137
    :goto_f
    if-eqz v12, :cond_2f

    .line 138
    invoke-virtual {v12}, Lcx;->d()V

    :cond_2f
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 139
    iget-object v6, v2, Lbr;->A:Lcr;

    iget-object v7, v6, Lcr;->j:Lcc;

    iput-object v7, v2, Lbr;->B:Lcc;

    iget-object v6, v6, Lcr;->l:Lbr;

    .line 140
    iput-object v6, v2, Lbr;->D:Lbr;

    iget-object v6, v1, Lcx;->a:Lcg;

    .line 141
    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcg;->g(Lbr;Z)V

    iget-object v2, v1, Lcx;->c:Lbr;

    iget-object v6, v2, Lbr;->ab:Ljava/util/ArrayList;

    .line 142
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v7, :cond_30

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 143
    check-cast v9, Lbq;

    .line 144
    invoke-virtual {v9}, Lbq;->a()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_30
    iget-object v6, v2, Lbr;->ab:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v2, Lbr;->C:Lcr;

    iget-object v7, v2, Lbr;->B:Lcc;

    .line 146
    invoke-virtual {v2}, Lbr;->aL()Lby;

    move-result-object v8

    .line 147
    invoke-virtual {v6, v7, v8, v2}, Lcr;->k(Lcc;Lby;Lbr;)V

    const/4 v6, 0x0

    iput v6, v2, Lbr;->h:I

    iput-boolean v6, v2, Lbr;->N:Z

    iget-object v6, v2, Lbr;->B:Lcc;

    iget-object v6, v6, Lcc;->c:Landroid/content/Context;

    .line 146
    invoke-virtual {v2, v6}, Lbr;->aR(Landroid/content/Context;)V

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_32

    .line 209
    iget-object v5, v2, Lbr;->A:Lcr;

    iget-object v5, v5, Lcr;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 148
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcu;

    .line 149
    invoke-interface {v6}, Lcu;->c()V

    goto :goto_11

    :cond_31
    iget-object v2, v2, Lbr;->C:Lcr;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcr;->p:Z

    iput-boolean v5, v2, Lcr;->q:Z

    iget-object v6, v2, Lcr;->s:Lct;

    iput-boolean v5, v6, Lct;->g:Z

    .line 150
    invoke-virtual {v2, v5}, Lcr;->z(I)V

    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v6, v1, Lcx;->c:Lbr;

    .line 151
    invoke-virtual {v2, v6, v5}, Lcg;->b(Lbr;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 146
    :cond_32
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_33
    add-int/lit8 v7, v7, -0x1

    packed-switch v7, :pswitch_data_2

    :goto_12
    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 102
    :pswitch_c
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom RESUMED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_34
    iget-object v2, v1, Lcx;->c:Lbr;

    iget-object v6, v2, Lbr;->C:Lcr;

    .line 104
    invoke-virtual {v6}, Lcr;->v()V

    iget-object v6, v2, Lbr;->P:Landroid/view/View;

    if-eqz v6, :cond_35

    iget-object v6, v2, Lbr;->Y:Ldd;

    .line 105
    sget-object v7, Lzl;->ON_PAUSE:Lzl;

    invoke-virtual {v6, v7}, Ldd;->a(Lzl;)V

    :cond_35
    iget-object v6, v2, Lbr;->ac:Lzn;

    .line 106
    sget-object v7, Lzl;->ON_PAUSE:Lzl;

    invoke-virtual {v6, v7}, Lzn;->c(Lzl;)V

    iput v8, v2, Lbr;->h:I

    const/4 v6, 0x0

    iput-boolean v6, v2, Lbr;->N:Z

    .line 107
    invoke-virtual {v2}, Lbr;->K()V

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_36

    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 108
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcg;->f(Lbr;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 7
    :cond_36
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :pswitch_d
    nop

    .line 64
    const/4 v5, 0x5

    iput v5, v2, Lbr;->h:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 120
    :pswitch_e
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom STARTED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_37
    iget-object v2, v1, Lcx;->c:Lbr;

    iget-object v6, v2, Lbr;->C:Lcr;

    .line 98
    invoke-virtual {v6}, Lcr;->A()V

    iget-object v6, v2, Lbr;->P:Landroid/view/View;

    if-eqz v6, :cond_38

    iget-object v6, v2, Lbr;->Y:Ldd;

    .line 99
    sget-object v7, Lzl;->ON_STOP:Lzl;

    invoke-virtual {v6, v7}, Ldd;->a(Lzl;)V

    :cond_38
    iget-object v6, v2, Lbr;->ac:Lzn;

    .line 100
    sget-object v7, Lzl;->ON_STOP:Lzl;

    invoke-virtual {v6, v7}, Lzn;->c(Lzl;)V

    const/4 v6, 0x4

    iput v6, v2, Lbr;->h:I

    const/4 v6, 0x0

    iput-boolean v6, v2, Lbr;->N:Z

    .line 101
    invoke-virtual {v2}, Lbr;->i()V

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_39

    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 102
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcg;->l(Lbr;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 202
    :cond_39
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :pswitch_f
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3a
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 110
    iget-boolean v5, v2, Lbr;->u:Z

    .line 111
    iget-object v5, v2, Lbr;->P:Landroid/view/View;

    if-eqz v5, :cond_3b

    .line 112
    iget-object v2, v2, Lbr;->j:Landroid/util/SparseArray;

    if-nez v2, :cond_3b

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcx;->f()V

    :cond_3b
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 114
    iget-object v5, v2, Lbr;->P:Landroid/view/View;

    if-eqz v5, :cond_3d

    iget-object v5, v2, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3d

    .line 115
    invoke-virtual {v2}, Lbr;->A()Lcr;

    move-result-object v2

    .line 116
    invoke-static {v5, v2}, Ldm;->b(Landroid/view/ViewGroup;Lcr;)Ldm;

    move-result-object v2

    invoke-static {v3}, Lcr;->R(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3c
    nop

    .line 119
    invoke-virtual {v2, v4, v13, v1}, Ldm;->e(IILcx;)V

    :cond_3d
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 120
    iput v13, v2, Lbr;->h:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 61
    :pswitch_10
    nop

    .line 62
    const/4 v5, 0x0

    iput-boolean v5, v2, Lbr;->w:Z

    .line 63
    iput v3, v2, Lbr;->h:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 64
    :pswitch_11
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom CREATE_VIEW: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3e
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 79
    iget-object v6, v2, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v6, :cond_3f

    iget-object v2, v2, Lbr;->P:Landroid/view/View;

    if-eqz v2, :cond_3f

    .line 80
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3f
    iget-object v2, v1, Lcx;->c:Lbr;

    iget-object v6, v2, Lbr;->C:Lcr;

    .line 81
    invoke-virtual {v6, v4}, Lcr;->z(I)V

    iget-object v6, v2, Lbr;->P:Landroid/view/View;

    if-eqz v6, :cond_40

    iget-object v6, v2, Lbr;->Y:Ldd;

    .line 82
    invoke-virtual {v6}, Ldd;->C()Lzn;

    move-result-object v6

    iget-object v6, v6, Lzn;->a:Lzm;

    sget-object v7, Lzm;->c:Lzm;

    .line 83
    invoke-virtual {v6, v7}, Lzm;->a(Lzm;)Z

    move-result v6

    if-eqz v6, :cond_40

    iget-object v6, v2, Lbr;->Y:Ldd;

    .line 84
    sget-object v7, Lzl;->ON_DESTROY:Lzl;

    invoke-virtual {v6, v7}, Ldd;->a(Lzl;)V

    :cond_40
    iput v4, v2, Lbr;->h:I

    const/4 v6, 0x0

    iput-boolean v6, v2, Lbr;->N:Z

    .line 85
    invoke-virtual {v2}, Lbr;->e()V

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_42

    .line 86
    invoke-static {v2}, Laam;->a(Lzq;)Laam;

    move-result-object v5

    iget-object v5, v5, Laam;->b:Laaq;

    iget-object v6, v5, Laaq;->b:Lvj;

    .line 87
    invoke-virtual {v6}, Lvj;->b()I

    move-result v6

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v6, :cond_41

    iget-object v8, v5, Laaq;->b:Lvj;

    .line 88
    invoke-virtual {v8, v7}, Lvj;->e(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laan;

    .line 89
    invoke-virtual {v8}, Laan;->i()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_41
    const/4 v5, 0x0

    iput-boolean v5, v2, Lbr;->y:Z

    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v6, v1, Lcx;->c:Lbr;

    .line 90
    invoke-virtual {v2, v6, v5}, Lcg;->n(Lbr;Z)V

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 91
    const/4 v5, 0x0

    iput-object v5, v2, Lbr;->O:Landroid/view/ViewGroup;

    .line 92
    iput-object v5, v2, Lbr;->P:Landroid/view/View;

    .line 93
    iput-object v5, v2, Lbr;->Y:Ldd;

    .line 94
    iget-object v2, v2, Lbr;->Z:Lzz;

    invoke-virtual {v2, v5}, Lzz;->g(Ljava/lang/Object;)V

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 95
    const/4 v5, 0x0

    iput-boolean v5, v2, Lbr;->w:Z

    .line 96
    iput v4, v2, Lbr;->h:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 85
    :cond_42
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :pswitch_12
    iget-boolean v2, v2, Lbr;->u:Z

    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom CREATED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_43
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 38
    iget-boolean v6, v2, Lbr;->t:Z

    if-eqz v6, :cond_44

    invoke-virtual {v2}, Lbr;->Y()Z

    move-result v2

    if-nez v2, :cond_44

    const/4 v2, 0x1

    goto :goto_14

    .line 61
    :cond_44
    const/4 v2, 0x0

    .line 38
    :goto_14
    if-eqz v2, :cond_45

    iget-object v6, v1, Lcx;->c:Lbr;

    .line 39
    iget-boolean v7, v6, Lbr;->u:Z

    iget-object v7, v1, Lcx;->b:Lcy;

    .line 40
    iget-object v6, v6, Lbr;->m:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lcy;->c(Ljava/lang/String;Lcv;)Lcv;

    :cond_45
    if-nez v2, :cond_48

    iget-object v6, v1, Lcx;->b:Lcy;

    iget-object v6, v6, Lcy;->d:Lct;

    iget-object v7, v1, Lcx;->c:Lbr;

    .line 41
    invoke-virtual {v6, v7}, Lct;->e(Lbr;)Z

    move-result v6

    if-eqz v6, :cond_46

    goto :goto_15

    .line 44
    :cond_46
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 58
    iget-object v2, v2, Lbr;->p:Ljava/lang/String;

    if-eqz v2, :cond_47

    iget-object v5, v1, Lcx;->b:Lcy;

    .line 59
    invoke-virtual {v5, v2}, Lcy;->a(Ljava/lang/String;)Lbr;

    move-result-object v2

    if-eqz v2, :cond_47

    iget-boolean v5, v2, Lbr;->J:Z

    if-eqz v5, :cond_47

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 60
    iput-object v2, v5, Lbr;->o:Lbr;

    :cond_47
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 61
    const/4 v5, 0x0

    iput v5, v2, Lbr;->h:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 41
    :cond_48
    :goto_15
    iget-object v6, v1, Lcx;->c:Lbr;

    .line 42
    iget-object v6, v6, Lbr;->B:Lcc;

    .line 43
    instance-of v7, v6, Laak;

    if-eqz v7, :cond_49

    iget-object v6, v1, Lcx;->b:Lcy;

    iget-object v6, v6, Lcy;->d:Lct;

    iget-boolean v6, v6, Lct;->f:Z

    goto :goto_16

    .line 57
    :cond_49
    iget-object v6, v6, Lcc;->c:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    .line 44
    invoke-virtual {v6}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v6

    xor-int/2addr v6, v4

    .line 43
    :goto_16
    if-eqz v2, :cond_4a

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 45
    iget-boolean v2, v2, Lbr;->u:Z

    goto :goto_17

    .line 57
    :cond_4a
    if-eqz v6, :cond_4b

    .line 45
    :goto_17
    iget-object v2, v1, Lcx;->b:Lcy;

    iget-object v2, v2, Lcy;->d:Lct;

    iget-object v6, v1, Lcx;->c:Lbr;

    .line 46
    invoke-virtual {v2, v6}, Lct;->a(Lbr;)V

    :cond_4b
    iget-object v2, v1, Lcx;->c:Lbr;

    iget-object v6, v2, Lbr;->C:Lcr;

    .line 47
    invoke-virtual {v6}, Lcr;->q()V

    iget-object v6, v2, Lbr;->ac:Lzn;

    .line 48
    sget-object v7, Lzl;->ON_DESTROY:Lzl;

    invoke-virtual {v6, v7}, Lzn;->c(Lzl;)V

    const/4 v6, 0x0

    iput v6, v2, Lbr;->h:I

    iput-boolean v6, v2, Lbr;->N:Z

    iput-boolean v6, v2, Lbr;->V:Z

    .line 49
    invoke-virtual {v2}, Lbr;->J()V

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_4f

    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 50
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcg;->d(Lbr;Z)V

    iget-object v2, v1, Lcx;->b:Lcy;

    .line 51
    invoke-virtual {v2}, Lcy;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcx;

    if-eqz v5, :cond_4c

    iget-object v5, v5, Lcx;->c:Lbr;

    iget-object v6, v1, Lcx;->c:Lbr;

    .line 52
    iget-object v6, v6, Lbr;->m:Ljava/lang/String;

    iget-object v7, v5, Lbr;->p:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    iget-object v6, v1, Lcx;->c:Lbr;

    .line 53
    iput-object v6, v5, Lbr;->o:Lbr;

    .line 54
    const/4 v6, 0x0

    iput-object v6, v5, Lbr;->p:Ljava/lang/String;

    goto :goto_18

    :cond_4d
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 55
    iget-object v5, v2, Lbr;->p:Ljava/lang/String;

    if-eqz v5, :cond_4e

    iget-object v6, v1, Lcx;->b:Lcy;

    .line 56
    invoke-virtual {v6, v5}, Lcy;->a(Ljava/lang/String;)Lbr;

    move-result-object v5

    iput-object v5, v2, Lbr;->o:Lbr;

    :cond_4e
    iget-object v2, v1, Lcx;->b:Lcy;

    .line 57
    invoke-virtual {v2, v1}, Lcy;->j(Lcx;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 207
    :cond_4f
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :pswitch_13
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_50

    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom ATTACHED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v2, v1, Lcx;->c:Lbr;

    iput v11, v2, Lbr;->h:I

    const/4 v6, 0x0

    iput-boolean v6, v2, Lbr;->N:Z

    .line 66
    invoke-virtual {v2}, Lbr;->f()V

    const/4 v6, 0x0

    iput-object v6, v2, Lbr;->U:Landroid/view/LayoutInflater;

    iget-boolean v6, v2, Lbr;->N:Z

    if-eqz v6, :cond_55

    .line 203
    iget-object v5, v2, Lbr;->C:Lcr;

    iget-boolean v6, v5, Lcr;->r:Z

    if-nez v6, :cond_51

    .line 67
    invoke-virtual {v5}, Lcr;->q()V

    new-instance v5, Lcr;

    .line 68
    invoke-direct {v5}, Lcr;-><init>()V

    iput-object v5, v2, Lbr;->C:Lcr;

    :cond_51
    iget-object v2, v1, Lcx;->a:Lcg;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 69
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcg;->e(Lbr;Z)V

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 70
    iput v11, v2, Lbr;->h:I

    .line 71
    const/4 v5, 0x0

    iput-object v5, v2, Lbr;->B:Lcc;

    .line 72
    iput-object v5, v2, Lbr;->D:Lbr;

    .line 73
    iput-object v5, v2, Lbr;->A:Lcr;

    .line 74
    iget-boolean v5, v2, Lbr;->t:Z

    if-eqz v5, :cond_52

    invoke-virtual {v2}, Lbr;->Y()Z

    move-result v2

    if-nez v2, :cond_52

    goto :goto_19

    .line 77
    :cond_52
    iget-object v2, v1, Lcx;->b:Lcy;

    iget-object v2, v2, Lcy;->d:Lct;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 75
    invoke-virtual {v2, v5}, Lct;->e(Lbr;)Z

    move-result v2

    if-nez v2, :cond_53

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 74
    :cond_53
    :goto_19
    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_54
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 77
    invoke-virtual {v2}, Lbr;->G()V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 66
    :cond_55
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    :cond_56
    if-nez v5, :cond_59

    if-ne v7, v11, :cond_59

    .line 214
    iget-boolean v5, v2, Lbr;->t:Z

    if-eqz v5, :cond_59

    invoke-virtual {v2}, Lbr;->Y()Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, v1, Lcx;->c:Lbr;

    iget-boolean v2, v2, Lbr;->u:Z

    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_57

    new-instance v2, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up state of never attached fragment: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_57
    iget-object v2, v1, Lcx;->b:Lcy;

    iget-object v2, v2, Lcy;->d:Lct;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 216
    invoke-virtual {v2, v5}, Lct;->a(Lbr;)V

    iget-object v2, v1, Lcx;->b:Lcy;

    .line 217
    invoke-virtual {v2, v1}, Lcy;->j(Lcx;)V

    invoke-static {v13}, Lcr;->R(I)Z

    move-result v2

    if-eqz v2, :cond_58

    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcx;->c:Lbr;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_58
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 219
    invoke-virtual {v2}, Lbr;->G()V

    :cond_59
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 220
    iget-boolean v5, v2, Lbr;->T:Z

    if-eqz v5, :cond_5f

    .line 221
    iget-object v5, v2, Lbr;->P:Landroid/view/View;

    if-eqz v5, :cond_5d

    iget-object v5, v2, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v5, :cond_5d

    .line 222
    invoke-virtual {v2}, Lbr;->A()Lcr;

    move-result-object v2

    .line 223
    invoke-static {v5, v2}, Ldm;->b(Landroid/view/ViewGroup;Lcr;)Ldm;

    move-result-object v2

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 224
    iget-boolean v5, v5, Lbr;->H:Z

    if-eqz v5, :cond_5b

    invoke-static {v3}, Lcr;->R(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    new-instance v3, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcx;->c:Lbr;

    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5a
    nop

    .line 230
    invoke-virtual {v2, v13, v4, v1}, Ldm;->e(IILcx;)V

    goto :goto_1a

    .line 235
    :cond_5b
    invoke-static {v3}, Lcr;->R(I)Z

    move-result v5

    if-eqz v5, :cond_5c

    new-instance v5, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcx;->c:Lbr;

    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5c
    nop

    .line 227
    invoke-virtual {v2, v3, v4, v1}, Ldm;->e(IILcx;)V

    .line 230
    :cond_5d
    :goto_1a
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 231
    iget-object v3, v2, Lbr;->A:Lcr;

    if-eqz v3, :cond_5e

    .line 232
    iget-boolean v5, v2, Lbr;->s:Z

    if-eqz v5, :cond_5e

    .line 233
    invoke-static {v2}, Lcr;->V(Lbr;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iput-boolean v4, v3, Lcr;->o:Z

    :cond_5e
    iget-object v2, v1, Lcx;->c:Lbr;

    .line 234
    const/4 v3, 0x0

    iput-boolean v3, v2, Lbr;->T:Z

    .line 235
    iget-boolean v2, v2, Lbr;->H:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5f
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcx;->e:Z

    return-void

    .line 206
    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcx;->e:Z

    .line 236
    goto :goto_1c

    :goto_1b
    throw v2

    :goto_1c
    goto :goto_1b

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method final e(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcx;->c:Lbr;

    iget-object v0, v0, Lbr;->i:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Lcx;->c:Lbr;

    .line 3
    iget-object v0, p1, Lbr;->i:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Lbr;->j:Landroid/util/SparseArray;

    iget-object p1, p0, Lcx;->c:Lbr;

    .line 4
    iget-object v0, p1, Lbr;->i:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Lbr;->k:Landroid/os/Bundle;

    iget-object p1, p0, Lcx;->c:Lbr;

    .line 5
    iget-object v0, p1, Lbr;->i:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lbr;->p:Ljava/lang/String;

    iget-object p1, p0, Lcx;->c:Lbr;

    .line 6
    iget-object v0, p1, Lbr;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p1, Lbr;->i:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lbr;->q:I

    :cond_1
    iget-object p1, p0, Lcx;->c:Lbr;

    .line 8
    iget-object v0, p1, Lbr;->l:Ljava/lang/Boolean;

    .line 9
    iget-object v0, p1, Lbr;->i:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lbr;->R:Z

    iget-object p1, p0, Lcx;->c:Lbr;

    .line 10
    iget-boolean v0, p1, Lbr;->R:Z

    if-nez v0, :cond_2

    .line 11
    iput-boolean v2, p1, Lbr;->Q:Z

    :cond_2
    return-void
.end method

.method final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcx;->c:Lbr;

    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving view state for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcx;->c:Lbr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcx;->c:Lbr;

    iget-object v1, v1, Lbr;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcx;->c:Lbr;

    .line 4
    iget-object v1, v1, Lbr;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcx;->c:Lbr;

    .line 6
    iput-object v0, v1, Lbr;->j:Landroid/util/SparseArray;

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcx;->c:Lbr;

    .line 8
    iget-object v1, v1, Lbr;->Y:Ldd;

    iget-object v1, v1, Ldd;->a:Laew;

    .line 9
    invoke-virtual {v1, v0}, Laew;->c(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcx;->c:Lbr;

    .line 11
    iput-object v0, v1, Lbr;->k:Landroid/os/Bundle;

    :cond_3
    return-void
.end method
