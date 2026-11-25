.class abstract Lbkn;
.super Lbkm;
.source "PG"


# instance fields
.field protected final a:Lbrk;


# direct methods
.method public constructor <init>(Lbrk;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lbkm;-><init>(I)V

    iput-object p1, p0, Lbkn;->a:Lbrk;

    return-void
.end method


# virtual methods
.method protected abstract c(Lblj;)V
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbkn;->a:Lbrk;

    new-instance v1, Lbjz;

    invoke-direct {v1, p1}, Lbjz;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lbrk;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbkn;->a:Lbrk;

    invoke-virtual {v0, p1}, Lbrk;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final f(Lblj;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lbkn;->c(Lblj;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p1}, Lbkn;->e(Ljava/lang/Exception;)V

    return-void

    .line 7
    :catch_1
    move-exception p1

    .line 3
    invoke-static {p1}, Lbkr;->h(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lbkn;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 1
    :catch_2
    move-exception p1

    .line 5
    invoke-static {p1}, Lbkr;->h(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lbkn;->d(Lcom/google/android/gms/common/api/Status;)V

    .line 7
    throw p1
.end method

.method public g(Lblb;Z)V
    .locals 0

    return-void
.end method
