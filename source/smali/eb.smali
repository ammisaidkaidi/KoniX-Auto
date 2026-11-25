.class public final Leb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic d:Lom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lom;IILjava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Leb;->d:Lom;

    iput p2, p0, Leb;->a:I

    iput p3, p0, Leb;->b:I

    iput-object p4, p0, Leb;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static final d()V
    .locals 3

    .line 1
    invoke-static {}, Leb;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lyb;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lyb;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    iget v0, p0, Leb;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Leb;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Leb;->d:Lom;

    iget-object v1, p0, Leb;->c:Ljava/lang/ref/WeakReference;

    iget-boolean v2, v0, Lom;->c:Z

    if-eqz v2, :cond_3

    iput-object p1, v0, Lom;->b:Landroid/graphics/Typeface;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 3
    invoke-static {v1}, Lhs;->F(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, v0, Lom;->a:I

    new-instance v2, Lol;

    invoke-direct {v2, v1, p1, v0}, Lol;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget v0, v0, Lom;->a:I

    .line 5
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final b(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    invoke-static {}, Leb;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lea;

    invoke-direct {v1, p0, p1}, Lea;-><init>(Leb;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
