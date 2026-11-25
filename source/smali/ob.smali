.class final Lob;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lok;


# direct methods
.method public constructor <init>(Lok;)V
    .locals 0

    iput-object p1, p0, Lob;->a:Lok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lob;->a:Lok;

    iget-object v0, v0, Lok;->b:Loj;

    invoke-interface {v0}, Loj;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lob;->a:Lok;

    .line 2
    invoke-virtual {v0}, Lok;->b()V

    :cond_0
    iget-object v0, p0, Lob;->a:Lok;

    .line 3
    invoke-virtual {v0}, Lok;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
