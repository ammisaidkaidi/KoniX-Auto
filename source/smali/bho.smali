.class public final Lbho;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbhp;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lbho;->a:Ljava/lang/String;

    iput-object p2, p0, Lbho;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4

    .line 4
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 12
    :cond_0
    nop

    .line 1
    const-string v1, "com.google.android.auth.IAuthManagerService"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 2
    instance-of v2, v1, Lbhj;

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Lbhj;

    goto :goto_0

    :cond_1
    new-instance v1, Lbhj;

    invoke-direct {v1, p1}, Lbhj;-><init>(Landroid/os/IBinder;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lbho;->a:Ljava/lang/String;

    iget-object v2, p0, Lbho;->b:Landroid/os/Bundle;

    invoke-virtual {v1}, Lasp;->a()Landroid/os/Parcel;

    move-result-object v3

    .line 5
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-static {v3, v2}, Lasr;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {v1, p1, v3}, Lasp;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-static {p1, v1}, Lasr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 9
    invoke-static {v1}, Lbhq;->h(Ljava/lang/Object;)V

    .line 10
    const-string p1, "Error"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    const-string v2, "booleanResult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    return-object v0

    .line 11
    :cond_2
    new-instance v0, Lbhm;

    .line 12
    invoke-direct {v0, p1}, Lbhm;-><init>(Ljava/lang/String;)V

    throw v0
.end method
