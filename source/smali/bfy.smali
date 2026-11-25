.class public final synthetic Lbfy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;

.field public final synthetic b:Lawo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;Lawo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfy;->a:Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;

    iput-object p2, p0, Lbfy;->b:Lawo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lbfy;->a:Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;

    iget-object v0, p0, Lbfy;->b:Lawo;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->finish()V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->a(Lawo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
