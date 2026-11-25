.class public final Lbml;
.super Lbmf;
.source "PG"


# instance fields
.field public final g:Landroid/os/IBinder;

.field final synthetic h:Lbmn;


# direct methods
.method public constructor <init>(Lbmn;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbml;->h:Lbmn;

    invoke-direct {p0, p1, p2, p4}, Lbmf;-><init>(Lbmn;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lbml;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected final a(Lbiz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbml;->h:Lbmn;

    iget-object v0, v0, Lbmn;->p:Lbmx;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbmx;->a(Lbiz;)V

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method protected final c()Z
    .locals 7

    .line 1
    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lbml;->g:Landroid/os/IBinder;

    invoke-static {v2}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lbml;->h:Lbmn;

    invoke-virtual {v3}, Lbmn;->c()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lbml;->h:Lbmn;

    invoke-virtual {v3}, Lbmn;->c()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x22

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "service descriptor mismatch: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lbml;->h:Lbmn;

    iget-object v2, p0, Lbml;->g:Landroid/os/IBinder;

    .line 5
    invoke-virtual {v0, v2}, Lbmn;->b(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lbml;->h:Lbmn;

    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v0}, Lbmn;->y(IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lbml;->h:Lbmn;

    const/4 v3, 0x3

    .line 7
    invoke-virtual {v2, v3, v4, v0}, Lbmn;->y(IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lbml;->h:Lbmn;

    const/4 v1, 0x0

    iput-object v1, v0, Lbmn;->k:Lbiz;

    iget-object v0, v0, Lbmn;->o:Lbmw;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lbmw;->a:Lbky;

    .line 8
    invoke-interface {v0}, Lbky;->b()V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    move-exception v2

    .line 2
    const-string v2, "service probably died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
