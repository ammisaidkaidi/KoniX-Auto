.class final Loz;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lpa;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lqv;


# direct methods
.method public constructor <init>(Lqv;Lpa;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loz;->d:Lqv;

    iput-object p2, p0, Loz;->a:Lpa;

    iput-object p3, p0, Loz;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Loz;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Loz;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Loz;->c:Landroid/view/View;

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Loz;->c:Landroid/view/View;

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Loz;->c:Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Loz;->d:Lqv;

    iget-object v0, p0, Loz;->a:Lpa;

    .line 5
    iget-object v0, v0, Lpa;->b:Lrr;

    .line 6
    invoke-virtual {p1, v0}, Lqv;->a(Lrr;)V

    iget-object p1, p0, Loz;->d:Lqv;

    iget-object p1, p1, Lqv;->l:Ljava/util/ArrayList;

    iget-object v0, p0, Loz;->a:Lpa;

    .line 7
    iget-object v0, v0, Lpa;->b:Lrr;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Loz;->d:Lqv;

    .line 8
    invoke-virtual {p1}, Lqv;->g()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Loz;->a:Lpa;

    iget-object p1, p1, Lpa;->b:Lrr;

    return-void
.end method
