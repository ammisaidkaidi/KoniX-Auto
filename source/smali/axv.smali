.class public final Laxv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcqw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcqw;->k()Lcqu;

    move-result-object v0

    .line 2
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    .line 3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    .line 4
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    .line 5
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    .line 6
    const-string v1, "android.car.permission.CAR_SPEED"

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    .line 7
    const-string v1, "android.car.permission.CAR_ENERGY"

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 8
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    .line 9
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcqu;->f()Lcqw;

    move-result-object v0

    sput-object v0, Laxv;->a:Lcqw;

    return-void
.end method
