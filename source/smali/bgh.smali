.class final Lbgh;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lbgi;


# direct methods
.method public constructor <init>(Lbgi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbgh;->a:Lbgi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.projection.protocol.action.ACTION_HOTWORD_DOWNSTREAM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    const-string p1, "com.google.android.projection.protocol.extra.EXTRA_HOTWORD_DOWNSTREAM"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lbgi;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 p2, 0x3c

    .line 3
    const-string v0, "com/google/android/apps/auto/aareceiver/vec/HotwordManager$1"

    const-string v1, "onReceive"

    const-string v2, "HotwordManager.java"

    invoke-interface {p1, v0, v1, p2, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Result bytes not set in extra"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lbgh;->a:Lbgi;

    iget-object p2, p2, Lbgi;->b:Lbgj;

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/projection/protocol/VendorExtensionBase;->nativeSend([B)V

    :cond_1
    return-void
.end method
