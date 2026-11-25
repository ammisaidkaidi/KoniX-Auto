.class public final synthetic Layt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;


# instance fields
.field public final synthetic a:Layu;


# direct methods
.method public synthetic constructor <init>(Layu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layt;->a:Layu;

    return-void
.end method


# virtual methods
.method public final onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Layt;->a:Layu;

    invoke-virtual {v0, p1}, Layu;->b(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method
