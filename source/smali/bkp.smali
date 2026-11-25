.class public final Lbkp;
.super Lbkm;
.source "PG"


# instance fields
.field private final a:Lbmc;

.field private final b:Lbrk;


# direct methods
.method public constructor <init>(ILbmc;Lbrk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbkm;-><init>(I)V

    iput-object p3, p0, Lbkp;->b:Lbrk;

    iput-object p2, p0, Lbkp;->a:Lbmc;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iget-boolean p1, p2, Lbmc;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lblj;)Z
    .locals 0

    iget-object p1, p0, Lbkp;->a:Lbmc;

    iget-boolean p1, p1, Lbmc;->b:Z

    return p1
.end method

.method public final b(Lblj;)[Lbjb;
    .locals 0

    iget-object p1, p0, Lbkp;->a:Lbmc;

    iget-object p1, p1, Lbmc;->a:[Lbjb;

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lbkp;->b:Lbrk;

    iget-object v1, p1, Lcom/google/android/gms/common/api/Status;->g:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    new-instance v1, Lbkh;

    invoke-direct {v1, p1}, Lbkh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lbjz;

    .line 1
    invoke-direct {v1, p1}, Lbjz;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Lbrk;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbkp;->b:Lbrk;

    invoke-virtual {v0, p1}, Lbrk;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final f(Lblj;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lbkp;->a:Lbmc;

    iget-object p1, p1, Lblj;->b:Lbjx;

    iget-object v1, p0, Lbkp;->b:Lbrk;

    iget-object v0, v0, Lbmc;->d:Lbmb;

    iget-object v0, v0, Lbmb;->a:Lblx;

    invoke-interface {v0, p1, v1}, Lblx;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p1}, Lbkp;->e(Ljava/lang/Exception;)V

    return-void

    .line 5
    :catch_1
    move-exception p1

    .line 3
    invoke-static {p1}, Lbkr;->h(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lbkp;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 1
    :catch_2
    move-exception p1

    .line 5
    throw p1
.end method

.method public final g(Lblb;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbkp;->b:Lbrk;

    iget-object v1, p1, Lblb;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v0, Lbrk;->a:Lbro;

    new-instance v1, Lbla;

    invoke-direct {v1, p1, v0}, Lbla;-><init>(Lblb;Lbrk;)V

    .line 2
    invoke-virtual {p2, v1}, Lbrh;->e(Lbrc;)V

    return-void
.end method
