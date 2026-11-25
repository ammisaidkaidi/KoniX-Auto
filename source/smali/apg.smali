.class final Lapg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laph;


# direct methods
.method public constructor <init>(Laph;)V
    .locals 0

    iput-object p1, p0, Lapg;->a:Laph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lapg;->a:Laph;

    iget-object v0, v0, Laph;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapg;->a:Laph;

    iget-object v1, v0, Laph;->a:Landroid/os/Handler;

    iget v0, v0, Laph;->b:I

    int-to-long v2, v0

    .line 2
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lapg;->a:Laph;

    iget-object v1, v0, Laph;->c:Landroid/view/View$OnClickListener;

    iget-object v0, v0, Laph;->d:Landroid/view/View;

    .line 3
    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lapg;->a:Laph;

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Laph;->e:Z

    return-void

    :cond_0
    iget-object v0, p0, Lapg;->a:Laph;

    const/4 v1, 0x0

    goto :goto_0
.end method
