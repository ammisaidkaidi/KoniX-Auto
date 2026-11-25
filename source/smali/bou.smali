.class public final synthetic Lbou;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lblx;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbou;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbou;->a:Ljava/lang/String;

    check-cast p1, Lbqk;

    new-instance v1, Lbqi;

    check-cast p2, Lbrk;

    invoke-direct {v1, p2}, Lbqi;-><init>(Lbrk;)V

    .line 2
    invoke-virtual {p1}, Lbmn;->w()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbqj;

    .line 3
    invoke-virtual {p1}, Lasp;->a()Landroid/os/Parcel;

    move-result-object p2

    .line 4
    invoke-static {p2, v1}, Lasr;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Lasp;->c(ILandroid/os/Parcel;)V

    return-void
.end method
