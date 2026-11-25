.class public final Lbqp;
.super Lbnt;
.source "PG"

# interfaces
.implements Lbki;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field public b:I

.field public c:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbqp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbqp;-><init>(IILandroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput p1, p0, Lbqp;->a:I

    iput p2, p0, Lbqp;->b:I

    iput-object p3, p0, Lbqp;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, Lbqp;->b:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lbqp;->a:I

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget v1, p0, Lbqp;->b:I

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbqp;->c:Landroid/content/Intent;

    .line 4
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lio;->r(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 5
    invoke-static {p1, v0}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
