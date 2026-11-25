.class public final synthetic Lbhw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lblx;


# instance fields
.field public final synthetic a:Lbia;


# direct methods
.method public synthetic constructor <init>(Lbia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhw;->a:Lbia;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbhw;->a:Lbia;

    check-cast p1, Lbht;

    invoke-virtual {p1}, Lbmn;->w()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbhu;

    new-instance v1, Lblo;

    check-cast p2, Lbrk;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lblo;-><init>(Lbrk;I)V

    .line 2
    invoke-virtual {p1}, Lasp;->a()Landroid/os/Parcel;

    move-result-object p2

    .line 3
    invoke-static {p2, v1}, Lasr;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {p2, v0}, Lasr;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lasp;->c(ILandroid/os/Parcel;)V

    return-void
.end method
