.class public Lcom/google/android/apps/auto/aareceiver/compat/CompatTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "CompatTetheringCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 2

    const-string v0, "AAReceiverCompat"

    const-string v1, "OnStartTetheringCallback: Wi-Fi tethering reported failure"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTetheringStarted()V
    .locals 2

    const-string v0, "AAReceiverCompat"

    const-string v1, "OnStartTetheringCallback: Wi-Fi tethering started (IpServer + dnsmasq active)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
