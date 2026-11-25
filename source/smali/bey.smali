.class public final Lbey;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V
    .locals 0

    iput-object p1, p0, Lbey;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.embedded.projection.action.FINISH_ERROR_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbey;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lbey;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    new-instance v1, Lbex;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbex;-><init>(Lbey;I)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
