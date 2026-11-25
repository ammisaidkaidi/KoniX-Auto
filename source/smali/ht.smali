.class public final Lht;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lhv;


# direct methods
.method public constructor <init>(Lhv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lht;->a:Lhv;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lht;->a:Lhv;

    invoke-interface {p1}, Lhv;->a()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lht;->a:Lhv;

    invoke-interface {p1}, Lhv;->b()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lht;->a:Lhv;

    invoke-interface {p1}, Lhv;->c()V

    return-void
.end method
