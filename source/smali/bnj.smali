.class public final Lbnj;
.super Lasq;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private a:Lbmn;

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lasq;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lbmn;I)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lasq;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lbnj;->a:Lbmn;

    iput p2, p0, Lbnj;->b:I

    return-void
.end method


# virtual methods
.method public final b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbnj;->a:Lbmn;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lbnj;->a:Lbmn;

    iget v1, p0, Lbnj;->b:I

    .line 2
    invoke-virtual {v0, p1, p2, p3, v1}, Lbmn;->x(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lbnj;->a:Lbmn;

    return-void
.end method

.method protected final w(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 16
    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Lbmr;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    invoke-static {p2, v1}, Lasr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lbmr;

    iget-object v1, p0, Lbnj;->a:Lbmn;

    .line 4
    const-string v2, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v1, v2}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-static {p2}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, v1, Lbmn;->m:Lbmr;

    .line 6
    invoke-virtual {v1}, Lbmn;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lbmr;->d:Lbms;

    .line 7
    invoke-static {}, Lbnp;->a()Lbnp;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, Lbms;->a:Lbnq;

    .line 8
    :goto_0
    invoke-virtual {v2, v1}, Lbnp;->b(Lbnq;)V

    :cond_1
    iget-object p2, p2, Lbmr;->a:Landroid/os/Bundle;

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lbnj;->b(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    goto :goto_1

    .line 10
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    invoke-static {p2, p1}, Lasr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    new-instance p1, Ljava/lang/Exception;

    .line 12
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 13
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    invoke-static {p2, v1}, Lasr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 16
    invoke-virtual {p0, p1, v0, p2}, Lbnj;->b(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 17
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
