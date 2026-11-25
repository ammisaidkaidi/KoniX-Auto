.class public final synthetic Lbhn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbhp;


# instance fields
.field public final synthetic a:Landroid/accounts/Account;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhn;->a:Landroid/accounts/Account;

    iput-object p2, p0, Lbhn;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4

    .line 4
    iget-object v0, p0, Lbhn;->a:Landroid/accounts/Account;

    iget-object v1, p0, Lbhn;->b:Landroid/os/Bundle;

    sget-object v2, Lbhq;->a:[Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 11
    :cond_0
    nop

    .line 1
    const-string v2, "com.google.android.auth.IAuthManagerService"

    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lbhj;

    if-eqz v3, :cond_1

    .line 3
    move-object p1, v2

    check-cast p1, Lbhj;

    goto :goto_0

    :cond_1
    new-instance v2, Lbhj;

    invoke-direct {v2, p1}, Lbhj;-><init>(Landroid/os/IBinder;)V

    move-object p1, v2

    .line 4
    :goto_0
    invoke-virtual {p1}, Lasp;->a()Landroid/os/Parcel;

    move-result-object v2

    .line 5
    invoke-static {v2, v0}, Lasr;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    const-string v0, "oauth2:https://www.googleapis.com/auth/experimentsandconfigs"

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-static {v2, v1}, Lasr;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x5

    .line 4
    invoke-virtual {p1, v0, v2}, Lasp;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v0}, Lasr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_2

    .line 11
    invoke-static {v0}, Lbhq;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 10
    const-string v0, "Service call returned null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
