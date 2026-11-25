.class public final Lapu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public g:Landroid/car/drivingstate/CarUxRestrictions;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Landroid/graphics/drawable/Drawable;

.field public final j:Lapt;

.field public final k:Lapr;

.field public final l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field private final p:Landroid/content/Context;

.field private q:Ljava/lang/ref/WeakReference;

.field private final r:I

.field private final s:Larr;


# direct methods
.method public constructor <init>(Lapq;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lapu;->q:Ljava/lang/ref/WeakReference;

    new-instance v0, Lapp;

    invoke-direct {v0, p0}, Lapp;-><init>(Lapu;)V

    iput-object v0, p0, Lapu;->s:Larr;

    iget-object v1, p1, Lapq;->a:Landroid/content/Context;

    iput-object v1, p0, Lapu;->p:Landroid/content/Context;

    iget v2, p1, Lapq;->f:I

    iput v2, p0, Lapu;->f:I

    iget-boolean v2, p1, Lapq;->m:Z

    iput-boolean v2, p0, Lapu;->a:Z

    iget-boolean v2, p1, Lapq;->p:Z

    iput-boolean v2, p0, Lapu;->b:Z

    iget-object v2, p1, Lapq;->g:Ljava/lang/CharSequence;

    iput-object v2, p0, Lapu;->h:Ljava/lang/CharSequence;

    iget-object v2, p1, Lapq;->h:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lapu;->i:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lapq;->i:Lapt;

    iput-object v2, p0, Lapu;->j:Lapt;

    iget-object v2, p1, Lapq;->j:Lapr;

    iput-object v2, p0, Lapu;->k:Lapr;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lapu;->l:Z

    iget-boolean v2, p1, Lapq;->n:Z

    iput-boolean v2, p0, Lapu;->m:Z

    iget-boolean v2, p1, Lapq;->o:Z

    iput-boolean v2, p0, Lapu;->n:Z

    iget-boolean v2, p1, Lapq;->q:Z

    iput-boolean v2, p0, Lapu;->o:Z

    iget-boolean v2, p1, Lapq;->r:Z

    iput-boolean v2, p0, Lapu;->c:Z

    iget-boolean v2, p1, Lapq;->l:Z

    iput-boolean v2, p0, Lapu;->d:Z

    iget-boolean v2, p1, Lapq;->k:Z

    iput-boolean v2, p0, Lapu;->e:Z

    iget p1, p1, Lapq;->t:I

    iput p1, p0, Lapu;->r:I

    .line 2
    invoke-static {v1}, Lars;->b(Landroid/content/Context;)Lars;

    move-result-object p1

    invoke-virtual {p1, v0}, Lars;->c(Larr;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lapq;
    .locals 1

    .line 1
    new-instance v0, Lapq;

    invoke-direct {v0, p0}, Lapq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lapu;->l:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lapu;->n:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lapu;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lapu;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lapu;->o:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lapu;->o:Z

    .line 2
    invoke-virtual {p0}, Lapu;->d()V

    :cond_1
    iget-boolean v0, p0, Lapu;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lapu;->m:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lapu;->m:Z

    .line 3
    invoke-virtual {p0}, Lapu;->d()V

    :cond_2
    iget-object v0, p0, Lapu;->j:Lapt;

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0, p0}, Lapt;->a(Lapu;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lapu;->p:Landroid/content/Context;

    const v2, 0x7f10002a

    .line 5
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1
    :cond_5
    :goto_0
    return-void
.end method

.method public final c(Laps;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lapu;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lapu;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laps;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Laps;->onMenuItemChanged(Lapu;)V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget v0, p0, Lapu;->r:I

    iget-object v1, p0, Lapu;->g:Landroid/car/drivingstate/CarUxRestrictions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
