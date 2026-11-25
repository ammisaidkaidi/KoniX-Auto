.class final Lbdz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltq;


# instance fields
.field final synthetic a:Lbea;


# direct methods
.method public constructor <init>(Lbea;)V
    .locals 0

    iput-object p1, p0, Lbdz;->a:Lbea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbdz;->a:Lbea;

    iget-boolean v1, v0, Lbea;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbea;->a:Z

    invoke-virtual {v0}, Lbea;->aT()Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;

    check-cast v1, Lass;

    iget-object v2, v1, Lass;->a:Latj;

    iget-object v2, v2, Latj;->p:Ldny;

    .line 2
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbah;

    iput-object v2, v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->b:Lbah;

    .line 1
    iget-object v2, v1, Lass;->a:Latj;

    iget-object v2, v2, Latj;->m:Ldny;

    .line 3
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbby;

    iput-object v2, v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->c:Lbby;

    .line 1
    iget-object v2, v1, Lass;->a:Latj;

    iget-object v2, v2, Latj;->E:Ldny;

    .line 4
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lawh;

    iput-object v2, v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->d:Lawh;

    .line 1
    iget-object v2, v1, Lass;->a:Latj;

    iget-object v2, v2, Latj;->z:Ldny;

    .line 5
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lazy;

    iput-object v2, v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->e:Lazy;

    .line 1
    iget-object v2, v1, Lass;->a:Latj;

    .line 6
    invoke-virtual {v2}, Latj;->d()Lawy;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->l:Lawy;

    .line 1
    iget-object v2, v1, Lass;->a:Latj;

    iget-object v2, v2, Latj;->x:Ldny;

    .line 7
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbde;

    iput-object v2, v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->m:Lbde;

    .line 1
    iget-object v1, v1, Lass;->a:Latj;

    iget-object v1, v1, Latj;->L:Ldny;

    .line 8
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbef;

    iput-object v1, v0, Lcom/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity;->n:Lbef;

    :cond_0
    return-void
.end method
