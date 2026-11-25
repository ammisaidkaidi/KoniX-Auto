.class public final synthetic Lbel;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbel;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iput p2, p0, Lbel;->b:I

    iput p3, p0, Lbel;->c:I

    iput p4, p0, Lbel;->d:I

    iput p5, p0, Lbel;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lbel;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget v1, p0, Lbel;->b:I

    iget v2, p0, Lbel;->c:I

    iget v3, p0, Lbel;->d:I

    iget v4, p0, Lbel;->e:I

    iget-object v5, v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    sget-object v6, Lckb;->a:Lckb;

    .line 2
    invoke-virtual {v5, v6, v1, v2}, Lazy;->a(Lckb;II)D

    move-result-wide v1

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v1

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    int-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->y:Landroid/view/SurfaceView;

    .line 5
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    long-to-int v4, v5

    div-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    long-to-int v2, v1

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    neg-int v1, v2

    .line 6
    const/4 v2, 0x0

    invoke-virtual {v3, v4, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->y:Landroid/view/SurfaceView;

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void
.end method
