.class public final synthetic Lbot;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lblx;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbot;->a:Ljava/lang/String;

    iput-object p2, p0, Lbot;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbot;->a:Ljava/lang/String;

    iget-object v1, p0, Lbot;->b:Ljava/lang/String;

    check-cast p1, Lbqk;

    new-instance v2, Lbqi;

    check-cast p2, Lbrk;

    invoke-direct {v2, p2}, Lbqi;-><init>(Lbrk;)V

    .line 2
    invoke-virtual {p1}, Lbmn;->w()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbqj;

    .line 3
    invoke-virtual {p1}, Lasp;->a()Landroid/os/Parcel;

    move-result-object p2

    .line 4
    invoke-static {p2, v2}, Lasr;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Lasp;->c(ILandroid/os/Parcel;)V

    return-void
.end method
