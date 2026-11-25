.class public final synthetic Lbio;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lblx;


# instance fields
.field public final synthetic a:Lbid;


# direct methods
.method public synthetic constructor <init>(Lbid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbio;->a:Lbid;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbio;->a:Lbid;

    check-cast p1, Lbis;

    new-instance v1, Lbip;

    check-cast p2, Lbrk;

    invoke-direct {v1, p2}, Lbip;-><init>(Lbrk;)V

    .line 2
    invoke-virtual {p1}, Lbmn;->w()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbiu;

    .line 3
    invoke-virtual {p1}, Lasp;->a()Landroid/os/Parcel;

    move-result-object p2

    .line 4
    invoke-static {p2, v1}, Lasr;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-static {p2, v0}, Lasr;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Lasp;->d(ILandroid/os/Parcel;)V

    return-void
.end method
