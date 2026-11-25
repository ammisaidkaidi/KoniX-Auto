.class final Layk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field final synthetic a:Laym;


# direct methods
.method public constructor <init>(Laym;)V
    .locals 0

    iput-object p1, p0, Layk;->a:Laym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1

    .line 1
    iget-object v0, p0, Layk;->a:Laym;

    invoke-virtual {v0, p1}, Laym;->b(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public final onErrorEvent(II)V
    .locals 5

    .line 1
    sget-object v0, Laym;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed$1"

    const-string v2, "onErrorEvent"

    const/16 v3, 0x34

    const-string v4, "CarPropertiesFeed.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Error event for property id %d in area %d"

    invoke-interface {v0, v1, p1, p2}, Lcsx;->q(Ljava/lang/String;II)V

    return-void
.end method
