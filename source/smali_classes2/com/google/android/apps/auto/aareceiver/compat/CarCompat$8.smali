.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$8;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->stopProjectionAccessPoint(Landroid/car/CarProjectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$8;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1228
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$8;->val$wm:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1229
    :goto_0
    return-void
.end method
