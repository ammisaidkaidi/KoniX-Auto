.class public final synthetic Lbnw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lblx;


# instance fields
.field public final synthetic a:Lbnr;


# direct methods
.method public synthetic constructor <init>(Lbnr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbnw;->a:Lbnr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbnw;->a:Lbnr;

    check-cast p1, Lbnz;

    invoke-virtual {p1}, Lbmn;->w()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbnv;

    .line 2
    invoke-virtual {p1}, Lasp;->a()Landroid/os/Parcel;

    move-result-object v1

    .line 3
    invoke-static {v1, v0}, Lasr;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lasp;->d(ILandroid/os/Parcel;)V

    check-cast p2, Lbrk;

    .line 5
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lbrk;->a(Ljava/lang/Object;)V

    return-void
.end method
