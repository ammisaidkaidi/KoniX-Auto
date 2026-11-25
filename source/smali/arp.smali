.class public final synthetic Larp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# instance fields
.field public final synthetic a:Lars;


# direct methods
.method public synthetic constructor <init>(Lars;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larp;->a:Lars;

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Larp;->a:Lars;

    if-eqz p2, :cond_0

    iget-object p2, v0, Lars;->c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    invoke-static {p1, p2}, Lars;->d(Landroid/car/Car;Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    return-void

    .line 2
    :cond_0
    const-string p1, "CarUxRestrictionsUtil"

    const-string p2, "Car service disconnected, assuming fully restricted uxr"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lars;->c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    const/4 p2, 0x0

    .line 3
    invoke-interface {p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method
