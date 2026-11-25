.class public final synthetic Lbov;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lblx;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lbqk;

    new-instance v0, Lbqi;

    check-cast p2, Lbrk;

    invoke-direct {v0, p2}, Lbqi;-><init>(Lbrk;)V

    .line 2
    invoke-virtual {p1}, Lbmn;->w()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbqj;

    .line 3
    invoke-virtual {p1}, Lasp;->a()Landroid/os/Parcel;

    move-result-object p2

    .line 4
    invoke-static {p2, v0}, Lasr;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    const-string v0, "com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Lasp;->c(ILandroid/os/Parcel;)V

    return-void
.end method
