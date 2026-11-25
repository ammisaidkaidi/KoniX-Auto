.class public final Lawt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Landroid/car/CarInfoManager;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/car/hardware/property/CarPropertyManager;

.field private final e:Landroid/content/pm/PackageManager;

.field private final f:Landroid/content/SharedPreferences;

.field private final g:Layf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/config/CarInfoProvider"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lawt;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/hardware/property/CarPropertyManager;Landroid/car/CarInfoManager;Layf;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawt;->c:Landroid/content/Context;

    iput-object p2, p0, Lawt;->d:Landroid/car/hardware/property/CarPropertyManager;

    const-string p2, "car_info"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lawt;->f:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lawt;->b:Landroid/car/CarInfoManager;

    iput-object p4, p0, Lawt;->g:Layf;

    iput-object p5, p0, Lawt;->e:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static c([ILj$/util/function/IntFunction;Lj$/util/function/IntFunction;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lawr;

    invoke-direct {v0, p1, p3}, Lawr;-><init>(Lj$/util/function/IntFunction;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0, v0}, Lj$/util/stream/IntStream;->mapToObj(Lj$/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lasn;->b:Lasn;

    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-interface {p0, p2}, Lj$/util/stream/Stream;->toArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/projection/protocol/GalReceiver$CarInfo;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    const-class v0, Ljava/lang/String;

    const v2, 0x11100101

    invoke-virtual {v1, v0, v2}, Lawt;->b(Ljava/lang/Class;I)Lj$/util/Optional;

    move-result-object v0

    const-string v3, "<unknown make>"

    invoke-virtual {v0, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    .line 2
    const v3, 0x11100102

    invoke-virtual {v1, v0, v3}, Lawt;->b(Ljava/lang/Class;I)Lj$/util/Optional;

    move-result-object v0

    const-string v3, "<unknown model>"

    invoke-virtual {v0, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-class v0, Ljava/lang/Integer;

    .line 3
    const v3, 0x11400103

    invoke-virtual {v1, v0, v3}, Lawt;->b(Ljava/lang/Class;I)Lj$/util/Optional;

    move-result-object v0

    sget-object v3, Lawq;->c:Lawq;

    .line 4
    invoke-virtual {v0, v3}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    .line 5
    const-string v3, "<unknown year>"

    invoke-virtual {v0, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, v1, Lawt;->f:Landroid/content/SharedPreferences;

    .line 6
    const-string v3, "vehicle_id"

    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lawt;->f:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v7, v0

    goto :goto_0

    .line 6
    :cond_0
    move-object v7, v0

    .line 9
    :goto_0
    const-class v0, Ljava/lang/Integer;

    const v3, 0x1540010a

    .line 10
    invoke-virtual {v1, v0, v3}, Lawt;->b(Ljava/lang/Class;I)Lj$/util/Optional;

    move-result-object v0

    .line 11
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x2

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x3

    goto :goto_1

    .line 18
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x0

    .line 10
    :goto_1
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 12
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " [AAR]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    :try_start_0
    iget-object v13, v1, Lawt;->e:Landroid/content/pm/PackageManager;

    iget-object v14, v1, Lawt;->c:Landroid/content/Context;

    .line 13
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v9, v3

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v3, v9, v8

    .line 16
    const-string v3, "AAR.%d (%s)"

    invoke-static {v14, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-class v3, Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v3, v2}, Lawt;->b(Ljava/lang/Class;I)Lj$/util/Optional;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    new-instance v2, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;

    iget-object v3, v1, Lawt;->g:Layf;

    .line 18
    invoke-virtual {v3}, Layf;->a()I

    move-result v3

    shr-int/lit8 v15, v3, 0x8

    move-object v3, v2

    move v8, v0

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move v13, v15

    invoke-direct/range {v3 .. v14}, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    .line 14
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x100 -> :sswitch_2
        0x200 -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Ljava/lang/Class;I)Lj$/util/Optional;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lawt;->d:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    sget-object v0, Lawq;->a:Lawq;

    invoke-virtual {p1, v0}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/car/hardware/property/CarInternalErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/car/hardware/property/PropertyAccessDeniedSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/car/hardware/property/PropertyNotAvailableAndRetryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/car/hardware/property/PropertyNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    :catchall_0
    move-exception p1

    :goto_0
    sget-object v0, Lawt;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const/16 v0, 0xec

    const-string v1, "com/google/android/apps/auto/aareceiver/config/CarInfoProvider"

    const-string v2, "getPropertySafe"

    const-string v3, "CarInfoProvider.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Failed to read property %d"

    invoke-interface {p1, v0, p2}, Lcsx;->o(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method
