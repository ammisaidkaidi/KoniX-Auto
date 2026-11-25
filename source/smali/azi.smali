.class public final Lazi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Landroid/car/hardware/property/CarPropertyManager;

.field public final c:Lbah;

.field public final d:Z

.field public e:Z

.field public f:I

.field public final g:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

.field public final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/sensors/RearViewMonitor"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lazi;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/car/hardware/property/CarPropertyManager;Lbah;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lazg;

    invoke-direct {v0, p0}, Lazg;-><init>(Lazi;)V

    iput-object v0, p0, Lazi;->g:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    new-instance v0, Lazh;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lazh;-><init>(Lazi;Landroid/os/Looper;)V

    iput-object v0, p0, Lazi;->h:Landroid/os/Handler;

    iput-object p1, p0, Lazi;->b:Landroid/car/hardware/property/CarPropertyManager;

    iput-object p2, p0, Lazi;->c:Lbah;

    .line 3
    invoke-static {}, Ldka;->c()Z

    move-result p2

    iput-boolean p2, p0, Lazi;->d:Z

    .line 4
    const p2, 0x11400400

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getIntPropertySafe(Landroid/car/hardware/property/CarPropertyManager;II)I

    move-result p1

    iput p1, p0, Lazi;->f:I

    return-void
.end method
