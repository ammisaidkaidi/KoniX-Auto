.class final Lof;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Loh;


# direct methods
.method public constructor <init>(Loh;)V
    .locals 0

    iput-object p1, p0, Lof;->a:Loh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lof;->a:Loh;

    iget-object v1, v0, Loh;->d:Lok;

    invoke-static {v1}, Lhs;->F(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Loh;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lof;->a:Loh;

    .line 3
    invoke-virtual {v0}, Loh;->n()V

    iget-object v0, p0, Lof;->a:Loh;

    .line 4
    invoke-static {v0}, Loh;->m(Loh;)V

    return-void

    :cond_0
    iget-object v0, p0, Lof;->a:Loh;

    .line 2
    invoke-virtual {v0}, Lqf;->k()V

    return-void
.end method
