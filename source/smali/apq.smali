.class public final Lapq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:I

.field public g:Ljava/lang/CharSequence;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Lapt;

.field public j:Lapr;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lapq;->f:I

    sget-object v0, Lapr;->a:Lapr;

    iput-object v0, p0, Lapq;->j:Lapr;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lapq;->k:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lapq;->l:Z

    iput-boolean v1, p0, Lapq;->m:Z

    iput-boolean v1, p0, Lapq;->n:Z

    iput-boolean v0, p0, Lapq;->o:Z

    iput-boolean v1, p0, Lapq;->p:Z

    iput-boolean v1, p0, Lapq;->q:Z

    iput-boolean v1, p0, Lapq;->r:Z

    iput-boolean v1, p0, Lapq;->s:Z

    iput v1, p0, Lapq;->t:I

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lapq;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lapu;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lapq;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lapq;->l:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lapq;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "Only simple icons can be activatable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lapq;->m:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lapq;->l:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    const-string v1, "Unsupported options for a checkable MenuItem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lapq;->r:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lapq;->s:Z

    if-nez v1, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "Can\'t have both a search and settings MenuItem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lapq;->j:Lapr;

    sget-object v1, Lapr;->b:Lapr;

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    const-string v1, "Activatable MenuItems not supported as Overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lapq;->r:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lapq;->b:Ljava/lang/String;

    iget-object v1, p0, Lapq;->g:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lapq;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lapq;->h:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lapq;->m:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lapq;->p:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lapq;->k:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lapq;->l:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lapq;->j:Lapr;

    sget-object v1, Lapr;->a:Lapr;

    if-ne v0, v1, :cond_8

    goto :goto_4

    .line 7
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "Invalid search MenuItem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_9
    :goto_4
    iget-boolean v0, p0, Lapq;->s:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lapq;->c:Ljava/lang/String;

    iget-object v1, p0, Lapq;->g:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lapq;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lapq;->h:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lapq;->m:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lapq;->p:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lapq;->k:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lapq;->l:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lapq;->j:Lapr;

    sget-object v1, Lapr;->a:Lapr;

    if-ne v0, v1, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v1, "Invalid settings MenuItem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_b
    :goto_5
    new-instance v0, Lapu;

    .line 6
    invoke-direct {v0, p0}, Lapu;-><init>(Lapq;)V

    return-object v0
.end method
