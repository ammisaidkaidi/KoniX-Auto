.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1$1;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "CarCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;)V
    .locals 0

    .line 1154
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 1

    .line 1172
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;

    iget-object p1, p1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->val$lohsDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1173
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;

    iget-object p1, p1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->this$0:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;

    iget-object p1, p1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1800(Landroid/net/wifi/WifiManager;)V

    .line 1174
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1900(I)V

    .line 1175
    return-void
.end method

.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 2

    .line 1157
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1702(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 1158
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1159
    if-eqz p1, :cond_0

    .line 1160
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1161
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$102(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1$1;->this$1:Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;->val$lohsDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1164
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1600(Landroid/net/wifi/WifiConfiguration;)V

    .line 1165
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 1168
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1702(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 1169
    return-void
.end method
