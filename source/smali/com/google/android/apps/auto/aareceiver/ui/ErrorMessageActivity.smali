.class public Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;
.super Landroid/app/Activity;
.source "PG"


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lbfk;

    .line 2
    invoke-direct {v0, p0}, Lbfk;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->setContentView(I)V

    :try_start_0
    invoke-static {p0}, Lx/d;->rotateActivityRoot(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 4
    :goto_0
    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    const v1, 0x7f0901d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    const p1, 0x7f09010d

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lbfj;

    invoke-direct {v0, p0}, Lbfj;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    const-string v1, "com.google.android.embedded.projection.action.FINISH_ERROR_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->a:Landroid/content/BroadcastReceiver;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
