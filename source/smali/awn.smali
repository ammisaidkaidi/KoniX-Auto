.class public final Lawn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lclx;


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Laxc;

.field public final d:Landroid/content/res/Configuration;

.field public final e:Ljava/lang/Object;

.field public f:Lj$/util/Optional;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final i:Lawk;

.field public j:Lddf;

.field private final k:Landroid/car/navigation/CarNavigationStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/cluster/TurnDataNavStatusListener"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lawn;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/navigation/CarNavigationStatusManager;Laxc;Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lawn;->e:Ljava/lang/Object;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lawn;->f:Lj$/util/Optional;

    new-instance v0, Lawk;

    invoke-direct {v0, p0}, Lawk;-><init>(Lawn;)V

    iput-object v0, p0, Lawn;->i:Lawk;

    iput-object p1, p0, Lawn;->b:Landroid/content/Context;

    iput-object p2, p0, Lawn;->k:Landroid/car/navigation/CarNavigationStatusManager;

    iput-object p3, p0, Lawn;->c:Laxc;

    iput-object p4, p0, Lawn;->d:Landroid/content/res/Configuration;

    return-void
.end method

.method public static a(Lckm;)Ld;
    .locals 6

    .line 1
    sget-object v0, Ld;->d:Ld;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget v1, p0, Lckm;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lckm;->b:I

    iget-boolean v4, v0, Lddf;->c:Z

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_0
    iget-object v4, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v4, Ld;

    iput v1, v4, Ld;->a:I

    :cond_1
    iget v1, p0, Lckm;->a:I

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lckm;->c:Ljava/lang/String;

    iget-boolean v5, v0, Lddf;->c:Z

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_2
    iget-object v5, v0, Lddf;->b:Lddk;

    .line 6
    check-cast v5, Ld;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v5, Ld;->b:Ljava/lang/String;

    :cond_3
    iget v1, p0, Lckm;->a:I

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-eqz v1, :cond_6

    iget p0, p0, Lckm;->d:I

    invoke-static {p0}, Lbxx;->b(I)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v2, p0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 10
    :pswitch_0
    const/4 v4, 0x7

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x5

    goto :goto_1

    :pswitch_3
    const/4 v4, 0x4

    goto :goto_1

    :pswitch_4
    const/4 v4, 0x3

    .line 7
    :goto_1
    iget-boolean p0, v0, Lddf;->c:Z

    if-eqz p0, :cond_5

    .line 8
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_5
    iget-object p0, v0, Lddf;->b:Lddk;

    .line 9
    check-cast p0, Ld;

    invoke-static {v4}, Lr;->d(I)I

    move-result v1

    iput v1, p0, Ld;->c:I

    .line 10
    :cond_6
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Ld;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lawn;->h:Ljava/lang/String;

    iput-object v0, p0, Lawn;->g:Ljava/lang/String;

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lawn;->c:Laxc;

    invoke-virtual {v0}, Laxc;->e()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "navstate2"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v1

    sget-object v2, Lk;->e:Lk;

    .line 4
    invoke-static {v2, v0, v1}, Lddk;->r(Lddk;[BLdcz;)Lddk;

    move-result-object v0

    check-cast v0, Lk;

    .line 5
    invoke-virtual {v0}, Lddk;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lddu; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 5
    :cond_0
    :goto_0
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lawn;->k:Landroid/car/navigation/CarNavigationStatusManager;

    .line 6
    invoke-virtual {v0, p1}, Landroid/car/navigation/CarNavigationStatusManager;->sendNavigationStateChange(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v0, p0, Lawn;->k:Landroid/car/navigation/CarNavigationStatusManager;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/car/navigation/CarNavigationStatusManager;->sendEvent(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    iget-object p1, p0, Lawn;->c:Laxc;

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Laxc;->b(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-object v0, Lawn;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const/16 v0, 0x311

    const-string v1, "com/google/android/apps/auto/aareceiver/cluster/TurnDataNavStatusListener"

    const-string v2, "trySendTurnData"

    const-string v3, "TurnDataNavStatusListener.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Attempted to send navigation state change without nav focus"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    return-void
.end method
