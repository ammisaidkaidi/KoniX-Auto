.class final Lazg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field final synthetic a:Lazi;


# direct methods
.method public constructor <init>(Lazi;)V
    .locals 0

    iput-object p1, p0, Lazg;->a:Lazi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x11400400

    if-eq v0, v1, :cond_0

    sget-object v0, Lazi;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x31

    .line 2
    const-string v2, "com/google/android/apps/auto/aareceiver/sensors/RearViewMonitor$1"

    const-string v3, "onChangeEvent"

    const-string v4, "RearViewMonitor.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    .line 3
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    .line 2
    const-string v1, "Received event for unregistered property: %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lazg;->a:Lazi;

    iget-object v0, v0, Lazi;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lazg;->a:Lazi;

    iget v1, v0, Lazi;->f:I

    .line 5
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lazi;->f:I

    iget-object p1, p0, Lazg;->a:Lazi;

    iget v0, p1, Lazi;->f:I

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-object p1, p1, Lazi;->h:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    if-eq v1, v4, :cond_2

    return-void

    :cond_2
    iget-object p1, p1, Lazi;->h:Landroid/os/Handler;

    .line 7
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onErrorEvent(II)V
    .locals 5

    .line 1
    sget-object v0, Lazi;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/sensors/RearViewMonitor$1"

    const-string v2, "onErrorEvent"

    const/16 v3, 0x4b

    const-string v4, "RearViewMonitor.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Received error event for property %d and area %d"

    invoke-interface {v0, v1, p1, p2}, Lcsx;->q(Ljava/lang/String;II)V

    return-void
.end method
