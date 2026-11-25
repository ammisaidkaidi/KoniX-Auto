.class public final Ldmk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldmj;


# static fields
.field public static final a:Lcei;

.field public static final b:Lcei;

.field public static final c:Lcei;

.field public static final d:Lcei;

.field public static final e:Lcei;

.field public static final f:Lcei;

.field public static final g:Lcei;

.field public static final h:Lcei;

.field public static final i:Lcei;

.field public static final j:Lcei;

.field public static final k:Lcei;

.field public static final l:Lcei;

.field public static final m:Lcei;

.field public static final n:Lcei;

.field public static final o:Lcei;

.field public static final p:Lcei;

.field public static final q:Lcei;

.field public static final r:Lcei;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lceg;

    invoke-direct {v0}, Lceg;-><init>()V

    const-string v1, "gms:phenotype:"

    invoke-virtual {v0, v1}, Lceg;->c(Ljava/lang/String;)Lceg;

    move-result-object v0

    invoke-virtual {v0}, Lceg;->a()Lceg;

    move-result-object v0

    .line 2
    const-string v1, "adaptive_window_start_seconds"

    const-wide/16 v2, 0x3840

    invoke-virtual {v0, v1, v2, v3}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 3
    const-string v1, "Sync__brotli_compression_level"

    const-wide/16 v4, 0x3

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->a:Lcei;

    .line 4
    const-string v1, "Sync__brotli_window_size"

    const-wide/16 v4, 0x16

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->b:Lcei;

    .line 5
    const-string v1, "Sync__cleanup_developer_db"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->c:Lcei;

    .line 6
    const-string v1, "connection_timeout_millis"

    const-wide/32 v5, 0xea60

    invoke-virtual {v0, v1, v5, v6}, Lceg;->e(Ljava/lang/String;J)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->d:Lcei;

    .line 7
    const-string v1, "Sync__detect_flag_corruption6"

    invoke-virtual {v0, v1, v4}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->e:Lcei;

    .line 8
    const-string v1, "enable_adaptive_poller"

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 9
    const-string v1, "Sync__enable_device_based_sync4"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->f:Lcei;

    .line 10
    const-string v1, "enable_schedule_on_register_delta"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 11
    const-string v1, "enable_task_reachability"

    invoke-virtual {v0, v1, v4}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    :try_start_0
    const-string v1, "Sync__garbage_collection_fetch_reasons"

    new-array v8, v4, [B

    .line 12
    sget-object v9, Ldgo;->b:Ldgo;

    .line 13
    invoke-static {v9, v8}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v8

    check-cast v8, Ldgo;

    sget-object v9, Lbpu;->h:Lbpu;

    .line 14
    invoke-virtual {v0, v1, v8, v9}, Lceg;->g(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->g:Lcei;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_3

    .line 16
    const-string v1, "Sync__guard_against_same_tokens_tag"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->h:Lcei;

    .line 17
    const-string v1, "Sync__include_client_type"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->i:Lcei;

    .line 18
    const-string v1, "interval_seconds"

    invoke-virtual {v0, v1, v2, v3}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 19
    const-string v1, "Sync__log_http_error_code"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->j:Lcei;

    .line 20
    const-string v1, "Sync__mobdog_special_fetch_reason"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 21
    const-string v1, "Sync__prefer_unmetered"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 22
    const-string v1, "Sync__read_timeout_millis"

    invoke-virtual {v0, v1, v5, v6}, Lceg;->e(Ljava/lang/String;J)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->k:Lcei;

    const-wide/16 v1, -0x1

    .line 23
    const-string v3, "Sync__rebroadcast_min_interval_seconds"

    invoke-virtual {v0, v3, v1, v2}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 24
    const-string v1, "Sync__remove_old_config_packages"

    invoke-virtual {v0, v1, v4}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->l:Lcei;

    .line 25
    const-string v1, "Sync__remove_request_config_tag"

    invoke-virtual {v0, v1, v4}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->m:Lcei;

    .line 26
    const-string v1, "Sync__send_brotli"

    invoke-virtual {v0, v1, v4}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->n:Lcei;

    .line 27
    const-string v1, "Sync__send_registration_info3"

    invoke-virtual {v0, v1, v4}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->o:Lcei;

    .line 28
    const-string v1, "Sync__stop_sync_on_pseudonymous_api_error"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->p:Lcei;

    .line 29
    const-string v1, "Sync__sync_on_checkin"

    invoke-virtual {v0, v1, v4}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    :try_start_1
    const-string v1, "Sync__sync_on_delta_blacklist"

    new-array v2, v4, [B

    .line 30
    sget-object v3, Ldgp;->b:Ldgp;

    .line 31
    invoke-static {v3, v2}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v2

    check-cast v2, Ldgp;

    sget-object v3, Lbpu;->i:Lbpu;

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lceg;->g(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;
    :try_end_1
    .catch Lddu; {:try_start_1 .. :try_end_1} :catch_2

    .line 34
    const-string v1, "Sync__sync_on_flag_corruption"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    :try_start_2
    const-string v1, "Sync__sync_on_nonsync_params_delta_blacklist"

    const/16 v2, 0x29

    new-array v2, v2, [B

    const/16 v3, 0xa

    aput-byte v3, v2, v4

    const/16 v5, 0x27

    aput-byte v5, v2, v7

    const/4 v6, 0x2

    const/16 v8, 0x63

    aput-byte v8, v2, v6

    const/4 v6, 0x3

    const/16 v9, 0x6f

    aput-byte v9, v2, v6

    const/4 v6, 0x4

    const/16 v10, 0x6d

    aput-byte v10, v2, v6

    const/4 v6, 0x5

    const/16 v10, 0x2e

    aput-byte v10, v2, v6

    const/4 v6, 0x6

    const/16 v11, 0x67

    aput-byte v11, v2, v6

    const/4 v6, 0x7

    aput-byte v9, v2, v6

    const/16 v6, 0x8

    aput-byte v9, v2, v6

    const/16 v6, 0x9

    aput-byte v11, v2, v6

    const/16 v6, 0x6c

    aput-byte v6, v2, v3

    const/16 v3, 0xb

    const/16 v12, 0x65

    aput-byte v12, v2, v3

    const/16 v3, 0xc

    aput-byte v10, v2, v3

    const/16 v3, 0xd

    const/16 v13, 0x61

    aput-byte v13, v2, v3

    const/16 v3, 0xe

    const/16 v14, 0x6e

    aput-byte v14, v2, v3

    const/16 v3, 0xf

    const/16 v14, 0x64

    aput-byte v14, v2, v3

    const/16 v3, 0x10

    const/16 v15, 0x72

    aput-byte v15, v2, v3

    const/16 v3, 0x11

    aput-byte v9, v2, v3

    const/16 v3, 0x12

    const/16 v16, 0x69

    aput-byte v16, v2, v3

    const/16 v3, 0x13

    aput-byte v14, v2, v3

    const/16 v3, 0x14

    aput-byte v10, v2, v3

    const/16 v3, 0x15

    aput-byte v11, v2, v3

    const/16 v3, 0x16

    aput-byte v9, v2, v3

    const/16 v3, 0x17

    aput-byte v9, v2, v3

    const/16 v3, 0x18

    aput-byte v11, v2, v3

    const/16 v3, 0x19

    aput-byte v6, v2, v3

    const/16 v3, 0x1a

    aput-byte v12, v2, v3

    const/16 v3, 0x1b

    const/16 v6, 0x71

    aput-byte v6, v2, v3

    const/16 v3, 0x1c

    const/16 v6, 0x75

    aput-byte v6, v2, v3

    const/16 v3, 0x1d

    aput-byte v16, v2, v3

    const/16 v3, 0x1e

    aput-byte v8, v2, v3

    const/16 v3, 0x1f

    const/16 v6, 0x6b

    aput-byte v6, v2, v3

    const/16 v3, 0x20

    const/16 v6, 0x73

    aput-byte v6, v2, v3

    const/16 v3, 0x21

    aput-byte v12, v2, v3

    const/16 v3, 0x22

    aput-byte v13, v2, v3

    const/16 v3, 0x23

    aput-byte v15, v2, v3

    const/16 v3, 0x24

    aput-byte v8, v2, v3

    const/16 v3, 0x25

    const/16 v6, 0x68

    aput-byte v6, v2, v3

    const/16 v3, 0x26

    const/16 v6, 0x62

    aput-byte v6, v2, v3

    aput-byte v9, v2, v5

    const/16 v3, 0x28

    const/16 v5, 0x78

    aput-byte v5, v2, v3

    sget-object v3, Ldgp;->b:Ldgp;

    .line 35
    invoke-static {v3, v2}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v2

    check-cast v2, Ldgp;

    sget-object v3, Lbpu;->i:Lbpu;

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lceg;->g(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;
    :try_end_2
    .catch Lddu; {:try_start_2 .. :try_end_2} :catch_1

    .line 38
    const-string v1, "sync_on_params_delta_blacklist"

    const-string v2, "com.google.android.gms.phenotype,com.google.android.contacts,com.google.android.apps.links#com.google.android.apps.cerebra.links,com.google.android.apps.links#com.google.android.apps.cerebra.links.dogfood,com.google.android.gms.people"

    invoke-virtual {v0, v1, v2}, Lceg;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    const-string v1, "Sync__unregister_config_packages"

    new-array v2, v4, [B

    sget-object v3, Ldgp;->b:Ldgp;

    .line 39
    invoke-static {v3, v2}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v2

    check-cast v2, Ldgp;

    sget-object v3, Lbpu;->i:Lbpu;

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lceg;->g(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->q:Lcei;
    :try_end_3
    .catch Lddu; {:try_start_3 .. :try_end_3} :catch_0

    .line 37
    nop

    .line 42
    const-string v1, "Sync__update_config_hash"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmk;->r:Lcei;

    .line 43
    const-string v1, "Sync__use_gms_network_engine2"

    invoke-virtual {v0, v1, v4}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 44
    const-string v1, "use_http_url_connection"

    invoke-virtual {v0, v1, v7}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    return-void

    .line 40
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 41
    const-string v1, "Could not parse proto flag \"Sync__unregister_config_packages\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 33
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 37
    const-string v1, "Could not parse proto flag \"Sync__sync_on_nonsync_params_delta_blacklist\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 15
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 33
    const-string v1, "Could not parse proto flag \"Sync__sync_on_delta_blacklist\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 41
    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 15
    const-string v1, "Could not parse proto flag \"Sync__garbage_collection_fetch_reasons\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    sget-object v0, Ldmk;->d:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 1
    sget-object v0, Ldmk;->k:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Ldgo;
    .locals 1

    .line 1
    sget-object v0, Ldmk;->g:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgo;

    return-object v0
.end method

.method public final d()Ldgp;
    .locals 1

    .line 1
    sget-object v0, Ldmk;->q:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgp;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->c:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->e:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->f:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->h:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->i:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->j:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->l:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->m:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->o:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->p:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    sget-object v0, Ldmk;->r:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    .line 1
    sget-object v0, Ldmk;->a:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    sget-object v0, Ldmk;->b:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    sget-object v0, Ldmk;->n:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    return-void
.end method
