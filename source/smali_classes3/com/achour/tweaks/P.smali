.class public final Lcom/achour/tweaks/P;
.super Ljava/lang/Object;
.source "P.java"


# static fields
.field public static final FILE:Ljava/lang/String; = "achour_tweaks"

.field private static final QUICK_DROP_MS:J = 0x4e20L

.field private static final SUPPRESS_MS:J = 0x493e0L

.field private static app:Landroid/content/Context;

.field private static attemptAt:J

.field private static logged:Z

.field private static rfcommAt:J

.field private static runnerIntent:Ljava/lang/Object;

.field private static runnerMgr:Ljava/lang/Object;

.field private static sp:Landroid/content/SharedPreferences;

.field private static upAt:J

.field private static watchdogOn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 9
    sget-wide v0, Lcom/achour/tweaks/P;->rfcommAt:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 9
    sget-wide v0, Lcom/achour/tweaks/P;->attemptAt:J

    return-wide v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .line 9
    sget-object v0, Lcom/achour/tweaks/P;->app:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .line 9
    invoke-static {}, Lcom/achour/tweaks/P;->currentApp()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 9
    sput-boolean p0, Lcom/achour/tweaks/P;->watchdogOn:Z

    return p0
.end method

.method public static adv5()Z
    .locals 2

    .line 49
    const-string v0, "adv5"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/achour/tweaks/P;->gb(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized allowAutoLaunch()Z
    .locals 8

    const-class v0, Lcom/achour/tweaks/P;

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->enabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/achour/tweaks/P;->autoRetry()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {}, Lcom/achour/tweaks/P;->suppressedLeftMs()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/4 v3, 0x1

    if-lez v1, :cond_2

    .line 162
    sget-boolean v1, Lcom/achour/tweaks/P;->logged:Z

    if-nez v1, :cond_1

    sput-boolean v3, Lcom/achour/tweaks/P;->logged:Z

    const-string v1, "AATweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto-launch suppressed, left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/achour/tweaks/P;->suppressedLeftMs()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    monitor-exit v0

    return v2

    .line 165
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/achour/tweaks/P;->logged:Z

    if-eqz v1, :cond_3

    sput-boolean v2, Lcom/achour/tweaks/P;->logged:Z

    invoke-static {v3}, Lcom/achour/tweaks/P;->applyRunner(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :cond_3
    monitor-exit v0

    return v3

    .line 160
    :cond_4
    :goto_0
    monitor-exit v0

    return v2

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static ap()Landroid/content/SharedPreferences;
    .locals 4

    .line 77
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/achour/tweaks/P;->app:Landroid/content/Context;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/achour/tweaks/P;->currentApp()Landroid/content/Context;

    move-result-object v1

    .line 78
    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 79
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 80
    if-nez v2, :cond_2

    move-object v2, v1

    .line 81
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_preferences"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    return-object v0
.end method

.method private static applyRunner(Z)V
    .locals 7

    .line 148
    const-string v0, "AATweaks"

    :try_start_0
    sget-object v1, Lcom/achour/tweaks/P;->runnerMgr:Ljava/lang/Object;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/achour/tweaks/P;->runnerIntent:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_2

    .line 149
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 150
    if-eqz p0, :cond_1

    const-string v2, "registerProjectionRunner"

    goto :goto_0

    :cond_1
    const-string v2, "unregisterProjectionRunner"

    :goto_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 149
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 152
    sget-object v2, Lcom/achour/tweaks/P;->runnerMgr:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/achour/tweaks/P;->runnerIntent:Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    const-string p0, "re-registered"

    goto :goto_1

    :cond_2
    const-string p0, "unregistered"

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " projection runner"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    goto :goto_3

    .line 148
    :cond_3
    :goto_2
    return-void

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runner toggle failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_3
    return-void
.end method

.method public static autoRepair()Z
    .locals 2

    .line 117
    const-string v0, "autorepair"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/achour/tweaks/P;->gb(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static autoRetry()Z
    .locals 2

    .line 120
    const-string v0, "autoretry"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/achour/tweaks/P;->gb(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bubble()Z
    .locals 2

    .line 58
    const-string v0, "bubble"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/achour/tweaks/P;->gb(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static channels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const/16 v1, 0x96c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const/16 v1, 0x985

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const/16 v1, 0x99e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {}, Lcom/achour/tweaks/P;->adv5()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/16 v1, 0x143c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const/16 v1, 0x1450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const/16 v1, 0x1464

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const/16 v1, 0x1478

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized clearQuiet()V
    .locals 4

    const-class v0, Lcom/achour/tweaks/P;

    monitor-enter v0

    .line 132
    :try_start_0
    const-string v1, "quiet_until"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/achour/tweaks/P;->pl(Ljava/lang/String;J)V

    const-string v1, "fails"

    invoke-static {v1, v2, v3}, Lcom/achour/tweaks/P;->pl(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static currentApp()Landroid/content/Context;
    .locals 5

    .line 29
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 30
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    return-object v0
.end method

.method public static enabled()Z
    .locals 2

    .line 109
    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/achour/tweaks/P;->gb(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static fps()I
    .locals 2

    .line 46
    const-string v0, "fps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/achour/tweaks/P;->gi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static gb(Ljava/lang/String;Z)Z
    .locals 1

    .line 43
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    return p1
.end method

.method private static gi(Ljava/lang/String;I)I
    .locals 1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    return p1
.end method

.method private static gl(Ljava/lang/String;)J
    .locals 3

    .line 106
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->sp()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    return-wide v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/achour/tweaks/P;

    monitor-enter v0

    .line 15
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/achour/tweaks/P;->app:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/achour/tweaks/P;->app:Landroid/content/Context;

    .line 16
    :cond_0
    sget-object p0, Lcom/achour/tweaks/P;->sp:Landroid/content/SharedPreferences;

    if-nez p0, :cond_3

    .line 17
    sget-object p0, Lcom/achour/tweaks/P;->app:Landroid/content/Context;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/achour/tweaks/P;->currentApp()Landroid/content/Context;

    move-result-object p0

    .line 18
    :goto_0
    if-eqz p0, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/achour/tweaks/P;->app:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 22
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    :try_start_2
    sget-object v1, Lcom/achour/tweaks/P;->app:Landroid/content/Context;

    :goto_2
    const-string p0, "achour_tweaks"

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/achour/tweaks/P;->sp:Landroid/content/SharedPreferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    :cond_3
    monitor-exit v0

    return-void

    .line 14
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static lastAction()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "last_action"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string v0, ""

    return-object v0

    :catchall_0
    move-exception v0

    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized onRfcommDown()V
    .locals 9

    const-class v0, Lcom/achour/tweaks/P;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 207
    sget-wide v3, Lcom/achour/tweaks/P;->upAt:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 208
    :goto_0
    sput-wide v5, Lcom/achour/tweaks/P;->upAt:J

    .line 209
    const-string v3, "fails"

    invoke-static {v3}, Lcom/achour/tweaks/P;->gl(Ljava/lang/String;)J

    move-result-wide v3

    .line 210
    const-wide/16 v7, 0x4e20

    cmp-long v1, v1, v7

    if-gez v1, :cond_1

    const-wide/16 v1, 0x1

    add-long v5, v3, v1

    .line 211
    :cond_1
    const-wide/16 v1, 0x2

    cmp-long v1, v5, v1

    if-ltz v1, :cond_2

    .line 212
    const-wide/32 v1, 0x493e0

    invoke-static {v1, v2}, Lcom/achour/tweaks/P;->quietFor(J)V

    .line 213
    const-string v1, "AATweaks"

    const-string v2, "2 quick drops -> quiet 5 min (runner unregistered)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    :cond_2
    const-string v1, "fails"

    invoke-static {v1, v5, v6}, Lcom/achour/tweaks/P;->pl(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_1
    monitor-exit v0

    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onRfcommUp()V
    .locals 3

    const-class v0, Lcom/achour/tweaks/P;

    monitor-enter v0

    .line 170
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/achour/tweaks/P;->upAt:J

    .line 171
    sput-wide v1, Lcom/achour/tweaks/P;->rfcommAt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit v0

    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onWirelessAttempt()V
    .locals 5

    const-class v0, Lcom/achour/tweaks/P;

    monitor-enter v0

    .line 179
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/achour/tweaks/P;->attemptAt:J

    .line 180
    sget-boolean v1, Lcom/achour/tweaks/P;->watchdogOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 181
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/achour/tweaks/P;->watchdogOn:Z

    .line 182
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/achour/tweaks/P$1;

    invoke-direct {v3}, Lcom/achour/tweaks/P$1;-><init>()V

    const-string v4, "AATweaks-Watch"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 202
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    monitor-exit v0

    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static pb(Ljava/lang/String;Z)V
    .locals 1

    .line 44
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method private static pl(Ljava/lang/String;J)V
    .locals 1

    .line 107
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static psk()Ljava/lang/String;
    .locals 3

    .line 88
    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->ap()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "aa_v8_ap_psk"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    return-object v0
.end method

.method public static declared-synchronized quietFor(J)V
    .locals 4

    const-class v0, Lcom/achour/tweaks/P;

    monitor-enter v0

    const-string v1, "\u0641\u062a\u0631\u0629 \u0647\u062f\u0648\u0621 5 \u062f\u0642\u0627\u0626\u0642"

    invoke-static {v1}, Lcom/achour/tweaks/P;->setLastAction(Ljava/lang/String;)V

    .line 134
    :try_start_0
    const-string v1, "quiet_until"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    invoke-static {v1, v2, v3}, Lcom/achour/tweaks/P;->pl(Ljava/lang/String;J)V

    .line 135
    const-string p0, "fails"

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/achour/tweaks/P;->pl(Ljava/lang/String;J)V

    .line 136
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/achour/tweaks/P;->applyRunner(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v0

    return-void

    .line 133
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static quietUntil()J
    .locals 2

    .line 127
    const-string v0, "quiet_until"

    invoke-static {v0}, Lcom/achour/tweaks/P;->gl(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static rememberRunner(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 142
    sput-object p0, Lcom/achour/tweaks/P;->runnerMgr:Ljava/lang/Object;

    .line 143
    sput-object p1, Lcom/achour/tweaks/P;->runnerIntent:Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public static setAdv5(Z)V
    .locals 1

    .line 50
    const-string v0, "adv5"

    invoke-static {v0, p0}, Lcom/achour/tweaks/P;->pb(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAutoRepair(Z)V
    .locals 1

    .line 118
    const-string v0, "autorepair"

    invoke-static {v0, p0}, Lcom/achour/tweaks/P;->pb(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAutoRetry(Z)V
    .locals 1

    .line 122
    const-string v0, "autoretry"

    invoke-static {v0, p0}, Lcom/achour/tweaks/P;->pb(Ljava/lang/String;Z)V

    .line 123
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/achour/tweaks/P;->clearQuiet()V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/achour/tweaks/P;->applyRunner(Z)V

    goto :goto_0

    .line 124
    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/achour/tweaks/P;->applyRunner(Z)V

    .line 125
    :goto_0
    return-void
.end method

.method public static setBubble(Z)V
    .locals 1

    .line 59
    const-string v0, "bubble"

    invoke-static {v0, p0}, Lcom/achour/tweaks/P;->pb(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setCreds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 92
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->ap()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const-string v1, "aa_v8_ap_ssid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_1

    const-string p0, "aa_v8_ap_psk"

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 97
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 2

    .line 111
    const-string v0, "enabled"

    invoke-static {v0, p0}, Lcom/achour/tweaks/P;->pb(Ljava/lang/String;Z)V

    .line 112
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/achour/tweaks/P;->clearQuiet()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/achour/tweaks/P;->applyRunner(Z)V

    goto :goto_0

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/achour/tweaks/P;->applyRunner(Z)V

    .line 114
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AATweaks"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public static setFps(I)V
    .locals 2

    .line 47
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fps"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static setLastAction(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_action"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    return-void
.end method

.method public static setUsb(Z)V
    .locals 1

    .line 53
    const-string v0, "usb"

    invoke-static {v0, p0}, Lcom/achour/tweaks/P;->pb(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setWifi(Z)V
    .locals 1

    .line 56
    const-string v0, "wifi"

    invoke-static {v0, p0}, Lcom/achour/tweaks/P;->pb(Ljava/lang/String;Z)V

    return-void
.end method

.method private static sp()Landroid/content/SharedPreferences;
    .locals 1

    .line 38
    sget-object v0, Lcom/achour/tweaks/P;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/achour/tweaks/P;->init(Landroid/content/Context;)V

    .line 39
    :cond_0
    sget-object v0, Lcom/achour/tweaks/P;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static ssid()Ljava/lang/String;
    .locals 3

    .line 87
    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->ap()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "aa_v8_ap_ssid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    return-object v0
.end method

.method public static suppressNow(J)V
    .locals 0

    .line 138
    invoke-static {p0, p1}, Lcom/achour/tweaks/P;->quietFor(J)V

    return-void
.end method

.method public static suppressedLeftMs()J
    .locals 5

    .line 129
    invoke-static {}, Lcom/achour/tweaks/P;->quietUntil()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 130
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method public static usb()Z
    .locals 2

    .line 52
    const-string v0, "usb"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/achour/tweaks/P;->gb(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static v5Context()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/achour/tweaks/P;->app:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/achour/tweaks/P;->currentApp()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static v5Prefs()Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {}, Lcom/achour/tweaks/P;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static v5Reregister()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/achour/tweaks/P;->applyRunner(Z)V

    return-void
.end method

.method public static v5Unregister()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/achour/tweaks/P;->applyRunner(Z)V

    return-void
.end method

.method public static wifi()Z
    .locals 2

    .line 55
    const-string v0, "wifi"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/achour/tweaks/P;->gb(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
