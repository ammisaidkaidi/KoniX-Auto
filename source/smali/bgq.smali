.class public final synthetic Lbgq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbgz;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lbgz;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgq;->a:Lbgz;

    iput p2, p0, Lbgq;->b:I

    iput p3, p0, Lbgq;->c:I

    iput p4, p0, Lbgq;->d:I

    iput p5, p0, Lbgq;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lbgq;->a:Lbgz;

    iget v1, p0, Lbgq;->b:I

    iget v2, p0, Lbgq;->c:I

    iget v3, p0, Lbgq;->d:I

    iget v4, p0, Lbgq;->e:I

    iget-object v5, v0, Lbgz;->e:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 2
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, v0, Lbgz;->e:Landroid/view/SurfaceView;

    .line 4
    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lbgz;->d:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v0, Lbgz;->d:Landroid/view/View;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
