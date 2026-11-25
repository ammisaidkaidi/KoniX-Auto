.class public Lgb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Lga;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Law;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Law;-><init>(I)V

    sput-object v0, Lgb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, "android.support.v4.os.IResultReceiver"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Lga;

    if-eqz v1, :cond_1

    .line 4
    move-object p1, v0

    check-cast p1, Lga;

    goto :goto_0

    :cond_1
    new-instance v0, Lfy;

    invoke-direct {v0, p1}, Lfy;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    .line 1
    :goto_0
    iput-object p1, p0, Lgb;->a:Lga;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public final b(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb;->a:Lga;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lga;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :cond_0
    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lgb;->a:Lga;

    if-nez p2, :cond_0

    new-instance p2, Lfz;

    invoke-direct {p2, p0}, Lfz;-><init>(Lgb;)V

    iput-object p2, p0, Lgb;->a:Lga;

    :cond_0
    iget-object p2, p0, Lgb;->a:Lga;

    .line 2
    invoke-interface {p2}, Lga;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
