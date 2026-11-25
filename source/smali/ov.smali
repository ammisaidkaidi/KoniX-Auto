.class final Lov;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lrr;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lqv;


# direct methods
.method public constructor <init>(Lqv;Lrr;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lov;->d:Lqv;

    iput-object p2, p0, Lov;->a:Lrr;

    iput-object p3, p0, Lov;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lov;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lov;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lov;->c:Landroid/view/View;

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lov;->d:Lqv;

    iget-object v0, p0, Lov;->a:Lrr;

    .line 3
    invoke-virtual {p1, v0}, Lqv;->a(Lrr;)V

    iget-object p1, p0, Lov;->d:Lqv;

    iget-object p1, p1, Lqv;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Lov;->a:Lrr;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lov;->d:Lqv;

    .line 5
    invoke-virtual {p1}, Lqv;->g()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
