.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$6;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->startProjectionAccessPoint(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;


# direct methods
.method constructor <init>(Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$6;->val$callback:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$6;->val$callback:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$100()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onStarted(Landroid/net/wifi/WifiConfiguration;)V

    .line 1014
    return-void
.end method
