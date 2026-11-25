.class public final Lbec;
.super Landroid/content/BroadcastReceiver;
.source "PG"

# interfaces
.implements Lbag;


# static fields
.field private static final c:Lcsz;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field private final d:Lbah;

.field private final e:Lbby;

.field private final f:Lawh;

.field private final g:Lbde;

.field private h:Lawo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/transport/usb/UsbDetachedReceiver"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbec;->c:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbah;Lbby;Lawh;Lbde;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbec;->h:Lawo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbec;->b:Z

    iput-object p1, p0, Lbec;->a:Landroid/content/Context;

    iput-object p2, p0, Lbec;->d:Lbah;

    iput-object p3, p0, Lbec;->e:Lbby;

    iput-object p4, p0, Lbec;->f:Lawh;

    iput-object p5, p0, Lbec;->g:Lbde;

    .line 2
    invoke-virtual {p2, p0}, Lbah;->n(Lbag;)V

    return-void
.end method


# virtual methods
.method public final synthetic f(Lawo;)V
    .locals 0

    return-void
.end method

.method public final synthetic g(Lawo;)V
    .locals 0

    return-void
.end method

.method public final h(Lbbl;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lbbl;->g:Lawp;

    sget-object v1, Lawp;->a:Lawp;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lbbl;->h:Lawo;

    iput-object p1, p0, Lbec;->h:Lawo;

    .line 2
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lbec;->h:Lawo;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "UsbSerialProvider.java"

    const-string v2, "extractSerial"

    const-string v3, "com/google/android/apps/auto/aareceiver/transport/usb/UsbSerialProvider"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lbef;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v5, 0x17

    .line 2
    invoke-interface {v0, v3, v2, v5, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 2
    const-string v1, "USB serial provider invoked for the wrong action %s"

    invoke-interface {v0, v1, p2}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p2, v4

    goto :goto_0

    .line 33
    :cond_0
    nop

    .line 4
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    if-nez p2, :cond_1

    sget-object p2, Lbef;->a:Lcsz;

    invoke-virtual {p2}, Lcsv;->c()Lctq;

    move-result-object p2

    const/16 v0, 0x1e

    .line 5
    invoke-interface {p2, v3, v2, v0, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v0, "Missing USB device"

    invoke-interface {p2, v0}, Lcsx;->n(Ljava/lang/String;)V

    move-object p2, v4

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object p2

    .line 2
    :goto_0
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lbec;->g:Lbde;

    .line 7
    invoke-virtual {v0}, Lbde;->c()V

    iget-object v0, p0, Lbec;->d:Lbah;

    .line 8
    invoke-virtual {v0, p2}, Lbah;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lbec;->d:Lbah;

    .line 9
    invoke-virtual {v0}, Lbah;->i()Lcqh;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lbeb;

    invoke-direct {v1, p1}, Lbeb;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->noneMatch(Lj$/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbec;->d:Lbah;

    .line 11
    invoke-virtual {p1, p0}, Lbah;->r(Lbag;)V

    iget-object p1, p0, Lbec;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbec;->b:Z

    :cond_3
    iget-object p1, p0, Lbec;->h:Lawo;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lbec;->h:Lawo;

    .line 13
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 14
    sget-object p1, Ldjf;->a:Ldjf;

    .line 15
    invoke-virtual {p1}, Ldjf;->b()Ldjg;

    move-result-object p1

    invoke-interface {p1}, Ldjg;->a()Z

    move-result p1

    const-string p2, "UsbDetachedReceiver.java"

    const-string v0, "com/google/android/apps/auto/aareceiver/transport/usb/UsbDetachedReceiver"

    if-eqz p1, :cond_5

    iget-object p1, p0, Lbec;->h:Lawo;

    .line 16
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lbec;->e:Lbby;

    .line 17
    invoke-interface {v1, p1}, Lbby;->c(Ljava/lang/String;)Lawo;

    move-result-object v1

    iput-object v1, p0, Lbec;->h:Lawo;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 25
    :cond_4
    sget-object v1, Lbec;->c:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const/16 v2, 0x5d

    .line 33
    const-string v3, "onReceive"

    invoke-interface {v1, v0, v3, v2, p2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v0, "ProjectionDevice not found for serial: %s"

    invoke-interface {p2, v0, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 17
    :cond_5
    :goto_1
    iget-object p1, p0, Lbec;->h:Lawo;

    .line 18
    invoke-interface {p1}, Lawo;->c()Lcly;

    return-void

    .line 19
    sget-object p1, Ldih;->a:Ldih;

    .line 20
    invoke-virtual {p1}, Ldih;->b()Ldii;

    move-result-object p1

    invoke-interface {p1}, Ldii;->e()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lbec;->h:Lawo;

    if-nez p1, :cond_6

    sget-object p1, Lbec;->c:Lcsz;

    invoke-virtual {p1}, Lcsv;->b()Lctq;

    move-result-object p1

    const/16 v1, 0x7b

    .line 26
    const-string v2, "maybeRestartProjection"

    invoke-interface {p1, v0, v2, v1, p2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Restart projection without projectionUsbDevice."

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-interface {p1}, Lawo;->c()Lcly;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lbec;->f:Lawh;

    iget-object p2, p0, Lbec;->h:Lawo;

    .line 27
    sget-object v0, Lcla;->b:Lcla;

    invoke-virtual {p1, p2, v0}, Lawh;->e(Lawo;Lcla;)V

    iput-object v4, p0, Lbec;->h:Lawo;

    return-void

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcly;->ordinal()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 30
    :sswitch_0
    iget-object p1, p0, Lbec;->f:Lawh;

    iget-object p2, p0, Lbec;->h:Lawo;

    .line 32
    sget-object v0, Lcla;->b:Lcla;

    invoke-virtual {p1, p2, v0}, Lawh;->e(Lawo;Lcla;)V

    goto :goto_2

    .line 28
    :sswitch_1
    iget-object p1, p0, Lbec;->d:Lbah;

    iget-object p2, p0, Lbec;->h:Lawo;

    .line 29
    sget-object v0, Lawp;->b:Lawp;

    invoke-virtual {p1, p2, v0}, Lbah;->v(Lawo;Lawp;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lbec;->a:Landroid/content/Context;

    iget-object p2, p0, Lbec;->h:Lawo;

    sget-object v0, Lawp;->b:Lawp;

    .line 30
    sget-object v1, Lcla;->b:Lcla;

    .line 31
    invoke-static {p1, p2, v0, v1}, Lhh;->d(Landroid/content/Context;Lawo;Lawp;Lcla;)Landroid/content/Intent;

    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    :cond_8
    :goto_2
    iput-object v4, p0, Lbec;->h:Lawo;

    return-void

    .line 32
    :cond_9
    iget-object p1, p0, Lbec;->h:Lawo;

    if-eqz p1, :cond_b

    .line 21
    sget-object p1, Lcly;->h:Lcly;

    iget-object p2, p0, Lbec;->h:Lawo;

    .line 22
    invoke-interface {p2}, Lawo;->c()Lcly;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcly;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcly;->e:Lcly;

    iget-object p2, p0, Lbec;->h:Lawo;

    .line 23
    invoke-interface {p2}, Lawo;->c()Lcly;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcly;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lbec;->h:Lawo;

    .line 24
    invoke-interface {p1}, Lawo;->c()Lcly;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lbec;->f:Lawh;

    iget-object p2, p0, Lbec;->h:Lawo;

    .line 25
    sget-object v0, Lcla;->b:Lcla;

    invoke-virtual {p1, p2, v0}, Lawh;->e(Lawo;Lcla;)V

    iput-object v4, p0, Lbec;->h:Lawo;

    return-void

    .line 24
    :cond_b
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
