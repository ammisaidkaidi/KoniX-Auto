.class public final Lbia;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lacg;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lacg;-><init>(I)V

    sput-object v0, Lbia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbnt;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lbia;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput p1, p0, Lbia;->a:I

    iput-object p2, p0, Lbia;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lbia;->a:I

    .line 2
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lbia;->b:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 4
    invoke-static {p1, p2}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
