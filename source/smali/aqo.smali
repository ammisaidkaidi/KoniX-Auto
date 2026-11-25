.class public final synthetic Laqo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Laqs;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Laqs;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqo;->a:Laqs;

    iput-object p2, p0, Laqo;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Laqo;->a:Laqs;

    iget-object v1, p0, Laqo;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, v0, Laqs;->i:Landroid/view/ViewGroup;

    iget-object v3, v0, Laqs;->j:Landroid/view/ViewGroup$LayoutParams;

    .line 3
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Laqs;->i:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v1, 0x0

    iput-object v1, v0, Laqs;->i:Landroid/view/ViewGroup;

    iput-object v1, v0, Laqs;->j:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method
