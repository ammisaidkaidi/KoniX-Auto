.class public final synthetic Larq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;


# instance fields
.field public final synthetic a:Lars;


# direct methods
.method public synthetic constructor <init>(Lars;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larq;->a:Lars;

    return-void
.end method


# virtual methods
.method public final onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 3

    .line 1
    iget-object v0, p0, Larq;->a:Lars;

    if-nez p1, :cond_0

    invoke-static {}, Lars;->a()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    iput-object p1, v0, Lars;->a:Landroid/car/drivingstate/CarUxRestrictions;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, v0, Lars;->a:Landroid/car/drivingstate/CarUxRestrictions;

    .line 1
    :goto_0
    iget-object p1, v0, Lars;->b:Ljava/util/Set;

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Larr;

    iget-object v2, v0, Lars;->a:Landroid/car/drivingstate/CarUxRestrictions;

    .line 3
    invoke-interface {v1, v2}, Larr;->a(Landroid/car/drivingstate/CarUxRestrictions;)V

    goto :goto_1

    :cond_1
    return-void
.end method
