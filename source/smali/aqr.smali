.class final Laqr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnApplyWindowInsetsListener;

.field final synthetic b:Laqs;


# direct methods
.method public constructor <init>(Laqs;Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 0

    iput-object p1, p0, Laqr;->b:Laqs;

    iput-object p2, p0, Laqr;->a:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Laqr;->b:Laqs;

    iget-object p1, p1, Laqs;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Laqr;->a:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object p1, p0, Laqr;->b:Laqs;

    iget-object p1, p1, Laqs;->d:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
