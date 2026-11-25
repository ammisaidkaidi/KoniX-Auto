.class public final Lbah;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field public static final b:Lcqh;


# instance fields
.field public final c:Landroid/app/NotificationManager;

.field public final d:Lbby;

.field public final e:Landroid/content/Context;

.field public final f:Lbav;

.field public final g:Ljava/util/List;

.field public volatile h:Lbbl;

.field public i:Lawo;

.field public j:Lawp;

.field private final k:Lbcj;

.field private final l:Landroid/car/CarProjectionManager;

.field private m:I

.field private final n:Ldhq;

.field private final o:Ldhq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/service/DeviceTracker"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbah;->a:Lcsz;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcqh;->s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcqh;

    move-result-object v0

    sput-object v0, Lbah;->b:Lcqh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbcj;Lbby;Landroid/car/CarProjectionManager;Ldhq;Ldhq;[B[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Lbav;

    invoke-direct {p7}, Lbav;-><init>()V

    iput-object p7, p0, Lbah;->f:Lbav;

    new-instance p7, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lbah;->g:Ljava/util/List;

    const/16 p7, 0x64

    iput p7, p0, Lbah;->m:I

    iput-object p1, p0, Lbah;->e:Landroid/content/Context;

    iput-object p3, p0, Lbah;->d:Lbby;

    const-class p3, Landroid/app/NotificationManager;

    .line 3
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    iput-object p3, p0, Lbah;->c:Landroid/app/NotificationManager;

    iput-object p2, p0, Lbah;->k:Lbcj;

    iput-object p4, p0, Lbah;->l:Landroid/car/CarProjectionManager;

    iput-object p5, p0, Lbah;->n:Ldhq;

    iput-object p6, p0, Lbah;->o:Ldhq;

    .line 4
    new-instance p2, Landroid/app/NotificationChannel;

    .line 5
    const p3, 0x7f10004c

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "device_notifications"

    const/4 p5, 0x3

    invoke-direct {p2, p4, p3, p5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-class p3, Landroid/app/NotificationManager;

    .line 6
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private final A(Lbaf;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lbaf;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lbah;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbah;->m:I

    iput v0, p1, Lbaf;->d:I

    :cond_0
    invoke-virtual {p1}, Lbaf;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbah;->e:Landroid/content/Context;

    iget v1, p1, Lbaf;->d:I

    iget-object v2, p1, Lbaf;->g:Lawo;

    iget-boolean v3, p1, Lbaf;->b:Z

    if-eqz v3, :cond_1

    sget-object v3, Lawp;->a:Lawp;

    goto :goto_0

    :cond_1
    sget-object v3, Lawp;->b:Lawp;

    :goto_0
    sget-object v4, Lcla;->a:Lcla;

    .line 2
    invoke-static {v0, v2, v3, v4}, Lhh;->d(Landroid/content/Context;Lawo;Lawp;Lcla;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lchb;->a:Landroid/content/ClipData;

    const/high16 v3, 0xc000000

    .line 3
    invoke-static {v0, v1, v2, v3}, Lchb;->a(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lbah;->e:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lbaf;->g:Lawo;

    .line 4
    invoke-interface {v5}, Lawo;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const v4, 0x7f100046

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ldg;

    iget-object v4, p0, Lbah;->e:Landroid/content/Context;

    .line 5
    invoke-direct {v3, v4}, Ldg;-><init>(Landroid/content/Context;)V

    const-string v4, "device_notifications"

    iput-object v4, v3, Ldg;->l:Ljava/lang/String;

    iget-object v4, p0, Lbah;->e:Landroid/content/Context;

    const v5, 0x7f10001f

    .line 6
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldg;->e(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v3, v1}, Ldg;->d(Ljava/lang/CharSequence;)V

    const v4, 0x7f0800a1

    .line 8
    invoke-virtual {v3, v4}, Ldg;->g(I)V

    .line 9
    invoke-virtual {v3, v1}, Ldg;->i(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 10
    invoke-virtual {v3, v1}, Ldg;->f(I)V

    iput v2, v3, Ldg;->h:I

    iput-object v0, v3, Ldg;->g:Landroid/app/PendingIntent;

    .line 11
    invoke-virtual {v3}, Ldg;->a()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lbah;->c:Landroid/app/NotificationManager;

    iget p1, p1, Lbaf;->d:I

    .line 12
    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v0, "Can\'t create pending intent: device not connected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final B()Z
    .locals 4

    .line 1
    invoke-static {}, Ldih;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbah;->k:Lbcj;

    .line 2
    invoke-interface {v0}, Lbcj;->g()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lbah;->o:Ldhq;

    .line 3
    invoke-virtual {v0}, Ldhq;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lbah;->h:Lbbl;

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lbah;->i()Lcqh;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lbad;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lbad;-><init>(Lbah;I)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->anyMatch(Lj$/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v3

    :cond_3
    return v1

    .line 1
    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Lawo;
    .locals 10

    .line 1
    iget-object v0, p0, Lbah;->d:Lbby;

    invoke-interface {v0, p1, p2}, Lbby;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Lawo;

    move-result-object v0

    iget-object v1, p0, Lbah;->f:Lbav;

    .line 2
    new-instance v2, Lbac;

    invoke-direct {v2, p0}, Lbac;-><init>(Lbah;)V

    iget-object v3, v1, Lbav;->c:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lbav;->b:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    iget-object p2, v1, Lbav;->c:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    iget-object p1, v1, Lbav;->b:Ljava/util/HashMap;

    .line 10
    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v5, "ProjectionDeviceMap.java"

    const-string v6, "associate"

    const-string v7, "com/google/android/apps/auto/aareceiver/service/ProjectionDeviceMap"

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    sget-object v1, Lbav;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const/16 v2, 0x6e

    .line 9
    invoke-interface {v1, v7, v6, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Values not found for both %s and usb %s"

    invoke-interface {v1, v2, p1, p2}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-ne v4, v3, :cond_3

    .line 12
    :goto_0
    move-object v3, v4

    goto :goto_1

    .line 9
    :cond_3
    sget-object v8, Lbav;->a:Lcsz;

    invoke-virtual {v8}, Lcsv;->c()Lctq;

    move-result-object v8

    const/16 v9, 0x76

    .line 5
    invoke-interface {v8, v7, v6, v9, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v5

    check-cast v5, Lcsx;

    invoke-interface {v5, p1, p2, v3, v4}, Lcsx;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-interface {v2, v3, v4}, Lj$/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v1, Lbav;->c:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Lbav;->b:Ljava/util/HashMap;

    .line 8
    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_1
    check-cast v3, Lbaf;

    if-eqz v3, :cond_4

    iput-object v0, v3, Lbaf;->g:Lawo;

    :cond_4
    iget-object p1, p0, Lbah;->h:Lbbl;

    .line 13
    sget-object p2, Ldkv;->a:Ldkv;

    .line 14
    invoke-virtual {p2}, Ldkv;->b()Ldkw;

    move-result-object p2

    invoke-interface {p2}, Ldkw;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    iget-object p2, p1, Lbbl;->h:Lawo;

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v0, p1, Lbbl;->h:Lawo;

    :cond_5
    return-object v0
.end method

.method public final b(Lawo;)Lawo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbah;->g(Lawo;)Lbaf;

    move-result-object p1

    iget-object p1, p1, Lbaf;->g:Lawo;

    return-object p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)Lawo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbah;->f(Landroid/bluetooth/BluetoothDevice;)Lbaf;

    move-result-object p1

    iget-object p1, p1, Lbaf;->g:Lawo;

    return-object p1
.end method

.method public final d(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Lawo;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbah;->f:Lbav;

    .line 2
    invoke-virtual {v0, p1}, Lbav;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbaf;

    goto :goto_0

    .line 3
    :cond_0
    move-object p1, v1

    .line 2
    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lbah;->f:Lbav;

    .line 3
    invoke-virtual {p1, p2}, Lbav;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbaf;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    iget-object p1, p1, Lbaf;->g:Lawo;

    return-object p1
.end method

.method public final e(Lawo;)Lbaf;
    .locals 4

    .line 1
    new-instance v0, Lbaf;

    invoke-direct {v0, p1}, Lbaf;-><init>(Lawo;)V

    iget-object v1, p0, Lbah;->f:Lbav;

    .line 2
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lbav;->b:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, v1, Lbav;->c:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final f(Landroid/bluetooth/BluetoothDevice;)Lbaf;
    .locals 1

    .line 1
    iget-object v0, p0, Lbah;->f:Lbav;

    invoke-virtual {v0, p1}, Lbav;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaf;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbah;->d:Lbby;

    .line 2
    invoke-interface {v0, p1}, Lbby;->d(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lbah;->e(Lawo;)Lbaf;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final g(Lawo;)Lbaf;
    .locals 1

    .line 1
    iget-object v0, p0, Lbah;->f:Lbav;

    invoke-virtual {v0, p1}, Lbav;->b(Lawo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaf;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lbah;->e(Lawo;)Lbaf;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lbaf;
    .locals 2

    .line 1
    iget-object v0, p0, Lbah;->f:Lbav;

    invoke-virtual {v0, p1}, Lbav;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaf;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbah;->d:Lbby;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lbby;->f(Ljava/lang/String;Ljava/lang/String;)Lawo;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lbah;->e(Lawo;)Lbaf;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final i()Lcqh;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbah;->f:Lbav;

    .line 2
    invoke-virtual {v1}, Lbav;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbaf;

    .line 3
    invoke-virtual {v2}, Lbaf;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v2, v2, Lbaf;->g:Lawo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lcqh;->n(Ljava/util/Collection;)Lcqh;

    move-result-object v0

    return-object v0
.end method

.method public final j(Lbaf;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lbaf;->g:Lawo;

    iget-object v1, p0, Lbah;->h:Lbbl;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lbbl;->h:Lawo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lbah;->A(Lbaf;)V

    return-void
.end method

.method public final k(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lbah;->c(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbah;->w(Lawo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbah;->h:Lbbl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbah;->h:Lbbl;

    iget-object v0, v0, Lbbl;->g:Lawp;

    .line 2
    sget-object v1, Lawp;->b:Lawp;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lbah;->f(Landroid/bluetooth/BluetoothDevice;)Lbaf;

    move-result-object p1

    sget-object v0, Lawp;->b:Lawp;

    invoke-virtual {p0, p1, v0}, Lbah;->s(Lbaf;Lawp;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lbah;->h(Ljava/lang/String;)Lbaf;

    move-result-object p1

    .line 2
    sget-object v0, Lawp;->a:Lawp;

    invoke-virtual {p0, p1, v0}, Lbah;->s(Lbaf;Lawp;)V

    return-void
.end method

.method public final m(Lawo;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lbah;->w(Lawo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbah;->d:Lbby;

    .line 2
    sget-object v1, Lbcq;->b:Lbcq;

    invoke-interface {v0, p1, v1}, Lbby;->h(Lawo;Lbcq;)Lawo;

    .line 3
    invoke-virtual {p0, p1}, Lbah;->g(Lawo;)Lbaf;

    move-result-object p1

    const/4 v0, 0x3

    iput v0, p1, Lbaf;->f:I

    .line 4
    invoke-virtual {p0}, Lbah;->t()V

    :cond_0
    return-void
.end method

.method public final n(Lbag;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbah;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbah;->h:Lbbl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lbag;->h(Lbbl;)V

    :cond_0
    return-void
.end method

.method public final o(Lbaf;Lawp;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lbaf;->d(Lawp;Z)Z

    iget-object v1, p0, Lbah;->g:Ljava/util/List;

    .line 2
    invoke-static {v1}, Lcqh;->n(Ljava/util/Collection;)Lcqh;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbag;

    iget-object v5, p1, Lbaf;->g:Lawo;

    .line 3
    invoke-interface {v4, v5}, Lbag;->f(Lawo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lbaf;->f:I

    if-nez v1, :cond_1

    iput v0, p1, Lbaf;->f:I

    :cond_1
    iget-object v0, p1, Lbaf;->g:Lawo;

    .line 4
    invoke-direct {p0}, Lbah;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0}, Lawo;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-interface {v0}, Lawo;->b()Lbcq;

    move-result-object v0

    sget-object v1, Lbcq;->c:Lbcq;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lbah;->e:Landroid/content/Context;

    iget-object p1, p1, Lbaf;->g:Lawo;

    .line 8
    sget-object v1, Lcla;->b:Lcla;

    .line 9
    invoke-static {v0, p1, p2, v1}, Lhh;->d(Landroid/content/Context;Lawo;Lawp;Lcla;)Landroid/content/Intent;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lbah;->j(Lbaf;)V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lbah;->t()V

    return-void
.end method

.method public final p(Lawo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbah;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lbeh;->a(Landroid/content/Context;Lawo;)Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    iget-object v0, p0, Lbah;->e:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Lbeh;->e(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z

    :cond_0
    return-void
.end method

.method public final q(Lawo;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbah;->g(Lawo;)Lbaf;

    move-result-object p1

    iput-boolean p2, p1, Lbaf;->h:Z

    return-void
.end method

.method public final r(Lbag;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbah;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s(Lbaf;Lawp;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lbaf;->d(Lawp;Z)Z

    move-result p2

    iget-object v1, p1, Lbaf;->g:Lawo;

    .line 2
    invoke-virtual {p0, v1}, Lbah;->w(Lawo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lbaf;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    nop

    .line 2
    :goto_0
    invoke-virtual {p1}, Lbaf;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    invoke-direct {p0, p1}, Lbah;->A(Lbaf;)V

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {p0}, Lbah;->t()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lbaf;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lbah;->c:Landroid/app/NotificationManager;

    iget v1, p1, Lbaf;->d:I

    .line 3
    invoke-virtual {p2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4
    invoke-virtual {p1}, Lbaf;->a()V

    :cond_4
    iget-object p2, p0, Lbah;->f:Lbav;

    iget-object v1, p1, Lbaf;->g:Lawo;

    .line 5
    invoke-interface {v1}, Lawo;->e()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p2, Lbav;->b:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_5
    invoke-interface {v1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object p2, p2, Lbav;->c:Ljava/util/HashMap;

    .line 9
    invoke-interface {v1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v2, :cond_7

    .line 10
    invoke-virtual {p0}, Lbah;->t()V

    :cond_7
    iget-object p2, p0, Lbah;->g:Ljava/util/List;

    .line 11
    invoke-static {p2}, Lcqh;->n(Ljava/util/Collection;)Lcqh;

    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_8

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Lbag;

    iget-object v3, p1, Lbaf;->g:Lawo;

    .line 13
    invoke-interface {v2, v3}, Lbag;->g(Lawo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public final t()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lbah;->f:Lbav;

    invoke-virtual {v1}, Lbav;->d()Ljava/util/Set;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lawq;->g:Lawq;

    .line 3
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lbah;->b:Lcqh;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lbae;

    invoke-direct {v4, v3}, Lbae;-><init>(Lcqh;)V

    invoke-static {v4}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object v2

    .line 5
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v0, Lbah;->e:Landroid/content/Context;

    .line 6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/car/projection/ProjectionStatus;->builder(Ljava/lang/String;I)Landroid/car/projection/ProjectionStatus$Builder;

    move-result-object v4

    iget-object v5, v0, Lbah;->h:Lbbl;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    iget-object v9, v5, Lbbl;->g:Lawp;

    .line 7
    sget-object v10, Lawp;->b:Lawp;

    if-ne v9, v10, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    .line 43
    :cond_0
    const/4 v9, 0x1

    .line 8
    :goto_0
    invoke-virtual {v4, v9}, Landroid/car/projection/ProjectionStatus$Builder;->setProjectionTransport(I)Landroid/car/projection/ProjectionStatus$Builder;

    iget-object v5, v5, Lbbl;->z:Lcly;

    goto :goto_1

    .line 43
    :cond_1
    iget-object v5, v0, Lbah;->i:Lawo;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lawo;->c()Lcly;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 8
    :goto_1
    if-eqz v5, :cond_3

    new-instance v9, Landroid/os/Bundle;

    .line 9
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {v5}, Lcly;->name()Ljava/lang/String;

    move-result-object v5

    const-string v10, "com.google.android.embedded.projection.extra.STOP_REASON"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v9}, Landroid/car/projection/ProjectionStatus$Builder;->setExtras(Landroid/os/Bundle;)Landroid/car/projection/ProjectionStatus$Builder;

    .line 12
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbaf;

    iget-object v9, v0, Lbah;->e:Landroid/content/Context;

    .line 13
    iget v10, v5, Lbaf;->e:I

    iget-object v11, v5, Lbaf;->g:Lawo;

    .line 14
    invoke-interface {v11}, Lawo;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/car/projection/ProjectionStatus$MobileDevice;->builder(ILjava/lang/String;)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    move-result-object v10

    new-instance v11, Landroid/os/Bundle;

    .line 15
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 16
    const-string v12, "android.car.projection.extra.PROJECTION_TECHNOLOGY"

    const-string v13, "com.google.android-auto"

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v12, "android.car.projection.extra.PROJECTION_TECHNOLOGY_VERSION"

    const-string v13, "1.6"

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v12, v5, Lbaf;->f:I

    if-eq v12, v7, :cond_5

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    .line 32
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    :cond_5
    const/4 v12, 0x1

    .line 18
    :goto_3
    invoke-virtual {v10, v12}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->setProjecting(Z)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    .line 19
    iget v12, v5, Lbaf;->f:I

    const-string v13, "com.android.car.projection.extra.EXTRA_DEVICE_STATE"

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-boolean v12, v5, Lbaf;->b:Z

    if-eqz v12, :cond_6

    .line 21
    invoke-virtual {v10, v8}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->addTransport(I)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    .line 22
    :cond_6
    iget-boolean v12, v5, Lbaf;->c:Z

    if-eqz v12, :cond_7

    .line 23
    invoke-virtual {v10, v7}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->addTransport(I)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    .line 24
    :cond_7
    iget-object v12, v5, Lbaf;->g:Lawo;

    .line 25
    invoke-interface {v12}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    const-string v14, "com.android.car.projection.extra.BLUETOOTH_ADDRESS"

    if-eqz v13, :cond_8

    .line 26
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v11, v15, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    nop

    .line 28
    iget-object v15, v5, Lbaf;->g:Lawo;

    .line 29
    invoke-interface {v15}, Lawo;->e()Ljava/lang/String;

    move-result-object v15

    .line 28
    const-string v3, "com.android.car.projection.extra.USB_SERIAL_NUMBER"

    invoke-virtual {v11, v3, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget v5, v5, Lbaf;->e:I

    .line 31
    invoke-interface {v12}, Lawo;->e()Ljava/lang/String;

    move-result-object v12

    if-nez v13, :cond_9

    const/4 v13, 0x0

    goto :goto_4

    .line 32
    :cond_9
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 31
    :goto_4
    new-instance v15, Landroid/content/Intent;

    const-class v6, Lcom/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver;

    .line 33
    invoke-direct {v15, v9, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string v6, "com.android.car.projection.action.START"

    invoke-virtual {v15, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 35
    invoke-virtual {v6, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 36
    invoke-virtual {v3, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 37
    invoke-static {}, Lre;->c()Z

    move-result v6

    if-eq v8, v6, :cond_a

    const/4 v6, 0x0

    goto :goto_5

    .line 41
    :cond_a
    const/high16 v6, 0x2000000

    .line 37
    :goto_5
    const v12, 0x8000001

    or-int/2addr v6, v12

    .line 38
    invoke-static {v9, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 30
    const-string v5, "com.android.car.projection.extra.PROJECTION_CHANGE_REQUEST"

    invoke-virtual {v11, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    invoke-virtual {v10, v11}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->setExtras(Landroid/os/Bundle;)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    .line 40
    invoke-virtual {v10}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->build()Landroid/car/projection/ProjectionStatus$MobileDevice;

    move-result-object v3

    .line 41
    invoke-virtual {v4, v3}, Landroid/car/projection/ProjectionStatus$Builder;->addMobileDevice(Landroid/car/projection/ProjectionStatus$MobileDevice;)Landroid/car/projection/ProjectionStatus$Builder;

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 32
    :cond_b
    iget-object v1, v0, Lbah;->n:Ldhq;

    if-eqz v2, :cond_c

    const/4 v7, 0x1

    goto :goto_6

    .line 43
    :cond_c
    nop

    .line 42
    :goto_6
    invoke-virtual {v1, v7}, Ldhq;->b(I)V

    iget-object v1, v0, Lbah;->l:Landroid/car/CarProjectionManager;

    .line 43
    invoke-virtual {v4}, Landroid/car/projection/ProjectionStatus$Builder;->build()Landroid/car/projection/ProjectionStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->updateProjectionStatus(Landroid/car/CarProjectionManager;Landroid/car/projection/ProjectionStatus;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbah;->f:Lbav;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lbah;->m:I

    iget-object v3, p0, Lbah;->g:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbah;->h:Lbbl;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x5a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    add-int/2addr v5, v6

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " { Connected Devices: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n NotificationCounter: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\n Callbacks: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n Projecting To: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lawo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbah;->g(Lawo;)Lbaf;

    move-result-object p1

    iget-boolean p1, p1, Lbaf;->h:Z

    return p1
.end method

.method public final v(Lawo;Lawp;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbah;->f:Lbav;

    invoke-virtual {v0, p1}, Lbav;->b(Lawo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbaf;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    sget-object v0, Lawp;->a:Lawp;

    invoke-virtual {v0, p2}, Lawp;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p1, p1, Lbaf;->b:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p1, Lbaf;->c:Z

    :goto_0
    return p1
.end method

.method public final w(Lawo;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbah;->h:Lbbl;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbbl;->h:Lawo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbah;->h:Lbbl;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, v0, Lbbl;->h:Lawo;

    invoke-virtual {p0, v0}, Lbah;->g(Lawo;)Lbaf;

    move-result-object v0

    iget v0, v0, Lbaf;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbah;->d:Lbby;

    invoke-interface {v0, p1}, Lbby;->e(Landroid/hardware/usb/UsbDevice;)Lawo;

    move-result-object v0

    iget-object v1, p0, Lbah;->k:Lbcj;

    .line 2
    invoke-interface {v1, p1}, Lbcj;->c(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1
    check-cast v0, Lbcn;

    iget-boolean p1, v0, Lbcn;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final z(Lawo;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lbah;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lawo;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1}, Lawo;->b()Lbcq;

    move-result-object p1

    sget-object v0, Lbcq;->b:Lbcq;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
