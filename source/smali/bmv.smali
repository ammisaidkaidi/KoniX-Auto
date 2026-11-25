.class public final Lbmv;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field d:Ljava/lang/String;

.field e:Landroid/os/IBinder;

.field f:[Lcom/google/android/gms/common/api/Scope;

.field g:Landroid/os/Bundle;

.field h:Landroid/accounts/Account;

.field i:[Lbjb;

.field j:[Lbjb;

.field k:Z

.field l:I

.field m:Z

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbmv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lbjb;[Lbjb;ZIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbnt;-><init>()V

    iput p1, p0, Lbmv;->a:I

    iput p2, p0, Lbmv;->b:I

    iput p3, p0, Lbmv;->c:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p2, p0, Lbmv;->d:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_0
    iput-object p4, p0, Lbmv;->d:Ljava/lang/String;

    .line 1
    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_3

    const/4 p1, 0x0

    if-eqz p5, :cond_2

    .line 2
    const-string p3, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p5, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 3
    instance-of p4, p3, Lbng;

    if-eqz p4, :cond_1

    .line 4
    check-cast p3, Lbng;

    goto :goto_1

    .line 11
    :cond_1
    new-instance p3, Lbng;

    invoke-direct {p3, p5}, Lbng;-><init>(Landroid/os/IBinder;)V

    .line 4
    :goto_1
    if-eqz p3, :cond_2

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 6
    :try_start_0
    invoke-virtual {p3}, Lasp;->a()Landroid/os/Parcel;

    move-result-object p8

    .line 7
    invoke-virtual {p3, p2, p8}, Lasp;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p2

    sget-object p3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p2, p3}, Lasr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, p3

    goto :goto_3

    .line 10
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 11
    :catch_0
    move-exception p2

    :try_start_1
    const-string p2, "AccountAccessor"

    const-string p3, "Remote account accessor probably died"

    .line 10
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    throw p1

    .line 11
    :cond_2
    nop

    :goto_3
    iput-object p1, p0, Lbmv;->h:Landroid/accounts/Account;

    goto :goto_4

    :cond_3
    iput-object p5, p0, Lbmv;->e:Landroid/os/IBinder;

    iput-object p8, p0, Lbmv;->h:Landroid/accounts/Account;

    :goto_4
    iput-object p6, p0, Lbmv;->f:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lbmv;->g:Landroid/os/Bundle;

    iput-object p9, p0, Lbmv;->i:[Lbjb;

    iput-object p10, p0, Lbmv;->j:[Lbjb;

    iput-boolean p11, p0, Lbmv;->k:Z

    iput p12, p0, Lbmv;->l:I

    iput-boolean p13, p0, Lbmv;->m:Z

    iput-object p14, p0, Lbmv;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lbnt;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lbmv;->a:I

    sget v0, Lbje;->b:I

    iput v0, p0, Lbmv;->c:I

    iput p1, p0, Lbmv;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbmv;->k:Z

    iput-object p2, p0, Lbmv;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lbmt;->a(Lbmv;Landroid/os/Parcel;I)V

    return-void
.end method
