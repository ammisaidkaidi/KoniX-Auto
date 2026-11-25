.class public final Lbde;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:Lcsz;


# instance fields
.field public final a:Lcxz;

.field public final b:Lcor;

.field private final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/telemetry/TelemetryTracker"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbde;->c:Lcsz;

    return-void
.end method

.method public constructor <init>(Lcxz;Lcor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lbdf;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbde;->d:Ljava/util/Map;

    iput-object p1, p0, Lbde;->a:Lcxz;

    iput-object p2, p0, Lbde;->b:Lcor;

    return-void
.end method


# virtual methods
.method public final a(Lbdf;)V
    .locals 5

    .line 1
    invoke-static {}, Ldkm;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbde;->d:Ljava/util/Map;

    .line 2
    new-instance v1, Lbdd;

    invoke-direct {v1, p0}, Lbdd;-><init>(Lbde;)V

    .line 3
    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdb;

    .line 4
    invoke-virtual {v0}, Lbdb;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lbde;->c:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const/16 v1, 0x39

    .line 5
    const-string v2, "com/google/android/apps/auto/aareceiver/telemetry/TelemetryTracker"

    const-string v3, "startTracking"

    const-string v4, "TelemetryTracker.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    invoke-virtual {p1}, Lbdf;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Timer %s is already running."

    invoke-interface {v0, v1, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lbdb;->b()V

    .line 7
    invoke-static {}, Ldju;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lbtz;->a()Lbtz;

    move-result-object v0

    invoke-static {p1}, Lbtx;->a(Ljava/lang/Enum;)Lbtx;

    move-result-object p1

    iget-object v0, v0, Lbtz;->a:Lbua;

    .line 9
    invoke-interface {v0, p1}, Lbua;->b(Lbtx;)V

    :cond_2
    return-void
.end method

.method public final b(Lbdf;I)V
    .locals 4

    .line 1
    invoke-static {}, Ldkm;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbde;->d:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdb;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lbdb;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    invoke-virtual {v0}, Lbdb;->c()V

    invoke-virtual {v0}, Lbdb;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    sget-object v1, Lj$/time/Instant;->MIN:Lj$/time/Instant;

    iget-object v2, v0, Lbdb;->b:Lj$/time/Instant;

    invoke-virtual {v1, v2}, Lj$/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, v0, Lbdb;->b:Lj$/time/Instant;

    iget-object v0, v0, Lbdb;->a:Lcok;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v0, v2}, Lcok;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v0

    new-instance v2, Lbda;

    .line 8
    invoke-direct {v2, v1, v0}, Lbda;-><init>(Lj$/time/Instant;Lj$/time/Duration;)V

    .line 9
    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_3
    :goto_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    .line 10
    :goto_1
    new-instance v1, Lbdc;

    invoke-direct {v1, p1}, Lbdc;-><init>(Lbdf;)V

    .line 11
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    iget-object v0, p0, Lbde;->d:Ljava/util/Map;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Ldju;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {}, Lbtz;->a()Lbtz;

    move-result-object v0

    invoke-static {p1}, Lbtx;->a(Ljava/lang/Enum;)Lbtx;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x3

    goto :goto_2

    .line 15
    :pswitch_0
    const/4 p2, 0x4

    goto :goto_2

    :pswitch_1
    const/4 p2, 0x2

    .line 14
    :goto_2
    iget-object v0, v0, Lbtz;->a:Lbua;

    .line 15
    invoke-interface {v0, p1, p2}, Lbua;->e(Lbtx;I)V

    :cond_4
    return-void

    .line 2
    :cond_5
    :goto_3
    sget-object p2, Lbde;->c:Lcsz;

    invoke-virtual {p2}, Lcsv;->c()Lctq;

    move-result-object p2

    const/16 v0, 0x49

    .line 3
    const-string v1, "com/google/android/apps/auto/aareceiver/telemetry/TelemetryTracker"

    const-string v2, "stopTracking"

    const-string v3, "TelemetryTracker.java"

    invoke-interface {p2, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    invoke-virtual {p1}, Lbdf;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No running timer for %s found"

    invoke-interface {p2, v0, p1}, Lcsx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-static {}, Ldkm;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    return-void
.end method
