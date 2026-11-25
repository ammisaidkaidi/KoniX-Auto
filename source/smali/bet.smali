.class public final Lbet;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbdr;


# instance fields
.field final synthetic a:Lawo;

.field final synthetic b:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Lawo;)V
    .locals 0

    iput-object p1, p0, Lbet;->b:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iput-object p2, p0, Lbet;->a:Lawo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity$4"

    const-string v2, "onFailed"

    const/16 v3, 0x2bd

    const-string v4, "AndroidAutoHeadunitActivity.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Failed to create the hotspot. Killing activity. Reason: %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    iget-object p1, p0, Lbet;->b:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lbet;->b:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    const v1, 0x7f100081

    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lbet;->b:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->finish()V

    return-void
.end method

.method public final b(Lbdt;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lbet;->b:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    sget-object v0, Lawp;->b:Lawp;

    iget-object v1, p0, Lbet;->a:Lawo;

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->q(Lawp;Lawo;)V

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method
