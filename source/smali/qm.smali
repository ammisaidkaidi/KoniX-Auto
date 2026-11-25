.class public abstract Lqm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lra;

.field public b:I

.field final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lra;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lqm;->b:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lqm;->c:Landroid/graphics/Rect;

    iput-object p1, p0, Lqm;->a:Lra;

    return-void
.end method

.method public static p(Lra;)Lqm;
    .locals 1

    .line 1
    new-instance v0, Lqk;

    invoke-direct {v0, p0}, Lqk;-><init>(Lra;)V

    return-object v0
.end method

.method public static q(Lra;I)Lqm;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    invoke-static {p0}, Lqm;->r(Lra;)Lqm;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    invoke-static {p0}, Lqm;->p(Lra;)Lqm;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Lra;)Lqm;
    .locals 1

    .line 1
    new-instance v0, Lql;

    invoke-direct {v0, p0}, Lql;-><init>(Lra;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)I
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l(Landroid/view/View;)I
.end method

.method public abstract m(Landroid/view/View;)I
.end method

.method public abstract n(I)V
.end method

.method public final o()I
    .locals 2

    .line 1
    iget v0, p0, Lqm;->b:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lqm;->k()I

    move-result v0

    iget v1, p0, Lqm;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
