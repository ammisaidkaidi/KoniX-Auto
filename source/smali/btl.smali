.class public final synthetic Lbtl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbkj;


# instance fields
.field public final synthetic a:Ldas;


# direct methods
.method public synthetic constructor <init>(Ldas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtl;->a:Ldas;

    return-void
.end method


# virtual methods
.method public final a(Lbki;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbtl;->a:Ldas;

    invoke-interface {p1}, Lbki;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/common/api/Status;->e:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    .line 2
    invoke-interface {p1}, Lbki;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ldas;->k(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Lbki;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/api/Status;->g:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    new-instance v1, Lbkh;

    .line 5
    invoke-interface {p1}, Lbki;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-direct {v1, p1}, Lbkh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Ldas;->l(Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    new-instance v1, Lbjz;

    .line 6
    invoke-interface {p1}, Lbki;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-direct {v1, p1}, Lbjz;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Ldas;->l(Ljava/lang/Throwable;)Z

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Ldas;->cancel(Z)Z

    return-void
.end method
