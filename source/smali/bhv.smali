.class public final synthetic Lbhv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lblx;


# instance fields
.field public final synthetic a:Landroid/accounts/Account;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhv;->a:Landroid/accounts/Account;

    iput-object p2, p0, Lbhv;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lbhv;->a:Landroid/accounts/Account;

    iget-object v1, p0, Lbhv;->b:Landroid/os/Bundle;

    check-cast p1, Lbht;

    invoke-virtual {p1}, Lbmn;->w()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbhu;

    new-instance v2, Lblo;

    check-cast p2, Lbrk;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v4}, Lblo;-><init>(Lbrk;I[B)V

    .line 2
    invoke-virtual {p1}, Lasp;->a()Landroid/os/Parcel;

    move-result-object p2

    .line 3
    invoke-static {p2, v2}, Lasr;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {p2, v0}, Lasr;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    const-string v0, "oauth2:https://www.googleapis.com/auth/experimentsandconfigs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-static {p2, v1}, Lasr;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 7
    invoke-virtual {p1, v3, p2}, Lasp;->c(ILandroid/os/Parcel;)V

    return-void
.end method
