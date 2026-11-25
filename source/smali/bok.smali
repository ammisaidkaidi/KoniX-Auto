.class public final Lbok;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbok;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput-object p1, p0, Lbok;->a:[B

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lbok;->a:[B

    .line 2
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lio;->n(Landroid/os/Parcel;I[B)V

    .line 3
    invoke-static {p1, p2}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
