.class public Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;
.super Landroid/app/Activity;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;->startActivity(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0c007c

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;->setContentView(I)V

    :try_start_0
    invoke-static {p0}, Lcom/achour/tweaks/Gal;->rotateActivityRoot(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 3
    :goto_0
    const p1, 0x7f090075

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lbga;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lbga;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    const p1, 0x7f090076

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lbga;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbga;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
