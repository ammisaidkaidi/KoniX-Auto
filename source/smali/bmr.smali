.class public final Lbmr;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Landroid/os/Bundle;

.field b:[Lbjb;

.field c:I

.field public d:Lbms;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbmr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbnt;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Lbjb;ILbms;)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput-object p1, p0, Lbmr;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lbmr;->b:[Lbjb;

    iput p3, p0, Lbmr;->c:I

    iput-object p4, p0, Lbmr;->d:Lbms;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lbmr;->a:Landroid/os/Bundle;

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lio;->m(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    iget-object v1, p0, Lbmr;->b:[Lbjb;

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lio;->v(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget v1, p0, Lbmr;->c:I

    .line 4
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbmr;->d:Lbms;

    .line 5
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2}, Lio;->r(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 6
    invoke-static {p1, v0}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
