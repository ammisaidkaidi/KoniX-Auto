.class public final Lbno;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Landroid/os/IBinder;

.field public final c:Lbiz;

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbno;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lbiz;ZZ)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput p1, p0, Lbno;->a:I

    iput-object p2, p0, Lbno;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lbno;->c:Lbiz;

    iput-boolean p4, p0, Lbno;->d:Z

    iput-boolean p5, p0, Lbno;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lbng;
    .locals 3

    .line 1
    iget-object v0, p0, Lbno;->b:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 2
    instance-of v2, v1, Lbng;

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Lbng;

    goto :goto_0

    :cond_1
    new-instance v1, Lbng;

    invoke-direct {v1, v0}, Lbng;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lbno;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lbno;

    iget-object v2, p0, Lbno;->c:Lbiz;

    iget-object v3, p1, Lbno;->c:Lbiz;

    .line 3
    invoke-virtual {v2, v3}, Lbiz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lbno;->a()Lbng;

    move-result-object v2

    invoke-virtual {p1}, Lbno;->a()Lbng;

    move-result-object p1

    invoke-static {v2, p1}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lbno;->a:I

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbno;->b:Landroid/os/IBinder;

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lio;->p(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Lbno;->c:Lbiz;

    .line 4
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lio;->r(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lbno;->d:Z

    .line 5
    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lio;->i(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lbno;->e:Z

    .line 6
    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lio;->i(Landroid/os/Parcel;IZ)V

    .line 7
    invoke-static {p1, v0}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
