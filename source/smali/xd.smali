.class public final Lxd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:I

.field public final b:Lxg;

.field public final c:Lxf;

.field public final d:Lxe;

.field public final e:Lxh;

.field public f:Ljava/util/HashMap;

.field g:Lxc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxg;

    invoke-direct {v0}, Lxg;-><init>()V

    iput-object v0, p0, Lxd;->b:Lxg;

    new-instance v0, Lxf;

    invoke-direct {v0}, Lxf;-><init>()V

    iput-object v0, p0, Lxd;->c:Lxf;

    .line 2
    new-instance v0, Lxe;

    invoke-direct {v0}, Lxe;-><init>()V

    iput-object v0, p0, Lxd;->d:Lxe;

    .line 3
    new-instance v0, Lxh;

    invoke-direct {v0}, Lxh;-><init>()V

    iput-object v0, p0, Lxd;->e:Lxh;

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxd;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lwy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxd;->d:Lxe;

    iget v1, v0, Lxe;->i:I

    iput v1, p1, Lwy;->d:I

    iget v1, v0, Lxe;->j:I

    .line 2
    iput v1, p1, Lwy;->e:I

    iget v1, v0, Lxe;->k:I

    .line 3
    iput v1, p1, Lwy;->f:I

    iget v1, v0, Lxe;->l:I

    .line 4
    iput v1, p1, Lwy;->g:I

    iget v1, v0, Lxe;->m:I

    .line 5
    iput v1, p1, Lwy;->h:I

    iget v1, v0, Lxe;->n:I

    .line 6
    iput v1, p1, Lwy;->i:I

    iget v1, v0, Lxe;->o:I

    .line 7
    iput v1, p1, Lwy;->j:I

    iget v1, v0, Lxe;->p:I

    .line 8
    iput v1, p1, Lwy;->k:I

    iget v1, v0, Lxe;->q:I

    .line 9
    iput v1, p1, Lwy;->l:I

    iget v1, v0, Lxe;->r:I

    .line 10
    iput v1, p1, Lwy;->m:I

    iget v1, v0, Lxe;->s:I

    .line 11
    iput v1, p1, Lwy;->n:I

    iget v1, v0, Lxe;->t:I

    .line 12
    iput v1, p1, Lwy;->r:I

    iget v1, v0, Lxe;->u:I

    .line 13
    iput v1, p1, Lwy;->s:I

    iget v1, v0, Lxe;->v:I

    .line 14
    iput v1, p1, Lwy;->t:I

    iget v1, v0, Lxe;->w:I

    .line 15
    iput v1, p1, Lwy;->u:I

    iget v0, v0, Lxe;->G:I

    .line 16
    iput v0, p1, Lwy;->leftMargin:I

    iget-object v0, p0, Lxd;->d:Lxe;

    iget v0, v0, Lxe;->H:I

    .line 17
    iput v0, p1, Lwy;->rightMargin:I

    iget-object v0, p0, Lxd;->d:Lxe;

    iget v0, v0, Lxe;->I:I

    .line 18
    iput v0, p1, Lwy;->topMargin:I

    iget-object v0, p0, Lxd;->d:Lxe;

    iget v0, v0, Lxe;->J:I

    .line 19
    iput v0, p1, Lwy;->bottomMargin:I

    iget-object v0, p0, Lxd;->d:Lxe;

    iget v1, v0, Lxe;->S:I

    .line 20
    iput v1, p1, Lwy;->z:I

    iget v1, v0, Lxe;->R:I

    .line 21
    iput v1, p1, Lwy;->A:I

    iget v1, v0, Lxe;->O:I

    .line 22
    iput v1, p1, Lwy;->w:I

    iget v1, v0, Lxe;->Q:I

    .line 23
    iput v1, p1, Lwy;->y:I

    iget v1, v0, Lxe;->x:F

    .line 24
    iput v1, p1, Lwy;->D:F

    iget v1, v0, Lxe;->y:F

    .line 25
    iput v1, p1, Lwy;->E:F

    iget v1, v0, Lxe;->A:I

    .line 26
    iput v1, p1, Lwy;->o:I

    iget v1, v0, Lxe;->B:I

    .line 27
    iput v1, p1, Lwy;->p:I

    iget v1, v0, Lxe;->C:F

    .line 28
    iput v1, p1, Lwy;->q:F

    iget-object v1, v0, Lxe;->z:Ljava/lang/String;

    .line 29
    iput-object v1, p1, Lwy;->F:Ljava/lang/String;

    iget v1, v0, Lxe;->D:I

    .line 30
    iput v1, p1, Lwy;->S:I

    iget v1, v0, Lxe;->E:I

    .line 31
    iput v1, p1, Lwy;->T:I

    iget v1, v0, Lxe;->U:F

    .line 32
    iput v1, p1, Lwy;->H:F

    iget v1, v0, Lxe;->V:F

    .line 33
    iput v1, p1, Lwy;->G:F

    iget v1, v0, Lxe;->X:I

    .line 34
    iput v1, p1, Lwy;->J:I

    iget v1, v0, Lxe;->W:I

    .line 35
    iput v1, p1, Lwy;->I:I

    iget-boolean v1, v0, Lxe;->am:Z

    .line 36
    iput-boolean v1, p1, Lwy;->V:Z

    iget-boolean v1, v0, Lxe;->an:Z

    .line 37
    iput-boolean v1, p1, Lwy;->W:Z

    iget v1, v0, Lxe;->Y:I

    .line 38
    iput v1, p1, Lwy;->K:I

    iget v1, v0, Lxe;->Z:I

    .line 39
    iput v1, p1, Lwy;->L:I

    iget v1, v0, Lxe;->aa:I

    .line 40
    iput v1, p1, Lwy;->O:I

    iget v1, v0, Lxe;->ab:I

    .line 41
    iput v1, p1, Lwy;->P:I

    iget v1, v0, Lxe;->ac:I

    .line 42
    iput v1, p1, Lwy;->M:I

    iget v1, v0, Lxe;->ad:I

    .line 43
    iput v1, p1, Lwy;->N:I

    iget v1, v0, Lxe;->ae:F

    .line 44
    iput v1, p1, Lwy;->Q:F

    iget v1, v0, Lxe;->af:F

    .line 45
    iput v1, p1, Lwy;->R:F

    iget v1, v0, Lxe;->F:I

    .line 46
    iput v1, p1, Lwy;->U:I

    iget v1, v0, Lxe;->h:F

    .line 47
    iput v1, p1, Lwy;->c:F

    iget v1, v0, Lxe;->f:I

    .line 48
    iput v1, p1, Lwy;->a:I

    iget v1, v0, Lxe;->g:I

    .line 49
    iput v1, p1, Lwy;->b:I

    iget v0, v0, Lxe;->d:I

    .line 50
    iput v0, p1, Lwy;->width:I

    iget-object v0, p0, Lxd;->d:Lxe;

    iget v0, v0, Lxe;->e:I

    .line 51
    iput v0, p1, Lwy;->height:I

    iget-object v0, p0, Lxd;->d:Lxe;

    iget-object v1, v0, Lxe;->al:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 52
    iput-object v1, p1, Lwy;->X:Ljava/lang/String;

    :cond_0
    iget v1, v0, Lxe;->ap:I

    .line 53
    iput v1, p1, Lwy;->Y:I

    iget v0, v0, Lxe;->L:I

    .line 54
    invoke-virtual {p1, v0}, Lwy;->setMarginStart(I)V

    iget-object v0, p0, Lxd;->d:Lxe;

    iget v0, v0, Lxe;->K:I

    .line 55
    invoke-virtual {p1, v0}, Lwy;->setMarginEnd(I)V

    .line 56
    invoke-virtual {p1}, Lwy;->a()V

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lxd;

    invoke-direct {v0}, Lxd;-><init>()V

    iget-object v1, v0, Lxd;->d:Lxe;

    iget-object v2, p0, Lxd;->d:Lxe;

    iget-boolean v3, v2, Lxe;->b:Z

    iput-boolean v3, v1, Lxe;->b:Z

    iget v3, v2, Lxe;->d:I

    iput v3, v1, Lxe;->d:I

    iget-boolean v3, v2, Lxe;->c:Z

    iput-boolean v3, v1, Lxe;->c:Z

    iget v3, v2, Lxe;->e:I

    iput v3, v1, Lxe;->e:I

    iget v3, v2, Lxe;->f:I

    iput v3, v1, Lxe;->f:I

    iget v3, v2, Lxe;->g:I

    iput v3, v1, Lxe;->g:I

    iget v3, v2, Lxe;->h:F

    iput v3, v1, Lxe;->h:F

    iget v3, v2, Lxe;->i:I

    iput v3, v1, Lxe;->i:I

    iget v3, v2, Lxe;->j:I

    iput v3, v1, Lxe;->j:I

    iget v3, v2, Lxe;->k:I

    iput v3, v1, Lxe;->k:I

    iget v3, v2, Lxe;->l:I

    iput v3, v1, Lxe;->l:I

    iget v3, v2, Lxe;->m:I

    iput v3, v1, Lxe;->m:I

    iget v3, v2, Lxe;->n:I

    iput v3, v1, Lxe;->n:I

    iget v3, v2, Lxe;->o:I

    iput v3, v1, Lxe;->o:I

    iget v3, v2, Lxe;->p:I

    iput v3, v1, Lxe;->p:I

    iget v3, v2, Lxe;->q:I

    iput v3, v1, Lxe;->q:I

    iget v3, v2, Lxe;->r:I

    iput v3, v1, Lxe;->r:I

    iget v3, v2, Lxe;->s:I

    iput v3, v1, Lxe;->s:I

    iget v3, v2, Lxe;->t:I

    iput v3, v1, Lxe;->t:I

    iget v3, v2, Lxe;->u:I

    iput v3, v1, Lxe;->u:I

    iget v3, v2, Lxe;->v:I

    iput v3, v1, Lxe;->v:I

    iget v3, v2, Lxe;->w:I

    iput v3, v1, Lxe;->w:I

    iget v3, v2, Lxe;->x:F

    iput v3, v1, Lxe;->x:F

    iget v3, v2, Lxe;->y:F

    iput v3, v1, Lxe;->y:F

    iget-object v3, v2, Lxe;->z:Ljava/lang/String;

    iput-object v3, v1, Lxe;->z:Ljava/lang/String;

    iget v3, v2, Lxe;->A:I

    iput v3, v1, Lxe;->A:I

    iget v3, v2, Lxe;->B:I

    iput v3, v1, Lxe;->B:I

    iget v3, v2, Lxe;->C:F

    iput v3, v1, Lxe;->C:F

    iget v3, v2, Lxe;->D:I

    iput v3, v1, Lxe;->D:I

    iget v3, v2, Lxe;->E:I

    iput v3, v1, Lxe;->E:I

    iget v3, v2, Lxe;->F:I

    iput v3, v1, Lxe;->F:I

    iget v3, v2, Lxe;->G:I

    iput v3, v1, Lxe;->G:I

    iget v3, v2, Lxe;->H:I

    iput v3, v1, Lxe;->H:I

    iget v3, v2, Lxe;->I:I

    iput v3, v1, Lxe;->I:I

    iget v3, v2, Lxe;->J:I

    iput v3, v1, Lxe;->J:I

    iget v3, v2, Lxe;->K:I

    iput v3, v1, Lxe;->K:I

    iget v3, v2, Lxe;->L:I

    iput v3, v1, Lxe;->L:I

    iget v3, v2, Lxe;->M:I

    iput v3, v1, Lxe;->M:I

    iget v3, v2, Lxe;->N:I

    iput v3, v1, Lxe;->N:I

    iget v3, v2, Lxe;->O:I

    iput v3, v1, Lxe;->O:I

    iget v3, v2, Lxe;->P:I

    iput v3, v1, Lxe;->P:I

    iget v3, v2, Lxe;->Q:I

    iput v3, v1, Lxe;->Q:I

    iget v3, v2, Lxe;->R:I

    iput v3, v1, Lxe;->R:I

    iget v3, v2, Lxe;->S:I

    iput v3, v1, Lxe;->S:I

    iget v3, v2, Lxe;->T:I

    iput v3, v1, Lxe;->T:I

    iget v3, v2, Lxe;->U:F

    iput v3, v1, Lxe;->U:F

    iget v3, v2, Lxe;->V:F

    iput v3, v1, Lxe;->V:F

    iget v3, v2, Lxe;->W:I

    iput v3, v1, Lxe;->W:I

    iget v3, v2, Lxe;->X:I

    iput v3, v1, Lxe;->X:I

    iget v3, v2, Lxe;->Y:I

    iput v3, v1, Lxe;->Y:I

    iget v3, v2, Lxe;->Z:I

    iput v3, v1, Lxe;->Z:I

    iget v3, v2, Lxe;->aa:I

    iput v3, v1, Lxe;->aa:I

    iget v3, v2, Lxe;->ab:I

    iput v3, v1, Lxe;->ab:I

    iget v3, v2, Lxe;->ac:I

    iput v3, v1, Lxe;->ac:I

    iget v3, v2, Lxe;->ad:I

    iput v3, v1, Lxe;->ad:I

    iget v3, v2, Lxe;->ae:F

    iput v3, v1, Lxe;->ae:F

    iget v3, v2, Lxe;->af:F

    iput v3, v1, Lxe;->af:F

    iget v3, v2, Lxe;->ag:I

    iput v3, v1, Lxe;->ag:I

    iget v3, v2, Lxe;->ah:I

    iput v3, v1, Lxe;->ah:I

    iget v3, v2, Lxe;->ai:I

    iput v3, v1, Lxe;->ai:I

    iget-object v3, v2, Lxe;->al:Ljava/lang/String;

    iput-object v3, v1, Lxe;->al:Ljava/lang/String;

    iget-object v3, v2, Lxe;->aj:[I

    if-eqz v3, :cond_0

    array-length v4, v3

    .line 2
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Lxe;->aj:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Lxe;->aj:[I

    :goto_0
    iget-object v3, v2, Lxe;->ak:Ljava/lang/String;

    iput-object v3, v1, Lxe;->ak:Ljava/lang/String;

    iget-boolean v3, v2, Lxe;->am:Z

    iput-boolean v3, v1, Lxe;->am:Z

    iget-boolean v3, v2, Lxe;->an:Z

    iput-boolean v3, v1, Lxe;->an:Z

    iget-boolean v3, v2, Lxe;->ao:Z

    iput-boolean v3, v1, Lxe;->ao:Z

    iget v2, v2, Lxe;->ap:I

    iput v2, v1, Lxe;->ap:I

    iget-object v1, v0, Lxd;->c:Lxf;

    iget-object v2, p0, Lxd;->c:Lxf;

    iget-boolean v3, v2, Lxf;->b:Z

    iput-boolean v3, v1, Lxf;->b:Z

    iget v3, v2, Lxf;->c:I

    iput v3, v1, Lxf;->c:I

    iget-object v3, v2, Lxf;->e:Ljava/lang/String;

    iput-object v3, v1, Lxf;->e:Ljava/lang/String;

    iget v3, v2, Lxf;->f:I

    iput v3, v1, Lxf;->f:I

    iget v3, v2, Lxf;->g:I

    iput v3, v1, Lxf;->g:I

    iget v3, v2, Lxf;->j:F

    iput v3, v1, Lxf;->j:F

    iget v3, v2, Lxf;->h:F

    iput v3, v1, Lxf;->h:F

    iget v2, v2, Lxf;->i:I

    iput v2, v1, Lxf;->i:I

    iget-object v1, v0, Lxd;->b:Lxg;

    iget-object v2, p0, Lxd;->b:Lxg;

    iget-boolean v3, v2, Lxg;->a:Z

    iput-boolean v3, v1, Lxg;->a:Z

    iget v3, v2, Lxg;->b:I

    iput v3, v1, Lxg;->b:I

    iget v3, v2, Lxg;->d:F

    iput v3, v1, Lxg;->d:F

    iget v3, v2, Lxg;->e:F

    iput v3, v1, Lxg;->e:F

    iget v2, v2, Lxg;->c:I

    iput v2, v1, Lxg;->c:I

    iget-object v1, v0, Lxd;->e:Lxh;

    iget-object v2, p0, Lxd;->e:Lxh;

    iget-boolean v3, v2, Lxh;->b:Z

    iput-boolean v3, v1, Lxh;->b:Z

    iget v3, v2, Lxh;->c:F

    iput v3, v1, Lxh;->c:F

    iget v3, v2, Lxh;->d:F

    iput v3, v1, Lxh;->d:F

    iget v3, v2, Lxh;->e:F

    iput v3, v1, Lxh;->e:F

    iget v3, v2, Lxh;->f:F

    iput v3, v1, Lxh;->f:F

    iget v3, v2, Lxh;->g:F

    iput v3, v1, Lxh;->g:F

    iget v3, v2, Lxh;->h:F

    iput v3, v1, Lxh;->h:F

    iget v3, v2, Lxh;->i:F

    iput v3, v1, Lxh;->i:F

    iget v3, v2, Lxh;->j:I

    iput v3, v1, Lxh;->j:I

    iget v3, v2, Lxh;->k:F

    iput v3, v1, Lxh;->k:F

    iget v3, v2, Lxh;->l:F

    iput v3, v1, Lxh;->l:F

    iget v3, v2, Lxh;->m:F

    iput v3, v1, Lxh;->m:F

    iget-boolean v3, v2, Lxh;->n:Z

    iput-boolean v3, v1, Lxh;->n:Z

    iget v2, v2, Lxh;->o:F

    iput v2, v1, Lxh;->o:F

    iget v1, p0, Lxd;->a:I

    iput v1, v0, Lxd;->a:I

    iget-object v1, p0, Lxd;->g:Lxc;

    iput-object v1, v0, Lxd;->g:Lxc;

    return-object v0
.end method
