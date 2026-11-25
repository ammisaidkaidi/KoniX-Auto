.class public final synthetic Layn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;


# instance fields
.field public final synthetic a:Lays;


# direct methods
.method public synthetic constructor <init>(Lays;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layn;->a:Lays;

    return-void
.end method


# virtual methods
.method public final onSensorChanged(Landroid/car/hardware/CarSensorEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Layn;->a:Lays;

    invoke-virtual {v0, p1}, Lays;->b(Landroid/car/hardware/CarSensorEvent;)V

    return-void
.end method
