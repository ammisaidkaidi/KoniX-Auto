.class public final Lsr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lsr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lyv;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lyv;->c:Lyv;

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 3
    iget v0, p0, Lsr;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lsr;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lyv;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Lrk;

    .line 1
    invoke-direct {v0, p1, v1}, Lrk;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lss;

    .line 2
    invoke-direct {v0, p1, v1}, Lss;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .line 6
    iget v0, p0, Lsr;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lsr;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lyv;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Lrk;

    .line 4
    invoke-direct {v0, p1, p2}, Lrk;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lss;

    .line 5
    invoke-direct {v0, p1, p2}, Lss;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 3
    iget v0, p0, Lsr;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lyv;

    return-object p1

    .line 1
    :pswitch_0
    new-array p1, p1, [Lrk;

    return-object p1

    .line 2
    :pswitch_1
    new-array p1, p1, [Lss;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
