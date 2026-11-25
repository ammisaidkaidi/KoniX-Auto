.class final Lbcr;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lbcu;


# direct methods
.method public constructor <init>(Lbcu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbcr;->a:Lbcu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    :cond_0
    iget-object p2, p0, Lbcr;->a:Lbcu;

    iget-object p2, p2, Lbcu;->c:Lcom/google/android/projection/protocol/GalReceiver;

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCallAvailability(Z)V

    return-void
.end method
