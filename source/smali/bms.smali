.class public final Lbms;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lbnq;

.field public final b:Z

.field public final c:Z

.field public final d:[I

.field public final e:I

.field public final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbms;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lbnq;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput-object p1, p0, Lbms;->a:Lbnq;

    iput-boolean p2, p0, Lbms;->b:Z

    iput-boolean p3, p0, Lbms;->c:Z

    iput-object p4, p0, Lbms;->d:[I

    iput p5, p0, Lbms;->e:I

    iput-object p6, p0, Lbms;->f:[I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lbms;->a:Lbnq;

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1, p2}, Lio;->r(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lbms;->b:Z

    .line 3
    const/4 v1, 0x2

    invoke-static {p1, v1, p2}, Lio;->i(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lbms;->c:Z

    .line 4
    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lio;->i(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lbms;->d:[I

    .line 5
    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lio;->q(Landroid/os/Parcel;I[I)V

    iget p2, p0, Lbms;->e:I

    .line 6
    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object p2, p0, Lbms;->f:[I

    .line 7
    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Lio;->q(Landroid/os/Parcel;I[I)V

    .line 8
    invoke-static {p1, v0}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
