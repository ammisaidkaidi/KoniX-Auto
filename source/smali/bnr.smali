.class public final Lbnr;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbnr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput p1, p0, Lbnr;->a:I

    iput-object p2, p0, Lbnr;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lbnr;->a:I

    .line 2
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lbnr;->b:Ljava/util/List;

    .line 3
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lio;->w(Landroid/os/Parcel;ILjava/util/List;)V

    .line 4
    invoke-static {p1, p2}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
