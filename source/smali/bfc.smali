.class public final Lbfc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lj$/util/Optional;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/ui/ClusterDisplayProvider"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbfc;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lj$/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfc;->b:Landroid/content/Context;

    iput-object p2, p0, Lbfc;->c:Lj$/util/Optional;

    const-string p1, "android.hardware.display.category.PRESENTATION"

    iput-object p1, p0, Lbfc;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lj$/util/Optional;
    .locals 7

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ClusterDisplayProvider.java"

    const-string v2, "com/google/android/apps/auto/aareceiver/ui/ClusterDisplayProvider"

    const/16 v3, 0x1d

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lbfc;->b:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lbfc;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    .line 14
    array-length v3, v0

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 15
    aget-object v0, v0, v1

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lbfc;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v3, 0x3b

    .line 16
    const-string v4, "getClusterDisplayQOrLower"

    invoke-interface {v0, v2, v4, v3, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Could not retrieve cluster display."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbfc;->c:Lj$/util/Optional;

    .line 1
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    const-string v3, "getClusterDisplayROrGreater"

    if-nez v0, :cond_2

    sget-object v0, Lbfc;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v4, 0x41

    .line 10
    invoke-interface {v0, v2, v3, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "CarOccupantZoneManager null, could not retrieve cluster display."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbfc;->c:Lj$/util/Optional;

    .line 2
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarOccupantZoneManager;

    .line 3
    invoke-virtual {v0}, Landroid/car/CarOccupantZoneManager;->getAllOccupantZones()Ljava/util/List;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;

    .line 5
    iget v6, v5, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->occupantType:I

    if-nez v6, :cond_3

    goto :goto_0

    .line 9
    :cond_4
    const/4 v5, 0x0

    .line 5
    :goto_0
    if-nez v5, :cond_5

    sget-object v0, Lbfc;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v4, 0x49

    .line 6
    invoke-interface {v0, v2, v3, v4, v1}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "OccupantZoneInfo null, could not retrieve cluster display."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v5, v1}, Landroid/car/CarOccupantZoneManager;->getDisplayForOccupant(Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;I)Landroid/view/Display;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    .line 15
    :goto_1
    return-object v0
.end method
