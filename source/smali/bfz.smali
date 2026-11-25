.class public final Lbfz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbag;


# instance fields
.field final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;)V
    .locals 0

    iput-object p1, p0, Lbfz;->a:Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lawo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbfz;->a:Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->b(Lawo;)V

    return-void
.end method

.method public final g(Lawo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbfz;->a:Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;

    iget-object v1, v0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->b:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final synthetic h(Lbbl;)V
    .locals 0

    return-void
.end method
