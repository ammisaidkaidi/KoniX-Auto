.class public abstract Lbku;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "PG"


# direct methods
.method protected constructor <init>(Lbkf;)V
    .locals 1

    .line 1
    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p1, v0}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lbkf;)V

    return-void
.end method

.method private final g(Landroid/os/RemoteException;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;[B)V

    .line 2
    invoke-virtual {p0, v0}, Lbku;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method protected abstract h(Lbjs;)V
.end method

.method public final i(Lbjs;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lbku;->h(Lbjs;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lbku;->g(Landroid/os/RemoteException;)V

    return-void

    .line 1
    :catch_1
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lbku;->g(Landroid/os/RemoteException;)V

    .line 4
    throw p1
.end method

.method public final j(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lhr;->f(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->n(Lbki;)V

    return-void
.end method
