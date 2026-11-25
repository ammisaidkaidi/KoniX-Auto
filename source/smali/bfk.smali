.class public final Lbfk;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbfk;->a:Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string p2, "com.google.android.embedded.projection.action.FINISH_ERROR_ACTIVITY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbfk;->a:Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->finish()V

    :cond_0
    return-void
.end method
