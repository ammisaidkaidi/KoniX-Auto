.class public final Lbnn;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field public final b:Landroid/accounts/Account;

.field public final c:I

.field public final d:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbnn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput p1, p0, Lbnn;->a:I

    iput-object p2, p0, Lbnn;->b:Landroid/accounts/Account;

    iput p3, p0, Lbnn;->c:I

    iput-object p4, p0, Lbnn;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lbnn;->a:I

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbnn;->b:Landroid/accounts/Account;

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lio;->r(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget v1, p0, Lbnn;->c:I

    .line 4
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbnn;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 5
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2}, Lio;->r(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 6
    invoke-static {p1, v0}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
