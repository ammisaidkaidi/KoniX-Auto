.class final Layz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static final synthetic b:I


# instance fields
.field final synthetic a:Lazc;


# direct methods
.method public constructor <init>(Lazc;)V
    .locals 0

    iput-object p1, p0, Layz;->a:Lazc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 1
    iget-object v0, p0, Layz;->a:Lazc;

    sget-object v1, Lckw;->a:Lckw;

    new-instance v2, Layy;

    invoke-direct {v2, p1}, Layy;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
