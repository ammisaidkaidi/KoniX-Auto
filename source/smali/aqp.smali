.class public final synthetic Laqp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Laqs;

.field public final synthetic b:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Laqs;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqp;->a:Laqs;

    iput-object p2, p0, Laqp;->b:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Laqp;->a:Laqs;

    iget-object v1, p0, Laqp;->b:Landroid/widget/FrameLayout;

    iget-object v2, v0, Laqs;->e:Landroid/view/SurfaceControlViewHost;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Laqs;->h:Z

    iget-object v2, v0, Laqs;->e:Landroid/view/SurfaceControlViewHost;

    iget v3, v0, Laqs;->g:I

    iget v0, v0, Laqs;->f:I

    .line 2
    invoke-virtual {v2, v1, v3, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method
