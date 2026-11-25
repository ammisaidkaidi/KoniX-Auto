.class final Layr;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field final synthetic a:Lays;


# direct methods
.method public constructor <init>(Lays;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Layr;->a:Lays;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Layr;->a:Lays;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/CarSensorEvent;

    .line 2
    invoke-virtual {v0, p1}, Lays;->b(Landroid/car/hardware/CarSensorEvent;)V

    return-void
.end method
