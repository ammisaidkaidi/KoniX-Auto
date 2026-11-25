.class final Lcd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Lcx;

.field final synthetic b:Lce;


# direct methods
.method public constructor <init>(Lce;Lcx;)V
    .locals 0

    iput-object p1, p0, Lcd;->b:Lce;

    iput-object p2, p0, Lcd;->a:Lcx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcd;->a:Lcx;

    iget-object v0, p1, Lcx;->c:Lbr;

    invoke-virtual {p1}, Lcx;->d()V

    .line 2
    iget-object p1, v0, Lbr;->P:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcd;->b:Lce;

    iget-object v0, v0, Lce;->a:Lcr;

    invoke-static {p1, v0}, Ldm;->b(Landroid/view/ViewGroup;Lcr;)Ldm;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ldm;->c()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
