.class public final Lblo;
.super Lasq;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field final synthetic a:Lbrk;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lbrk;I)V
    .locals 0

    .line 2
    iput p2, p0, Lblo;->b:I

    iput-object p1, p0, Lblo;->a:Lbrk;

    const-string p1, "com.google.android.gms.common.api.internal.IStatusCallback"

    invoke-direct {p0, p1}, Lasq;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lbrk;I[B)V
    .locals 0

    .line 1
    iput p2, p0, Lblo;->b:I

    iput-object p1, p0, Lblo;->a:Lbrk;

    const-string p1, "com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback"

    invoke-direct {p0, p1}, Lasq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final w(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 3
    iget p3, p0, Lblo;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lasr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p2, p3}, Lasr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    iget-object p3, p0, Lblo;->a:Lbrk;

    .line 5
    invoke-static {p1, p2, p3}, Lbhy;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbrk;)V

    return v1

    :pswitch_0
    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-static {p2, p1}, Lasr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    const/4 p2, 0x0

    iget-object p3, p0, Lblo;->a:Lbrk;

    .line 2
    invoke-static {p1, p2, p3}, Lbhy;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbrk;)V

    return v1

    :cond_0
    return v0

    .line 5
    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
