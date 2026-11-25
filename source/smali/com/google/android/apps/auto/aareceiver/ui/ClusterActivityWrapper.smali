.class public Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;
.super Lbfo;
.source "PG"


# static fields
.field private static final d:Lcsz;


# instance fields
.field public a:Lbfe;

.field public b:Lbah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;->d:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lbfo;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;->a:Lbfe;

    .line 2
    invoke-virtual {p1}, Lbfe;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;->b:Lbah;

    iget-object p1, p1, Lbah;->h:Lbbl;

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;->d:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 v0, 0x2f

    .line 3
    const-string v1, "com/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper"

    const-string v2, "shouldStartClusterActivity"

    const-string v3, "ClusterActivityWrapper.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "There is no active projection session."

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p1, Lbbl;->s:Z

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;

    .line 4
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.car.cluster.ClusterActivityState"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;->startActivity(Landroid/content/Intent;)V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper;->finish()V

    return-void
.end method
