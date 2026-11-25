.class public final Lbnm;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbnm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput p1, p0, Lbnm;->a:I

    iput p2, p0, Lbnm;->b:I

    iput p3, p0, Lbnm;->c:I

    iput-wide p4, p0, Lbnm;->d:J

    iput-wide p6, p0, Lbnm;->e:J

    iput-object p8, p0, Lbnm;->f:Ljava/lang/String;

    iput-object p9, p0, Lbnm;->g:Ljava/lang/String;

    iput p10, p0, Lbnm;->h:I

    iput p11, p0, Lbnm;->i:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lbnm;->a:I

    .line 2
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lio;->k(Landroid/os/Parcel;II)V

    iget v0, p0, Lbnm;->b:I

    .line 3
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lio;->k(Landroid/os/Parcel;II)V

    iget v0, p0, Lbnm;->c:I

    .line 4
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lio;->k(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lbnm;->d:J

    .line 5
    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lio;->l(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lbnm;->e:J

    .line 6
    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lio;->l(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lbnm;->f:Ljava/lang/String;

    .line 7
    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lbnm;->g:Ljava/lang/String;

    .line 8
    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Lbnm;->h:I

    .line 9
    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lio;->k(Landroid/os/Parcel;II)V

    iget v0, p0, Lbnm;->i:I

    .line 10
    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lio;->k(Landroid/os/Parcel;II)V

    .line 11
    invoke-static {p1, p2}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
