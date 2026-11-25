.class public final Lbci;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbcf;


# static fields
.field private static final b:Lcsz;


# instance fields
.field public final a:Ljava/util/List;

.field private final c:Landroid/content/ContentResolver;

.field private d:Lbch;

.field private e:Lbch;

.field private final f:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/settings/OemSettingsImpl"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbci;->b:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbci;->a:Ljava/util/List;

    new-instance v0, Lbcg;

    new-instance v1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lbcg;-><init>(Lbci;Landroid/os/Handler;)V

    iput-object v0, p0, Lbci;->f:Landroid/database/ContentObserver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lbci;->c:Landroid/content/ContentResolver;

    new-instance v1, Lbch;

    .line 4
    invoke-direct {v1}, Lbch;-><init>()V

    iput-object v1, p0, Lbci;->d:Lbch;

    new-instance v1, Lbch;

    .line 5
    invoke-direct {v1}, Lbch;-><init>()V

    iput-object v1, p0, Lbci;->e:Lbch;

    .line 6
    const-string v1, "com.android.car.projection.DISABLED"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 8
    invoke-virtual {p0}, Lbci;->e()Z

    return-void
.end method

.method private static f(Lbch;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lbch;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p0, p0, Lbch;->b:Landroid/util/ArraySet;

    .line 2
    invoke-static {p1}, Lew;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public final a(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbci;->d:Lbch;

    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lbci;->f(Lbch;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbci;->e:Lbch;

    invoke-static {v0, p1}, Lbci;->f(Lbch;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c(Lbcl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbci;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lbcl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbci;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lbci;->c:Landroid/content/ContentResolver;

    const-string v1, "com.android.car.projection.DISABLED"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v0, 0x0

    new-instance v2, Lbch;

    .line 2
    invoke-direct {v2}, Lbch;-><init>()V

    new-instance v3, Lbch;

    .line 3
    invoke-direct {v3}, Lbch;-><init>()V

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 19
    :cond_0
    const/16 v4, 0x3b

    invoke-static {v4}, Lcoi;->b(C)Lcoi;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v0}, Lcoi;->c(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x2f

    invoke-static {v7}, Lcoi;->b(C)Lcoi;

    move-result-object v7

    .line 6
    invoke-virtual {v7, v4}, Lcoi;->e(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v7

    .line 7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x3

    const-string v10, "OemSettingsImpl.java"

    const-string v11, "parseSettings"

    const-string v12, "com/google/android/apps/auto/aareceiver/settings/OemSettingsImpl"

    if-ge v8, v9, :cond_2

    sget-object v7, Lbci;->b:Lcsz;

    invoke-virtual {v7}, Lcsv;->b()Lctq;

    move-result-object v7

    const/16 v8, 0x83

    .line 8
    invoke-interface {v7, v12, v11, v8, v10}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v7

    check-cast v7, Lcsx;

    const-string v8, "Failed to parse item %s, invalid number of tokens in %s setting."

    invoke-interface {v7, v8, v4, v1}, Lcsx;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    nop

    .line 9
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 11
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lew;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    const-string v9, "*"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "android-auto"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    :cond_3
    const-string v4, "wireless"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v4, v2

    goto :goto_1

    .line 16
    :cond_4
    nop

    .line 14
    const-string v13, "usb"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v4, v3

    .line 13
    :goto_1
    nop

    .line 15
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iput-boolean v6, v4, Lbch;->a:Z

    goto/16 :goto_0

    :cond_5
    iget-object v4, v4, Lbch;->b:Landroid/util/ArraySet;

    .line 16
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14
    :cond_6
    sget-object v7, Lbci;->b:Lcsz;

    invoke-virtual {v7}, Lcsv;->b()Lctq;

    move-result-object v7

    const/16 v9, 0x99

    .line 17
    invoke-interface {v7, v12, v11, v9, v10}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v7

    check-cast v7, Lcsx;

    const-string v9, "Unexpected transport: %s, expected one of (%s, %s)"

    invoke-interface {v7, v9, v8, v4, v13}, Lcsx;->u(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4
    :cond_7
    :goto_2
    iget-object v0, p0, Lbci;->d:Lbch;

    .line 18
    invoke-virtual {v3, v0}, Lbch;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbci;->e:Lbch;

    .line 19
    invoke-virtual {v2, v0}, Lbch;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v5, 0x1

    :cond_9
    if-eqz v5, :cond_a

    iput-object v3, p0, Lbci;->d:Lbch;

    iput-object v2, p0, Lbci;->e:Lbch;

    :cond_a
    return v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lbci;->d:Lbch;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbci;->e:Lbch;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "OemSettings { usb : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wireless: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
