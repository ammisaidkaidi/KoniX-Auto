.class public final Lbqu;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Lbnn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbqu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILbnn;)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput p1, p0, Lbqu;->a:I

    iput-object p2, p0, Lbqu;->b:Lbnn;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lbqu;->a:I

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbqu;->b:Lbnn;

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lio;->r(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 4
    invoke-static {p1, v0}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
